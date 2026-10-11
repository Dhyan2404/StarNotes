.class public Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalRecognizeListener"


# instance fields
.field private editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

.field private innerListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

.field private recognizePath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/impl_native/EditorNative;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->innerListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    return-void
.end method


# virtual methods
.method public onAssociationalChanged(JLjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->innerListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-interface {p1, p0, p3}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onAssociationalChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCandidateChanged(JLjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->innerListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-interface {p1, p0, p3}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onCandidateChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onChemicalStructureChanged(JLjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->innerListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-interface {p1, p0, p3}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onChemicalStructureChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onContentChanged(JLjava/lang/String;)V
    .locals 7

    const-string p1, "label"

    const-string p2, "LocalRecognizeListener"

    const-string v0, ","

    iget-object v1, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->innerListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    if-eqz v1, :cond_4

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "gesture"

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "type is gesture "

    invoke-static {p2, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recognizePath size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->recognizePath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->recognizePath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->recognizePath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->recognizePath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget v6, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->recognizePath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {v6}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-ge v2, v6, :cond_0

    iget v6, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget v6, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentJson: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "label: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->innerListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-interface {p1, p0, p3}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onContentChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onError(JILjava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLoaded onError errorCode\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ErrorMsg:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalRecognizeListener"

    invoke-static {p2, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->innerListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, p3, p2}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onErrorReplaceChanged(JLjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->innerListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-interface {p1, p0, p3}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onErrorReplaceChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLoaded(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoaded lEditorHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalRecognizeListener"

    invoke-static {p2, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    if-eqz p1, :cond_0

    const-string v0, "getHdbModelVersion"

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;->commonInterface(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoaded,getHdbModelVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->innerListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-interface {p1, p0}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onLoaded(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V

    :cond_1
    return-void
.end method

.method public onSyntheseChanged(JLjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->innerListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->editorNative:Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-interface {p1, p0, p3}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onSyntheseChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRecognizePath(Lcom/sunia/HTREnginev2/sdk/RecognizePath;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/LocalRecognizeListener;->recognizePath:Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    return-void
.end method
