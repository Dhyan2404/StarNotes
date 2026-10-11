.class public final Lcom/onyx/android/sdk/base/rx/RxBaseAction$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction$Companion;",
        "",
        "()V",
        "appContext",
        "Landroid/content/Context;",
        "enableBenchmark",
        "",
        "getEnableBenchmark",
        "()Z",
        "setEnableBenchmark",
        "(Z)V",
        "reportTimeMs",
        "",
        "getReportTimeMs",
        "()I",
        "setReportTimeMs",
        "(I)V",
        "init",
        "",
        "context",
        "isInitializedAppContext",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnableBenchmark()Z
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->access$getEnableBenchmark$cp()Z

    move-result p0

    return p0
.end method

.method public final getReportTimeMs()I
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->access$getReportTimeMs$cp()I

    move-result p0

    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "getApplicationContext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->access$setAppContext$cp(Landroid/content/Context;)V

    return-void
.end method

.method public final isInitializedAppContext()Z
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->access$getAppContext$cp()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setEnableBenchmark(Z)V
    .locals 0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->access$setEnableBenchmark$cp(Z)V

    return-void
.end method

.method public final setReportTimeMs(I)V
    .locals 0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->access$setReportTimeMs$cp(I)V

    return-void
.end method
