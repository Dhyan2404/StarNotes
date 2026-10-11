.class public final Lcom/onyx/android/sdk/theme/utils/ThemeStyle$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/theme/utils/ThemeStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u000b\u001a\u00020\tJ\u0006\u0010\u000c\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/theme/utils/ThemeStyle$Companion;",
        "",
        "()V",
        "STYLE_DARK_LIGHT",
        "",
        "STYLE_PAYMENT",
        "STYLE_SPECIAL",
        "STYLE_VIP",
        "getDarkLightStyle",
        "Lcom/onyx/android/sdk/theme/utils/ThemeStyle;",
        "getPaymentStyle",
        "getSpecialStyle",
        "getVipStyle",
        "sdk-skinChange_overseasRelease"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeStyle$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDarkLightStyle()Lcom/onyx/android/sdk/theme/utils/ThemeStyle;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;

    const/4 v0, 0x1

    sget v1, Lcom/onyx/android/sdk/skin/R$string;->theme_style_dark_light:I

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;-><init>(II)V

    return-object p0
.end method

.method public final getPaymentStyle()Lcom/onyx/android/sdk/theme/utils/ThemeStyle;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;

    const/4 v0, 0x4

    sget v1, Lcom/onyx/android/sdk/skin/R$string;->theme_style_payment:I

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;-><init>(II)V

    return-object p0
.end method

.method public final getSpecialStyle()Lcom/onyx/android/sdk/theme/utils/ThemeStyle;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;

    const/4 v0, 0x2

    sget v1, Lcom/onyx/android/sdk/skin/R$string;->theme_style_special:I

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;-><init>(II)V

    return-object p0
.end method

.method public final getVipStyle()Lcom/onyx/android/sdk/theme/utils/ThemeStyle;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;

    const/4 v0, 0x3

    sget v1, Lcom/onyx/android/sdk/skin/R$string;->theme_style_vip:I

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;-><init>(II)V

    return-object p0
.end method
