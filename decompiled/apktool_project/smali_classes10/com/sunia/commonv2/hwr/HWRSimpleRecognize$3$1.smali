.class Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$3;->onCallback(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$3;


# direct methods
.method public constructor <init>(Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$3$1;->this$0:Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError,createEngine exception="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",errorCode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "HWRSimpleRecognize"

    invoke-static {p2, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->access$100()Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    move-result-object p0

    const/4 p2, 0x0

    const/4 v0, -0x1

    invoke-interface {p0, p2, v0, p1}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Lcom/sunia/HTREnginev2/sdk/Engine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->access$502(Lcom/sunia/HTREnginev2/sdk/Engine;)Lcom/sunia/HTREnginev2/sdk/Engine;

    sget-object p2, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ECR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$3$1;->this$0:Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$3;

    iget-object p0, p0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$3;->val$configBean:Lcom/sunia/commonv2/bean/ConfigBean;

    invoke-static {}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->access$100()Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    move-result-object p3

    invoke-static {p1, p2, p0, p3}, Lcom/sunia/commonv2/hwr/HWRHelper;->createEditor(Lcom/sunia/HTREnginev2/sdk/Engine;Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    return-void
.end method
