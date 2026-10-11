.class Lcom/sunia/graphv2/sdk/GraphEngineImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/graphv2/sdk/IGraphEngine;


# static fields
.field private static final TAG:Ljava/lang/String; = "GraphEngineImpl"


# instance fields
.field private mContext:Landroid/app/Application;

.field private mHandler:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public graphAddLine([D[D)I
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphAddLine(J[D[D)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public graphAddNode(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphAddNode(JLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphAlignmentNodes([II)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphAlignmentNodes(J[II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphAlignmentSelection(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphAlignmentSelection(JI)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphAuthorizeFromFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRCommonUtil;->getApplicationContent(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->graphSetAAssetManager(Landroid/content/res/AssetManager;)I

    invoke-static {p1, p2, p2}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphAuthorizeFromFile(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const-string v0, "GraphEngineImpl"

    if-nez p0, :cond_0

    const-string p0, "graph\u83b7\u53d6\u6388\u6743\u5931\u8d25\uff0c\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p1, p2, p2}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphAuthorizeFromFile(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "graph\u83b7\u53d6\u6388\u6743\u91cd\u8bd5\u6210\u529f"

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "graphAuthorizeFromFile result= false \r,graphCertifyFilePath="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method public graphCanPasteNodes()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphCanPasteNodes(J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphCanRedo()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphCanredo(J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphCanUndo()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphCanundo(J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphChangeNodeProperty(ILjava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphChangeNodeProperty(JILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphClear()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphClear(J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphClearSelection()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphClearSelection(J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphConvertNodeTo(II)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphConvertNodeTo(JII)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphCopyNodes([I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphCopyNodes(J[I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphCreateEngine(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphStop(J)Z

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphDestroyEngine(J)V

    iput-wide v2, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    :cond_0
    invoke-static {p1, p2}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphCreateEngine(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    cmp-long p0, p1, v2

    if-nez p0, :cond_1

    const-string p0, "GraphEngineImpl"

    const-string p1, "Graph\u5f15\u64ce\u521b\u5efa\u5931\u8d25:"

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public graphCutNodes([I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphCutNodes(J[I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphFindLinesFromRange([D[D)[I
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphFindLinesFromRange(J[D[D)[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public graphFindNodeFromPoint(DD)I
    .locals 7

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v1 .. v6}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphFindNodeFromPoint(JDD)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public graphFindNodesFromRange([D[D)[I
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphFindNodesFromRange(J[D[D)[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public graphGetLineCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphGetLineCount(J)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public graphGetLinePoints(I[D[D)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphGetLinePoints(JI[D[D)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphGetLinePointsCount(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphGetLinePointsCount(JI)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public graphGetLinesID()[I
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphGetLinesID(J)[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public graphGetNodeBoundingBox(I)[D
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphGetNodeBoundingBox(JI)[D

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [D

    return-object p0
.end method

.method public graphGetNodeKind(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphGetNodeKind(JI)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public graphGetNodeProperty(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphGetNodeProperty(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public graphGetNodesCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphGetNodesCount(J)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public graphGetNodesID()[I
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphGetNodesID(J)[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public graphGetParam(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphGetParam(JI)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public graphGetSelection()[I
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphGetSelection(J)[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public graphIsSelected(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphIsSelected(JI)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphMoveNode(IDDDDI)Z
    .locals 12

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    iget-wide v0, v0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    move v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphMoveNode(JIDDDDI)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public graphMoveNodes([IDDDDI)Z
    .locals 12

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    iget-wide v0, v0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphMoveNodes(J[IDDDDI)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public graphOpenData(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphOpenData(JLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphPasteNodes(DD)Z
    .locals 7

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v1 .. v6}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphPasteNodes(JDD)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphRecognize(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphRecognize(JI)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphRecognizeRange([D[DI)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphRecognizeRange(J[D[DI)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphRedo()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphRedo(J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphRemoveFromRange([D)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphRemoveFromRange(J[D)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphRemoveFromRange([D[D)Z
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphRemoveFromRange(J[D[D)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphRemoveNode(II)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphRemoveNode(JII)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphRemoveNodes([I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphRemoveNodes(J[I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphRemoveUserProperty(ILjava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphRemoveUserProperty(JILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphScaleTo(IDDDD)Z
    .locals 11

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    iget-wide v0, v0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v10}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphScaleTo(JIDDDD)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public graphSelectNode(IZ)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphSelectNode(JIZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphSetAAssetManager(Landroid/content/res/AssetManager;)I
    .locals 0

    invoke-static {p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphSetAAssetManager(Landroid/content/res/AssetManager;)I

    move-result p0

    return p0
.end method

.method public graphSetCallback(Lcom/sunia/graphv2/local/LocalGraphListener;Lcom/sunia/graphv2/local/LocalGraphListener;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphSetCallback(Lcom/sunia/graphv2/local/LocalGraphListener;Lcom/sunia/graphv2/local/LocalGraphListener;)Z

    move-result p0

    return p0
.end method

.method public graphSetDPI(F)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphSetDPI(JF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphSetDebugLevel(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphSetDebugLevel(I)V

    :cond_0
    return-void
.end method

.method public graphSetLogDir(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphSetLogDir(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public graphSetParam(II)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphSetParam(JII)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphSetUserProperty(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphSetUserProperty(JILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphStop()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphStop(J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public graphSupportedConvert(I)[I
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphSupportedConvert(JI)[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public graphUndo()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphUndo(J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isValidate()Z
    .locals 4

    iget-wide v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-string p0, "GraphEngineImpl"

    const-string v0, "GraphEngine\u672a\u521d\u59cb\u5316"

    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {v0, v1}, Lcom/sunia/graphv2/local/LocalEngineNative;->graphEngineValid(J)Z

    move-result p0

    return p0
.end method
