.class public final Lcom/onyx/android/sdk/auth/data/AuthBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0019\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008%\u0010&J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002R$\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u0019\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0010\u001a\u0004\u0008\u0017\u0010\u0012\"\u0004\u0008\u0018\u0010\u0014R\"\u0010 \u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR$\u0010$\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u0010\u001a\u0004\u0008\"\u0010\u0012\"\u0004\u0008#\u0010\u0014\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/android/sdk/auth/data/AuthBean;",
        "",
        "",
        "isDeviceEncryptionAndPasswordType",
        "isDeviceEncryptionType",
        "isDevicePasswordType",
        "",
        "a",
        "Ljava/lang/Integer;",
        "getEncryptionType",
        "()Ljava/lang/Integer;",
        "setEncryptionType",
        "(Ljava/lang/Integer;)V",
        "encryptionType",
        "",
        "b",
        "Ljava/lang/String;",
        "getDigest",
        "()Ljava/lang/String;",
        "setDigest",
        "(Ljava/lang/String;)V",
        "digest",
        "c",
        "getPasswordType",
        "setPasswordType",
        "passwordType",
        "d",
        "Z",
        "getApplyAsGlobal",
        "()Z",
        "setApplyAsGlobal",
        "(Z)V",
        "applyAsGlobal",
        "e",
        "getTitle",
        "setTitle",
        "title",
        "<init>",
        "()V",
        "sdk-auth_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Z

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getApplyAsGlobal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/auth/data/AuthBean;->d:Z

    return p0
.end method

.method public final getDigest()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/auth/data/AuthBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getEncryptionType()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/auth/data/AuthBean;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getPasswordType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/auth/data/AuthBean;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/auth/data/AuthBean;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final isDeviceEncryptionAndPasswordType()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/auth/data/AuthBean;->isDeviceEncryptionType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/auth/data/AuthBean;->isDevicePasswordType()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDeviceEncryptionType()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/auth/data/AuthBean;->a:Ljava/lang/Integer;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isDevicePasswordType()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/auth/data/AuthBean;->c:Ljava/lang/String;

    const-string v0, "device"

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final setApplyAsGlobal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/auth/data/AuthBean;->d:Z

    return-void
.end method

.method public final setDigest(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/auth/data/AuthBean;->b:Ljava/lang/String;

    return-void
.end method

.method public final setEncryptionType(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/auth/data/AuthBean;->a:Ljava/lang/Integer;

    return-void
.end method

.method public final setPasswordType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/auth/data/AuthBean;->c:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/auth/data/AuthBean;->e:Ljava/lang/String;

    return-void
.end method
