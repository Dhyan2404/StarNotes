.class public abstract Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;",
        "",
        "safelyExecuteImpl",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "execute",
        "e",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "getWorkBundle",
        "()Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "setWorkBundle",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V",
        "<init>",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/android/sdk/universal/editor/WorkBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->e:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->e:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    return-object p0
.end method

.method public final safelyExecuteImpl()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->e:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    return-void
.end method

.method public final setWorkBundle(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;->e:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    return-void
.end method
