.class public Lcom/onyx/android/sdk/theme/utils/ThemeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/theme/utils/ThemeUtils$ExtraRefreshable;,
        Lcom/onyx/android/sdk/theme/utils/ThemeUtils$SwitchColor;
    }
.end annotation


# static fields
.field public static final ACTIVATED_STATE_SET:[I

.field public static final CHECKED_STATE_SET:[I

.field public static final DISABLED_STATE_SET:[I

.field public static final EMPTY_STATE_SET:[I

.field public static final ENABLED_STATE_SET:[I

.field public static final FOCUSED_STATE_SET:[I

.field public static final PRESSED_STATE_SET:[I

.field public static final SELECTED_STATE_SET:[I

.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:[I

.field public static c:Z

.field public static d:Landroid/content/Context;

.field public static e:Z

.field public static f:Z

.field public static g:Ljava/lang/reflect/Field;

.field public static h:Ljava/lang/reflect/Method;

.field public static i:Ljava/lang/reflect/Field;

.field public static j:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->a:Ljava/lang/ThreadLocal;

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->DISABLED_STATE_SET:[I

    const v0, 0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->ENABLED_STATE_SET:[I

    const v0, 0x101009c

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->FOCUSED_STATE_SET:[I

    const v0, 0x10102fe

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->ACTIVATED_STATE_SET:[I

    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->PRESSED_STATE_SET:[I

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->CHECKED_STATE_SET:[I

    const v0, 0x10100a1

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->SELECTED_STATE_SET:[I

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->EMPTY_STATE_SET:[I

    const/4 v1, 0x1

    new-array v1, v1, [I

    sput-object v1, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->b:[I

    sput-boolean v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->c:Z

    sput-boolean v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->e:Z

    sput-boolean v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->getInstance()Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->getColorResNameById(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->getInstance()Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->getDrawableNameById(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;IF)I
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method public static containsNinePatch(Landroid/graphics/drawable/Drawable;)Z
    .locals 6

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getWrapperDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_5

    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    array-length v0, p0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p0, v3

    invoke-static {v4}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getWrapperDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v5, v4, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v5, :cond_3

    instance-of v5, v4, Landroid/graphics/drawable/InsetDrawable;

    if-nez v5, :cond_3

    instance-of v4, v4, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    return v2

    :cond_5
    :goto_2
    return v1
.end method

.method public static d()Landroid/util/TypedValue;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TypedValue;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->isPlugTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->f(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->getSavedPlugThemePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->getPlugThemePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->loadPlugThemeResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static g(Landroid/content/res/ColorStateList;)Lcom/onyx/android/sdk/theme/utils/TintInfo;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sget-object v4, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->DISABLED_STATE_SET:[I

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v1, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v4, v7

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    sget-object v6, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->PRESSED_STATE_SET:[I

    invoke-static {v4, v6}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->l(Z[I)[I

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    if-eq v8, v1, :cond_2

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v6, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->FOCUSED_STATE_SET:[I

    invoke-static {v4, v6}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->l(Z[I)[I

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    if-eq v8, v1, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v6, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->CHECKED_STATE_SET:[I

    invoke-static {v4, v6}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->l(Z[I)[I

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    if-eq v8, v1, :cond_4

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v6, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->SELECTED_STATE_SET:[I

    invoke-static {v4, v6}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->l(Z[I)[I

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    if-eq v8, v1, :cond_5

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v1, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->EMPTY_STATE_SET:[I

    invoke-static {v4, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->l(Z[I)[I

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-le p0, v7, :cond_7

    new-instance p0, Lcom/onyx/android/sdk/theme/utils/TintInfo;

    invoke-direct {p0, v2, v3}, Lcom/onyx/android/sdk/theme/utils/TintInfo;-><init>(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    return-object p0

    :cond_7
    return-object v0
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->j(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColorById(I)I
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    sget-boolean v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->d:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getPlugColorById(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->d:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->k(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getDisabledThemeAttrColor(Landroid/content/Context;I)I
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->DISABLED_STATE_SET:[I

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->d()Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->c(Landroid/content/Context;IF)I

    move-result p0

    return p0
.end method

.method public static getDrawableById(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->getInstance()Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->replaceDrawableRes(II)I

    move-result p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getPlugColorById(Landroid/content/Context;I)I
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->getInstance()Lcom/onyx/android/sdk/theme/utils/ResourceManager;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->getColor(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getPlugDrawableById(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->isPlugTheme()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->getInstance()Lcom/onyx/android/sdk/theme/utils/ResourceManager;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static getTheme()Lcom/onyx/android/sdk/theme/utils/SkinType;
    .locals 5

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->getTheme()I

    move-result v0

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/theme/utils/SkinType;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result v4

    if-ne v4, v0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/theme/utils/SkinType;->DEFAULT:Lcom/onyx/android/sdk/theme/utils/SkinType;

    return-object v0
.end method

.method public static getThemeAttrBoolean(Landroid/content/Context;I)Z
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->b:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static getThemeAttrColor(Landroid/content/Context;I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->hasThemeAttr(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeAttrId(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->k(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->b:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static getThemeAttrDimensionPixelSize(Landroid/content/Context;I)I
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->b:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static getThemeAttrId(Landroid/content/Context;I)I
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->b:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    throw p1
.end method

.method public static getThemeAttrId(Landroid/content/Context;Landroid/util/AttributeSet;I)I
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->b:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 8
    :try_start_0
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    throw p1
.end method

.method public static getThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 16
    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/z2e;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getThemeColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->g(Landroid/content/res/ColorStateList;)Lcom/onyx/android/sdk/theme/utils/TintInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/utils/TintInfo;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->b:[[I

    const/4 v1, 0x0

    aget-object p1, p1, v1

    sget-object v2, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->DISABLED_STATE_SET:[I

    invoke-static {p1, v2}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result p1

    const/4 v3, 0x1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->b:[[I

    array-length v4, p1

    add-int/2addr v4, v3

    new-array v4, v4, [[I

    .line 6
    array-length p1, p1

    add-int/2addr p1, v3

    new-array p1, p1, [I

    .line 7
    aput-object v2, v4, v1

    .line 8
    sget v2, Lcom/onyx/android/sdk/skin/R$attr;->themeColorSecondary:I

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, p1, v1

    move v2, v3

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->b:[[I

    array-length v2, p1

    new-array v4, v2, [[I

    .line 10
    array-length p1, p1

    new-array p1, p1, [I

    move v2, v1

    .line 11
    :goto_0
    iget-object v5, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->b:[[I

    array-length v6, v5

    if-ge v1, v6, :cond_3

    .line 12
    aget-object v5, v5, v1

    aput-object v5, v4, v2

    .line 13
    iget-object v5, v0, Lcom/onyx/android/sdk/theme/utils/TintInfo;->a:[I

    aget v5, v5, v1

    invoke-static {p0, v5}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->j(Landroid/content/Context;I)I

    move-result v5

    aput v5, p1, v2

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_3
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v4, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0

    :cond_4
    :goto_1
    return-object p1

    .line 15
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->j(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getThemeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->d:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/theme/utils/DrawableUtils;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getThemeDrawableById(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->isPlugTheme()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getTheme()Lcom/onyx/android/sdk/theme/utils/SkinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getDrawableById(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getPlugDrawableById(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getThemePrimaryColor()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    return v0
.end method

.method public static getThemeTypeForWeb()I
    .locals 2

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getTheme()Lcom/onyx/android/sdk/theme/utils/SkinType;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/theme/utils/SkinType;->AUTO_SYSTEM:Lcom/onyx/android/sdk/theme/utils/SkinType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->isSystemNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/SkinType;->DARK:Lcom/onyx/android/sdk/theme/utils/SkinType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/theme/utils/SkinType;->DEFAULT:Lcom/onyx/android/sdk/theme/utils/SkinType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result v0

    return v0
.end method

.method public static getWrapperActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getWrapperActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWrapperContext(Landroid/content/Context;I)Landroid/content/ContextWrapper;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static getWrapperDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    instance-of v0, p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    invoke-interface {p0}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/graphics/drawable/DrawableWrapper;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    check-cast p0, Landroid/graphics/drawable/DrawableWrapper;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static h(Landroid/content/Context;II)I
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->isPlugTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getPlugColorById(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->getInstance()Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->replaceColorById(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static hasThemeAttr(Landroid/content/Context;I)Z
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->b:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static i(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/ThemeUtils$ExtraRefreshable;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    instance-of v0, p0, Lcom/onyx/android/sdk/theme/widgets/Tintable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/Tintable;

    invoke-interface {v0}, Lcom/onyx/android/sdk/theme/widgets/Tintable;->tint()V

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    :goto_0
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->i(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/ThemeUtils$ExtraRefreshable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils$ExtraRefreshable;->refreshSpecificView(Landroid/view/View;)V

    :cond_2
    instance-of v0, p0, Landroid/widget/AbsListView;

    const-string v2, "clear"

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    :try_start_0
    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->i:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3

    const-class v0, Landroid/widget/AbsListView;

    const-string v4, "mRecycler"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->i:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->j:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    const-string v0, "android.widget.AbsListView$RecycleBin"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->j:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_4
    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->j:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->i:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    move-object v0, p0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    :goto_2
    instance-of v4, v0, Landroid/widget/WrapperListAdapter;

    if-eqz v4, :cond_5

    check-cast v0, Landroid/widget/WrapperListAdapter;

    invoke-interface {v0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_2

    :cond_5
    instance-of v4, v0, Landroid/widget/BaseAdapter;

    if-eqz v4, :cond_6

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_6
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    :try_start_1
    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->g:Ljava/lang/reflect/Field;

    if-nez v0, :cond_7

    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v4, "g"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_7
    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->h:Ljava/lang/reflect/Method;

    if-nez v0, :cond_8

    const-class v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->h:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_8
    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->h:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    move-object v0, p0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_9
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    :goto_4
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->i(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/ThemeUtils$ExtraRefreshable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->d:Landroid/content/Context;

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->e(Landroid/content/Context;)V

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->getInstance()Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->d:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static isPlugTheme()Z
    .locals 2

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->getTheme()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSkipAnimatedSelector()Z
    .locals 3

    sget-boolean v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->f:Z

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "5.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    const-string v1, "5.1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->e:Z

    sput-boolean v2, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->f:Z

    :cond_1
    sget-boolean v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->e:Z

    return v0
.end method

.method public static isSystemNightMode(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(Landroid/content/Context;I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->getInstance()Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->replaceColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static k(Landroid/content/Context;I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getTheme()Lcom/onyx/android/sdk/theme/utils/SkinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->h(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static l(Z[I)[I
    .locals 1

    array-length v0, p1

    if-lez v0, :cond_0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->ENABLED_STATE_SET:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    aget p1, p1, v0

    filled-new-array {p0, p1}, [I

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->ENABLED_STATE_SET:[I

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static loadPlugThemeResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Landroid/content/res/AssetManager;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "addAssetPath"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance p1, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {p1, v1, v2, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->getInstance()Lcom/onyx/android/sdk/theme/utils/ResourceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/theme/utils/ResourceManager;->setPluginResource(Landroid/content/res/Resources;Ljava/lang/String;)V

    sput-boolean v4, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sput-boolean v0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->c:Z

    :cond_0
    :goto_0
    sget-boolean p0, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->c:Z

    return p0
.end method

.method public static refreshUI(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->refreshUI(Landroid/content/Context;Lcom/onyx/android/sdk/theme/utils/ThemeUtils$ExtraRefreshable;)V

    return-void
.end method

.method public static refreshUI(Landroid/content/Context;Lcom/onyx/android/sdk/theme/utils/ThemeUtils$ExtraRefreshable;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/TintManager;->clearTintCache()V

    .line 3
    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getWrapperActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils$ExtraRefreshable;->refreshGlobal(Landroid/app/Activity;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 6
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->i(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/ThemeUtils$ExtraRefreshable;)V

    :cond_1
    return-void
.end method

.method public static refreshView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->i(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/ThemeUtils$ExtraRefreshable;)V

    return-void
.end method

.method public static releasePlugTheme()V
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->releasePluginTheme()V

    return-void
.end method

.method public static reloadResource(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/TintManager;->clearTintCache()V

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->getInstance()Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->reloadResource(Landroid/content/Context;)V

    return-void
.end method

.method public static setPlugTheme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->getPlugPathByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->loadPlugThemeResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->savePlugTheme(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setTheme(Landroid/content/Context;I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->reloadResource(Landroid/content/Context;)V

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->setTheme(I)V

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->refreshUI(Landroid/content/Context;)V

    return-void
.end method

.method public static tintDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->tintDrawableByColorId(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, p1, v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static tintDrawable(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 3
    invoke-static {p0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method public static tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 8
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 9
    invoke-static {p0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method public static tintDrawableByColorId(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-gtz p2, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->j(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static tintDrawableByColorList(Landroid/content/Context;Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-gtz p2, :cond_1

    return-object p1

    :cond_1
    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/TintManager;->get(Landroid/content/Context;)Lcom/onyx/android/sdk/theme/utils/TintManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/theme/utils/TintManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-nez p3, :cond_2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    invoke-static {p1, p0, p3}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static tintDrawableByDrawableId(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static updateNightMode(Landroid/content/res/Resources;Z)Landroid/content/res/Resources;
    .locals 3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, v1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    if-eq v2, p1, :cond_1

    and-int/lit8 v2, v2, -0x31

    or-int/2addr p1, v2

    iput p1, v1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    return-object p0
.end method
