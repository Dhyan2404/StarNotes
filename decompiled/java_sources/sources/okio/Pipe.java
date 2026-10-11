package okio;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0011¢\u0006\u0004\bA\u0010BJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\u000b\u001a\u00020\bH\u0007¢\u0006\u0004\b\t\u0010\nJ\u0006\u0010\f\u001a\u00020\u0004J&\u0010\u0010\u001a\u00020\u0004*\u00020\u00022\u0017\u0010\u000f\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\r¢\u0006\u0002\b\u000eH\u0082\bR\u001a\u0010\u0015\u001a\u00020\u00118\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u001b\u001a\u00020\u00168\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\"\u0010#\u001a\u00020\u001c8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010'\u001a\u00020\u001c8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b$\u0010\u001e\u001a\u0004\b%\u0010 \"\u0004\b&\u0010\"R\"\u0010+\u001a\u00020\u001c8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b(\u0010\u001e\u001a\u0004\b)\u0010 \"\u0004\b*\u0010\"R$\u00101\u001a\u0004\u0018\u00010\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010\u0007\"\u0004\b/\u00100R\u0017\u00107\u001a\u0002028\u0006¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u0017\u0010=\u001a\u0002088\u0006¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u0017\u0010\u0003\u001a\u00020\u00028G¢\u0006\f\n\u0004\b>\u0010-\u001a\u0004\b\u0003\u0010\u0007R\u0017\u0010\u000b\u001a\u00020\b8G¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\b\u000b\u0010\n¨\u0006C"}, m61528d2 = {"Lokio/Pipe;", "", "Lokio/Sink;", "sink", "", "fold", "-deprecated_sink", "()Lokio/Sink;", "Lokio/Source;", "-deprecated_source", "()Lokio/Source;", "source", "cancel", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", BreakpointSQLiteHelper.f39283i, "a", "", "J", "getMaxBufferSize$okio", "()J", "maxBufferSize", "Lokio/Buffer;", "b", "Lokio/Buffer;", "getBuffer$okio", "()Lokio/Buffer;", "buffer", "", "c", Constants.HASIDCALL_INDEX_SIG, "getCanceled$okio", Constants.BOOLEAN_VALUE_SIG, "setCanceled$okio", "(Z)V", "canceled", "d", "getSinkClosed$okio", "setSinkClosed$okio", "sinkClosed", "e", "getSourceClosed$okio", "setSourceClosed$okio", "sourceClosed", C6997f.f39671c, "Lokio/Sink;", "getFoldedSink$okio", "setFoldedSink$okio", "(Lokio/Sink;)V", "foldedSink", "Ljava/util/concurrent/locks/ReentrantLock;", C6998g.f39679a, "Ljava/util/concurrent/locks/ReentrantLock;", "getLock", "()Ljava/util/concurrent/locks/ReentrantLock;", DevicePushAction.LOCK_DEVICE, "Ljava/util/concurrent/locks/Condition;", C6999h.f39688c, "Ljava/util/concurrent/locks/Condition;", "getCondition", "()Ljava/util/concurrent/locks/Condition;", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_CONDITION, "i", "j", "Lokio/Source;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(J)V", "okio"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Timeout.kt\nokio/Timeout\n*L\n1#1,257:1\n1#2:258\n268#3,26:259\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe\n*L\n217#1:259,26\n*E\n"})
/* loaded from: classes11.dex */
public final class Pipe {

    /* renamed from: a, reason: from kotlin metadata */
    public final long maxBufferSize;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Buffer buffer = new Buffer();

    /* renamed from: c, reason: from kotlin metadata */
    public boolean canceled;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean sinkClosed;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean sourceClosed;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Sink foldedSink;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ReentrantLock lock;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Condition condition;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Sink sink;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Source source;

    public Pipe(long j) {
        this.maxBufferSize = j;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        Condition newCondition = reentrantLock.newCondition();
        Intrinsics.checkNotNullExpressionValue(newCondition, "newCondition(...)");
        this.condition = newCondition;
        if (j >= 1) {
            this.sink = new Sink() { // from class: okio.Pipe$sink$1

                /* renamed from: e, reason: from kotlin metadata */
                @NotNull
                public final Timeout timeout = new Timeout();

                @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
                public void close() {
                    ReentrantLock lock = Pipe.this.getLock();
                    Pipe pipe = Pipe.this;
                    lock.lock();
                    try {
                        if (pipe.getSinkClosed()) {
                            return;
                        }
                        Sink foldedSink = pipe.getFoldedSink();
                        if (foldedSink == null) {
                            if (pipe.getSourceClosed() && pipe.getBuffer().size() > 0) {
                                throw new IOException("source is closed");
                            }
                            pipe.setSinkClosed$okio(true);
                            pipe.getCondition().signalAll();
                            foldedSink = null;
                        }
                        Unit unit = Unit.INSTANCE;
                        if (foldedSink != null) {
                            Pipe pipe2 = Pipe.this;
                            Timeout timeout = foldedSink.getTimeout();
                            Timeout timeout2 = pipe2.sink().getTimeout();
                            long timeoutNanos = timeout.getTimeoutNanos();
                            long minTimeout = Timeout.INSTANCE.minTimeout(timeout2.getTimeoutNanos(), timeout.getTimeoutNanos());
                            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                            timeout.timeout(minTimeout, timeUnit);
                            if (!timeout.getHasDeadline()) {
                                if (timeout2.getHasDeadline()) {
                                    timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                                }
                                try {
                                    foldedSink.close();
                                    timeout.timeout(timeoutNanos, timeUnit);
                                    if (timeout2.getHasDeadline()) {
                                        timeout.clearDeadline();
                                        return;
                                    }
                                    return;
                                } catch (Throwable th) {
                                    timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                    if (timeout2.getHasDeadline()) {
                                        timeout.clearDeadline();
                                    }
                                    throw th;
                                }
                            }
                            long deadlineNanoTime = timeout.deadlineNanoTime();
                            if (timeout2.getHasDeadline()) {
                                timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                            }
                            try {
                                foldedSink.close();
                                timeout.timeout(timeoutNanos, timeUnit);
                                if (timeout2.getHasDeadline()) {
                                    timeout.deadlineNanoTime(deadlineNanoTime);
                                }
                            } catch (Throwable th2) {
                                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                if (timeout2.getHasDeadline()) {
                                    timeout.deadlineNanoTime(deadlineNanoTime);
                                }
                                throw th2;
                            }
                        }
                    } finally {
                        lock.unlock();
                    }
                }

                @Override // okio.Sink, java.io.Flushable
                public void flush() {
                    ReentrantLock lock = Pipe.this.getLock();
                    Pipe pipe = Pipe.this;
                    lock.lock();
                    try {
                        if (!(!pipe.getSinkClosed())) {
                            throw new IllegalStateException("closed".toString());
                        }
                        if (pipe.getCanceled()) {
                            throw new IOException("canceled");
                        }
                        Sink foldedSink = pipe.getFoldedSink();
                        if (foldedSink == null) {
                            if (pipe.getSourceClosed() && pipe.getBuffer().size() > 0) {
                                throw new IOException("source is closed");
                            }
                            foldedSink = null;
                        }
                        Unit unit = Unit.INSTANCE;
                        if (foldedSink != null) {
                            Pipe pipe2 = Pipe.this;
                            Timeout timeout = foldedSink.getTimeout();
                            Timeout timeout2 = pipe2.sink().getTimeout();
                            long timeoutNanos = timeout.getTimeoutNanos();
                            long minTimeout = Timeout.INSTANCE.minTimeout(timeout2.getTimeoutNanos(), timeout.getTimeoutNanos());
                            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                            timeout.timeout(minTimeout, timeUnit);
                            if (!timeout.getHasDeadline()) {
                                if (timeout2.getHasDeadline()) {
                                    timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                                }
                                try {
                                    foldedSink.flush();
                                    timeout.timeout(timeoutNanos, timeUnit);
                                    if (timeout2.getHasDeadline()) {
                                        timeout.clearDeadline();
                                        return;
                                    }
                                    return;
                                } catch (Throwable th) {
                                    timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                    if (timeout2.getHasDeadline()) {
                                        timeout.clearDeadline();
                                    }
                                    throw th;
                                }
                            }
                            long deadlineNanoTime = timeout.deadlineNanoTime();
                            if (timeout2.getHasDeadline()) {
                                timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                            }
                            try {
                                foldedSink.flush();
                                timeout.timeout(timeoutNanos, timeUnit);
                                if (timeout2.getHasDeadline()) {
                                    timeout.deadlineNanoTime(deadlineNanoTime);
                                }
                            } catch (Throwable th2) {
                                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                if (timeout2.getHasDeadline()) {
                                    timeout.deadlineNanoTime(deadlineNanoTime);
                                }
                                throw th2;
                            }
                        }
                    } finally {
                        lock.unlock();
                    }
                }

                @Override // okio.Sink
                @NotNull
                /* renamed from: timeout, reason: from getter */
                public Timeout getTimeout() {
                    return this.timeout;
                }

                /* JADX WARN: Code restructure failed: missing block: B:34:0x0077, code lost:
                
                    r1 = kotlin.Unit.INSTANCE;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:36:0x007c, code lost:
                
                    if (r2 == null) goto L55;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:37:0x007e, code lost:
                
                    r11 = r11.f104101f;
                    r0 = r2.getTimeout();
                    r11 = r11.sink().getTimeout();
                    r3 = r0.getTimeoutNanos();
                    r5 = okio.Timeout.INSTANCE.minTimeout(r11.getTimeoutNanos(), r0.getTimeoutNanos());
                    r1 = java.util.concurrent.TimeUnit.NANOSECONDS;
                    r0.timeout(r5, r1);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:38:0x00a7, code lost:
                
                    if (r0.getHasDeadline() == false) goto L43;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:39:0x00a9, code lost:
                
                    r5 = r0.deadlineNanoTime();
                 */
                /* JADX WARN: Code restructure failed: missing block: B:40:0x00b1, code lost:
                
                    if (r11.getHasDeadline() == false) goto L63;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:41:0x00b3, code lost:
                
                    r0.deadlineNanoTime(java.lang.Math.min(r0.deadlineNanoTime(), r11.deadlineNanoTime()));
                 */
                /* JADX WARN: Code restructure failed: missing block: B:43:0x00c2, code lost:
                
                    r2.write(r12, r13);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:44:0x00c5, code lost:
                
                    r0.timeout(r3, r1);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:45:0x00cc, code lost:
                
                    if (r11.getHasDeadline() == false) goto L77;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:46:0x00ce, code lost:
                
                    r0.deadlineNanoTime(r5);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:47:?, code lost:
                
                    return;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:48:?, code lost:
                
                    return;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:50:0x00d2, code lost:
                
                    r12 = move-exception;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:51:0x00d3, code lost:
                
                    r0.timeout(r3, java.util.concurrent.TimeUnit.NANOSECONDS);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:52:0x00dc, code lost:
                
                    if (r11.getHasDeadline() != false) goto L41;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:53:0x00de, code lost:
                
                    r0.deadlineNanoTime(r5);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:54:0x00e1, code lost:
                
                    throw r12;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:56:0x00e6, code lost:
                
                    if (r11.getHasDeadline() == false) goto L66;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:57:0x00e8, code lost:
                
                    r0.deadlineNanoTime(r11.deadlineNanoTime());
                 */
                /* JADX WARN: Code restructure failed: missing block: B:59:0x00ef, code lost:
                
                    r2.write(r12, r13);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:60:0x00f2, code lost:
                
                    r0.timeout(r3, r1);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:61:0x00f9, code lost:
                
                    if (r11.getHasDeadline() == false) goto L79;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:62:0x00fb, code lost:
                
                    r0.clearDeadline();
                 */
                /* JADX WARN: Code restructure failed: missing block: B:63:?, code lost:
                
                    return;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:64:?, code lost:
                
                    return;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:66:0x00ff, code lost:
                
                    r12 = move-exception;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:67:0x0100, code lost:
                
                    r0.timeout(r3, java.util.concurrent.TimeUnit.NANOSECONDS);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:68:0x0109, code lost:
                
                    if (r11.getHasDeadline() != false) goto L53;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:69:0x010b, code lost:
                
                    r0.clearDeadline();
                 */
                /* JADX WARN: Code restructure failed: missing block: B:70:0x010e, code lost:
                
                    throw r12;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:71:0x010f, code lost:
                
                    return;
                 */
                @Override // okio.Sink
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void write(@org.jetbrains.annotations.NotNull okio.Buffer r12, long r13) {
                    /*
                        Method dump skipped, instructions count: 295
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: okio.Pipe$sink$1.write(okio.Buffer, long):void");
                }
            };
            this.source = new Source() { // from class: okio.Pipe$source$1

                /* renamed from: e, reason: from kotlin metadata */
                @NotNull
                public final Timeout timeout = new Timeout();

                @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    ReentrantLock lock = Pipe.this.getLock();
                    Pipe pipe = Pipe.this;
                    lock.lock();
                    try {
                        pipe.setSourceClosed$okio(true);
                        pipe.getCondition().signalAll();
                        Unit unit = Unit.INSTANCE;
                    } finally {
                        lock.unlock();
                    }
                }

                @Override // okio.Source
                public long read(@NotNull Buffer sink, long byteCount) {
                    Intrinsics.checkNotNullParameter(sink, "sink");
                    ReentrantLock lock = Pipe.this.getLock();
                    Pipe pipe = Pipe.this;
                    lock.lock();
                    try {
                        if (!(!pipe.getSourceClosed())) {
                            throw new IllegalStateException("closed".toString());
                        }
                        if (pipe.getCanceled()) {
                            throw new IOException("canceled");
                        }
                        while (pipe.getBuffer().size() == 0) {
                            if (pipe.getSinkClosed()) {
                                lock.unlock();
                                return -1L;
                            }
                            this.timeout.awaitSignal(pipe.getCondition());
                            if (pipe.getCanceled()) {
                                throw new IOException("canceled");
                            }
                        }
                        long read = pipe.getBuffer().read(sink, byteCount);
                        pipe.getCondition().signalAll();
                        return read;
                    } finally {
                        lock.unlock();
                    }
                }

                @Override // okio.Source
                @NotNull
                /* renamed from: timeout, reason: from getter */
                public Timeout getTimeout() {
                    return this.timeout;
                }
            };
        } else {
            throw new IllegalArgumentException(("maxBufferSize < 1: " + j).toString());
        }
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "sink", imports = {}))
    @JvmName(name = "-deprecated_sink")
    @NotNull
    /* renamed from: -deprecated_sink, reason: not valid java name and from getter */
    public final Sink getSink() {
        return this.sink;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "source", imports = {}))
    @JvmName(name = "-deprecated_source")
    @NotNull
    /* renamed from: -deprecated_source, reason: not valid java name and from getter */
    public final Source getSource() {
        return this.source;
    }

    /* renamed from: a */
    public final void m65043a(Sink sink, Function1<? super Sink, Unit> function1) {
        Timeout timeout = sink.getTimeout();
        Timeout timeout2 = sink().getTimeout();
        long timeoutNanos = timeout.getTimeoutNanos();
        long minTimeout = Timeout.INSTANCE.minTimeout(timeout2.getTimeoutNanos(), timeout.getTimeoutNanos());
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        timeout.timeout(minTimeout, timeUnit);
        if (!timeout.getHasDeadline()) {
            if (timeout2.getHasDeadline()) {
                timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
            }
            try {
                function1.invoke(sink);
                Unit unit = Unit.INSTANCE;
                InlineMarker.finallyStart(1);
                timeout.timeout(timeoutNanos, timeUnit);
                if (timeout2.getHasDeadline()) {
                    timeout.clearDeadline();
                }
                InlineMarker.finallyEnd(1);
                return;
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                if (timeout2.getHasDeadline()) {
                    timeout.clearDeadline();
                }
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        long deadlineNanoTime = timeout.deadlineNanoTime();
        if (timeout2.getHasDeadline()) {
            timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
        }
        try {
            function1.invoke(sink);
            Unit unit2 = Unit.INSTANCE;
            InlineMarker.finallyStart(1);
            timeout.timeout(timeoutNanos, timeUnit);
            if (timeout2.getHasDeadline()) {
                timeout.deadlineNanoTime(deadlineNanoTime);
            }
            InlineMarker.finallyEnd(1);
        } catch (Throwable th2) {
            InlineMarker.finallyStart(1);
            timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
            if (timeout2.getHasDeadline()) {
                timeout.deadlineNanoTime(deadlineNanoTime);
            }
            InlineMarker.finallyEnd(1);
            throw th2;
        }
    }

    public final void cancel() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.canceled = true;
            this.buffer.clear();
            this.condition.signalAll();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void fold(@NotNull Sink sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        while (true) {
            this.lock.lock();
            try {
                if (!(this.foldedSink == null)) {
                    throw new IllegalStateException("sink already folded".toString());
                }
                if (this.canceled) {
                    this.foldedSink = sink;
                    throw new IOException("canceled");
                }
                if (this.buffer.exhausted()) {
                    this.sourceClosed = true;
                    this.foldedSink = sink;
                    return;
                }
                boolean z = this.sinkClosed;
                Buffer buffer = new Buffer();
                Buffer buffer2 = this.buffer;
                buffer.write(buffer2, buffer2.size());
                this.condition.signalAll();
                Unit unit = Unit.INSTANCE;
                try {
                    sink.write(buffer, buffer.size());
                    if (z) {
                        sink.close();
                    } else {
                        sink.flush();
                    }
                } catch (Throwable th) {
                    this.lock.lock();
                    try {
                        this.sourceClosed = true;
                        this.condition.signalAll();
                        Unit unit2 = Unit.INSTANCE;
                        throw th;
                    } finally {
                    }
                }
            } finally {
            }
        }
    }

    @NotNull
    /* renamed from: getBuffer$okio, reason: from getter */
    public final Buffer getBuffer() {
        return this.buffer;
    }

    /* renamed from: getCanceled$okio, reason: from getter */
    public final boolean getCanceled() {
        return this.canceled;
    }

    @NotNull
    public final Condition getCondition() {
        return this.condition;
    }

    @Nullable
    /* renamed from: getFoldedSink$okio, reason: from getter */
    public final Sink getFoldedSink() {
        return this.foldedSink;
    }

    @NotNull
    public final ReentrantLock getLock() {
        return this.lock;
    }

    /* renamed from: getMaxBufferSize$okio, reason: from getter */
    public final long getMaxBufferSize() {
        return this.maxBufferSize;
    }

    /* renamed from: getSinkClosed$okio, reason: from getter */
    public final boolean getSinkClosed() {
        return this.sinkClosed;
    }

    /* renamed from: getSourceClosed$okio, reason: from getter */
    public final boolean getSourceClosed() {
        return this.sourceClosed;
    }

    public final void setCanceled$okio(boolean z) {
        this.canceled = z;
    }

    public final void setFoldedSink$okio(@Nullable Sink sink) {
        this.foldedSink = sink;
    }

    public final void setSinkClosed$okio(boolean z) {
        this.sinkClosed = z;
    }

    public final void setSourceClosed$okio(boolean z) {
        this.sourceClosed = z;
    }

    @JvmName(name = "sink")
    @NotNull
    public final Sink sink() {
        return this.sink;
    }

    @JvmName(name = "source")
    @NotNull
    public final Source source() {
        return this.source;
    }
}
