.class public final Lcom/onyx/android/sdk/rxgesture/RxGesture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxGesture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxGesture.kt\ncom/onyx/android/sdk/rxgesture/RxGesture\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,383:1\n1#2:384\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\t\u00a2\u0006\u0006\u0008\u0095\u0001\u0010\u0096\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0002J\u0008\u0010\u000b\u001a\u00020\u0004H\u0002J\u0008\u0010\u000c\u001a\u00020\u0004H\u0002J\u0008\u0010\r\u001a\u00020\u0004H\u0002J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0008\u0010\u0019\u001a\u00020\u0004H\u0002J\u0008\u0010\u001a\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0010\u0010!\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0008\u0010\"\u001a\u00020\u0004H\u0002J\u0008\u0010#\u001a\u00020\u0004H\u0002J\u0008\u0010$\u001a\u00020\u0004H\u0002J\u0008\u0010%\u001a\u00020\u001bH\u0002J\u0016\u0010\'\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020&J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u001bJ\u000e\u0010*\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011J\u0016\u0010,\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020+2\u0006\u0010\u0012\u001a\u00020\u0011J\u0008\u0010-\u001a\u00020\u0004H\u0016J\u0008\u0010.\u001a\u00020\u001bH\u0016J\u0006\u0010/\u001a\u00020\u0004J\u0006\u00100\u001a\u00020\u0004J\u0016\u00101\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020+2\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u00102\u001a\u00020\u001bR\u0017\u00106\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u00103\u001a\u0004\u00084\u00105R*\u0010=\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u0001078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\"\u0010C\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR$\u0010J\u001a\u0004\u0018\u00010D8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010E\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR$\u0010Q\u001a\u0004\u0018\u00010K8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010L\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR$\u0010X\u001a\u0004\u0018\u00010R8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010S\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR$\u0010_\u001a\u0004\u0018\u00010Y8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R$\u0010f\u001a\u0004\u0018\u00010`8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010a\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR$\u0010m\u001a\u0004\u0018\u00010g8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010h\u001a\u0004\u0008i\u0010j\"\u0004\u0008k\u0010lR$\u0010t\u001a\u0004\u0018\u00010n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010o\u001a\u0004\u0008p\u0010q\"\u0004\u0008r\u0010sR$\u0010{\u001a\u0004\u0018\u00010u8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010v\u001a\u0004\u0008w\u0010x\"\u0004\u0008y\u0010zR\'\u0010\u0082\u0001\u001a\u0004\u0018\u00010|8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u000c\u0010}\u001a\u0004\u0008~\u0010\u007f\"\u0006\u0008\u0080\u0001\u0010\u0081\u0001R*\u0010\u0088\u0001\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u001d\u0010\u0083\u0001\u001a\u0006\u0008\u0084\u0001\u0010\u0085\u0001\"\u0006\u0008\u0086\u0001\u0010\u0087\u0001R*\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0018\u0010\u0089\u0001\u001a\u0006\u0008\u008a\u0001\u0010\u008b\u0001\"\u0006\u0008\u008c\u0001\u0010\u008d\u0001R\u0017\u0010\u0091\u0001\u001a\u00030\u008f\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u001a\u0010\u0090\u0001R\u001b\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0092\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\"\u0010\u0093\u0001\u00a8\u0006\u0097\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/RxGesture;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;",
        "config",
        "",
        "h",
        "n",
        "i",
        "o",
        "k",
        "j",
        "l",
        "p",
        "m",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "b",
        "Landroid/view/MotionEvent;",
        "event",
        "A",
        "f",
        "d",
        "",
        "action",
        "r",
        "w",
        "s",
        "",
        "g",
        "q",
        "motionEvent",
        "y",
        "z",
        "x",
        "t",
        "u",
        "v",
        "e",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;",
        "subscribe",
        "active",
        "setPenActive",
        "dispatchTouchEvent",
        "Landroid/view/View;",
        "onTouchEvent",
        "dispose",
        "isDisposed",
        "onPause",
        "onResume",
        "onHover",
        "isCancelled",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "getGestureContext",
        "()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
        "gestureContext",
        "Lio/reactivex/rxjava3/core/ObservableEmitter;",
        "Lio/reactivex/rxjava3/core/ObservableEmitter;",
        "getEmitter",
        "()Lio/reactivex/rxjava3/core/ObservableEmitter;",
        "setEmitter",
        "(Lio/reactivex/rxjava3/core/ObservableEmitter;)V",
        "emitter",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;",
        "getGestureConfig",
        "()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;",
        "setGestureConfig",
        "(Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;)V",
        "gestureConfig",
        "Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;",
        "getMoveGesture",
        "()Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;",
        "setMoveGesture",
        "(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;)V",
        "moveGesture",
        "Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;",
        "getMoveTwoFingerGesture",
        "()Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;",
        "setMoveTwoFingerGesture",
        "(Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;)V",
        "moveTwoFingerGesture",
        "Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;",
        "getClickMultiFingerGesture",
        "()Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;",
        "setClickMultiFingerGesture",
        "(Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;)V",
        "clickMultiFingerGesture",
        "Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;",
        "getFlingGesture",
        "()Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;",
        "setFlingGesture",
        "(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;)V",
        "flingGesture",
        "Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;",
        "getLongPressGesture",
        "()Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;",
        "setLongPressGesture",
        "(Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;)V",
        "longPressGesture",
        "Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;",
        "getScaleGesture",
        "()Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;",
        "setScaleGesture",
        "(Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;)V",
        "scaleGesture",
        "Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;",
        "getCommonGesture",
        "()Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;",
        "setCommonGesture",
        "(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;)V",
        "commonGesture",
        "Lcom/onyx/android/sdk/rxgesture/RxNoGesture;",
        "Lcom/onyx/android/sdk/rxgesture/RxNoGesture;",
        "getNoGesture",
        "()Lcom/onyx/android/sdk/rxgesture/RxNoGesture;",
        "setNoGesture",
        "(Lcom/onyx/android/sdk/rxgesture/RxNoGesture;)V",
        "noGesture",
        "Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;",
        "Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;",
        "getScaleGestureDetector",
        "()Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;",
        "setScaleGestureDetector",
        "(Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;)V",
        "scaleGestureDetector",
        "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;",
        "getListener",
        "()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;",
        "setListener",
        "(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V",
        "listener",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "getDisposable",
        "()Lio/reactivex/rxjava3/disposables/Disposable;",
        "setDisposable",
        "(Lio/reactivex/rxjava3/disposables/Disposable;)V",
        "disposable",
        "Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;",
        "Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;",
        "palmGestureDetector",
        "Lcom/onyx/android/sdk/device/IDevice;",
        "Lcom/onyx/android/sdk/device/IDevice;",
        "deviceGestureFilter",
        "<init>",
        "()V",
        "sdk-rxgesture_release"
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
        "SMAP\nRxGesture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxGesture.kt\ncom/onyx/android/sdk/rxgesture/RxGesture\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,383:1\n1#2:384\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lio/reactivex/rxjava3/core/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/ObservableEmitter<",
            "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Lcom/onyx/android/sdk/rxgesture/RxNoGesture;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final s:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Lcom/onyx/android/sdk/device/IDevice;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->Companion:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector$Companion;->getInstance()Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->s:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/rxgesture/RxGesture;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->c(Lcom/onyx/android/sdk/rxgesture/RxGesture;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method

.method public static final c(Lcom/onyx/android/sdk/rxgesture/RxGesture;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->f:Lio/reactivex/rxjava3/core/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/MotionEvent;)V
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/onyx/android/sdk/rxgesture/RxGesture;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/bwl;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/bwl;-><init>(Lcom/onyx/android/sdk/rxgesture/RxGesture;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "create(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->p:Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnableScaleGesture()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnabledMultiTouch()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->t:Lcom/onyx/android/sdk/device/IDevice;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/device/IDevice;->filterByDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->t:Lcom/onyx/android/sdk/device/IDevice;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/device/IDevice;->filterByDispatchPointerDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->updatePointerDownPoint(Landroid/view/MotionEvent;)V

    :cond_3
    iget-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->j:Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;->onNext(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    :cond_4
    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->r:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->h:Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->dispose()V

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->i:Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->dispose()V

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->k:Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->dispose()V

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->l:Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->dispose()V

    :cond_4
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->n:Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->dispose()V

    :cond_5
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->j:Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->dispose()V

    :cond_6
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->o:Lcom/onyx/android/sdk/rxgesture/RxNoGesture;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->dispose()V

    :cond_7
    return-void
.end method

.method public final e()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isHover()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v0, Lcom/onyx/android/sdk/rxgesture/RxGesture;

    const-string v1, "filter by hover"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->s()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isActivePoint(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->updateActiveUpPoint(Landroid/view/MotionEvent;)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->updatePointerUpPoint(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->s()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->updatePointerDownPoint(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->updateCancelPoint(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->s()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->x(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->updateMovePoint(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isActivePoint(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->updateActiveUpPoint(Landroid/view/MotionEvent;)V

    :cond_6
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->updateUpPoint(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->s()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->z(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->updateDownPoint(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->s()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->y(Landroid/view/MotionEvent;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->d(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->w()V

    return-void
.end method

.method public final g(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    const/4 p1, 0x2

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getClickMultiFingerGesture()Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->j:Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;

    return-object p0
.end method

.method public final getCommonGesture()Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->n:Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;

    return-object p0
.end method

.method public final getDisposable()Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->r:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method

.method public final getEmitter()Lio/reactivex/rxjava3/core/ObservableEmitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/ObservableEmitter<",
            "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->f:Lio/reactivex/rxjava3/core/ObservableEmitter;

    return-object p0
.end method

.method public final getFlingGesture()Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->k:Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;

    return-object p0
.end method

.method public final getGestureConfig()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    return-object p0
.end method

.method public final getGestureContext()Lcom/onyx/android/sdk/rxgesture/RxGestureContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    return-object p0
.end method

.method public final getListener()Lcom/onyx/android/sdk/rxgesture/RxGestureListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->q:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    return-object p0
.end method

.method public final getLongPressGesture()Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->l:Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;

    return-object p0
.end method

.method public final getMoveGesture()Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->h:Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;

    return-object p0
.end method

.method public final getMoveTwoFingerGesture()Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->i:Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;

    return-object p0
.end method

.method public final getNoGesture()Lcom/onyx/android/sdk/rxgesture/RxNoGesture;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->o:Lcom/onyx/android/sdk/rxgesture/RxNoGesture;

    return-object p0
.end method

.method public final getScaleGesture()Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->m:Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;

    return-object p0
.end method

.method public final getScaleGestureDetector()Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->p:Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;)V
    .locals 1

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    sget-object v0, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->t:Lcom/onyx/android/sdk/device/IDevice;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->l()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->p()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->m()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->j()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->k()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->o()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->i()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->n()V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->setConfig(Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;)V

    return-void
.end method

.method public final i()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->q:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->setListener(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->n:Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;

    return-void
.end method

.method public final isCancelled()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isCancelled()Z

    move-result p0

    return p0
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->r:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final j()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->q:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->setListener(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->k:Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;

    return-void
.end method

.method public final k()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->q:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->setListener(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->l:Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;

    return-void
.end method

.method public final l()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->q:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->setListener(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->h:Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;

    return-void
.end method

.method public final m()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxClickMultiFingerGesture;

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->t:Lcom/onyx/android/sdk/device/IDevice;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxClickMultiFingerGesture;-><init>(Lcom/onyx/android/sdk/device/IDevice;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->q:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->setListener(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->j:Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;

    return-void
.end method

.method public final n()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxNoGesture;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/RxNoGesture;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->q:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->setListener(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxNoGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxNoGesture;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->o:Lcom/onyx/android/sdk/rxgesture/RxNoGesture;

    return-void
.end method

.method public final o()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->setGestureContext(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->q:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;->setListener(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V

    new-instance v1, Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->p:Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->m:Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;

    return-void
.end method

.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_2

    const/16 p2, 0x9

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->u()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->t()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->v()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onPause()V
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->setHover(Z)V

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v0, Lcom/onyx/android/sdk/rxgesture/RxGesture;

    const-string v1, "onPause"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->setHover(Z)V

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v0, Lcom/onyx/android/sdk/rxgesture/RxGesture;

    const-string v1, "onResume"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->A(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnableFilterOnHover()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnabledMultiTouch()Z

    move-result v0

    const-class v2, Lcom/onyx/android/sdk/rxgesture/RxGesture;

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->q(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-string p1, "filter multi touch by config"

    invoke-virtual {p0, v2, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->setMorePointer(Z)V

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isDisabledPenTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p1, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "filter by pen touch"

    invoke-virtual {p1, v2, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isPenTouchType(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    if-ne p1, v3, :cond_5

    :cond_4
    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->r(Landroid/view/MotionEvent;I)V

    :cond_5
    return v1

    :cond_6
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnabledPalmReject()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->s:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/palm/PalmType;->isPalmPress()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->onPalmPressed()V

    :cond_7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/palm/PalmType;->isBigPalmPress()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->onBigPalmPressed()V

    :cond_8
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->f(Landroid/view/MotionEvent;)V

    return v4
.end method

.method public final p()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->q:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->setListener(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;->subscribe()Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->i:Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;

    return-void
.end method

.method public final q(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final r(Landroid/view/MotionEvent;I)V
    .locals 1

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->s()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isActivePoint(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->updateUpPoint(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->s()V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->updateCancelPoint(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->s()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->x(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isActivePoint(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->updateUpPoint(Landroid/view/MotionEvent;)V

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->s()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->z(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->reset()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->d(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->w()V

    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnableFlingGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->k:Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;->onNext(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    :cond_0
    return-void
.end method

.method public final setClickMultiFingerGesture(Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->j:Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;

    return-void
.end method

.method public final setCommonGesture(Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->n:Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;

    return-void
.end method

.method public final setDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->r:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final setEmitter(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/core/ObservableEmitter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/ObservableEmitter<",
            "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->f:Lio/reactivex/rxjava3/core/ObservableEmitter;

    return-void
.end method

.method public final setFlingGesture(Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->k:Lcom/onyx/android/sdk/rxgesture/RxFlingGesture;

    return-void
.end method

.method public final setGestureConfig(Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    return-void
.end method

.method public final setListener(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->q:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    return-void
.end method

.method public final setLongPressGesture(Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->l:Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;

    return-void
.end method

.method public final setMoveGesture(Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->h:Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;

    return-void
.end method

.method public final setMoveTwoFingerGesture(Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->i:Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;

    return-void
.end method

.method public final setNoGesture(Lcom/onyx/android/sdk/rxgesture/RxNoGesture;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxNoGesture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->o:Lcom/onyx/android/sdk/rxgesture/RxNoGesture;

    return-void
.end method

.method public final setPenActive(Z)Lcom/onyx/android/sdk/rxgesture/RxGesture;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->setPenActive(Z)V

    return-object p0
.end method

.method public final setScaleGesture(Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->m:Lcom/onyx/android/sdk/rxgesture/RxScaleGesture;

    return-void
.end method

.method public final setScaleGestureDetector(Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->p:Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;

    return-void
.end method

.method public final subscribe(Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/rxgesture/RxGestureListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "l"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;

    invoke-direct {v0, p2}, Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;-><init>(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->q:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->h(Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->b()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->r:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final t()V
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->setHover(Z)V

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v0, Lcom/onyx/android/sdk/rxgesture/RxGesture;

    const-string v1, "onHover: ENTER"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final u()V
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->setHover(Z)V

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v0, Lcom/onyx/android/sdk/rxgesture/RxGesture;

    const-string v1, "onHover: EXIT"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->isHover()Z

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureContext;->setHover(Z)V

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v0, Lcom/onyx/android/sdk/rxgesture/RxGesture;

    const-string v1, "onHover: MOVE ENTER"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->f:Lio/reactivex/rxjava3/core/ObservableEmitter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnableMoveGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->h:Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;->onNext(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnableMultiClick()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->j:Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;->onNext(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnableTwoMoveGesture()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->i:Lcom/onyx/android/sdk/rxgesture/RxMoveTwoFingerGesture;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxMoveGesture;->onNext(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnableLongPressGesture()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->l:Lcom/onyx/android/sdk/rxgesture/RxLongPressGesture;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->onNext(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    :cond_4
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnableCommonGesture()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->n:Lcom/onyx/android/sdk/rxgesture/RxCommonGesture;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->onNext(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    :cond_5
    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->g:Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->isEnableNoGesture()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->o:Lcom/onyx/android/sdk/rxgesture/RxNoGesture;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;->onNext(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;)V

    :cond_6
    return-void
.end method

.method public final x(Landroid/view/MotionEvent;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v1, Lcom/onyx/android/sdk/rxgesture/RxGesture;

    const-string v2, "onTouchCancel"

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->q:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-interface {v0, p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onTouchCancel(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final y(Landroid/view/MotionEvent;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v1, Lcom/onyx/android/sdk/rxgesture/RxGesture;

    const-string v2, "onTouchDown"

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->q:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-interface {v0, p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onTouchDown(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final z(Landroid/view/MotionEvent;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const-class v1, Lcom/onyx/android/sdk/rxgesture/RxGesture;

    const-string v2, "onTouchUp"

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->q:Lcom/onyx/android/sdk/rxgesture/RxGestureListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/RxGesture;->e:Lcom/onyx/android/sdk/rxgesture/RxGestureContext;

    invoke-interface {v0, p0, p1}, Lcom/onyx/android/sdk/rxgesture/RxGestureListener;->onTouchUp(Lcom/onyx/android/sdk/rxgesture/RxGestureContext;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method
