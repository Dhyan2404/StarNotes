.class public final Lcom/onyx/android/sdk/replicator/colorset/core/ColorServiceExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\t\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/colorset/core/ColorServiceExecutor;",
        "",
        "LColorSetQueryResponse;",
        "loadColorSet",
        "Lcom/onyx/android/sdk/replicator/colorset/core/ColorService;",
        "a",
        "Lcom/onyx/android/sdk/replicator/colorset/core/ColorService;",
        "getColorApi",
        "()Lcom/onyx/android/sdk/replicator/colorset/core/ColorService;",
        "colorApi",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/colorset/core/ColorServiceExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lcom/onyx/android/sdk/replicator/colorset/core/ColorService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/colorset/core/ColorServiceExecutor;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/colorset/core/ColorServiceExecutor;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/colorset/core/ColorServiceExecutor;->INSTANCE:Lcom/onyx/android/sdk/replicator/colorset/core/ColorServiceExecutor;

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v1, Lcom/onyx/android/sdk/replicator/colorset/core/ColorService;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/colorset/core/ColorService;

    sput-object v0, Lcom/onyx/android/sdk/replicator/colorset/core/ColorServiceExecutor;->a:Lcom/onyx/android/sdk/replicator/colorset/core/ColorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getColorApi()Lcom/onyx/android/sdk/replicator/colorset/core/ColorService;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/colorset/core/ColorServiceExecutor;->a:Lcom/onyx/android/sdk/replicator/colorset/core/ColorService;

    return-object p0
.end method

.method public final loadColorSet()LColorSetQueryResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/colorset/core/ColorServiceExecutor;->a:Lcom/onyx/android/sdk/replicator/colorset/core/ColorService;

    invoke-interface {p0}, Lcom/onyx/android/sdk/replicator/colorset/core/ColorService;->loadColorSet()Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "body(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LColorSetQueryResponse;

    return-object p0
.end method
