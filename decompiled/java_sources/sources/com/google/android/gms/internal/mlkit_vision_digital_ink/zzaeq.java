package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.annotation.SuppressLint;
import androidx.annotation.GuardedBy;
import androidx.appcompat.widget.ActivityChooserModel;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.v6l;
import java.util.HashMap;
import java.util.Random;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000¾\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001:\u0006\u0083\u0001\u0084\u0001\u0085\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0007J(\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\b\u0010\u001b\u001a\u00020\u001aH\u0007J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\u001f\u0010\u001f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0000¢\u0006\u0002\b J\u001f\u0010!\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0000¢\u0006\u0002\b\"J\"\u0010#\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010$\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0010\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020&H\u0007J\u0018\u0010%\u001a\u00020(2\u0006\u0010)\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020(H\u0007J\u0010\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020,H\u0007J\u0010\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0007J\"\u00102\u001a\b\u0012\u0004\u0012\u0002H403\"\u0004\b\u0000\u001042\f\u00105\u001a\b\u0012\u0004\u0012\u0002H403H\u0007J\"\u00106\u001a\b\u0012\u0004\u0012\u0002H807\"\u0004\b\u0000\u001082\f\u00109\u001a\b\u0012\u0004\u0012\u0002H807H\u0007J4\u0010:\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002H=0;\"\u0004\b\u0000\u0010<\"\u0004\b\u0001\u0010=2\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002H=0;H\u0007J\"\u0010?\u001a\b\u0012\u0004\u0012\u0002H40@\"\u0004\b\u0000\u001042\f\u0010A\u001a\b\u0012\u0004\u0012\u0002H40@H\u0007J4\u0010B\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002H=0C\"\u0004\b\u0000\u0010<\"\u0004\b\u0001\u0010=2\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002H=0CH\u0007J\"\u0010E\u001a\b\u0012\u0004\u0012\u0002H40F\"\u0004\b\u0000\u001042\f\u0010G\u001a\b\u0012\u0004\u0012\u0002H40FH\u0007J\u0010\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020IH\u0007J\"\u0010K\u001a\b\u0012\u0004\u0012\u0002H80L\"\u0004\b\u0000\u001082\f\u00109\u001a\b\u0012\u0004\u0012\u0002H80LH\u0007J4\u0010M\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002H=0N\"\u0004\b\u0000\u0010<\"\u0004\b\u0001\u0010=2\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002H=0NH\u0007J\"\u0010O\u001a\b\u0012\u0004\u0012\u0002H40P\"\u0004\b\u0000\u001042\f\u0010Q\u001a\b\u0012\u0004\u0012\u0002H40PH\u0007J\u0018\u0010R\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\u0010\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020TH\u0007J4\u0010V\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002H=0W\"\u0004\b\u0000\u0010<\"\u0004\b\u0001\u0010=2\u0012\u0010X\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002H=0WH\u0007J\"\u0010Y\u001a\b\u0012\u0004\u0012\u0002H80Z\"\u0004\b\u0000\u001082\f\u0010[\u001a\b\u0012\u0004\u0012\u0002H80ZH\u0007J\u0010\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020]H\u0007J\u0010\u0010_\u001a\u00020`2\u0006\u0010a\u001a\u00020`H\u0007J\u0010\u0010b\u001a\u00020(2\u0006\u0010*\u001a\u00020(H\u0007J\"\u0010c\u001a\b\u0012\u0004\u0012\u0002H80d\"\u0004\b\u0000\u001082\f\u0010e\u001a\b\u0012\u0004\u0012\u0002H80dH\u0007J\u0018\u0010f\u001a\u00020g2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\"\u0010h\u001a\b\u0012\u0004\u0012\u0002H80i\"\u0004\b\u0000\u001082\f\u0010j\u001a\b\u0012\u0004\u0012\u0002H80iH\u0007J*\u0010k\u001a\b\u0012\u0004\u0012\u0002H403\"\u0004\b\u0000\u001042\f\u0010G\u001a\b\u0012\u0004\u0012\u0002H40F2\u0006\u0010l\u001a\u00020mH\u0007J#\u0010n\u001a\u00020\u001a2\u0006\u0010\u0011\u001a\u00020\u00122\f\u0010o\u001a\b\u0012\u0004\u0012\u00020\u00140pH\u0007¢\u0006\u0002\u0010qJ-\u0010n\u001a\u00020\u001a2\u0006\u0010\u0011\u001a\u00020\u00122\f\u0010o\u001a\b\u0012\u0004\u0012\u00020\u00140p2\b\u0010r\u001a\u0004\u0018\u00010sH\u0007¢\u0006\u0002\u0010tJ\u0018\u0010u\u001a\u00020\u001a2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\"\u0010u\u001a\u00020\u001a2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010r\u001a\u0004\u0018\u00010sH\u0007J \u0010v\u001a\u00020\u001a2\u0006\u0010w\u001a\u00020x2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010y\u001a\u00020\u0018H\u0007J*\u0010v\u001a\u00020\u001a2\u0006\u0010w\u001a\u00020x2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010y\u001a\u00020\u00182\b\u0010r\u001a\u0004\u0018\u00010sH\u0007J\u001a\u0010z\u001a\u0004\u0018\u00010{2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0010\u0010|\u001a\u0002012\u0006\u0010}\u001a\u00020~H\u0007J\u0010\u0010|\u001a\u0002012\u0006\u0010}\u001a\u000201H\u0007J-\u0010\u007f\u001a\u0002H8\"\u0004\b\u0000\u001082\u0006\u0010)\u001a\u00020\u00062\u000e\u0010\u0080\u0001\u001a\t\u0012\u0004\u0012\u0002H80\u0081\u0001H\u0083\b¢\u0006\u0003\u0010\u0082\u0001R\u001c\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0000X\u0081\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0086\u0001"}, m61528d2 = {"Lcom/google/apps/tiktok/tracing/TracePropagation;", "", "()V", "ACTIVE_TRACES", "Ljava/util/HashMap;", "", "Lcom/google/apps/tiktok/tracing/Trace;", "INTENT_ID_KEY", "", "TAG", "finishingActivityTrace", "Lcom/google/apps/tiktok/tracing/TraceCloseable;", "finishingActivityTraceLock", "nextIntentId", "activeTraceIsEmpty", "", "bindService", "context", "Landroid/content/Context;", v6l.f87196g, "Landroid/content/Intent;", "serviceConnection", "Landroid/content/ServiceConnection;", "flags", "", "checkTrace", "", "clearActiveTraces", "getPropagatedFinishingActivityTrace", "restricted", "Lcom/google/apps/tiktok/tracing/TracingRestricted;", "getPropagatedTrace", "getPropagatedTrace$java_com_google_apps_tiktok_tracing_tracing_external", "getPropagatedTraceAndClearState", "getPropagatedTraceAndClearState$java_com_google_apps_tiktok_tracing_tracing_external", "getPropagatedTraceHelper", SyncConstant.SYNC_ACTION_REMOVE, "propagate", "Landroid/view/PixelCopy$OnPixelCopyFinishedListener;", "onPixelCopyFinishedListener", "Ljava/lang/Runnable;", AbstractLogger.TRACE, "runnable", "propagateAnimationListener", "Landroid/view/animation/Animation$AnimationListener;", "animationListener", "propagateAnimatorListenerAdapter", "Lcom/google/apps/tiktok/tracing/TracePropagation$PropagatedAnimatorListenerAdapter;", "animatorListenerAdapter", "Landroid/animation/AnimatorListenerAdapter;", "propagateAsyncCallable", "Lcom/google/common/util/concurrent/AsyncCallable;", "V", "asyncCallable", "propagateAsyncClosingCallable", "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable;", "T", "closingCallable", "propagateAsyncClosingFunction", "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;", "I", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "closingFunction", "propagateAsyncCombiningCallable", "Lcom/google/common/util/concurrent/ClosingFuture$Combiner$AsyncCombiningCallable;", "asyncCombiningCallable", "propagateAsyncFunction", "Lcom/google/common/util/concurrent/AsyncFunction;", "asyncFunction", "propagateCallable", "Ljava/util/concurrent/Callable;", "callable", "propagateCloseable", "Ljava/io/Closeable;", "closeable", "propagateClosingCallable", "Lcom/google/common/util/concurrent/ClosingFuture$ClosingCallable;", "propagateClosingFunction", "Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;", "propagateCombiningCallable", "Lcom/google/common/util/concurrent/ClosingFuture$Combiner$CombiningCallable;", "combiningCallable", "propagateFinishingActivityTrace", "propagateFrameCallback", "Landroid/view/Choreographer$FrameCallback;", "frameCallback", "propagateFunction", "Lcom/google/common/base/Function;", Constants.EXSLT_ELEMNAME_FUNCTION_STRING, "propagateFutureCallback", "Lcom/google/common/util/concurrent/FutureCallback;", "callback", "propagateIdleHandler", "Landroid/os/MessageQueue$IdleHandler;", "idleHandler", "propagatePictureCallback", "Landroid/hardware/Camera$PictureCallback;", "pictureCallback", "propagateRunnable", "propagateSupplier", "Lcom/google/common/base/Supplier;", "supplier", "propagateTraceContext", "Lcom/google/apps/tiktok/tracing/TracePropagation$Timeout;", "propagateValueAndCloserConsumer", "Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;", "consumer", "propagatingAsyncCallable", "executor", "Lcom/google/common/util/concurrent/ListeningExecutorService;", "startActivities", "intents", "", "(Landroid/content/Context;[Landroid/content/Intent;)V", "options", "Landroid/os/Bundle;", "(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V", "startActivity", "startActivityForResult", ActivityChooserModel.f1429r, "Landroid/app/Activity;", "requestCode", "startService", "Landroid/content/ComponentName;", "wrapForPropagation", "delegate", "Landroid/animation/Animator$AnimatorListener;", "wrapInTrace", BreakpointSQLiteHelper.f39283i, "Lkotlin/Function0;", "(Lcom/google/apps/tiktok/tracing/Trace;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "PropagatedAnimatorListenerAdapter", "Timeout", "TraceCapturingAnimatorListenerAdapter", "java.com.google.apps.tiktok.tracing_tracing_external"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
@SuppressLint({"TikTok.UnpropagatedTraceOnStartActivity"})
/* loaded from: classes5.dex */
public final class zzaeq {

    @NotNull
    public static final zzaeq zza = new zzaeq();

    @JvmField
    @GuardedBy("ACTIVE_TRACES")
    @NotNull
    public static final HashMap zzb;

    @NotNull
    private static final Object zzc;

    static {
        Math.abs(new Random().nextInt());
        zzb = new HashMap();
        zzc = new Object();
    }

    private zzaeq() {
    }

    @JvmStatic
    @NotNull
    public static final zzaft zza(@NotNull zzaft function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return new zzaeo(zzaeu.zzb(), function);
    }

    @JvmStatic
    @NotNull
    public static final zzaqs zzb(@NotNull zzaqs asyncCallable) {
        Intrinsics.checkNotNullParameter(asyncCallable, "asyncCallable");
        return new zzael(zzaeu.zzb(), asyncCallable);
    }

    @JvmStatic
    @NotNull
    public static final zzaqt zzc(@NotNull zzaqt asyncFunction) {
        Intrinsics.checkNotNullParameter(asyncFunction, "asyncFunction");
        return new zzaem(zzaeu.zzb(), asyncFunction);
    }

    @JvmStatic
    @NotNull
    public static final zzarr zzd(@NotNull zzarr callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        return new zzaep(zzaeu.zzb(), callback);
    }

    @JvmStatic
    @NotNull
    public static final Runnable zze(@NotNull Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        zzaeh trace = zzaeu.zzb();
        Intrinsics.checkNotNullExpressionValue(trace, "getOrCreateDebug()");
        Intrinsics.checkNotNullParameter(trace, "trace");
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        return new zzaek(trace, runnable);
    }

    @JvmStatic
    @NotNull
    public static final Callable zzf(@NotNull Callable callable) {
        Intrinsics.checkNotNullParameter(callable, "callable");
        return new zzaen(zzaeu.zzb(), callable);
    }
}
