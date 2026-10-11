.class public final Lcom/onyx/galaxy/note/utils/ThemeExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThemeExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeExt.kt\ncom/onyx/galaxy/note/utils/ThemeExt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n1855#2,2:32\n*S KotlinDebug\n*F\n+ 1 ThemeExt.kt\ncom/onyx/galaxy/note/utils/ThemeExt\n*L\n14#1:32,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001a\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/utils/ThemeExt;",
        "",
        "()V",
        "isAutoChangeTheme",
        "",
        "configuration",
        "Landroid/content/res/Configuration;",
        "resetTheme",
        "",
        "themeType",
        "",
        "view",
        "Landroid/view/View;",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nThemeExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeExt.kt\ncom/onyx/galaxy/note/utils/ThemeExt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n1855#2,2:32\n*S KotlinDebug\n*F\n+ 1 ThemeExt.kt\ncom/onyx/galaxy/note/utils/ThemeExt\n*L\n14#1:32,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/utils/ThemeExt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/utils/ThemeExt;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/utils/ThemeExt;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/utils/ThemeExt;->INSTANCE:Lcom/onyx/galaxy/note/utils/ThemeExt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic resetTheme$default(Lcom/onyx/galaxy/note/utils/ThemeExt;ILandroid/view/View;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/utils/ThemeExt;->resetTheme(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final isAutoChangeTheme(Landroid/content/res/Configuration;)Z
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "configuration"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "key_is_system_theme_night"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->intOption(Ljava/lang/String;I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p0

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getTheme()Lcom/onyx/android/sdk/theme/utils/SkinType;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/theme/utils/SkinType;->AUTO_SYSTEM:Lcom/onyx/android/sdk/theme/utils/SkinType;

    if-ne v0, v1, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final resetTheme(ILandroid/view/View;)V
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityList()Ljava/util/List;

    move-result-object p0

    const-string v0, "getActivityList(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->setTheme(Landroid/content/Context;I)V

    instance-of v1, v0, Lcom/onyx/galaxy/note/editor/action/theme/IThemeRecreate;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/onyx/galaxy/note/editor/action/theme/IThemeRecreate;

    invoke-interface {v0}, Lcom/onyx/galaxy/note/editor/action/theme/IThemeRecreate;->themeRecreate()V

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->setTheme(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->refreshView(Landroid/view/View;)V

    :cond_2
    return-void
.end method
