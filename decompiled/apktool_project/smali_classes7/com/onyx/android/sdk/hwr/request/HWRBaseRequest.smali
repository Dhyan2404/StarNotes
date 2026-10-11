.class public abstract Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B\u0011\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000cJ%\u0010\u0006\u001a\u00028\u0001\"\u000e\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u0006\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;",
        "T",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "S",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "bundle",
        "setBundle",
        "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;",
        "a",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "getBundle",
        "()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V",
        "<init>",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;->a:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    return-void
.end method


# virtual methods
.method public final getBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;->a:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    return-object p0
.end method

.method public final setBundle(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest<",
            "TT;>;>(",
            "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
            ")TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;->a:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    const-string p1, "null cannot be cast to non-null type S of com.onyx.android.sdk.hwr.request.HWRBaseRequest.setBundle"

    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setBundle(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;->a:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    return-void
.end method
