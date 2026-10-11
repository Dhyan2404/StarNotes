.class interface abstract Lcom/sunia/graphv2/sdk/IGraphEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/commonv2/callback/INoProguard;


# virtual methods
.method public abstract graphAddLine([D[D)I
.end method

.method public abstract graphAddNode(Ljava/lang/String;)Z
.end method

.method public abstract graphAlignmentNodes([II)Z
.end method

.method public abstract graphAlignmentSelection(I)Z
.end method

.method public abstract graphAuthorizeFromFile(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract graphCanPasteNodes()Z
.end method

.method public abstract graphCanRedo()Z
.end method

.method public abstract graphCanUndo()Z
.end method

.method public abstract graphChangeNodeProperty(ILjava/lang/String;)Z
.end method

.method public abstract graphClear()Z
.end method

.method public abstract graphClearSelection()Z
.end method

.method public abstract graphConvertNodeTo(II)Z
.end method

.method public abstract graphCopyNodes([I)Z
.end method

.method public abstract graphCreateEngine(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract graphCutNodes([I)Z
.end method

.method public abstract graphFindLinesFromRange([D[D)[I
.end method

.method public abstract graphFindNodeFromPoint(DD)I
.end method

.method public abstract graphFindNodesFromRange([D[D)[I
.end method

.method public abstract graphGetLineCount()I
.end method

.method public abstract graphGetLinePoints(I[D[D)Z
.end method

.method public abstract graphGetLinePointsCount(I)I
.end method

.method public abstract graphGetLinesID()[I
.end method

.method public abstract graphGetNodeBoundingBox(I)[D
.end method

.method public abstract graphGetNodeKind(I)I
.end method

.method public abstract graphGetNodeProperty(I)Ljava/lang/String;
.end method

.method public abstract graphGetNodesCount()I
.end method

.method public abstract graphGetNodesID()[I
.end method

.method public abstract graphGetParam(I)I
.end method

.method public abstract graphGetSelection()[I
.end method

.method public abstract graphIsSelected(I)Z
.end method

.method public abstract graphMoveNode(IDDDDI)Z
.end method

.method public abstract graphMoveNodes([IDDDDI)Z
.end method

.method public abstract graphOpenData(Ljava/lang/String;)Z
.end method

.method public abstract graphPasteNodes(DD)Z
.end method

.method public abstract graphRecognize(I)Z
.end method

.method public abstract graphRecognizeRange([D[DI)Z
.end method

.method public abstract graphRedo()Z
.end method

.method public abstract graphRemoveFromRange([D)Z
.end method

.method public abstract graphRemoveFromRange([D[D)Z
.end method

.method public abstract graphRemoveNode(II)Z
.end method

.method public abstract graphRemoveNodes([I)Z
.end method

.method public abstract graphRemoveUserProperty(ILjava/lang/String;)Z
.end method

.method public abstract graphScaleTo(IDDDD)Z
.end method

.method public abstract graphSelectNode(IZ)Z
.end method

.method public abstract graphSetAAssetManager(Landroid/content/res/AssetManager;)I
.end method

.method public abstract graphSetCallback(Lcom/sunia/graphv2/local/LocalGraphListener;Lcom/sunia/graphv2/local/LocalGraphListener;)Z
.end method

.method public abstract graphSetDPI(F)Z
.end method

.method public abstract graphSetDebugLevel(I)V
.end method

.method public abstract graphSetLogDir(Ljava/lang/String;)V
.end method

.method public abstract graphSetParam(II)Z
.end method

.method public abstract graphSetUserProperty(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract graphStop()Z
.end method

.method public abstract graphSupportedConvert(I)[I
.end method

.method public abstract graphUndo()Z
.end method

.method public abstract isValidate()Z
.end method
