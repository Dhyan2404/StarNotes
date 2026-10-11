.class public final Lcom/onyx/android/sdk/auth/data/PasswordBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/auth/data/PasswordBean$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0013\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0015\u0010\u000bJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R$\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/auth/data/PasswordBean;",
        "",
        "",
        "isResetDeviceType",
        "",
        "getResetPwdPushAction",
        "a",
        "Ljava/lang/String;",
        "getType",
        "()Ljava/lang/String;",
        "setType",
        "(Ljava/lang/String;)V",
        "type",
        "",
        "b",
        "I",
        "getEncryptionType",
        "()I",
        "setEncryptionType",
        "(I)V",
        "encryptionType",
        "<init>",
        "Companion",
        "sdk-auth_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/auth/data/PasswordBean$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:I


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/auth/data/PasswordBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/auth/data/PasswordBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/auth/data/PasswordBean;->Companion:Lcom/onyx/android/sdk/auth/data/PasswordBean$Companion;

    const/4 v0, -0x1

    sput v0, Lcom/onyx/android/sdk/auth/data/PasswordBean;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/onyx/android/sdk/auth/data/PasswordBean;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/auth/data/PasswordBean;->a:Ljava/lang/String;

    .line 4
    sget p1, Lcom/onyx/android/sdk/auth/data/PasswordBean;->c:I

    iput p1, p0, Lcom/onyx/android/sdk/auth/data/PasswordBean;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/auth/data/PasswordBean;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getALL$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/auth/data/PasswordBean;->c:I

    return v0
.end method


# virtual methods
.method public final getEncryptionType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/auth/data/PasswordBean;->b:I

    return p0
.end method

.method public final getResetPwdPushAction()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/auth/data/PasswordBean;->a:Ljava/lang/String;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4f94e1aa

    if-eq v0, v1, :cond_3

    const v1, 0x18538

    if-eq v0, v1, :cond_1

    const v1, 0x33aff2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "note"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "doc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "resetDocPwd"

    return-object p0

    :cond_3
    const-string v0, "device"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "resetDevicePwd"

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "resetNotePwd"

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/auth/data/PasswordBean;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final isResetDeviceType()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/auth/data/PasswordBean;->a:Ljava/lang/String;

    const-string v0, "device"

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final setEncryptionType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/auth/data/PasswordBean;->b:I

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/auth/data/PasswordBean;->a:Ljava/lang/String;

    return-void
.end method
