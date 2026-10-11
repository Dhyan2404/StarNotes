.class Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/sdk/RecognizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssociationalChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCandidateChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onContentChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V
    .locals 0

    const-string p0, "HWRSimpleRecognize"

    invoke-static {p0, p3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p3}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->access$202(Ljava/lang/Exception;)Ljava/lang/Exception;

    const-string p0, "HWRSimpleRecognize"

    monitor-enter p0

    :try_start_0
    const-string p1, "HWRSimpleRecognize"

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onLoaded(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V
    .locals 1

    const-string p0, "HWRSimpleRecognize"

    const-string v0, "createEditor,onLoaded"

    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->access$000()Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "HWRSimpleRecognize"

    const-string v0, "createEditor,sEditor == null"

    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->access$002(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-static {}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->access$000()Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    move-result-object p0

    invoke-static {}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->access$100()Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->setRecognizeEngineListener(Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->access$202(Ljava/lang/Exception;)Ljava/lang/Exception;

    const-string p0, "HWRSimpleRecognize"

    monitor-enter p0

    :try_start_0
    const-string p1, "HWRSimpleRecognize"

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSyntheseChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
