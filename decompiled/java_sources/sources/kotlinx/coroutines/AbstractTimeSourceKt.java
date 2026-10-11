package kotlinx.coroutines;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\t\u0010\u0001\u001a\u00020\u0000H\u0081\b\u001a\t\u0010\u0002\u001a\u00020\u0000H\u0081\b\u001a\u0019\u0010\u0006\u001a\u00060\u0003j\u0002`\u00042\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004H\u0081\b\u001a\t\u0010\b\u001a\u00020\u0007H\u0081\b\u001a\t\u0010\t\u001a\u00020\u0007H\u0081\b\u001a\t\u0010\n\u001a\u00020\u0007H\u0081\b\u001a\t\u0010\u000b\u001a\u00020\u0007H\u0081\b\u001a\u0019\u0010\u000f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0000H\u0081\b\u001a\u0011\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0081\b\"$\u0010\u0019\u001a\u0004\u0018\u00010\u00138\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0001\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, m61528d2 = {"", "a", "b", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", BreakpointSQLiteHelper.f39283i, "i", "", "e", C6997f.f39671c, "d", C6999h.f39688c, "", "blocker", "nanos", "c", "Ljava/lang/Thread;", "thread", C6998g.f39679a, "Lkotlinx/coroutines/AbstractTimeSource;", "Lkotlinx/coroutines/AbstractTimeSource;", "getTimeSource", "()Lkotlinx/coroutines/AbstractTimeSource;", "setTimeSource", "(Lkotlinx/coroutines/AbstractTimeSource;)V", "timeSource", "kotlinx-coroutines-core"}, m61529k = 2, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class AbstractTimeSourceKt {

    /* renamed from: a */
    @Nullable
    public static AbstractTimeSource f98118a;

    @InlineOnly
    /* renamed from: a */
    public static final long m61564a() {
        AbstractTimeSource timeSource = getTimeSource();
        return timeSource != null ? timeSource.currentTimeMillis() : System.currentTimeMillis();
    }

    @InlineOnly
    /* renamed from: b */
    public static final long m61565b() {
        AbstractTimeSource timeSource = getTimeSource();
        return timeSource != null ? timeSource.nanoTime() : System.nanoTime();
    }

    @InlineOnly
    /* renamed from: c */
    public static final void m61566c(Object obj, long j) {
        Unit unit;
        AbstractTimeSource timeSource = getTimeSource();
        if (timeSource != null) {
            timeSource.parkNanos(obj, j);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            LockSupport.parkNanos(obj, j);
        }
    }

    @InlineOnly
    /* renamed from: d */
    public static final void m61567d() {
        AbstractTimeSource timeSource = getTimeSource();
        if (timeSource != null) {
            timeSource.registerTimeLoopThread();
        }
    }

    @InlineOnly
    /* renamed from: e */
    public static final void m61568e() {
        AbstractTimeSource timeSource = getTimeSource();
        if (timeSource != null) {
            timeSource.trackTask();
        }
    }

    @InlineOnly
    /* renamed from: f */
    public static final void m61569f() {
        AbstractTimeSource timeSource = getTimeSource();
        if (timeSource != null) {
            timeSource.unTrackTask();
        }
    }

    @InlineOnly
    /* renamed from: g */
    public static final void m61570g(Thread thread) {
        Unit unit;
        AbstractTimeSource timeSource = getTimeSource();
        if (timeSource != null) {
            timeSource.unpark(thread);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            LockSupport.unpark(thread);
        }
    }

    @Nullable
    public static final AbstractTimeSource getTimeSource() {
        return f98118a;
    }

    @InlineOnly
    /* renamed from: h */
    public static final void m61571h() {
        AbstractTimeSource timeSource = getTimeSource();
        if (timeSource != null) {
            timeSource.unregisterTimeLoopThread();
        }
    }

    @InlineOnly
    /* renamed from: i */
    public static final Runnable m61572i(Runnable runnable) {
        Runnable wrapTask;
        AbstractTimeSource timeSource = getTimeSource();
        return (timeSource == null || (wrapTask = timeSource.wrapTask(runnable)) == null) ? runnable : wrapTask;
    }

    public static final void setTimeSource(@Nullable AbstractTimeSource abstractTimeSource) {
        f98118a = abstractTimeSource;
    }
}
