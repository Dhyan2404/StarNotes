.class public final Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;
.super Lcom/onyx/galaxy/note/utils/lifecycler/ActivityLifecycleHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008,\u0010-J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0012\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002R\u0017\u0010\t\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0017\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\"\u0010 \u001a\u0010\u0012\u000c\u0012\n \u001d*\u0004\u0018\u00010\u000b0\u000b0\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u001b\u0010&\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R\u001b\u0010+\u001a\u00020\'8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010#\u001a\u0004\u0008)\u0010*\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;",
        "Lcom/onyx/galaxy/note/utils/lifecycler/ActivityLifecycleHandler;",
        "Landroid/app/Activity;",
        "activity",
        "",
        "onActivityStarted",
        "onActivityResumed",
        "onActivityStopped",
        "Landroid/content/Context;",
        "context",
        "e",
        "",
        "code",
        "",
        "g",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "",
        "f",
        "I",
        "activeActivityCount",
        "Z",
        "needHandleClipboard",
        "Landroid/content/ClipData;",
        "h",
        "Landroid/content/ClipData;",
        "lastClip",
        "",
        "kotlin.jvm.PlatformType",
        "i",
        "Ljava/util/Set;",
        "IGNORED_ACTIVITIES",
        "Landroid/os/Handler;",
        "j",
        "Lkotlin/Lazy;",
        "d",
        "()Landroid/os/Handler;",
        "handler",
        "Landroid/content/ClipboardManager;",
        "k",
        "c",
        "()Landroid/content/ClipboardManager;",
        "clipboardManager",
        "<init>",
        "(Landroid/content/Context;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:I

.field public g:Z

.field public h:Landroid/content/ClipData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/utils/lifecycler/ActivityLifecycleHandler;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->e:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->g:Z

    const-class p1, Lcom/onyx/galaxy/note/ui/activity/SplashActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/onyx/galaxy/note/account/ui/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/onyx/galaxy/note/account/ui/RecentLoginActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->i:Ljava/util/Set;

    sget-object p1, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor$handler$2;->INSTANCE:Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor$handler$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->j:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor$clipboardManager$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor$clipboardManager$2;-><init>(Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->k:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;Landroid/content/ClipData;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->f(Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;Landroid/content/ClipData;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->h(Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;Landroid/app/Activity;)V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;Landroid/content/ClipData;Z)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$clip"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->h:Landroid/content/ClipData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->c()Landroid/content/ClipboardManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->clearPrimaryClip()V

    return-void
.end method

.method public static final h(Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;Landroid/app/Activity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->e(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final c()Landroid/content/ClipboardManager;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->k:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    return-object p0
.end method

.method public final d()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->j:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public final e(Landroid/content/Context;)V
    .locals 9

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->c()Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->c()Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/ClipData;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->h:Landroid/content/ClipData;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    sget-object v1, Lcom/onyx/android/sdk/base/extension/ClipBoard;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ClipBoard;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/extension/ClipBoard;->findFirstTextContent(Landroid/content/ClipData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v0, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->h:Landroid/content/ClipData;

    return-void

    :cond_3
    new-instance v2, Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;

    invoke-direct {v2, p1, v1}, Lcom/onyx/galaxy/note/datarepository/action/HandleShareResourceAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v1, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor$handleClipboard$1;->INSTANCE:Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor$handleClipboard$1;

    new-instance v2, Lcom/sunia/HTREnginev2/onm;

    invoke-direct {v2, p0, v0}, Lcom/sunia/HTREnginev2/onm;-><init>(Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;Landroid/content/ClipData;)V

    invoke-static {p1, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 8

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    return p0

    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/collections/ArraysKt;->sliceArray([ILkotlin/ranges/IntRange;)[I

    move-result-object v1

    array-length v2, p1

    sub-int/2addr v2, v0

    array-length v0, p1

    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->sliceArray([ILkotlin/ranges/IntRange;)[I

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/collections/ArraysKt;->plus([I[I)[I

    move-result-object p1

    array-length v0, p1

    move v1, p0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v1, v0, :cond_8

    aget v6, p1, v1

    const v7, 0x1f600

    if-gt v7, v6, :cond_2

    const v7, 0x1f650

    if-ge v6, v7, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, p0

    :goto_1
    if-eqz v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    const/16 v7, 0x505a

    if-gt v7, v6, :cond_4

    const/16 v7, 0x515b

    if-ge v6, v7, :cond_4

    move v7, v5

    goto :goto_2

    :cond_4
    move v7, p0

    :goto_2
    if-eqz v7, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    const/16 v7, 0x4e00

    if-gt v7, v6, :cond_6

    const/16 v7, 0x4f5b

    if-ge v6, v7, :cond_6

    goto :goto_3

    :cond_6
    move v5, p0

    :goto_3
    if-eqz v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    const/4 p1, 0x2

    if-ne v2, p1, :cond_9

    if-ne v3, p1, :cond_9

    if-ne v4, p1, :cond_9

    move p0, v5

    :cond_9
    return p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->e:Landroid/content/Context;

    return-object p0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->i:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->INSTANCE:Lcom/onyx/android/sdk/base/data/config/GlobalConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->isShareResourceEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->g:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/nnm;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/nnm;-><init>(Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->f:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->g:Z

    :cond_0
    add-int/2addr p1, v0

    iput p1, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->f:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->f:I

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;->f:I

    return-void
.end method
