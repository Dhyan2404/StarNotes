.class public Lcom/sunia/graphv2/local/LocalEngineNative;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/sunia/graphv2/local/LocalEngineNative;->loadNativeLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native graphAddLine(J[D[D)I
.end method

.method public static native graphAddNode(JLjava/lang/String;)Z
.end method

.method public static native graphAlignmentNodes(J[II)Z
.end method

.method public static native graphAlignmentSelection(JI)Z
.end method

.method public static native graphAuthorizeFromFile(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native graphCanPasteNodes(J)Z
.end method

.method public static native graphCanredo(J)Z
.end method

.method public static native graphCanundo(J)Z
.end method

.method public static native graphChangeNodeProperty(JILjava/lang/String;)Z
.end method

.method public static native graphClear(J)Z
.end method

.method public static native graphClearSelection(J)Z
.end method

.method public static native graphConvertNodeTo(JII)Z
.end method

.method public static native graphCopyNodes(J[I)Z
.end method

.method public static native graphCreateEngine(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static native graphCutNodes(J[I)Z
.end method

.method public static native graphDestroyEngine(J)V
.end method

.method public static native graphEngineValid(J)Z
.end method

.method public static native graphFindLinesFromRange(J[D[D)[I
.end method

.method public static native graphFindNodeFromPoint(JDD)I
.end method

.method public static native graphFindNodesFromRange(J[D[D)[I
.end method

.method public static native graphGetLineCount(J)I
.end method

.method public static native graphGetLinePoints(JI[D[D)Z
.end method

.method public static native graphGetLinePointsCount(JI)I
.end method

.method public static native graphGetLinesID(J)[I
.end method

.method public static native graphGetNodeBoundingBox(JI)[D
.end method

.method public static native graphGetNodeKind(JI)I
.end method

.method public static native graphGetNodeProperty(JI)Ljava/lang/String;
.end method

.method public static native graphGetNodesCount(J)I
.end method

.method public static native graphGetNodesID(J)[I
.end method

.method public static native graphGetParam(JI)I
.end method

.method public static native graphGetSelection(J)[I
.end method

.method public static native graphIsSelected(JI)Z
.end method

.method public static native graphMoveNode(JIDDDDI)Z
.end method

.method public static native graphMoveNodes(J[IDDDDI)Z
.end method

.method public static native graphOpenData(JLjava/lang/String;)Z
.end method

.method public static native graphPasteNodes(JDD)Z
.end method

.method public static native graphRecognize(JI)Z
.end method

.method public static native graphRecognizeRange(J[D[DI)Z
.end method

.method public static native graphRedo(J)Z
.end method

.method public static native graphRemoveFromRange(J[D)Z
.end method

.method public static native graphRemoveFromRange(J[D[D)Z
.end method

.method public static native graphRemoveNode(JII)Z
.end method

.method public static native graphRemoveNodes(J[I)Z
.end method

.method public static native graphRemoveUserProperty(JILjava/lang/String;)Z
.end method

.method public static native graphScaleTo(JIDDDD)Z
.end method

.method public static native graphSelectNode(JIZ)Z
.end method

.method public static native graphSetAAssetManager(Landroid/content/res/AssetManager;)I
.end method

.method public static native graphSetCallback(Lcom/sunia/graphv2/local/LocalGraphListener;Lcom/sunia/graphv2/local/LocalGraphListener;)Z
.end method

.method public static native graphSetDPI(JF)Z
.end method

.method public static native graphSetDebugLevel(I)V
.end method

.method public static native graphSetLogDir(Ljava/lang/String;)V
.end method

.method public static native graphSetParam(JII)Z
.end method

.method public static native graphSetUserProperty(JILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native graphStop(J)Z
.end method

.method public static native graphSupportedConvert(JI)[I
.end method

.method public static native graphUndo(J)Z
.end method

.method private static loadNativeLibrary()V
    .locals 2

    const-class v0, Lcom/sunia/naiv2/local/LocalEngineNative;

    monitor-enter v0

    :try_start_0
    const-string v1, "graphengine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
