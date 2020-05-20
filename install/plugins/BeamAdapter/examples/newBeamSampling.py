import string
import numpy as np
import random as rd
import Sofa
import Sofa.Core
import Sofa.Simulation
import SofaRuntime
from math import sin,cos, sqrt, pi
import splib
from splib.animation import AnimationManager, addAnimation

## Register all the common component in the factory.
SofaRuntime.importPlugin("SofaAllCommonComponents")


class Animation(Sofa.Core.Controller):

    def __init__(self, InterventionalRadiology, controlledInstrument, step, angularStep):
        Sofa.Core.Controller.__init__(self)
        self.InterventionalRadiology = InterventionalRadiology
        
        self.controlledInstrument = controlledInstrument
        self.step = step
        self.angularStep = angularStep
    
        return;

    def init(self):
        self.startingPos = self.InterventionalRadiology.findData('startingPos').value
        self.nbInstruments = len(self.InterventionalRadiology.findData('instruments').value)
        self.totalLength = self.InterventionalRadiology.findData('totalLengths').value
        print ("totalLen : ", self.totalLength)


    def onEvent(self, event):
        pass

    def onKeypressedEvent(self, c):
        key = c['key']
        if key=="0": #
            self.controlledInstrument = 0
        if key=="1": #
            if(self.nbInstruments >= 2) :
                self.controlledInstrument = 1
            else:
                print("ERROR number of instruments is {}".format(self.nbInstruments))
        if key=="2": #
            if(self.nbInstruments >= 3) :
                self.controlledInstrument = 2
            else:
                print("ERROR number of instruments is {}".format(self.nbInstruments))

        if ord(key)==19: # up
            xTip = self.InterventionalRadiology.findData('xtip').value;
            if (self.totalLength[self.controlledInstrument] >= xTip[self.controlledInstrument] + self.step - self.startingPos[0]) :
                xTip[self.controlledInstrument] += self.step
                self.InterventionalRadiology.findData('xtip').value = xTip

        if ord(key)==21: # down
            xTip = self.InterventionalRadiology.findData('xtip').value;
            if (self.step + self.startingPos[0] < xTip[self.controlledInstrument]) :
                xTip[self.controlledInstrument] -= self.step
                self.InterventionalRadiology.findData('xtip').value = xTip

        if ord(key)==18: # left
            rotationInstrument = self.InterventionalRadiology.findData('rotationInstrument').value;
            rotationInstrument[self.controlledInstrument] -= self.angularStep
            self.InterventionalRadiology.findData('rotationInstrument').value = rotationInstrument

        if ord(key)==20: # right
            rotationInstrument = self.InterventionalRadiology.findData('rotationInstrument').value;
            rotationInstrument[self.controlledInstrument] += self.angularStep
            self.InterventionalRadiology.findData('rotationInstrument').value = rotationInstrument


step = 0.1
angularStep = pi/20.0

def createScene(rootNode):
    rootNode.addObject('RequiredPlugin', name='SofaPython3')
    rootNode.addObject('RequiredPlugin', pluginName='BeamAdapter')

    rootNode.dt=0.01
    rootNode.addObject('VisualStyle', displayFlags='showVisualModels showBehaviorModels showCollisionModels hideMappings showForceFields showWireframe')
    # rootNode.addObject('RequiredPlugin', pluginName='BeamAdapter')
    # rootNode.addObject('BackgroundSetting', color='0 0.568627 0.711765')
    rootNode.addObject('OglSceneFrame', style="Arrows", alignment="TopRight")



    # rootNode.addObject("LightManager")
    # rootNode.addObject("SpotLight", position=source, direction=[1.0, 0.0, 0.0])
    # rootNode.addObject("InteractiveCamera", name="camera", position=source, lookAt=target)
    # rootNode.addObject("InteractiveCamera", name="camera")
    # rootNode.addObject('VisualStyle', displayFlags='showVisualModels showBehaviorModels showCollisionModels showMappings hideForceFields')
    rootNode.addObject('FreeMotionAnimationLoop')
    rootNode.addObject('LCPConstraintSolver', mu=0.1, tolerance=3e-4, maxIt=1000, build_lcp=False)
    rootNode.addObject('CollisionPipeline', draw=False, depth=6, verbose=False)
    rootNode.addObject('BruteForceDetection', name='N2')
    rootNode.addObject('LocalMinDistance', contactDistance=0.1, alarmDistance=0.3, name='localmindistance', angleCone=0.02)
    rootNode.addObject('CollisionResponse', name='Response', response='FrictionContact')
    # rootNode.addObject('CollisionGroup', name='Group')

    manager = AnimationManager(rootNode)

    # topoLines_guide = createGuide(rootNode, 'guide', straightLength=980.0, length=1000.0,
    #             youngModulus=20000, numEdges=200, spireDiameter=25,
    #             numEdgesCollis=[50,10], spireHeight=0.0, densityOfBeams=[30,5],
    #             youngModulusExtremity=1000)
    topoLines_guide = rootNode.addChild('topoLines_guide')
    wire = topoLines_guide.addObject('WireRestShape', name='guideRestShape',
                             straightLength=980.0, length=1000.0,
                             numEdges=200, youngModulus=20000,
                             spireDiameter=25, numEdgesCollis=[50, 10],
                             printLog=False, template='Rigid3d', spireHeight=0.0,
                             densityOfBeams=[30, 5], youngModulusExtremity=1000)
    topoLines_guide.addObject('MechanicalObject', name='dofTopo2', template='Rigid3d')
    topoLines_guide.addObject('EdgeSetTopologyContainer', name='meshLinesGuide')
    topoLines_guide.addObject('EdgeSetTopologyModifier', name='Modifier')
    topoLines_guide.addObject('EdgeSetTopologyAlgorithms', name='TopoAlgo', template='Vec3d')
    topoLines_guide.addObject('EdgeSetGeometryAlgorithms', name='GeomAlgo', template='Rigid3d')

    # instrumentsCombined = createInstrumentsCombined(rootNode)
    InstrumentCombined = rootNode.addChild('InstrumentCombined')
    InstrumentCombined.addObject('EulerImplicit', rayleighStiffness=0.2, printLog=False, rayleighMass=0.1)
    InstrumentCombined.addObject('BTDLinearSolver', verification=False, subpartSolve=False, verbose=False)
    InstrumentCombined.addObject('RegularGrid', name='meshLinesCombined', zmax=1, zmin=1, nx=60, ny=1, nz=1,
                                    xmax=1.0, xmin=0.0, ymin=0, ymax=0)
    InstrumentCombined.addObject('MechanicalObject', showIndices=False, name='DOFs', template='Rigid3d', ry=-90)
    InstrumentCombined.addObject('WireBeamInterpolation', WireRestShape='@../topoLines_guide/guideRestShape',
                                    radius=0.15, printLog=False, name='Interpolguide')
    InstrumentCombined.addObject('AdaptiveBeamForceFieldAndMass', massDensity=0.00000155,
                                    name='guideForceField', interpolation='@Interpolguide')
    
    intrevention = InstrumentCombined.addObject('InterventionalRadiology', xtip=0.0, name='m_ircontroller',
                                    instruments=['Interpolguide'], step=0.5, printLog=False,
                                    listening=True, template='Rigid3d', startingPos=[0, 0, 0, 1, 0, 0, 0],
                                    rotationInstrument=[0, 0, 0], speed=0, controlledInstrument=0)
    InstrumentCombined.addObject('LinearSolverConstraintCorrection', wire_optimization='true', printLog=False)
    InstrumentCombined.addObject('FixedConstraint', indices=0, name='FixedConstraint')
    InstrumentCombined.addObject('RestShapeSpringsForceField', points='@m_ircontroller.indexFirstNode',
                                    angularStiffness=1e8, stiffness=1e8)
    return(rootNode)

    InstrumentCombined.addObject(Animation(intrevention, 0, step, angularStep))

        # Visualization Guide
    VisuGuide = InstrumentCombined.addChild('VisuGuide')
    VisuGuide.addObject('MechanicalObject', name='Quads')
    VisuGuide.addObject('QuadSetTopologyContainer', name='ContainerGuide')
    VisuGuide.addObject('QuadSetTopologyModifier', name='Modifier')
    VisuGuide.addObject('QuadSetTopologyAlgorithms', name='TopoAlgo', template='Vec3d')
    VisuGuide.addObject('QuadSetGeometryAlgorithms', name='GeomAlgo', template='Vec3d')
    VisuGuide.addObject('Edge2QuadTopologicalMapping', radius='1', listening='true',
                           input='@../../topoLines_guide/meshLinesGuide',
                           nbPointsOnEachCircle='10', flipNormals='true', output='@ContainerGuide')
    VisuGuide.addObject('AdaptiveBeamMapping', interpolation='@../InterpolGuide',
                           name='visuMapGuide', output='@Quads', isMechanical=False,
                           input='@../DOFs', useCurvAbs=True, printLog=False)

    # Ogl model
    VisuOgl = VisuGuide.addChild('VisuOgl')
    VisuOgl.addObject('OglModel', color=[0.2, 0.2, 0.8], quads='@../ContainerGuide.quads',
                         material='texture Ambient 1 0.2 0.2 0.2 0.0 Diffuse 1 1.0 1.0 1.0 1.0 Specular 1 1.0 1.0 1.0 1.0 Emissive 0 0.15 0.05 0.05 0.0 Shininess 1 20', name='Visual')
    VisuOgl.addObject('IdentityMapping', input='@../Quads', output='@Visual')

    return(rootNode)
