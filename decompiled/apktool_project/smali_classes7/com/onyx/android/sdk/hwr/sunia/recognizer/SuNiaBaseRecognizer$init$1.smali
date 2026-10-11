.class public final Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer$init$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/commonv2/module/ICommonModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->init(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer$init$1",
        "Lcom/sunia/commonv2/module/ICommonModule;",
        "getAndroidLogLevel",
        "",
        "getAppId",
        "",
        "getPublicKey",
        "sdk-sunia_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer$init$1;->a:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidLogLevel()I
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    :goto_0
    return p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer$init$1;->a:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer$init$1;->a:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getProductKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
