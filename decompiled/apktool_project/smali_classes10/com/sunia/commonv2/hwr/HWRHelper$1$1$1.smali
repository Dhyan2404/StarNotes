.class Lcom/sunia/commonv2/hwr/HWRHelper$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/sdk/RecognizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/hwr/HWRHelper$1$1;->onSuccess(Lcom/sunia/HTREnginev2/sdk/Engine;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sunia/commonv2/hwr/HWRHelper$1$1;


# direct methods
.method public constructor <init>(Lcom/sunia/commonv2/hwr/HWRHelper$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1$1;->this$1:Lcom/sunia/commonv2/hwr/HWRHelper$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssociationalChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1$1;->this$1:Lcom/sunia/commonv2/hwr/HWRHelper$1$1;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1;->this$0:Lcom/sunia/commonv2/hwr/HWRHelper$1;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-interface {p0, p1, p2}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onAssociationalChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    return-void
.end method

.method public onCandidateChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1$1;->this$1:Lcom/sunia/commonv2/hwr/HWRHelper$1$1;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1;->this$0:Lcom/sunia/commonv2/hwr/HWRHelper$1;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-interface {p0, p1, p2}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onCandidateChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    return-void
.end method

.method public onChemicalStructureChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1$1;->this$1:Lcom/sunia/commonv2/hwr/HWRHelper$1$1;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1;->this$0:Lcom/sunia/commonv2/hwr/HWRHelper$1;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-interface {p0, p1, p2}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onChemicalStructureChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    return-void
.end method

.method public onContentChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1$1;->this$1:Lcom/sunia/commonv2/hwr/HWRHelper$1$1;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1;->this$0:Lcom/sunia/commonv2/hwr/HWRHelper$1;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-interface {p0, p1, p2}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onContentChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1$1;->this$1:Lcom/sunia/commonv2/hwr/HWRHelper$1$1;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1;->this$0:Lcom/sunia/commonv2/hwr/HWRHelper$1;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V

    return-void
.end method

.method public onLoaded(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V
    .locals 3

    invoke-static {}, Lcom/sunia/commonv2/hwr/HWRHelper;->access$100()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1$1;->this$1:Lcom/sunia/commonv2/hwr/HWRHelper$1$1;

    iget-object v1, v1, Lcom/sunia/commonv2/hwr/HWRHelper$1$1;->this$0:Lcom/sunia/commonv2/hwr/HWRHelper$1;

    iget-object v1, v1, Lcom/sunia/commonv2/hwr/HWRHelper$1;->val$tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1$1;->this$1:Lcom/sunia/commonv2/hwr/HWRHelper$1$1;

    iget-object v0, v0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1;->this$0:Lcom/sunia/commonv2/hwr/HWRHelper$1;

    iget-object v0, v0, Lcom/sunia/commonv2/hwr/HWRHelper$1;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->setRecognizeEngineListener(Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1$1;->this$1:Lcom/sunia/commonv2/hwr/HWRHelper$1$1;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1;->this$0:Lcom/sunia/commonv2/hwr/HWRHelper$1;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onLoaded(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V

    return-void
.end method

.method public onSyntheseChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1$1;->this$1:Lcom/sunia/commonv2/hwr/HWRHelper$1$1;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1$1;->this$0:Lcom/sunia/commonv2/hwr/HWRHelper$1;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRHelper$1;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-interface {p0, p1, p2}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onSyntheseChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V

    return-void
.end method
