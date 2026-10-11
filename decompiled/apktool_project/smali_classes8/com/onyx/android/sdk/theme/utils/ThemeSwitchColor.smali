.class public Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/utils/ThemeUtils$SwitchColor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThemeSwitchColor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeSwitchColor.kt\ncom/onyx/android/sdk/theme/utils/ThemeSwitchColor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n1#2:67\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0017J\u001a\u0010\u000c\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\u0007H\u0016J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0007H\u0016J\u0018\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0016J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0007H\u0016R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;",
        "Lcom/onyx/android/sdk/theme/utils/ThemeUtils$SwitchColor;",
        "Landroid/content/Context;",
        "context",
        "",
        "init",
        "reloadResource",
        "",
        "themeType",
        "colorId",
        "replaceColorById",
        "color",
        "replaceColor",
        "idRes",
        "",
        "getColorResNameById",
        "replaceDrawableRes",
        "getDrawableNameById",
        "Lcom/onyx/android/sdk/theme/utils/ThemeResource;",
        "a",
        "Lcom/onyx/android/sdk/theme/utils/ThemeResource;",
        "themeResource",
        "<init>",
        "()V",
        "Companion",
        "sdk-skinChange_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nThemeSwitchColor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeSwitchColor.kt\ncom/onyx/android/sdk/theme/utils/ThemeSwitchColor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n1#2:67\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/onyx/android/sdk/theme/utils/ThemeResource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->Companion:Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor$Companion;

    new-instance v0, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;

    invoke-direct {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->b:Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/theme/utils/ThemeResource;

    invoke-direct {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeResource;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->a:Lcom/onyx/android/sdk/theme/utils/ThemeResource;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->b:Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;

    return-object v0
.end method

.method public static final getInstance()Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->Companion:Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor$Companion;->getInstance()Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getColorResNameById(I)Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->a:Lcom/onyx/android/sdk/theme/utils/ThemeResource;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeResource;->getThemeColorMap()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/SkinType;->DEFAULT:Lcom/onyx/android/sdk/theme/utils/SkinType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/theme/utils/ThemeBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/theme/utils/ThemeBean;->getOriginResId()I

    move-result v2

    if-ne v2, p1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/onyx/android/sdk/theme/utils/ThemeBean;

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeBean;->getResName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDrawableNameById(I)Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->a:Lcom/onyx/android/sdk/theme/utils/ThemeResource;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeResource;->getThemeDrawableMap()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/SkinType;->DEFAULT:Lcom/onyx/android/sdk/theme/utils/SkinType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/theme/utils/ThemeBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/theme/utils/ThemeBean;->getOriginResId()I

    move-result v2

    if-ne v2, p1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/onyx/android/sdk/theme/utils/ThemeBean;

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeBean;->getResName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->a:Lcom/onyx/android/sdk/theme/utils/ThemeResource;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeResource;->loadThemeResource(Landroid/content/Context;)V

    return-void
.end method

.method public reloadResource(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->a:Lcom/onyx/android/sdk/theme/utils/ThemeResource;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeResource;->loadThemeResource(Landroid/content/Context;)V

    return-void
.end method

.method public replaceColor(Landroid/content/Context;I)I
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return p2
.end method

.method public replaceColorById(Landroid/content/Context;II)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->a:Lcom/onyx/android/sdk/theme/utils/ThemeResource;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeResource;->getThemeColorMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/onyx/android/sdk/theme/utils/ThemeBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeBean;->getOriginResId()I

    move-result v0

    if-ne v0, p3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    check-cast p2, Lcom/onyx/android/sdk/theme/utils/ThemeBean;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/theme/utils/ThemeBean;->getTargetResId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public replaceDrawableRes(II)I
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;->a:Lcom/onyx/android/sdk/theme/utils/ThemeResource;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeResource;->getThemeDrawableMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/onyx/android/sdk/theme/utils/ThemeBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeBean;->getOriginResId()I

    move-result v0

    if-ne v0, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    check-cast p1, Lcom/onyx/android/sdk/theme/utils/ThemeBean;

    if-nez p1, :cond_4

    return p2

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeBean;->getTargetResId()I

    move-result p0

    return p0
.end method
