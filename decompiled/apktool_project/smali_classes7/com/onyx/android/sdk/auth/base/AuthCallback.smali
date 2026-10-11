.class public abstract Lcom/onyx/android/sdk/auth/base/AuthCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0000J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0000J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0000J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0006\u0010\u000f\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u0011\u001a\u00020\u0004J\u0006\u0010\u0012\u001a\u00020\u0004\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/auth/base/AuthCallback;",
        "",
        "()V",
        "invokeAuth",
        "",
        "callback",
        "result",
        "Lcom/onyx/android/sdk/auth/data/AuthResult;",
        "invokeCancel",
        "invokeDigestInvalid",
        "authBean",
        "Lcom/onyx/android/sdk/auth/data/AuthBean;",
        "invokeDismiss",
        "invokeOpenResetPwdView",
        "onAuth",
        "onCancel",
        "onDigestInvalid",
        "onDismiss",
        "onOpenResetPwdView",
        "sdk-auth_overseasRelease"
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invokeAuth(Lcom/onyx/android/sdk/auth/base/AuthCallback;Lcom/onyx/android/sdk/auth/data/AuthResult;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/auth/base/AuthCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/auth/data/AuthResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "result"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/auth/base/AuthCallback;->onAuth(Lcom/onyx/android/sdk/auth/data/AuthResult;)V

    return-void
.end method

.method public final invokeCancel(Lcom/onyx/android/sdk/auth/base/AuthCallback;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/auth/base/AuthCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/auth/base/AuthCallback;->onCancel()V

    return-void
.end method

.method public final invokeDigestInvalid(Lcom/onyx/android/sdk/auth/base/AuthCallback;Lcom/onyx/android/sdk/auth/data/AuthBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/auth/base/AuthCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/auth/data/AuthBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "authBean"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/auth/base/AuthCallback;->onDigestInvalid(Lcom/onyx/android/sdk/auth/data/AuthBean;)V

    return-void
.end method

.method public final invokeDismiss(Lcom/onyx/android/sdk/auth/base/AuthCallback;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/auth/base/AuthCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/auth/base/AuthCallback;->onDismiss()V

    return-void
.end method

.method public final invokeOpenResetPwdView(Lcom/onyx/android/sdk/auth/base/AuthCallback;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/auth/base/AuthCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/auth/base/AuthCallback;->onOpenResetPwdView()V

    return-void
.end method

.method public abstract onAuth(Lcom/onyx/android/sdk/auth/data/AuthResult;)V
    .param p1    # Lcom/onyx/android/sdk/auth/data/AuthResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final onCancel()V
    .locals 0

    return-void
.end method

.method public final onDigestInvalid(Lcom/onyx/android/sdk/auth/data/AuthBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/auth/data/AuthBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "authBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onDismiss()V
    .locals 0

    return-void
.end method

.method public final onOpenResetPwdView()V
    .locals 0

    return-void
.end method
