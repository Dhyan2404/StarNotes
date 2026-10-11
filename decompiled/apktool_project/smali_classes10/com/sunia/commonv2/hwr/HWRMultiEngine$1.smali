.class Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/hwr/HWRMultiEngine;->init(Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunia/commonv2/hwr/HWRMultiEngine;

.field final synthetic val$configBean:Lcom/sunia/commonv2/bean/ConfigBean;

.field final synthetic val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;


# direct methods
.method public constructor <init>(Lcom/sunia/commonv2/hwr/HWRMultiEngine;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;->this$0:Lcom/sunia/commonv2/hwr/HWRMultiEngine;

    iput-object p2, p0, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;->val$configBean:Lcom/sunia/commonv2/bean/ConfigBean;

    iput-object p3, p0, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;->val$recognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1$1;

    invoke-direct {p1, p0}, Lcom/sunia/commonv2/hwr/HWRMultiEngine$1$1;-><init>(Lcom/sunia/commonv2/hwr/HWRMultiEngine$1;)V

    invoke-static {p1}, Lcom/sunia/commonv2/hwr/HWRHelper;->createEngine(Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;)V

    return-void
.end method
