.class public final Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationDisplayHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationDisplayHandler.kt\ncom/onyx/galaxy/note/message/handler/NotificationDisplayHandler\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,155:1\n603#2:156\n988#2:157\n1017#2,3:158\n1020#2,3:168\n372#3,7:161\n125#4:171\n152#4,3:172\n*S KotlinDebug\n*F\n+ 1 NotificationDisplayHandler.kt\ncom/onyx/galaxy/note/message/handler/NotificationDisplayHandler\n*L\n56#1:156\n57#1:157\n57#1:158,3\n57#1:168,3\n57#1:161,7\n58#1:171\n58#1:172,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u00087\u00108J\u0006\u0010\u0003\u001a\u00020\u0002J\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\n\u0010\t\u001a\u00020\u0008*\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005J\u0016\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0013J\u0016\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0008R\u0014\u0010\u001a\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001bR\u0014\u0010\u001d\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001bR\u0014\u0010 \u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001bR\u0014\u0010!\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001bR\u0014\u0010\"\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u001bR\u0014\u0010#\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u001bR\u0014\u0010$\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008$\u0010\u001bR\u0014\u0010%\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008%\u0010\u001bR\u0014\u0010&\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008&\u0010\u001bR\u0014\u0010\'\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\u001bR\u0014\u0010(\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u001bR\u0014\u0010)\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008)\u0010\u001bR\u0014\u0010*\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008*\u0010\u001bR\u0014\u0010+\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008+\u0010\u001bR\u0014\u0010,\u001a\u00020\u00088\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008,\u0010\u001bR\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0014\u00106\u001a\u0002018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00103\u00a8\u00069"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;",
        "",
        "",
        "invalidate",
        "",
        "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
        "notifications",
        "filter",
        "",
        "getGroup",
        "notification",
        "",
        "isHandled",
        "handle",
        "handleAlwaysType",
        "onShow",
        "onPrimaryButtonClick",
        "onSecondaryButtonClick",
        "navType",
        "Lcom/onyx/android/sdk/base/extension/StringMap;",
        "args",
        "navigateWithStrategy",
        "Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;",
        "popup",
        "strategy",
        "closeWithStrategy",
        "GROUP_CENTER",
        "Ljava/lang/String;",
        "GROUP_BANNER",
        "GROUP_SIDEBAR_HOME",
        "GROUP_SIDEBAR_SETTINGS",
        "STRATEGY_NEVER",
        "STRATEGY_ON_SHOW",
        "STRATEGY_ON_PRIMARY_BUTTON_CLICK",
        "STRATEGY_ON_SECONDARY_BUTTON_CLICK",
        "STRATEGY_ON_ANY_BUTTON_CLICK",
        "STRATEGY_NOTHING",
        "STRATEGY_CLOSE",
        "STRATEGY_EXIT",
        "STRATEGY_ALWAYS",
        "STRATEGY_ONCE_UNTIL_INSTALL",
        "STRATEGY_ONCE_UNTIL_LAUNCH",
        "STRATEGY_TIMES_IN_PERIOD",
        "MMKV_KEY_COUNT",
        "MMKV_KEY_TIME",
        "Lcom/onyx/android/sdk/base/utils/OptionsRepo;",
        "a",
        "Lcom/onyx/android/sdk/base/utils/OptionsRepo;",
        "handleStateOptions",
        "Lcom/tencent/mmkv/MMKV;",
        "b",
        "Lcom/tencent/mmkv/MMKV;",
        "handleCountOptions",
        "c",
        "handleTimeOptions",
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
        "SMAP\nNotificationDisplayHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationDisplayHandler.kt\ncom/onyx/galaxy/note/message/handler/NotificationDisplayHandler\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,155:1\n603#2:156\n988#2:157\n1017#2,3:158\n1020#2,3:168\n372#3,7:161\n125#4:171\n152#4,3:172\n*S KotlinDebug\n*F\n+ 1 NotificationDisplayHandler.kt\ncom/onyx/galaxy/note/message/handler/NotificationDisplayHandler\n*L\n56#1:156\n57#1:157\n57#1:158,3\n57#1:168,3\n57#1:161,7\n58#1:171\n58#1:172,3\n*E\n"
    }
.end annotation


# static fields
.field public static final GROUP_BANNER:Ljava/lang/String; = "banner"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GROUP_CENTER:Ljava/lang/String; = "center"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GROUP_SIDEBAR_HOME:Ljava/lang/String; = "sidebar_home"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GROUP_SIDEBAR_SETTINGS:Ljava/lang/String; = "sidebar_settings"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MMKV_KEY_COUNT:Ljava/lang/String; = "notification_count"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MMKV_KEY_TIME:Ljava/lang/String; = "notification_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STRATEGY_ALWAYS:Ljava/lang/String; = "always"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STRATEGY_CLOSE:Ljava/lang/String; = "close"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STRATEGY_EXIT:Ljava/lang/String; = "exit"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STRATEGY_NEVER:Ljava/lang/String; = "never"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STRATEGY_NOTHING:Ljava/lang/String; = "nothing"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STRATEGY_ONCE_UNTIL_INSTALL:Ljava/lang/String; = "once_until_install"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STRATEGY_ONCE_UNTIL_LAUNCH:Ljava/lang/String; = "once_until_launch"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STRATEGY_ON_ANY_BUTTON_CLICK:Ljava/lang/String; = "on_any_button_click"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STRATEGY_ON_PRIMARY_BUTTON_CLICK:Ljava/lang/String; = "on_primary_button_click"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STRATEGY_ON_SECONDARY_BUTTON_CLICK:Ljava/lang/String; = "on_secondary_button_click"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STRATEGY_ON_SHOW:Ljava/lang/String; = "on_show"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STRATEGY_TIMES_IN_PERIOD:Ljava/lang/String; = "times_in_period"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lcom/onyx/android/sdk/base/utils/OptionsRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lcom/tencent/mmkv/MMKV;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lcom/tencent/mmkv/MMKV;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    new-instance v0, Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->a:Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    const-string v0, "notification_count"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object v0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->b:Lcom/tencent/mmkv/MMKV;

    const-string v0, "notification_time"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object v0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->c:Lcom/tencent/mmkv/MMKV;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final closeWithStrategy(Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "popup"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "strategy"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "close"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->onClose()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    const-string p0, "exit"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/onyx/android/sdk/base/extension/ContextKt;->finishProcess()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final filter(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "notifications"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler$filter$1;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler$filter$1;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler$filter$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler$filter$$inlined$sortedBy$1;-><init>()V

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->sortedWith(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)Lkotlin/sequences/Sequence;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    sget-object v2, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-virtual {v2, v1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->getGroup(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getGroup(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getType()I

    move-result p0

    const/16 p1, 0x8d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "banner"

    goto :goto_0

    :cond_0
    const/16 p1, 0x97

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "sidebar_home"

    goto :goto_0

    :cond_1
    const/16 p1, 0x98

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "sidebar_settings"

    goto :goto_0

    :cond_2
    const-string p0, "center"

    :goto_0
    return-object p0
.end method

.method public final handle(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "notification"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getDisplayStrategy()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x1365f784

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    const v1, 0x55676462

    if-eq v0, v1, :cond_2

    const v1, 0x7764e0b2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "once_until_launch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->a:Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "times_in_period"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->c:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getPeriodTime()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-lez v0, :cond_4

    sget-object v0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->b:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v4}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->b:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    add-int/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_5
    const-string v0, "once_until_install"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->b:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-void
.end method

.method public final handleAlwaysType(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "notification"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getDisplayStrategy()Ljava/lang/String;

    move-result-object p0

    const-string v0, "always"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->b:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final invalidate()V
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->a:Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->clear()V

    return-void
.end method

.method public final isHandled(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)Z
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "notification"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getDisplayStrategy()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "once_until_launch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->a:Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :sswitch_1
    const-string v0, "times_in_period"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    sget-object p0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->b:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result p0

    sget-object v0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->c:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getDisplayTimes()I

    move-result v0

    if-lt p0, v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getPeriodTime()J

    move-result-wide p0

    cmp-long p0, v5, p0

    if-gtz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :sswitch_2
    const-string v0, "once_until_install"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->b:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    :sswitch_3
    const-string v0, "always"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->b:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x54506df1 -> :sswitch_3
        -0x1365f784 -> :sswitch_2
        0x55676462 -> :sswitch_1
        0x7764e0b2 -> :sswitch_0
    .end sparse-switch
.end method

.method public final navigateWithStrategy(Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/extension/StringMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "navType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "args"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/utils/Navigator;->navigate$default(Lcom/onyx/galaxy/note/utils/Navigator;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final onPrimaryButtonClick(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getHandleStrategy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on_primary_button_click"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "on_any_button_click"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->handle(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    :cond_1
    return-void
.end method

.method public final onSecondaryButtonClick(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getHandleStrategy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on_secondary_button_click"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "on_any_button_click"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->handle(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    :cond_1
    return-void
.end method

.method public final onShow(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getHandleStrategy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on_show"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->handle(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    :cond_0
    return-void
.end method
