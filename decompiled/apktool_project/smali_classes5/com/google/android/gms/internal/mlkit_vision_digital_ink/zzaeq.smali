.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "TikTok.UnpropagatedTraceOnStartActivity"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00be\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0006\u0083\u0001\u0084\u0001\u0085\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0007J(\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0008\u0010\u001b\u001a\u00020\u001aH\u0007J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\u001f\u0010\u001f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0000\u00a2\u0006\u0002\u0008 J\u001f\u0010!\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0000\u00a2\u0006\u0002\u0008\"J\"\u0010#\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010$\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0010\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020&H\u0007J\u0018\u0010%\u001a\u00020(2\u0006\u0010)\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020(H\u0007J\u0010\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020,H\u0007J\u0010\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0007J\"\u00102\u001a\u0008\u0012\u0004\u0012\u0002H403\"\u0004\u0008\u0000\u001042\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u0002H403H\u0007J\"\u00106\u001a\u0008\u0012\u0004\u0012\u0002H807\"\u0004\u0008\u0000\u001082\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u0002H807H\u0007J4\u0010:\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002H=0;\"\u0004\u0008\u0000\u0010<\"\u0004\u0008\u0001\u0010=2\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002H=0;H\u0007J\"\u0010?\u001a\u0008\u0012\u0004\u0012\u0002H40@\"\u0004\u0008\u0000\u001042\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u0002H40@H\u0007J4\u0010B\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002H=0C\"\u0004\u0008\u0000\u0010<\"\u0004\u0008\u0001\u0010=2\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002H=0CH\u0007J\"\u0010E\u001a\u0008\u0012\u0004\u0012\u0002H40F\"\u0004\u0008\u0000\u001042\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u0002H40FH\u0007J\u0010\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020IH\u0007J\"\u0010K\u001a\u0008\u0012\u0004\u0012\u0002H80L\"\u0004\u0008\u0000\u001082\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u0002H80LH\u0007J4\u0010M\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002H=0N\"\u0004\u0008\u0000\u0010<\"\u0004\u0008\u0001\u0010=2\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002H=0NH\u0007J\"\u0010O\u001a\u0008\u0012\u0004\u0012\u0002H40P\"\u0004\u0008\u0000\u001042\u000c\u0010Q\u001a\u0008\u0012\u0004\u0012\u0002H40PH\u0007J\u0018\u0010R\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\u0010\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020TH\u0007J4\u0010V\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002H=0W\"\u0004\u0008\u0000\u0010<\"\u0004\u0008\u0001\u0010=2\u0012\u0010X\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002H=0WH\u0007J\"\u0010Y\u001a\u0008\u0012\u0004\u0012\u0002H80Z\"\u0004\u0008\u0000\u001082\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u0002H80ZH\u0007J\u0010\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020]H\u0007J\u0010\u0010_\u001a\u00020`2\u0006\u0010a\u001a\u00020`H\u0007J\u0010\u0010b\u001a\u00020(2\u0006\u0010*\u001a\u00020(H\u0007J\"\u0010c\u001a\u0008\u0012\u0004\u0012\u0002H80d\"\u0004\u0008\u0000\u001082\u000c\u0010e\u001a\u0008\u0012\u0004\u0012\u0002H80dH\u0007J\u0018\u0010f\u001a\u00020g2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\"\u0010h\u001a\u0008\u0012\u0004\u0012\u0002H80i\"\u0004\u0008\u0000\u001082\u000c\u0010j\u001a\u0008\u0012\u0004\u0012\u0002H80iH\u0007J*\u0010k\u001a\u0008\u0012\u0004\u0012\u0002H403\"\u0004\u0008\u0000\u001042\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u0002H40F2\u0006\u0010l\u001a\u00020mH\u0007J#\u0010n\u001a\u00020\u001a2\u0006\u0010\u0011\u001a\u00020\u00122\u000c\u0010o\u001a\u0008\u0012\u0004\u0012\u00020\u00140pH\u0007\u00a2\u0006\u0002\u0010qJ-\u0010n\u001a\u00020\u001a2\u0006\u0010\u0011\u001a\u00020\u00122\u000c\u0010o\u001a\u0008\u0012\u0004\u0012\u00020\u00140p2\u0008\u0010r\u001a\u0004\u0018\u00010sH\u0007\u00a2\u0006\u0002\u0010tJ\u0018\u0010u\u001a\u00020\u001a2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\"\u0010u\u001a\u00020\u001a2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010r\u001a\u0004\u0018\u00010sH\u0007J \u0010v\u001a\u00020\u001a2\u0006\u0010w\u001a\u00020x2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010y\u001a\u00020\u0018H\u0007J*\u0010v\u001a\u00020\u001a2\u0006\u0010w\u001a\u00020x2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010y\u001a\u00020\u00182\u0008\u0010r\u001a\u0004\u0018\u00010sH\u0007J\u001a\u0010z\u001a\u0004\u0018\u00010{2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0010\u0010|\u001a\u0002012\u0006\u0010}\u001a\u00020~H\u0007J\u0010\u0010|\u001a\u0002012\u0006\u0010}\u001a\u000201H\u0007J-\u0010\u007f\u001a\u0002H8\"\u0004\u0008\u0000\u001082\u0006\u0010)\u001a\u00020\u00062\u000e\u0010\u0080\u0001\u001a\t\u0012\u0004\u0012\u0002H80\u0081\u0001H\u0083\u0008\u00a2\u0006\u0003\u0010\u0082\u0001R\u001c\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0086\u0001"
    }
    d2 = {
        "Lcom/google/apps/tiktok/tracing/TracePropagation;",
        "",
        "()V",
        "ACTIVE_TRACES",
        "Ljava/util/HashMap;",
        "",
        "Lcom/google/apps/tiktok/tracing/Trace;",
        "INTENT_ID_KEY",
        "",
        "TAG",
        "finishingActivityTrace",
        "Lcom/google/apps/tiktok/tracing/TraceCloseable;",
        "finishingActivityTraceLock",
        "nextIntentId",
        "activeTraceIsEmpty",
        "",
        "bindService",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "serviceConnection",
        "Landroid/content/ServiceConnection;",
        "flags",
        "",
        "checkTrace",
        "",
        "clearActiveTraces",
        "getPropagatedFinishingActivityTrace",
        "restricted",
        "Lcom/google/apps/tiktok/tracing/TracingRestricted;",
        "getPropagatedTrace",
        "getPropagatedTrace$java_com_google_apps_tiktok_tracing_tracing_external",
        "getPropagatedTraceAndClearState",
        "getPropagatedTraceAndClearState$java_com_google_apps_tiktok_tracing_tracing_external",
        "getPropagatedTraceHelper",
        "remove",
        "propagate",
        "Landroid/view/PixelCopy$OnPixelCopyFinishedListener;",
        "onPixelCopyFinishedListener",
        "Ljava/lang/Runnable;",
        "trace",
        "runnable",
        "propagateAnimationListener",
        "Landroid/view/animation/Animation$AnimationListener;",
        "animationListener",
        "propagateAnimatorListenerAdapter",
        "Lcom/google/apps/tiktok/tracing/TracePropagation$PropagatedAnimatorListenerAdapter;",
        "animatorListenerAdapter",
        "Landroid/animation/AnimatorListenerAdapter;",
        "propagateAsyncCallable",
        "Lcom/google/common/util/concurrent/AsyncCallable;",
        "V",
        "asyncCallable",
        "propagateAsyncClosingCallable",
        "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable;",
        "T",
        "closingCallable",
        "propagateAsyncClosingFunction",
        "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;",
        "I",
        "O",
        "closingFunction",
        "propagateAsyncCombiningCallable",
        "Lcom/google/common/util/concurrent/ClosingFuture$Combiner$AsyncCombiningCallable;",
        "asyncCombiningCallable",
        "propagateAsyncFunction",
        "Lcom/google/common/util/concurrent/AsyncFunction;",
        "asyncFunction",
        "propagateCallable",
        "Ljava/util/concurrent/Callable;",
        "callable",
        "propagateCloseable",
        "Ljava/io/Closeable;",
        "closeable",
        "propagateClosingCallable",
        "Lcom/google/common/util/concurrent/ClosingFuture$ClosingCallable;",
        "propagateClosingFunction",
        "Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;",
        "propagateCombiningCallable",
        "Lcom/google/common/util/concurrent/ClosingFuture$Combiner$CombiningCallable;",
        "combiningCallable",
        "propagateFinishingActivityTrace",
        "propagateFrameCallback",
        "Landroid/view/Choreographer$FrameCallback;",
        "frameCallback",
        "propagateFunction",
        "Lcom/google/common/base/Function;",
        "function",
        "propagateFutureCallback",
        "Lcom/google/common/util/concurrent/FutureCallback;",
        "callback",
        "propagateIdleHandler",
        "Landroid/os/MessageQueue$IdleHandler;",
        "idleHandler",
        "propagatePictureCallback",
        "Landroid/hardware/Camera$PictureCallback;",
        "pictureCallback",
        "propagateRunnable",
        "propagateSupplier",
        "Lcom/google/common/base/Supplier;",
        "supplier",
        "propagateTraceContext",
        "Lcom/google/apps/tiktok/tracing/TracePropagation$Timeout;",
        "propagateValueAndCloserConsumer",
        "Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;",
        "consumer",
        "propagatingAsyncCallable",
        "executor",
        "Lcom/google/common/util/concurrent/ListeningExecutorService;",
        "startActivities",
        "intents",
        "",
        "(Landroid/content/Context;[Landroid/content/Intent;)V",
        "options",
        "Landroid/os/Bundle;",
        "(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V",
        "startActivity",
        "startActivityForResult",
        "activity",
        "Landroid/app/Activity;",
        "requestCode",
        "startService",
        "Landroid/content/ComponentName;",
        "wrapForPropagation",
        "delegate",
        "Landroid/animation/Animator$AnimatorListener;",
        "wrapInTrace",
        "block",
        "Lkotlin/Function0;",
        "(Lcom/google/apps/tiktok/tracing/Trace;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "PropagatedAnimatorListenerAdapter",
        "Timeout",
        "TraceCapturingAnimatorListenerAdapter",
        "java.com.google.apps.tiktok.tracing_tracing_external"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final zzb:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "ACTIVE_TRACES"
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final zzc:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzb:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;
    .locals 2
    .param p0    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "function"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeo;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeo;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)V

    return-object v1
.end method

.method public static final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;
    .locals 2
    .param p0    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "asyncCallable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzael;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzael;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;)V

    return-object v1
.end method

.method public static final zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;
    .locals 2
    .param p0    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "asyncFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaem;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaem;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)V

    return-object v1
.end method

.method public static final zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;
    .locals 2
    .param p0    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaep;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaep;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;)V

    return-object v1
.end method

.method public static final zze(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 3
    .param p0    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v1

    const-string v2, "getOrCreateDebug()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "trace"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaek;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaek;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaei;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static final zzf(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 2
    .param p0    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "callable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaen;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaen;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;Ljava/util/concurrent/Callable;)V

    return-object v1
.end method
