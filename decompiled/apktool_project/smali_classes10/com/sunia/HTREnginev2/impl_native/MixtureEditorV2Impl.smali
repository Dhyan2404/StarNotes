.class Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/sdk/editor/MixtureEditorV2;


# static fields
.field private static final TAG:Ljava/lang/String; = "MixtureEditorV2Impl"


# instance fields
.field private editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/impl_native/EditorNative;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    return-void
.end method


# virtual methods
.method public addPointsAndIDsForMixture(JJJJJJJ)[I
    .locals 15

    move-object v0, p0

    iget-object v0, v0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-virtual/range {v0 .. v14}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->addPointsAndIDsForMixture(JJJJJJJ)[I

    move-result-object v0

    return-object v0
.end method

.method public addStrokePointsForMixture(Ljava/util/List;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;J)J"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->addStrokePointsForMixture(Ljava/util/List;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public addStrokePointsPointerForMixture(JJJJJ)J
    .locals 11

    move-object v0, p0

    iget-object v0, v0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->addStrokePointsPointerForMixture(JJJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteStrokesForMixture(JJ)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->deleteStrokesForMixture(JJ)I

    move-result p0

    return p0
.end method

.method public doErrorReplace(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MixtureEditorV2Impl"

    const-string v1, "doErrorReplace"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->doErrorReplace(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public doInteractForMixture(J)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->doInteractForMixture(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doNTIStrokePreset(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MixtureEditorV2Impl"

    const-string v1, "doNTIStrokePreset"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEditorNative;->doNTIStrokePreset(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public doRecognizeForMixture(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->doRecognizeForMixture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPartContentForMixture(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->getPartContentForMixture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTotalContentForMixture()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->getTotalContentForMixture()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public inDoSaveForMixture(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->inDoSaveForMixture(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public incLoadByPathForMixture(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->incLoadByPathForMixture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isChemValidForMixture(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->isChemValidForMixture(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setWritingForMixture(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/MixtureEditorV2Impl;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->setWritingForMixture(Z)V

    return-void
.end method
