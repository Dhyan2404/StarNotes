.class public final Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;
.super Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 [2\u00020\u0001:\u0001[B\u001b\u0012\u0006\u00103\u001a\u00020.\u0012\n\u0008\u0002\u00106\u001a\u0004\u0018\u000104\u00a2\u0006\u0004\u0008Y\u0010ZJ*\u0010\n\u001a\u00020\t2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0007J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0010H\u0007J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0012H\u0007J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0014H\u0007J\u0010\u0010\u0017\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0016H\u0007J\u0010\u0010\u0019\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0018H\u0007J\u0010\u0010\u001b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u001aH\u0007J\u0010\u0010\u001d\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u001cH\u0007J\u0010\u0010\u001f\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u001eH\u0007J\u0016\u0010#\u001a\u00020\t2\u000e\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!0 J\u0016\u0010$\u001a\u00020\t2\u000e\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!0 J\u000e\u0010&\u001a\u00020\t2\u0006\u0010%\u001a\u00020!J\u0014\u0010&\u001a\u00020\t2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00030\'J\u0014\u0010)\u001a\u00020\t2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00030\'J\u0014\u0010*\u001a\u00020\t2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00030\'J\u0014\u0010+\u001a\u00020\t2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00030\'J\u000e\u0010,\u001a\u00020\t2\u0006\u0010%\u001a\u00020!J\u0008\u0010-\u001a\u00020\tH\u0016R\u0017\u00103\u001a\u00020.8\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R\u0018\u00106\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u00105R(\u00108\u001a\u0008\u0012\u0004\u0012\u0002070\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R(\u0010>\u001a\u0008\u0012\u0004\u0012\u0002070\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008>\u00109\u001a\u0004\u0008?\u0010;\"\u0004\u0008@\u0010=R(\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008A\u00109\u001a\u0004\u0008B\u0010;\"\u0004\u0008C\u0010=R(\u0010E\u001a\u0008\u0012\u0004\u0012\u00020D0\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008E\u00109\u001a\u0004\u0008F\u0010;\"\u0004\u0008G\u0010=R(\u0010H\u001a\u0008\u0012\u0004\u0012\u00020D0\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008H\u00109\u001a\u0004\u0008I\u0010;\"\u0004\u0008J\u0010=R.\u0010L\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020D0K0\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008L\u00109\u001a\u0004\u0008M\u0010;\"\u0004\u0008N\u0010=R(\u0010O\u001a\u0008\u0012\u0004\u0012\u00020D0\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008O\u00109\u001a\u0004\u0008P\u0010;\"\u0004\u0008Q\u0010=R(\u0010R\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008R\u00109\u001a\u0004\u0008S\u0010;\"\u0004\u0008T\u0010=R\u0016\u0010X\u001a\u00020U8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010W\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;",
        "Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/net/Uri;",
        "launcher",
        "",
        "nextEvent",
        "Ljava/io/File;",
        "file",
        "",
        "b",
        "Lcom/onyx/android/sdk/universal/editor/events/note/TakeScreenCaptureEvent;",
        "event",
        "onTakeScreenCaptureEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureEvent;",
        "onScreenCaptureEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureStartedEvent;",
        "onScreenCaptureStartedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureCancelEvent;",
        "onScreenCaptureCancelEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartScreenBitmapCaptureEvent;",
        "onScreenBitmapCaptureEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StopScreenCaptureServiceEvent;",
        "onStopScreenCaptureServiceEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/TakePictureEvent;",
        "onTakePictureEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/PickImagesEvent;",
        "onPickImagesEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/PickStickerImagesEvent;",
        "onPickStickerImagesEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/TakePictureToInsertPageEvent;",
        "onTakePictureToInsertPageEvent",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Landroid/content/Intent;",
        "reference",
        "handleScreenCaptureResult",
        "handleScreenBitmapCaptureResult",
        "intent",
        "handleImageTakeResult",
        "",
        "uriList",
        "handleImageStickerTakeResult",
        "handleInsertFilePageTakeResult",
        "handleInsertImagePageTakeResult",
        "handleInsertPicturePageTakeResult",
        "destroy",
        "Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;",
        "a",
        "Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;",
        "getViewModel",
        "()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;",
        "viewModel",
        "Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;",
        "Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;",
        "listener",
        "Landroid/os/Bundle;",
        "screenCaptureLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "getScreenCaptureLauncher",
        "()Landroidx/activity/result/ActivityResultLauncher;",
        "setScreenCaptureLauncher",
        "(Landroidx/activity/result/ActivityResultLauncher;)V",
        "screenBitmapCaptureLauncher",
        "getScreenBitmapCaptureLauncher",
        "setScreenBitmapCaptureLauncher",
        "takePictureLauncher",
        "getTakePictureLauncher",
        "setTakePictureLauncher",
        "",
        "getImageContentLauncher",
        "getGetImageContentLauncher",
        "setGetImageContentLauncher",
        "getImageStickerContentLauncher",
        "getGetImageStickerContentLauncher",
        "setGetImageStickerContentLauncher",
        "",
        "getFilePageContentLauncher",
        "getGetFilePageContentLauncher",
        "setGetFilePageContentLauncher",
        "getImagePageContentLauncher",
        "getGetImagePageContentLauncher",
        "setGetImagePageContentLauncher",
        "takePicturePageLauncher",
        "getTakePicturePageLauncher",
        "setTakePicturePageLauncher",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "c",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "currentState",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;)V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_TAKE_PICTURE:Ljava/lang/String; = "take_picture"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Landroidx/lifecycle/Lifecycle$Event;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public getFilePageContentLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public getImageContentLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public getImagePageContentLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public getImageStickerContentLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public screenBitmapCaptureLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public screenCaptureLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public takePictureLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public takePicturePageLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->Companion:Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->a:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->b:Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;->getStateEvent()Landroidx/lifecycle/Lifecycle$Event;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    :cond_1
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->c:Landroidx/lifecycle/Lifecycle$Event;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/common/action/TakePhotoAction;Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->d(Lcom/onyx/galaxy/note/common/action/TakePhotoAction;Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Ljava/io/File;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->b(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Ljava/io/File;)V

    return-void
.end method

.method public static final d(Lcom/onyx/galaxy/note/common/action/TakePhotoAction;Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$nextEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/TakePhotoAction;->isGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;

    invoke-direct {v0, p2}, Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/TakePhotoAction;->getPermission()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;->setPermissions([Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/action/TakePhotoAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p3}, Lcom/onyx/galaxy/note/common/action/TakePhotoAction;-><init>(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p3, Lcom/sunia/HTREnginev2/oae;

    invoke-direct {p3, v0, p0, p2}, Lcom/sunia/HTREnginev2/oae;-><init>(Lcom/onyx/galaxy/note/common/action/TakePhotoAction;Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->destroy()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getGetImageContentLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getTakePictureLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getScreenCaptureLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->b:Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;

    return-void
.end method

.method public final getGetFilePageContentLauncher()Landroidx/activity/result/ActivityResultLauncher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getFilePageContentLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "getFilePageContentLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getGetImageContentLauncher()Landroidx/activity/result/ActivityResultLauncher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getImageContentLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "getImageContentLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getGetImagePageContentLauncher()Landroidx/activity/result/ActivityResultLauncher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getImagePageContentLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "getImagePageContentLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getGetImageStickerContentLauncher()Landroidx/activity/result/ActivityResultLauncher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getImageStickerContentLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "getImageStickerContentLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScreenBitmapCaptureLauncher()Landroidx/activity/result/ActivityResultLauncher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->screenBitmapCaptureLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "screenBitmapCaptureLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScreenCaptureLauncher()Landroidx/activity/result/ActivityResultLauncher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->screenCaptureLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "screenCaptureLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTakePictureLauncher()Landroidx/activity/result/ActivityResultLauncher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->takePictureLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "takePictureLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTakePicturePageLauncher()Landroidx/activity/result/ActivityResultLauncher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->takePicturePageLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "takePicturePageLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->a:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    return-object p0
.end method

.method public final handleImageStickerTakeResult(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uriList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/InsertStickerImagesEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/InsertStickerImagesEvent;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final handleImageTakeResult(Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->a:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->setTakePicturePath(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "take picture uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->handleImageTakeResult(Ljava/util/List;)V

    return-void
.end method

.method public final handleImageTakeResult(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uriList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/InsertImagesEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/InsertImagesEvent;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final handleInsertFilePageTakeResult(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uriList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/InsertFilePagesEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/InsertFilePagesEvent;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final handleInsertImagePageTakeResult(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uriList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/InsertImagePagesEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/InsertImagePagesEvent;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final handleInsertPicturePageTakeResult(Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "take picture uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/InsertPicturePageEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/InsertPicturePageEvent;-><init>(Landroid/net/Uri;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final handleScreenBitmapCaptureResult(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/atomic/AtomicReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/ScreenBitmapCancelEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ScreenBitmapCancelEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->c:Landroidx/lifecycle/Lifecycle$Event;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/common/extension/LifecycleEventListenerKt;->isAtLeast(Landroidx/lifecycle/Lifecycle$Event;Landroidx/lifecycle/Lifecycle$Event;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/MoveScribbleActivityToBackEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/MoveScribbleActivityToBackEvent;-><init>()V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService;->Companion:Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;->setEventBus(Lorg/greenrobot/eventbus/EventBus;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;->screenBitmapCapture(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final handleScreenCaptureResult(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/atomic/AtomicReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->c:Landroidx/lifecycle/Lifecycle$Event;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/common/extension/LifecycleEventListenerKt;->isAtLeast(Landroidx/lifecycle/Lifecycle$Event;Landroidx/lifecycle/Lifecycle$Event;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/MoveScribbleActivityToBackEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/app/MoveScribbleActivityToBackEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    sget-object p0, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService;->Companion:Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;->screenCapture(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final onPickImagesEvent(Lcom/onyx/android/sdk/universal/editor/events/note/PickImagesEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/PickImagesEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getGetImageContentLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p0

    const-string p1, "image/*"

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPickStickerImagesEvent(Lcom/onyx/android/sdk/universal/editor/events/note/PickStickerImagesEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/PickStickerImagesEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getGetImageStickerContentLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p0

    const-string p1, "image/*"

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final onScreenBitmapCaptureEvent(Lcom/onyx/android/sdk/universal/editor/events/note/StartScreenBitmapCaptureEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartScreenBitmapCaptureEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->b:Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;->getStateEvent()Landroidx/lifecycle/Lifecycle$Event;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/Lifecycle$Event;->valueOf(Ljava/lang/String;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->c:Landroidx/lifecycle/Lifecycle$Event;

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getScreenBitmapCaptureLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final onScreenCaptureCancelEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureCancelEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureCancelEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x2

    const-string v1, "click_galaxy_screenshot_0003"

    invoke-static {p0, v1, p1, v0, p1}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final onScreenCaptureEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureEvent;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "rect"

    invoke-virtual {p1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->b:Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;->getStateEvent()Landroidx/lifecycle/Lifecycle$Event;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/Lifecycle$Event;->valueOf(Ljava/lang/String;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->c:Landroidx/lifecycle/Lifecycle$Event;

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getScreenCaptureLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    const-string p1, "click_galaxy_screenshot_0002"

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final onScreenCaptureStartedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureStartedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureStartedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x2

    const-string v1, "view_galaxy_screenshot_0002"

    invoke-static {p0, v1, p1, v0, p1}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final onStopScreenCaptureServiceEvent(Lcom/onyx/android/sdk/universal/editor/events/note/StopScreenCaptureServiceEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StopScreenCaptureServiceEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService;->Companion:Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;->resetEventBusIfMatch(Lorg/greenrobot/eventbus/EventBus;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;->stopService(Landroid/content/Context;)V

    return-void
.end method

.method public final onTakePictureEvent(Lcom/onyx/android/sdk/universal/editor/events/note/TakePictureEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/TakePictureEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/common/action/TakePhotoAction;->Companion:Lcom/onyx/galaxy/note/common/action/TakePhotoAction$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/action/TakePhotoAction$Companion;->generateTakePictureFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->a:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->setTakePicturePath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getTakePictureLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->b(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Ljava/io/File;)V

    return-void
.end method

.method public final onTakePictureToInsertPageEvent(Lcom/onyx/android/sdk/universal/editor/events/note/TakePictureToInsertPageEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/TakePictureToInsertPageEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getTakePicturePageLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->c(Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Ljava/io/File;ILjava/lang/Object;)V

    return-void
.end method

.method public final onTakeScreenCaptureEvent(Lcom/onyx/android/sdk/universal/editor/events/note/TakeScreenCaptureEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/TakeScreenCaptureEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->getUiStates()Lcom/onyx/android/sdk/universal/editor/GlobalBundle$GlobalStates;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle$GlobalStates;->isScreenCapturing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getActivityHelper()Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;->Companion:Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion;

    new-instance v1, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber$onTakeScreenCaptureEvent$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber$onTakeScreenCaptureEvent$1;-><init>(Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion;->requestPermission(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final setGetFilePageContentLauncher(Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 1
    .param p1    # Landroidx/activity/result/ActivityResultLauncher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getFilePageContentLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public final setGetImageContentLauncher(Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 1
    .param p1    # Landroidx/activity/result/ActivityResultLauncher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getImageContentLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public final setGetImagePageContentLauncher(Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 1
    .param p1    # Landroidx/activity/result/ActivityResultLauncher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getImagePageContentLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public final setGetImageStickerContentLauncher(Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 1
    .param p1    # Landroidx/activity/result/ActivityResultLauncher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->getImageStickerContentLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public final setScreenBitmapCaptureLauncher(Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 1
    .param p1    # Landroidx/activity/result/ActivityResultLauncher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->screenBitmapCaptureLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public final setScreenCaptureLauncher(Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 1
    .param p1    # Landroidx/activity/result/ActivityResultLauncher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->screenCaptureLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public final setTakePictureLauncher(Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 1
    .param p1    # Landroidx/activity/result/ActivityResultLauncher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->takePictureLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public final setTakePicturePageLauncher(Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 1
    .param p1    # Landroidx/activity/result/ActivityResultLauncher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/api/ContentApiSubscriber;->takePicturePageLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method
