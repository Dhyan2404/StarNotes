.class public final Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008-\u0010.J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0007\u001a\u00020\u0004J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0007J\u0008\u0010\u000b\u001a\u00020\u0004H\u0002J\u0008\u0010\u000c\u001a\u00020\u0004H\u0002J\u0012\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002R$\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001e\u0010$\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R$\u0010,\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u0006/"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "owner",
        "",
        "onCreate",
        "onDestroy",
        "performFileSearch",
        "Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageFromPdfEvent;",
        "event",
        "onInsertPageFromPdfEvent",
        "c",
        "b",
        "Landroid/net/Uri;",
        "uri",
        "a",
        "Lorg/greenrobot/eventbus/EventBus;",
        "e",
        "Lorg/greenrobot/eventbus/EventBus;",
        "getEventBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "setEventBus",
        "(Lorg/greenrobot/eventbus/EventBus;)V",
        "eventBus",
        "Landroidx/activity/result/ActivityResultCaller;",
        "f",
        "Landroidx/activity/result/ActivityResultCaller;",
        "getActivityResultLauncher",
        "()Landroidx/activity/result/ActivityResultCaller;",
        "setActivityResultLauncher",
        "(Landroidx/activity/result/ActivityResultCaller;)V",
        "activityResultLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "g",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "getContent",
        "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "getInsertPageArgs",
        "()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;",
        "setInsertPageArgs",
        "(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V",
        "insertPageArgs",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public e:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Landroidx/activity/result/ActivityResultCaller;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$insertPageFromPdf(Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->a(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    if-nez v0, :cond_1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;-><init>()V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setTemplateUri(Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->e:Lorg/greenrobot/eventbus/EventBus;

    if-eqz p0, :cond_2

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageEvent;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->f:Landroidx/activity/result/ActivityResultCaller;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver$a;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver$a;-><init>(Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;)V

    invoke-interface {v0, v1, v2}, Landroidx/activity/result/ActivityResultCaller;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->g:Landroidx/activity/result/ActivityResultLauncher;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->e:Lorg/greenrobot/eventbus/EventBus;

    if-eqz v0, :cond_1

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->e:Lorg/greenrobot/eventbus/EventBus;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->f:Landroidx/activity/result/ActivityResultCaller;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->e:Lorg/greenrobot/eventbus/EventBus;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->g:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    :cond_1
    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->g:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public final getActivityResultLauncher()Landroidx/activity/result/ActivityResultCaller;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->f:Landroidx/activity/result/ActivityResultCaller;

    return-object p0
.end method

.method public final getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->e:Lorg/greenrobot/eventbus/EventBus;

    return-object p0
.end method

.method public final getInsertPageArgs()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    return-object p0
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->b()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->c()V

    return-void
.end method

.method public final onInsertPageFromPdfEvent(Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageFromPdfEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageFromPdfEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageFromPdfEvent;->getInsertPageArgs()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->performFileSearch()V

    return-void
.end method

.method public final performFileSearch()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->g:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_0

    const-string v0, "application/pdf"

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setActivityResultLauncher(Landroidx/activity/result/ActivityResultCaller;)V
    .locals 0
    .param p1    # Landroidx/activity/result/ActivityResultCaller;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->f:Landroidx/activity/result/ActivityResultCaller;

    return-void
.end method

.method public final setEventBus(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0
    .param p1    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->e:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public final setInsertPageArgs(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->h:Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    return-void
.end method
