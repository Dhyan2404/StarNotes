.class public final Lcom/onyx/android/sdk/data/utils/SecurityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/utils/SecurityUtils;",
        "",
        "()V",
        "KEY_USER_AGREE",
        "",
        "SP_KEY_ANDROID_ID",
        "androidIDOption",
        "Lcom/onyx/android/sdk/data/utils/StringOption;",
        "userAgreeOption",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "getAndroidId",
        "isUserAgreementPassed",
        "",
        "setUserAgreementPassed",
        "",
        "passed",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/utils/SecurityUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_USER_AGREE:Ljava/lang/String; = "key_user_agree"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SP_KEY_ANDROID_ID:Ljava/lang/String; = "sp_key_android_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final androidIDOption:Lcom/onyx/android/sdk/data/utils/StringOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final userAgreeOption:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/data/utils/SecurityUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/utils/SecurityUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/SecurityUtils;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v1, "key_user_agree"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->userAgreeOption:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    const-string v1, "sp_key_android_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->stringOption(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->androidIDOption:Lcom/onyx/android/sdk/data/utils/StringOption;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAndroidId()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->isUserAgreementPassed()Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->androidIDOption:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    :cond_2
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public final isUserAgreementPassed()Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->userAgreeOption:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    return p0
.end method

.method public final setUserAgreementPassed(Z)V
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->userAgreeOption:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    return-void
.end method
