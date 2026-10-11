.class final Lcom/onyx/galaxy/note/receiver/ThemeChangeReceiver$onReceive$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/receiver/ThemeChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThemeChangeReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeChangeReceiver.kt\ncom/onyx/galaxy/note/receiver/ThemeChangeReceiver$onReceive$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,44:1\n1855#2,2:45\n*S KotlinDebug\n*F\n+ 1 ThemeChangeReceiver.kt\ncom/onyx/galaxy/note/receiver/ThemeChangeReceiver$onReceive$1\n*L\n34#1:45,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nThemeChangeReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeChangeReceiver.kt\ncom/onyx/galaxy/note/receiver/ThemeChangeReceiver$onReceive$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,44:1\n1855#2,2:45\n*S KotlinDebug\n*F\n+ 1 ThemeChangeReceiver.kt\ncom/onyx/galaxy/note/receiver/ThemeChangeReceiver$onReceive$1\n*L\n34#1:45,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/receiver/ThemeChangeReceiver$onReceive$1;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/receiver/ThemeChangeReceiver$onReceive$1;->invoke(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(J)V
    .locals 1

    .line 2
    sget-object p1, Lcom/onyx/galaxy/note/utils/ThemeExt;->INSTANCE:Lcom/onyx/galaxy/note/utils/ThemeExt;

    iget-object p2, p0, Lcom/onyx/galaxy/note/receiver/ThemeChangeReceiver$onReceive$1;->$context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    const-string v0, "getConfiguration(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/utils/ThemeExt;->isAutoChangeTheme(Landroid/content/res/Configuration;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/receiver/ThemeChangeReceiver$onReceive$1;->$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 4
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->reloadResource(Landroid/content/Context;)V

    .line 5
    sget-object p1, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->INSTANCE:Lcom/onyx/android/sdk/theme/utils/ThemeBundle;

    new-instance p2, Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->postEvent(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityList()Ljava/util/List;

    move-result-object p1

    const-string p2, "getActivityList(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    .line 8
    instance-of v0, p2, Lcom/onyx/android/sdk/theme/config/IUnSupportThemeRecreateActivity;

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p2}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    .line 10
    :cond_2
    sget-object p1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string p2, "key_is_system_theme_night"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->intOption(Ljava/lang/String;I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/utils/IntOption;->put(I)V

    .line 11
    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getStatusBarHideOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    invoke-static {p0}, Lcom/onyx/android/sdk/extension/ActivityExtKt;->updateFullScreenStyle(Z)V

    return-void
.end method
