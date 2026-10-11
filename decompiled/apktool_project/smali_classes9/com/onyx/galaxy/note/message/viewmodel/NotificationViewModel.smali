.class public final Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationViewModel.kt\ncom/onyx/galaxy/note/message/viewmodel/NotificationViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,99:1\n288#2,2:100\n288#2,2:107\n288#2,2:114\n41#3,5:102\n41#3,5:109\n41#3,5:116\n*S KotlinDebug\n*F\n+ 1 NotificationViewModel.kt\ncom/onyx/galaxy/note/message/viewmodel/NotificationViewModel\n*L\n57#1:100,2\n75#1:107,2\n89#1:114,2\n58#1:102,5\n76#1:109,5\n90#1:116,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008!\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00082\u00103J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J%\u0010\u000b\u001a!\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0008 \t*\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00070\u00070\u0006\u00a2\u0006\u0002\u0008\nJ\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\"\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0010\u001a\u00020\u000fJ\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007R\"\u0010\u0016\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001b\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0015\u001a\u0004\u0008\u001b\u0010\u0017\"\u0004\u0008\u001c\u0010\u0019R\"\u0010\u001e\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0015\u001a\u0004\u0008\u001e\u0010\u0017\"\u0004\u0008\u001f\u0010\u0019R\"\u0010!\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u0015\u001a\u0004\u0008!\u0010\u0017\"\u0004\u0008\"\u0010\u0019R\"\u0010$\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u0015\u001a\u0004\u0008$\u0010\u0017\"\u0004\u0008%\u0010\u0019R\"\u0010\'\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u0015\u001a\u0004\u0008\'\u0010\u0017\"\u0004\u0008(\u0010\u0019R\"\u0010*\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010\u0015\u001a\u0004\u0008*\u0010\u0017\"\u0004\u0008+\u0010\u0019R\"\u0010-\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010\u0015\u001a\u0004\u0008-\u0010\u0017\"\u0004\u0008.\u0010\u0019R3\u00101\u001a!\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0008 \t*\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00070\u00070\u0006\u00a2\u0006\u0002\u0008\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100\u00a8\u00064"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "",
        "onDestroy",
        "invalidate",
        "load",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "",
        "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "getNotifications",
        "notifications",
        "Lio/reactivex/rxjava3/core/Observable;",
        "filterCenterNotification",
        "",
        "group",
        "filterSidebarNotification",
        "filterBannerNotification",
        "",
        "i",
        "Z",
        "isActivityRecreated",
        "()Z",
        "setActivityRecreated",
        "(Z)V",
        "j",
        "isCenterNotificationInterrupted",
        "setCenterNotificationInterrupted",
        "k",
        "isCenterNotificationDisplayed",
        "setCenterNotificationDisplayed",
        "l",
        "isSidebarNotificationDisplayed",
        "setSidebarNotificationDisplayed",
        "m",
        "isBannerNotificationDisplayed",
        "setBannerNotificationDisplayed",
        "n",
        "isCenterNotificationClosed",
        "setCenterNotificationClosed",
        "o",
        "isSidebarNotificationClosed",
        "setSidebarNotificationClosed",
        "p",
        "isBannerNotificationClosed",
        "setBannerNotificationClosed",
        "q",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "publisher",
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
        "SMAP\nNotificationViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationViewModel.kt\ncom/onyx/galaxy/note/message/viewmodel/NotificationViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,99:1\n288#2,2:100\n288#2,2:107\n288#2,2:114\n41#3,5:102\n41#3,5:109\n41#3,5:116\n*S KotlinDebug\n*F\n+ 1 NotificationViewModel.kt\ncom/onyx/galaxy/note/message/viewmodel/NotificationViewModel\n*L\n57#1:100,2\n75#1:107,2\n89#1:114,2\n58#1:102,5\n76#1:109,5\n90#1:116,5\n*E\n"
    }
.end annotation


# instance fields
.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public final q:Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->q:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-void
.end method

.method public static final synthetic access$getPublisher$p(Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->q:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-object p0
.end method


# virtual methods
.method public final filterBannerNotification(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "notifications"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    sget-object v2, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-virtual {v2, v1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->getGroup(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "banner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->p:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    if-eqz v0, :cond_2

    move v1, p1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->i:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->m:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->onShow(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    :cond_3
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->m:Z

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_4
    invoke-static {}, Lio/reactivex/rxjava3/core/Observable;->empty()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "empty(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final filterCenterNotification(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
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
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "notifications"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    sget-object v2, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-virtual {v2, v1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->getGroup(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "center"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->n:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v2, p1

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->i:Z

    const-string v3, "just(...)"

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->k:Z

    if-nez v2, :cond_3

    sget-object v1, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->onShow(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->k:Z

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    iget-boolean p1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->j:Z

    if-eqz p1, :cond_4

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->j:Z

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_4
    invoke-static {}, Lio/reactivex/rxjava3/core/Observable;->empty()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "empty(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final filterSidebarNotification(Ljava/util/List;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "notifications"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "group"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    sget-object v2, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-virtual {v2, v1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->getGroup(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->o:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    if-eqz v0, :cond_2

    move p2, p1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->i:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->l:Z

    if-nez p2, :cond_3

    sget-object p2, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-virtual {p2, v0}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->onShow(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    :cond_3
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->l:Z

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_4
    invoke-static {}, Lio/reactivex/rxjava3/core/Observable;->empty()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "empty(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getNotifications()Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->q:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-object p0
.end method

.method public final invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->j:Z

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->k:Z

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->l:Z

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->m:Z

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->n:Z

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->o:Z

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->p:Z

    return-void
.end method

.method public final isActivityRecreated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->i:Z

    return p0
.end method

.method public final isBannerNotificationClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->p:Z

    return p0
.end method

.method public final isBannerNotificationDisplayed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->m:Z

    return p0
.end method

.method public final isCenterNotificationClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->n:Z

    return p0
.end method

.method public final isCenterNotificationDisplayed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->k:Z

    return p0
.end method

.method public final isCenterNotificationInterrupted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->j:Z

    return p0
.end method

.method public final isSidebarNotificationClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->o:Z

    return p0
.end method

.method public final isSidebarNotificationDisplayed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->l:Z

    return p0
.end method

.method public final load()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/galaxy/note/message/action/LoadNotificationAction;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/message/action/LoadNotificationAction;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel$a;->e:Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel$a;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel$b;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel$b;-><init>(Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doOnNext(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->q:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->onComplete()V

    return-void
.end method

.method public final setActivityRecreated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->i:Z

    return-void
.end method

.method public final setBannerNotificationClosed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->p:Z

    return-void
.end method

.method public final setBannerNotificationDisplayed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->m:Z

    return-void
.end method

.method public final setCenterNotificationClosed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->n:Z

    return-void
.end method

.method public final setCenterNotificationDisplayed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->k:Z

    return-void
.end method

.method public final setCenterNotificationInterrupted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->j:Z

    return-void
.end method

.method public final setSidebarNotificationClosed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->o:Z

    return-void
.end method

.method public final setSidebarNotificationDisplayed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->l:Z

    return-void
.end method
