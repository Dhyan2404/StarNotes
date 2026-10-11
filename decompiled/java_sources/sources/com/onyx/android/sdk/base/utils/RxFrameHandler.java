package com.onyx.android.sdk.base.utils;

import android.view.Choreographer;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.RxFrameHandler;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b \u0010!J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001c\u0010\u0012\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u0014R*\u0010\u001b\u001a\u0015\u0012\f\u0012\n \u0010*\u0004\u0018\u00010\u00060\u00060\u0016¢\u0006\u0002\b\u00178\u0006¢\u0006\f\n\u0004\b\n\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/RxFrameHandler;", "", "", gon.f71290o0, "stop", "checkLeakOnDestroy", "", "frameTimeNanos", "b", "c", "d", "", "a", Constants.HASIDCALL_INDEX_SIG, "DEBUG_LOG", "Landroid/view/Choreographer;", "kotlin.jvm.PlatformType", "Landroid/view/Choreographer;", "choreographer", "Landroid/view/Choreographer$FrameCallback;", "Landroid/view/Choreographer$FrameCallback;", "choreographerCallback", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "Lio/reactivex/rxjava3/annotations/NonNull;", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "getPublishSubject", "()Lio/reactivex/rxjava3/subjects/PublishSubject;", "publishSubject", "Ljava/util/concurrent/atomic/AtomicBoolean;", "e", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isRunning", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RxFrameHandler {

    @NotNull
    public static final RxFrameHandler INSTANCE;

    /* renamed from: a, reason: from kotlin metadata */
    public static final boolean DEBUG_LOG = false;

    /* renamed from: b, reason: from kotlin metadata */
    public static final Choreographer choreographer;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static Choreographer.FrameCallback choreographerCallback;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final PublishSubject<Long> publishSubject;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static AtomicBoolean isRunning;

    static {
        final RxFrameHandler rxFrameHandler = new RxFrameHandler();
        INSTANCE = rxFrameHandler;
        choreographer = Choreographer.getInstance();
        choreographerCallback = new Choreographer.FrameCallback() { // from class: com.sunia.HTREnginev2.awl
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                RxFrameHandler.this.m32148b(j);
            }
        };
        PublishSubject<Long> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        publishSubject = create;
        isRunning = new AtomicBoolean(false);
    }

    /* renamed from: b */
    public final void m32148b(long frameTimeNanos) {
        m32150d(frameTimeNanos);
        publishSubject.onNext(Long.valueOf(frameTimeNanos));
        if (isRunning.get()) {
            m32149c();
        }
    }

    /* renamed from: c */
    public final void m32149c() {
        choreographer.postFrameCallback(choreographerCallback);
    }

    public final void checkLeakOnDestroy() {
        boolean hasObservers = publishSubject.hasObservers();
        if (hasObservers || isRunning.get()) {
            Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(this), "checkLeakOnDestroy, hasObservers = " + hasObservers + " , isRunning = " + isRunning.get(), new Object[0]);
        }
    }

    /* renamed from: d */
    public final void m32150d(long frameTimeNanos) {
    }

    @NotNull
    public final PublishSubject<Long> getPublishSubject() {
        return publishSubject;
    }

    public final void start() {
        if (isRunning.get()) {
            return;
        }
        isRunning.set(true);
        m32149c();
    }

    public final void stop() {
        isRunning.set(false);
    }
}
