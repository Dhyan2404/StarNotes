.class Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/commonv2/hwr/v2/HWRHelperV2;->authorizeAndCreateEngine(Ljava/lang/String;Ljava/lang/String;Lcom/sunia/commonv2/auth/HWRURLType;Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$engineAuthenticateCallback:Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$1;->val$engineAuthenticateCallback:Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object p1

    invoke-interface {p1}, Lcom/sunia/commonv2/module/ICommonModule;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/sunia/HTREnginev2/sdk/Engine;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sunia/HTREnginev2/sdk/Engine;

    move-result-object p1

    new-instance p2, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$1$1;

    invoke-direct {p2, p0}, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$1$1;-><init>(Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$1;)V

    invoke-virtual {p1, p2}, Lcom/sunia/HTREnginev2/sdk/Engine;->setInitializeCallback(Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;)V

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/commonv2/module/ICommonModule;->getEngineLogDir()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sunia/HTREnginev2/sdk/Engine;->setLogDir(Ljava/lang/String;)V

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/commonv2/module/ICommonModule;->getAndroidLogLevel()I

    move-result p0

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->andLogLevel2EngineLogLevel(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sunia/HTREnginev2/sdk/Engine;->setDebugLevel(I)V

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/Engine;->start()V

    return-void
.end method
