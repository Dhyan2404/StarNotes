.class public final Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B#\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u000f\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000cR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Landroid/graphics/Bitmap;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Landroid/content/Intent;",
        "intent",
        "l",
        "e",
        "Landroid/content/Intent;",
        "",
        "f",
        "Z",
        "overScreen",
        "g",
        "scaleToContentSize",
        "",
        "h",
        "J",
        "DELAY",
        "<init>",
        "(Landroid/content/Intent;ZZ)V",
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
.field public e:Landroid/content/Intent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Z

.field public final g:Z

.field public final h:J


# direct methods
.method public constructor <init>(Landroid/content/Intent;ZZ)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;->e:Landroid/content/Intent;

    .line 4
    iput-boolean p2, p0, Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;->f:Z

    .line 5
    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;->g:Z

    const-wide/16 p1, 0x1f4

    .line 6
    iput-wide p1, p0, Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;->h:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Intent;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;-><init>(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public static final synthetic access$startCapture(Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;->l(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;->e:Landroid/content/Intent;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    iget-wide v1, p0, Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;->h:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->newThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;-><init>(Landroid/content/Intent;)V

    iget-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;->f:Z

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->setOverScreen(Z)V

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;->g:Z

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->setScaleToContentSize(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->execute()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
