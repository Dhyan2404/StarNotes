.class Lcom/sunia/commonv2/hwr/HWRMultiEngine$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;->onCallback(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;


# direct methods
.method public constructor <init>(Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1$1;->this$1:Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1$1;->this$1:Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    const/4 p2, 0x0

    const/4 v0, -0x1

    invoke-interface {p0, p2, v0, p1}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Lcom/sunia/HTREnginev2/sdk/Engine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1$1;->this$1:Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;

    iget-object p2, p2, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;->this$0:Lcom/sunia/commonv2/hwr/HWRMultiEngine;

    invoke-static {p2, p1}, Lcom/sunia/commonv2/hwr/HWRMultiEngine;->access$002(Lcom/sunia/commonv2/hwr/HWRMultiEngine;Lcom/sunia/HTREnginev2/sdk/Engine;)Lcom/sunia/HTREnginev2/sdk/Engine;

    iget-object p1, p0, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1$1;->this$1:Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;

    iget-object p1, p1, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;->this$0:Lcom/sunia/commonv2/hwr/HWRMultiEngine;

    invoke-static {p1}, Lcom/sunia/commonv2/hwr/HWRMultiEngine;->access$000(Lcom/sunia/commonv2/hwr/HWRMultiEngine;)Lcom/sunia/HTREnginev2/sdk/Engine;

    move-result-object p1

    sget-object p2, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ECR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1$1;->this$1:Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;

    iget-object p3, p0, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;->val$configBean:Lcom/sunia/commonv2/bean/ConfigBean;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-static {p1, p2, p3, p0}, Lcom/sunia/commonv2/hwr/HWRHelper;->createEditor(Lcom/sunia/HTREnginev2/sdk/Engine;Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    return-void
.end method
