.class Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->createEditor(Lcom/sunia/commonv2/bean/ConfigBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$configBean:Lcom/sunia/commonv2/bean/ConfigBean;


# direct methods
.method public constructor <init>(Lcom/sunia/commonv2/bean/ConfigBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$3;->val$configBean:Lcom/sunia/commonv2/bean/ConfigBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$3$1;

    invoke-direct {p1, p0}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$3$1;-><init>(Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$3;)V

    invoke-static {p1}, Lcom/sunia/commonv2/hwr/HWRHelper;->createEngine(Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;)V

    return-void
.end method
