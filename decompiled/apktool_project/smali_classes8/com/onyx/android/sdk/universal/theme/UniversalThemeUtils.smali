.class public final Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002J\u0010\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u0002R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;",
        "",
        "",
        "getThemePrimaryColor",
        "getThemeBackgroundColor",
        "getHighlightColor",
        "getBgOverlayColor",
        "drawableId",
        "Landroid/graphics/drawable/Drawable;",
        "getDrawable",
        "Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;",
        "a",
        "Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;",
        "getUniversalColorCallback",
        "()Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;",
        "setUniversalColorCallback",
        "(Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;)V",
        "universalColorCallback",
        "<init>",
        "()V",
        "UniversalColorCallback",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static a:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;

    new-instance v0, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$universalColorCallback$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$universalColorCallback$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->a:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBgOverlayColor()I
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->a:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;->getBgOverlayColor()I

    move-result p0

    return p0
.end method

.method public final getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/onyx/android/sdk/universal/R$id;->tint_drawable:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->getThemePrimaryColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    sget v1, Lcom/onyx/android/sdk/universal/R$id;->tint_drawable_center:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->getThemePrimaryColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->getThemePrimaryColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final getHighlightColor()I
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->a:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;->getHighlightColor()I

    move-result p0

    return p0
.end method

.method public final getThemeBackgroundColor()I
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->a:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;->getThemeBackgroundColor()I

    move-result p0

    return p0
.end method

.method public final getThemePrimaryColor()I
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->a:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;->getThemePrimaryColor()I

    move-result p0

    return p0
.end method

.method public final getUniversalColorCallback()Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->a:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;

    return-object p0
.end method

.method public final setUniversalColorCallback(Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->a:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;

    return-void
.end method
