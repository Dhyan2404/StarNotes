.class public final Lcom/onyx/galaxy/note/receiver/AppStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppStatusChangeListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppStatusChangeListener.kt\ncom/onyx/galaxy/note/receiver/AppStatusChangeListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1855#2,2:40\n*S KotlinDebug\n*F\n+ 1 AppStatusChangeListener.kt\ncom/onyx/galaxy/note/receiver/AppStatusChangeListener\n*L\n27#1:40,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/receiver/AppStatusChangeListener;",
        "Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;",
        "Landroid/app/Activity;",
        "activity",
        "",
        "onForeground",
        "onBackground",
        "a",
        "<init>",
        "()V",
        "note_overseasRelease"
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
        "SMAP\nAppStatusChangeListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppStatusChangeListener.kt\ncom/onyx/galaxy/note/receiver/AppStatusChangeListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1855#2,2:40\n*S KotlinDebug\n*F\n+ 1 AppStatusChangeListener.kt\ncom/onyx/galaxy/note/receiver/AppStatusChangeListener\n*L\n27#1:40,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget-object p0, Lcom/onyx/galaxy/note/utils/ThemeExt;->INSTANCE:Lcom/onyx/galaxy/note/utils/ThemeExt;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "getConfiguration(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/utils/ThemeExt;->isAutoChangeTheme(Landroid/content/res/Configuration;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v1, "key_is_system_theme_night"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->intOption(Ljava/lang/String;I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/IntOption;->put(I)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->reloadResource(Landroid/content/Context;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getActivityList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    instance-of v2, v1, Lcom/onyx/android/sdk/theme/config/IUnSupportThemeRecreateActivity;

    if-eqz v2, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->INSTANCE:Lcom/onyx/android/sdk/theme/utils/ThemeBundle;

    new-instance v2, Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->postEvent(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onBackground(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p1, "app onBackground!!!"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onForeground(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v0, "app onForeground!!!"

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/receiver/AppStatusChangeListener;->a()V

    return-void
.end method
