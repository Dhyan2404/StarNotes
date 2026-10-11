.class public Lcom/sunia/HTREnginev2/impl_native/EditorNative;
.super Lcom/sunia/HTREnginev2/sdk/editor/Editor;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "EditorNative"

.field private static hasJNICommonInterface:Z = true


# instance fields
.field lHandler:J

.field private localRecognizeListener:Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;

.field private mixtureEditorV2:Lcom/sunia/HTREnginev2/sdk/editor/MixtureEditorV2;

.field private params:Lcom/sunia/HTREnginev2/sdk/Params;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JLcom/sunia/HTREnginev2/sdk/Params;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/sdk/editor/Editor;-><init>()V

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    iput-object p3, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->params:Lcom/sunia/HTREnginev2/sdk/Params;

    new-instance p1, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;-><init>(Lcom/sunia/HTREnginev2/impl_native/EditorNative;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->mixtureEditorV2:Lcom/sunia/HTREnginev2/sdk/editor/MixtureEditorV2;

    return-void
.end method


# virtual methods
.method public addPoints(Ljava/util/List;)[I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;)[I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "EditorNative"

    if-lez v0, :cond_6

    new-array v4, v0, [D

    new-array v5, v0, [D

    new-array v6, v0, [D

    new-array v7, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget v8, v8, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    float-to-double v8, v8

    aput-wide v8, v4, v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget v8, v8, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    float-to-double v8, v8

    aput-wide v8, v5, v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget-wide v8, v8, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->t:J

    long-to-double v8, v8

    aput-wide v8, v6, v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget v8, v8, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->action:I

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    move v8, v3

    :goto_1
    if-ge v2, v0, :cond_3

    aget v9, v7, v2

    if-nez v9, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    add-int/lit8 v8, v8, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eq v3, v8, :cond_4

    const-string v0, "addPoints ACTION_DOWN count not equal ACTION_UP count"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-wide v2, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static/range {v2 .. v7}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->addPoints(J[D[D[D[I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->setPoints(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->setStrokeId(J)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->localRecognizeListener:Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {p1, p0}, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->setRecognizePath(Lcom/sunia/HTREnginev2/sdk/RecognizePath;)V

    :cond_5
    return-object v0

    :cond_6
    const-string p1, "recognizePoints is empty"

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->setStrokeId(J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public addPointsAndIDsForMixture(JJJJJJJ)[I
    .locals 16

    const-string v0, "EditorNative"

    const-string v1, "addPointsAndIDsForMixture"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    invoke-static/range {v0 .. v15}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->addPointsAndIDsForMixture(JJJJJJJJ)[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized addStrokePoints(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;)I"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-array v1, v0, [D

    new-array v2, v0, [D

    new-array v3, v0, [D

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    if-eqz v5, :cond_0

    iget v6, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    float-to-double v6, v6

    aput-wide v6, v1, v4

    iget v6, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    float-to-double v6, v6

    aput-wide v6, v2, v4

    iget-wide v5, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->t:J

    long-to-double v5, v5

    aput-wide v5, v3, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v4, v5, v1, v2, v3}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->addStrokePoints(J[D[D[D)I

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->setStrokeId(J)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->setPoints(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->localRecognizeListener:Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {p1, v1}, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->setRecognizePath(Lcom/sunia/HTREnginev2/sdk/RecognizePath;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return v0

    :cond_3
    :try_start_1
    const-string p1, "EditorNative"

    const-string v0, "recognizePoints is empty"

    invoke-static {p1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->setStrokeId(J)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addStrokePointsForMixture(Ljava/util/List;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;J)J"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-array v3, v0, [D

    new-array v4, v0, [D

    new-array v5, v0, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    if-eqz v2, :cond_0

    iget v6, v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    float-to-double v6, v6

    aput-wide v6, v3, v1

    iget v6, v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    float-to-double v6, v6

    aput-wide v6, v4, v1

    iget-wide v6, v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->t:J

    long-to-double v6, v6

    aput-wide v6, v5, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    move-wide v6, p2

    invoke-static/range {v1 .. v7}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->addStrokePointsForMixture(J[D[D[DJ)J

    move-result-wide p2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {v0, p2, p3}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->setStrokeId(J)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->setPoints(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->localRecognizeListener:Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->setRecognizePath(Lcom/sunia/HTREnginev2/sdk/RecognizePath;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-wide p2

    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    const-wide/16 p2, -0x1

    invoke-virtual {p1, p2, p3}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->setStrokeId(J)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addStrokePointsPointerForMixture(JJJJJ)J
    .locals 12

    const-string v0, "EditorNative"

    const-string v1, "addStrokePointsPointerForMixture"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    iget-wide v0, v0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v0 .. v11}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->addStrokePointsPointerForMixture(JJJJJJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public calculate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditorNative"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->calculate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public clearContent()V
    .locals 2

    const-string v0, "EditorNative"

    const-string v1, "clearContent"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->clear()V

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->clearContent(J)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    const-string v0, "EditorNative"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->close(J)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->localRecognizeListener:Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    :cond_0
    return-void
.end method

.method public commonInterface(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->commonInterface(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public commonInterface(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2
    sget-boolean v0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->hasJNICommonInterface:Z

    const-string v1, "commonInterface not found"

    const-string v2, "EditorNative"

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    iget-wide v3, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v3, v4, p1, p2}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->commonInterface(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    .line 5
    sput-boolean p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->hasJNICommonInterface:Z

    .line 6
    invoke-static {v2, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v2, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public deleteStrokePoints(I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v2, v3, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->deleteStrokePoints(JI)I

    move-result p0

    sget p1, Lcom/sunia/HTREnginev2/sdk/ResultCode;->CODE_OK:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public deleteStrokesForMixture(JJ)I
    .locals 7

    const-string v0, "EditorNative"

    const-string v1, "deleteStrokesForMixture"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v1 .. v6}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->deleteStrokesForMixture(JJJ)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public doAssociate(Ljava/lang/String;)V
    .locals 2

    const-string v0, "EditorNative"

    const-string v1, "doAssociate"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->doAssociate(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public doChemicalStructure(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-array v3, v0, [D

    new-array v4, v0, [D

    new-array v5, v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget v2, v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    float-to-double v6, v2

    aput-wide v6, v3, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget v2, v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    float-to-double v6, v2

    aput-wide v6, v4, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget v2, v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->action:I

    aput v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->doChemicalStructure(J[D[D[ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "EditorNative"

    const-string p1, "the engine is invalid"

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public doChemicalStructureV2(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;)V"
        }
    .end annotation

    const-string v0, "the engine is invalid"

    const-string v1, "EditorNative"

    :try_start_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->localRecognizeListener:Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4, v0}, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->onError(JILjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sunia/commonv2/util/HWRUtil;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->localRecognizeListener:Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    sget-object v0, Lcom/sunia/commonv2/exception/NAIException;->ONE:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {v0}, Lcom/sunia/commonv2/exception/NAIException;->getCode()I

    move-result v0

    sget-object v4, Lcom/sunia/commonv2/exception/NAIException;->ONE:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v0, v4}, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->onError(JILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->clearContent()V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->addPoints(Ljava/util/List;)[I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->doPageRecognize(Z)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->getContent()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sunia/HTREnginev2/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->localRecognizeListener:Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->onChemicalStructureChanged(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    move-exception p1

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->localRecognizeListener:Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->onError(JILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public doInteractForMixture(J)Ljava/lang/String;
    .locals 2

    const-string v0, "EditorNative"

    const-string v1, "doInteractForMixture"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->doInteractForMixture(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public doPageRecognize()V
    .locals 2

    const-string v0, "EditorNative"

    const-string v1, "doPageRecognize sync:"

    .line 1
    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    const/4 p0, 0x1

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->doPageRecognize(JZ)V

    :cond_0
    return-void
.end method

.method public doPageRecognize(Z)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doPageRecognize sync:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditorNative"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->doPageRecognize(JZ)V

    :cond_0
    return-void
.end method

.method public doPointsToBitmap(Ljava/util/List;)Lcom/sunia/commonv2/bean/PointsToBitmapResult;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;)",
            "Lcom/sunia/commonv2/bean/PointsToBitmapResult;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const-string v2, "EditorNative"

    if-eqz v0, :cond_1

    const-string p0, "recognizePoints is empty"

    invoke-static {v2, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    const-string p0, "size is empty"

    invoke-static {v2, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    new-array v6, v4, [D

    new-array v7, v4, [D

    new-array v8, v4, [I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v3

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v10, 0x1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    move v4, v3

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget v9, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    float-to-double v11, v9

    aput-wide v11, v6, v0

    iget v5, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    float-to-double v11, v5

    aput-wide v11, v7, v0

    if-nez v4, :cond_5

    aput v3, v8, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v10

    if-ne v4, v5, :cond_6

    aput v2, v8, v0

    goto :goto_2

    :cond_6
    aput v10, v8, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    new-array p1, v2, [F

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->doPointsToBitmap(J[D[D[I[F)[B

    move-result-object p0

    new-instance v0, Lcom/sunia/commonv2/bean/PointsToBitmapResult;

    aget v1, p1, v3

    aget p1, p1, v10

    invoke-direct {v0, p0, v1, p1}, Lcom/sunia/commonv2/bean/PointsToBitmapResult;-><init>([BFF)V

    return-object v0
.end method

.method public doRecognizeForMixture(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "EditorNative"

    const-string v1, "doRecognizeForMixture"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->doRecognizeForMixture(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public doSynthese(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "EditorNative"

    const-string v1, "doSynthese"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->doSynthese(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public editorPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->editorPause(J)V

    :cond_0
    return-void
.end method

.method public exportGraphMl()Ljava/lang/String;
    .locals 2

    const-string v0, "EditorNative"

    const-string v1, "exportGraphMl"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->exportGraphMl(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 10

    const-string v0, "label"

    const-string v1, "gesture"

    const-string v2, "EditorNative"

    const-string v3, ","

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v4, v5}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->getContent(J)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "type is gesture "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v8, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {v8}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    iget-object v8, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {v8}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget-object v9, p0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->currentPath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {v9}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->size()I

    move-result v9

    sub-int/2addr v9, v7

    if-ge v1, v9, :cond_0

    iget v9, v8, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget v9, v8, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "label: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object v4

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public getHandler()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    return-wide v0
.end method

.method public getMathEngineVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "EditorNative"

    const-string v1, "getMathEngineVersion"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->getMathEngineVersion(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMixtureEditorV2()Lcom/sunia/HTREnginev2/sdk/editor/MixtureEditorV2;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->mixtureEditorV2:Lcom/sunia/HTREnginev2/sdk/editor/MixtureEditorV2;

    return-object p0
.end method

.method public getPartContentForMixture(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "EditorNative"

    const-string v1, "getPartContentForMixture"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->getPartContentForMixture(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getTotalContentForMixture()Ljava/lang/String;
    .locals 2

    const-string v0, "EditorNative"

    const-string v1, "getTotalContentForMixture"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->getTotalContentForMixture(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public inDoSaveForMixture(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "EditorNative"

    const-string v1, "inDoSaveForMixture"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v2, v3, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->inDoSaveForMixture(JLjava/lang/String;)I

    move-result p0

    sget p1, Lcom/sunia/HTREnginev2/sdk/ResultCode;->CODE_OK:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public incLoadByPathForMixture(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "EditorNative"

    const-string v1, "incLoadByPathForMixture"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->incLoadByPathForMixture(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public incRecDoSave(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v2, v3, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->incRecDoSave(JLjava/lang/String;)I

    move-result p0

    sget p1, Lcom/sunia/HTREnginev2/sdk/ResultCode;->CODE_OK:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public incRecLoadByPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->incRecLoadByPath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public isChemValidForMixture(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "EditorNative"

    const-string v1, "isChemValidForMixture"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->isChemValidForMixture(JLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isClosed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->isClosed(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v0, "EditorNative"

    const-string v1, "Engine is closed, please check the log "

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 4

    const-string v0, "isEmpty"

    const-string v1, "EditorNative"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v2, v3}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->isEmpty(J)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Engine is empty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->isEmpty(J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isIdle()Z
    .locals 2

    const-string v0, "EditorNative"

    const-string v1, "isIdle"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->isIdle(J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isValid()Z
    .locals 4

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string v0, "EditorNative"

    const-string v1, "editor unavailable"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method public latexToMathML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "latexToMathML:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditorNative"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->latexToMathML(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public latexToOfficeMathML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "latexToOfficeMathML:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditorNative"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->latexToOfficeMathML(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public obtainParams()Lcom/sunia/HTREnginev2/sdk/Params;
    .locals 5

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v3, v4}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->obtainParams(J)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long p0, v3, v1

    if-eqz p0, :cond_1

    new-instance p0, Lcom/sunia/HTREnginev2/impl_native/ParamsNative;

    invoke-direct {p0, v3, v4}, Lcom/sunia/HTREnginev2/impl_native/ParamsNative;-><init>(J)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public obtainPoint(FFJI)Lcom/sunia/HTREnginev2/sdk/RecognizePoint;
    .locals 6

    new-instance p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>(FFJI)V

    return-object p0
.end method

.method public open()Z
    .locals 5

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open open editor isValid :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditorNative"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HWREngineVariable.coreApplication="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sunia/commonv2/global/HWREngineVariable;->sHWRApplication:Landroid/app/Application;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sunia/commonv2/global/HWREngineVariable;->sHWRApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sHWRApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->setAssetManager(Landroid/content/res/AssetManager;)I

    .line 8
    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->params:Lcom/sunia/HTREnginev2/sdk/Params;

    check-cast p0, Lcom/sunia/HTREnginev2/impl_native/ParamsNative;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->getHandler()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->open(JJ)I

    move-result p0

    sget v0, Lcom/sunia/HTREnginev2/sdk/ResultCode;->CODE_OK:I

    if-ne p0, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public open(Lcom/sunia/HTREnginev2/sdk/Params;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->params:Lcom/sunia/HTREnginev2/sdk/Params;

    .line 2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->open()Z

    move-result p0

    return p0
.end method

.method public pictureProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->pictureProcess(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public setCharacterSet([Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->setCharacterSet(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRecognizeEngineListener(Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;-><init>(Lcom/sunia/HTREnginev2/impl_native/EditorNative;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->localRecognizeListener:Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;

    iget-wide p0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {p0, p1, v0}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->setRecognizeEngineListener(JLcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;)V

    return-void
.end method

.method public setReferWords(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->setReferWords(JLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setSyntheseWords(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->setSyntheseWords(JLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setWritingForMixture(Z)V
    .locals 2

    const-string v0, "EditorNative"

    const-string v1, "setWritingForMixture"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->setWritingForMixture(JZ)V

    :cond_0
    return-void
.end method

.method public shapeEdite(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->shapeEdite(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public syncRecognize(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "EditorNative"

    const-string v1, "syncRecognize"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-array v1, v0, [D

    new-array v2, v0, [D

    new-array v3, v0, [D

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    if-eqz v5, :cond_0

    iget v6, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    float-to-double v6, v6

    aput-wide v6, v1, v4

    iget v6, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    float-to-double v6, v6

    aput-wide v6, v2, v4

    iget-wide v5, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->t:J

    long-to-double v5, v5

    aput-wide v5, v3, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-wide p0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {p0, p1, v1, v2, v3}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->syncRecognize(J[D[D[D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public updateParams(Lcom/sunia/HTREnginev2/sdk/Params;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sHWRApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->setAssetManager(Landroid/content/res/AssetManager;)I

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    check-cast p1, Lcom/sunia/HTREnginev2/impl_native/ParamsNative;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->getHandler()J

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->updateParams(JJ)I

    move-result p0

    sget p1, Lcom/sunia/HTREnginev2/sdk/ResultCode;->CODE_OK:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public updateRecognizeWord(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->updateRecognizeWord(JILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public waitForIdle()V
    .locals 2

    const-string v0, "EditorNative"

    const-string v1, "waitForIdle"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->waitForIdle(J)V

    :cond_0
    return-void
.end method
