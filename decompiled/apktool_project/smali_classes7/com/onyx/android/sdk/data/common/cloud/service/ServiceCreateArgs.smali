.class public final Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u001b\u0018\u0000 -2\u00020\u0001:\u0001-B\u0007\u0008\u0012\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017R\u001a\u0010\u001b\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u0017R\u001a\u0010\u001e\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015\"\u0004\u0008 \u0010\u0017R\u001a\u0010!\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0015\"\u0004\u0008#\u0010\u0017R\u001a\u0010$\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0015\"\u0004\u0008&\u0010\u0017R\u001a\u0010\'\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0015\"\u0004\u0008)\u0010\u0017R\u001a\u0010*\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0015\"\u0004\u0008,\u0010\u0017\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;",
        "",
        "()V",
        "baseUrl",
        "",
        "(Ljava/lang/String;)V",
        "getBaseUrl",
        "()Ljava/lang/String;",
        "setBaseUrl",
        "okHttpWriteTimeoutSecond",
        "",
        "getOkHttpWriteTimeoutSecond",
        "()I",
        "setOkHttpWriteTimeoutSecond",
        "(I)V",
        "okhttpReadTimeoutSecond",
        "getOkhttpReadTimeoutSecond",
        "setOkhttpReadTimeoutSecond",
        "useApkVersionInterceptor",
        "",
        "getUseApkVersionInterceptor",
        "()Z",
        "setUseApkVersionInterceptor",
        "(Z)V",
        "useAuthInterceptor",
        "getUseAuthInterceptor",
        "setUseAuthInterceptor",
        "useDeviceInterceptor",
        "getUseDeviceInterceptor",
        "setUseDeviceInterceptor",
        "useDeviceSystemInterceptor",
        "getUseDeviceSystemInterceptor",
        "setUseDeviceSystemInterceptor",
        "useJsonConverter",
        "getUseJsonConverter",
        "setUseJsonConverter",
        "useLangInterceptor",
        "getUseLangInterceptor",
        "setUseLangInterceptor",
        "useProjectIdentityInterceptor",
        "getUseProjectIdentityInterceptor",
        "setUseProjectIdentityInterceptor",
        "useTokenInterceptor",
        "getUseTokenInterceptor",
        "setUseTokenInterceptor",
        "Companion",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private baseUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private okHttpWriteTimeoutSecond:I

.field private okhttpReadTimeoutSecond:I

.field private useApkVersionInterceptor:Z

.field private useAuthInterceptor:Z

.field private useDeviceInterceptor:Z

.field private useDeviceSystemInterceptor:Z

.field private useJsonConverter:Z

.field private useLangInterceptor:Z

.field private useProjectIdentityInterceptor:Z

.field private useTokenInterceptor:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->Companion:Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->baseUrl:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useJsonConverter:Z

    const/16 v0, 0x1e

    .line 5
    iput v0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->okhttpReadTimeoutSecond:I

    .line 6
    iput v0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->okHttpWriteTimeoutSecond:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useJsonConverter:Z

    const/16 v0, 0x1e

    .line 9
    iput v0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->okhttpReadTimeoutSecond:I

    .line 10
    iput v0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->okHttpWriteTimeoutSecond:I

    .line 11
    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getBaseUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getOkHttpWriteTimeoutSecond()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->okHttpWriteTimeoutSecond:I

    return p0
.end method

.method public final getOkhttpReadTimeoutSecond()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->okhttpReadTimeoutSecond:I

    return p0
.end method

.method public final getUseApkVersionInterceptor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useApkVersionInterceptor:Z

    return p0
.end method

.method public final getUseAuthInterceptor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useAuthInterceptor:Z

    return p0
.end method

.method public final getUseDeviceInterceptor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useDeviceInterceptor:Z

    return p0
.end method

.method public final getUseDeviceSystemInterceptor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useDeviceSystemInterceptor:Z

    return p0
.end method

.method public final getUseJsonConverter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useJsonConverter:Z

    return p0
.end method

.method public final getUseLangInterceptor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useLangInterceptor:Z

    return p0
.end method

.method public final getUseProjectIdentityInterceptor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useProjectIdentityInterceptor:Z

    return p0
.end method

.method public final getUseTokenInterceptor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useTokenInterceptor:Z

    return p0
.end method

.method public final setBaseUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public final setOkHttpWriteTimeoutSecond(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->okHttpWriteTimeoutSecond:I

    return-void
.end method

.method public final setOkhttpReadTimeoutSecond(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->okhttpReadTimeoutSecond:I

    return-void
.end method

.method public final setUseApkVersionInterceptor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useApkVersionInterceptor:Z

    return-void
.end method

.method public final setUseAuthInterceptor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useAuthInterceptor:Z

    return-void
.end method

.method public final setUseDeviceInterceptor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useDeviceInterceptor:Z

    return-void
.end method

.method public final setUseDeviceSystemInterceptor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useDeviceSystemInterceptor:Z

    return-void
.end method

.method public final setUseJsonConverter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useJsonConverter:Z

    return-void
.end method

.method public final setUseLangInterceptor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useLangInterceptor:Z

    return-void
.end method

.method public final setUseProjectIdentityInterceptor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useProjectIdentityInterceptor:Z

    return-void
.end method

.method public final setUseTokenInterceptor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->useTokenInterceptor:Z

    return-void
.end method
