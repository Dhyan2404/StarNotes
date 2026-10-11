.class public final Lcom/onyx/android/sdk/data/account/bean/AccountVerifyPurpose;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyPurpose;",
        "",
        "()V",
        "KEY_PURPOSE",
        "",
        "PURPOSE_BIND",
        "PURPOSE_BIND_EMAIL_AFTER_LOGIN",
        "PURPOSE_BIND_EMAIL_BEFORE_VERIFY",
        "PURPOSE_BIND_PHONE_AFTER_LOGIN",
        "PURPOSE_LOGIN",
        "PURPOSE_LOGOFF",
        "PURPOSE_MESSAGE_CENTER",
        "PURPOSE_NONE",
        "PURPOSE_PASSWORD_RECOVER",
        "PURPOSE_PASSWORD_RESET",
        "PURPOSE_REBIND",
        "PURPOSE_SECURITY",
        "PURPOSE_UNBIND",
        "purposeToAction",
        "purpose",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyPurpose;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PURPOSE:Ljava/lang/String; = "purpose"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_BIND:Ljava/lang/String; = "bind"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_BIND_EMAIL_AFTER_LOGIN:Ljava/lang/String; = "bind_email_after_login"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_BIND_EMAIL_BEFORE_VERIFY:Ljava/lang/String; = "bind_email_before_verify"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_BIND_PHONE_AFTER_LOGIN:Ljava/lang/String; = "bind_phone_after_login"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_LOGIN:Ljava/lang/String; = "login"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_LOGOFF:Ljava/lang/String; = "destroy"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_MESSAGE_CENTER:Ljava/lang/String; = "message_center"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_NONE:Ljava/lang/String; = "none"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_PASSWORD_RECOVER:Ljava/lang/String; = "password_recover"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_PASSWORD_RESET:Ljava/lang/String; = "password_reset"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_REBIND:Ljava/lang/String; = "rebind"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_SECURITY:Ljava/lang/String; = "security"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PURPOSE_UNBIND:Ljava/lang/String; = "unbind"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyPurpose;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyPurpose;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyPurpose;->INSTANCE:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyPurpose;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final purposeToAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const-string v0, "security"

    const-string v1, "bind"

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "password_recover"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :sswitch_1
    const-string p0, "password_reset"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    goto :goto_0

    :sswitch_2
    const-string p0, "bind_email_after_login"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :sswitch_3
    const-string p0, "bind_phone_after_login"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :cond_2
    :goto_0
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7ea93d8d -> :sswitch_3
        -0x5bdc045f -> :sswitch_2
        -0xb316555 -> :sswitch_1
        -0x54a3c40 -> :sswitch_0
    .end sparse-switch
.end method
