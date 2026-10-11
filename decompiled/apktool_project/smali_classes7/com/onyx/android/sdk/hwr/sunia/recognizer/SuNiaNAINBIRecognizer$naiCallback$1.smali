.class public final Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$naiCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/naiv2/sdk/NAICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0014\u0010\u0007\u001a\u00020\u00022\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005H\u0016J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "com/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$naiCallback$1",
        "Lcom/sunia/naiv2/sdk/NAICallback;",
        "",
        "onLoad",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "onError",
        "a",
        "sdk-sunia_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$naiCallback$1;->a:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    sget-object v0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;->Companion:Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$naiCallback$1;->a:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;

    invoke-static {v1}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->access$getNaiParameterSingleBean(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;)Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet$Companion;->getItemBean(Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;)Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$naiCallback$1;->a:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->getMode$sdk_sunia_overseasRelease()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->setMode(I)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object v3, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$naiCallback$1;->a:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start nai name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->getName$sdk_sunia_overseasRelease()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->getMode$sdk_sunia_overseasRelease()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->getInstance()Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    move-result-object v6

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v2

    invoke-interface {v2}, Lcom/sunia/commonv2/module/ICommonModule;->getAuthorizeFile()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->getIntensity$sdk_sunia_overseasRelease()I

    move-result v9

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet$Companion;->getNBIParameter(Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;)Lcom/sunia/nbiv2/sdk/NBIParameter;

    move-result-object v10

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$naiCallback$1;->a:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->access$getDrawNBIPathCallback$p(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;)Lcom/sunia/nbiv2/sdk/NBICallbackV2;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->start(Landroid/content/Context;Ljava/lang/String;ILcom/sunia/nbiv2/sdk/NBIParameter;Lcom/sunia/nbiv2/sdk/NBICallbackV2;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "e"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$naiCallback$1;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onLoad()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$naiCallback$1;->a()V

    return-void
.end method
