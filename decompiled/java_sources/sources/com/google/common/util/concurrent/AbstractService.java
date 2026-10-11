package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.C6415g;
import com.google.common.util.concurrent.Monitor;
import com.google.common.util.concurrent.Service;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.ForOverride;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.sunia.HTREnginev2.pnf;
import java.time.Duration;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.CheckForNull;
import org.apache.commons.collections4.IteratorUtils;

@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public abstract class AbstractService implements Service {

    /* renamed from: h */
    public static final C6415g.a<Service.Listener> f35211h = new C6318a();

    /* renamed from: i */
    public static final C6415g.a<Service.Listener> f35212i = new C6319b();

    /* renamed from: j */
    public static final C6415g.a<Service.Listener> f35213j;

    /* renamed from: k */
    public static final C6415g.a<Service.Listener> f35214k;

    /* renamed from: l */
    public static final C6415g.a<Service.Listener> f35215l;

    /* renamed from: m */
    public static final C6415g.a<Service.Listener> f35216m;

    /* renamed from: n */
    public static final C6415g.a<Service.Listener> f35217n;

    /* renamed from: o */
    public static final C6415g.a<Service.Listener> f35218o;

    /* renamed from: a */
    public final Monitor f35219a = new Monitor();

    /* renamed from: b */
    public final Monitor.Guard f35220b = new C6325h();

    /* renamed from: c */
    public final Monitor.Guard f35221c = new C6326i();

    /* renamed from: d */
    public final Monitor.Guard f35222d = new C6324g();

    /* renamed from: e */
    public final Monitor.Guard f35223e = new C6327j();

    /* renamed from: f */
    public final C6415g<Service.Listener> f35224f = new C6415g<>();

    /* renamed from: g */
    public volatile C6328k f35225g = new C6328k(Service.State.NEW);

    /* renamed from: com.google.common.util.concurrent.AbstractService$a */
    /* loaded from: classes6.dex */
    public class C6318a implements C6415g.a<Service.Listener> {
        @Override // com.google.common.util.concurrent.C6415g.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void call(Service.Listener listener) {
            listener.starting();
        }

        public String toString() {
            return "starting()";
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractService$b */
    /* loaded from: classes6.dex */
    public class C6319b implements C6415g.a<Service.Listener> {
        @Override // com.google.common.util.concurrent.C6415g.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void call(Service.Listener listener) {
            listener.running();
        }

        public String toString() {
            return "running()";
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractService$c */
    /* loaded from: classes6.dex */
    public class C6320c implements C6415g.a<Service.Listener> {

        /* renamed from: a */
        public final /* synthetic */ Service.State f35226a;

        public C6320c(Service.State state) {
            this.f35226a = state;
        }

        @Override // com.google.common.util.concurrent.C6415g.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void call(Service.Listener listener) {
            listener.terminated(this.f35226a);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f35226a);
            StringBuilder sb = new StringBuilder(valueOf.length() + 21);
            sb.append("terminated({from = ");
            sb.append(valueOf);
            sb.append("})");
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractService$d */
    /* loaded from: classes6.dex */
    public class C6321d implements C6415g.a<Service.Listener> {

        /* renamed from: a */
        public final /* synthetic */ Service.State f35227a;

        public C6321d(Service.State state) {
            this.f35227a = state;
        }

        @Override // com.google.common.util.concurrent.C6415g.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void call(Service.Listener listener) {
            listener.stopping(this.f35227a);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f35227a);
            StringBuilder sb = new StringBuilder(valueOf.length() + 19);
            sb.append("stopping({from = ");
            sb.append(valueOf);
            sb.append("})");
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractService$e */
    /* loaded from: classes6.dex */
    public class C6322e implements C6415g.a<Service.Listener> {

        /* renamed from: a */
        public final /* synthetic */ Service.State f35228a;

        /* renamed from: b */
        public final /* synthetic */ Throwable f35229b;

        public C6322e(AbstractService abstractService, Service.State state, Throwable th) {
            this.f35228a = state;
            this.f35229b = th;
        }

        @Override // com.google.common.util.concurrent.C6415g.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void call(Service.Listener listener) {
            listener.failed(this.f35228a, this.f35229b);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f35228a);
            String valueOf2 = String.valueOf(this.f35229b);
            StringBuilder sb = new StringBuilder(valueOf.length() + 27 + valueOf2.length());
            sb.append("failed({from = ");
            sb.append(valueOf);
            sb.append(", cause = ");
            sb.append(valueOf2);
            sb.append("})");
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractService$f */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6323f {

        /* renamed from: a */
        public static final /* synthetic */ int[] f35230a;

        static {
            int[] iArr = new int[Service.State.values().length];
            f35230a = iArr;
            try {
                iArr[Service.State.NEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35230a[Service.State.STARTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35230a[Service.State.RUNNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f35230a[Service.State.STOPPING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f35230a[Service.State.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f35230a[Service.State.FAILED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractService$g */
    /* loaded from: classes6.dex */
    public final class C6324g extends Monitor.Guard {
        public C6324g() {
            super(AbstractService.this.f35219a);
        }

        @Override // com.google.common.util.concurrent.Monitor.Guard
        public boolean isSatisfied() {
            return AbstractService.this.state().compareTo(Service.State.RUNNING) >= 0;
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractService$h */
    /* loaded from: classes6.dex */
    public final class C6325h extends Monitor.Guard {
        public C6325h() {
            super(AbstractService.this.f35219a);
        }

        @Override // com.google.common.util.concurrent.Monitor.Guard
        public boolean isSatisfied() {
            return AbstractService.this.state() == Service.State.NEW;
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractService$i */
    /* loaded from: classes6.dex */
    public final class C6326i extends Monitor.Guard {
        public C6326i() {
            super(AbstractService.this.f35219a);
        }

        @Override // com.google.common.util.concurrent.Monitor.Guard
        public boolean isSatisfied() {
            return AbstractService.this.state().compareTo(Service.State.RUNNING) <= 0;
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractService$j */
    /* loaded from: classes6.dex */
    public final class C6327j extends Monitor.Guard {
        public C6327j() {
            super(AbstractService.this.f35219a);
        }

        @Override // com.google.common.util.concurrent.Monitor.Guard
        public boolean isSatisfied() {
            return AbstractService.this.state().compareTo(Service.State.TERMINATED) >= 0;
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractService$k */
    /* loaded from: classes6.dex */
    public static final class C6328k {

        /* renamed from: a */
        public final Service.State f35235a;

        /* renamed from: b */
        public final boolean f35236b;

        /* renamed from: c */
        @CheckForNull
        public final Throwable f35237c;

        public C6328k(Service.State state) {
            this(state, false, null);
        }

        /* renamed from: a */
        public Service.State m27605a() {
            return (this.f35236b && this.f35235a == Service.State.STARTING) ? Service.State.STOPPING : this.f35235a;
        }

        /* renamed from: b */
        public Throwable m27606b() {
            Service.State state = this.f35235a;
            Preconditions.checkState(state == Service.State.FAILED, "failureCause() is only valid if the service has failed, service is %s", state);
            Throwable th = this.f35237c;
            Objects.requireNonNull(th);
            return th;
        }

        public C6328k(Service.State state, boolean z, @CheckForNull Throwable th) {
            Preconditions.checkArgument(!z || state == Service.State.STARTING, "shutdownWhenStartupFinishes can only be set if state is STARTING. Got %s instead.", state);
            Preconditions.checkArgument((th != null) == (state == Service.State.FAILED), "A failure cause should be set if and only if the state is failed.  Got %s and %s instead.", state, th);
            this.f35235a = state;
            this.f35236b = z;
            this.f35237c = th;
        }
    }

    static {
        Service.State state = Service.State.STARTING;
        f35213j = m27591i(state);
        Service.State state2 = Service.State.RUNNING;
        f35214k = m27591i(state2);
        f35215l = m27592j(Service.State.NEW);
        f35216m = m27592j(state);
        f35217n = m27592j(state2);
        f35218o = m27592j(Service.State.STOPPING);
    }

    /* renamed from: i */
    public static C6415g.a<Service.Listener> m27591i(Service.State state) {
        return new C6321d(state);
    }

    /* renamed from: j */
    public static C6415g.a<Service.Listener> m27592j(Service.State state) {
        return new C6320c(state);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void addListener(Service.Listener listener, Executor executor) {
        this.f35224f.m27874b(listener, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning() {
        this.f35219a.enterWhenUninterruptibly(this.f35222d);
        try {
            m27593b(Service.State.RUNNING);
        } finally {
            this.f35219a.leave();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        this.f35219a.enterWhenUninterruptibly(this.f35223e);
        try {
            m27593b(Service.State.TERMINATED);
        } finally {
            this.f35219a.leave();
        }
    }

    @GuardedBy("monitor")
    /* renamed from: b */
    public final void m27593b(Service.State state) {
        Service.State state2 = state();
        if (state2 != state) {
            if (state2 == Service.State.FAILED) {
                String valueOf = String.valueOf(this);
                String valueOf2 = String.valueOf(state);
                StringBuilder sb = new StringBuilder(valueOf.length() + 56 + valueOf2.length());
                sb.append("Expected the service ");
                sb.append(valueOf);
                sb.append(" to be ");
                sb.append(valueOf2);
                sb.append(", but the service has FAILED");
                throw new IllegalStateException(sb.toString(), failureCause());
            }
            String valueOf3 = String.valueOf(this);
            String valueOf4 = String.valueOf(state);
            String valueOf5 = String.valueOf(state2);
            StringBuilder sb2 = new StringBuilder(valueOf3.length() + 38 + valueOf4.length() + valueOf5.length());
            sb2.append("Expected the service ");
            sb2.append(valueOf3);
            sb2.append(" to be ");
            sb2.append(valueOf4);
            sb2.append(", but was ");
            sb2.append(valueOf5);
            throw new IllegalStateException(sb2.toString());
        }
    }

    /* renamed from: c */
    public final void m27594c() {
        if (this.f35219a.isOccupiedByCurrentThread()) {
            return;
        }
        this.f35224f.m27875c();
    }

    /* renamed from: d */
    public final void m27595d(Service.State state, Throwable th) {
        this.f35224f.m27876d(new C6322e(this, state, th));
    }

    @Beta
    @ForOverride
    public void doCancelStart() {
    }

    @ForOverride
    public abstract void doStart();

    @ForOverride
    public abstract void doStop();

    /* renamed from: e */
    public final void m27596e() {
        this.f35224f.m27876d(f35212i);
    }

    /* renamed from: f */
    public final void m27597f() {
        this.f35224f.m27876d(f35211h);
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable failureCause() {
        return this.f35225g.m27606b();
    }

    /* renamed from: g */
    public final void m27598g(Service.State state) {
        if (state == Service.State.STARTING) {
            this.f35224f.m27876d(f35213j);
        } else {
            if (state != Service.State.RUNNING) {
                throw new AssertionError();
            }
            this.f35224f.m27876d(f35214k);
        }
    }

    /* renamed from: h */
    public final void m27599h(Service.State state) {
        switch (C6323f.f35230a[state.ordinal()]) {
            case 1:
                this.f35224f.m27876d(f35215l);
                return;
            case 2:
                this.f35224f.m27876d(f35216m);
                return;
            case 3:
                this.f35224f.m27876d(f35217n);
                return;
            case 4:
                this.f35224f.m27876d(f35218o);
                return;
            case 5:
            case 6:
                throw new AssertionError();
            default:
                return;
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return state() == Service.State.RUNNING;
    }

    public final void notifyFailed(Throwable th) {
        Preconditions.checkNotNull(th);
        this.f35219a.enter();
        try {
            Service.State state = state();
            int i = C6323f.f35230a[state.ordinal()];
            if (i != 1) {
                if (i == 2 || i == 3 || i == 4) {
                    this.f35225g = new C6328k(Service.State.FAILED, false, th);
                    m27595d(state, th);
                } else if (i != 5) {
                }
                return;
            }
            String valueOf = String.valueOf(state);
            StringBuilder sb = new StringBuilder(valueOf.length() + 22);
            sb.append("Failed while in state:");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString(), th);
        } finally {
            this.f35219a.leave();
            m27594c();
        }
    }

    public final void notifyStarted() {
        this.f35219a.enter();
        try {
            if (this.f35225g.f35235a == Service.State.STARTING) {
                if (this.f35225g.f35236b) {
                    this.f35225g = new C6328k(Service.State.STOPPING);
                    doStop();
                } else {
                    this.f35225g = new C6328k(Service.State.RUNNING);
                    m27596e();
                }
                return;
            }
            String valueOf = String.valueOf(this.f35225g.f35235a);
            StringBuilder sb = new StringBuilder(valueOf.length() + 43);
            sb.append("Cannot notifyStarted() when the service is ");
            sb.append(valueOf);
            IllegalStateException illegalStateException = new IllegalStateException(sb.toString());
            notifyFailed(illegalStateException);
            throw illegalStateException;
        } finally {
            this.f35219a.leave();
            m27594c();
        }
    }

    public final void notifyStopped() {
        this.f35219a.enter();
        try {
            Service.State state = state();
            switch (C6323f.f35230a[state.ordinal()]) {
                case 1:
                case 5:
                case 6:
                    String valueOf = String.valueOf(state);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 43);
                    sb.append("Cannot notifyStopped() when the service is ");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                case 2:
                case 3:
                case 4:
                    this.f35225g = new C6328k(Service.State.TERMINATED);
                    m27599h(state);
                    break;
            }
        } finally {
            this.f35219a.leave();
            m27594c();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service startAsync() {
        if (this.f35219a.enterIf(this.f35220b)) {
            try {
                this.f35225g = new C6328k(Service.State.STARTING);
                m27597f();
                doStart();
            } finally {
                try {
                    return this;
                } finally {
                }
            }
            return this;
        }
        String valueOf = String.valueOf(this);
        StringBuilder sb = new StringBuilder(valueOf.length() + 33);
        sb.append("Service ");
        sb.append(valueOf);
        sb.append(" has already been started");
        throw new IllegalStateException(sb.toString());
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.State state() {
        return this.f35225g.m27605a();
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service stopAsync() {
        if (this.f35219a.enterIf(this.f35221c)) {
            try {
                Service.State state = state();
                switch (C6323f.f35230a[state.ordinal()]) {
                    case 1:
                        this.f35225g = new C6328k(Service.State.TERMINATED);
                        m27599h(Service.State.NEW);
                        break;
                    case 2:
                        Service.State state2 = Service.State.STARTING;
                        this.f35225g = new C6328k(state2, true, null);
                        m27598g(state2);
                        doCancelStart();
                        break;
                    case 3:
                        this.f35225g = new C6328k(Service.State.STOPPING);
                        m27598g(Service.State.RUNNING);
                        doStop();
                        break;
                    case 4:
                    case 5:
                    case 6:
                        String valueOf = String.valueOf(state);
                        StringBuilder sb = new StringBuilder(valueOf.length() + 45);
                        sb.append("isStoppable is incorrectly implemented, saw: ");
                        sb.append(valueOf);
                        throw new AssertionError(sb.toString());
                }
            } finally {
                try {
                } finally {
                }
            }
        }
        return this;
    }

    public String toString() {
        String simpleName = getClass().getSimpleName();
        String valueOf = String.valueOf(state());
        StringBuilder sb = new StringBuilder(simpleName.length() + 3 + valueOf.length());
        sb.append(simpleName);
        sb.append(" [");
        sb.append(valueOf);
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(Duration duration) throws TimeoutException {
        super.awaitRunning(duration);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(Duration duration) throws TimeoutException {
        super.awaitTerminated(duration);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException {
        if (this.f35219a.enterWhenUninterruptibly(this.f35222d, j, timeUnit)) {
            try {
                m27593b(Service.State.RUNNING);
            } finally {
                this.f35219a.leave();
            }
        } else {
            String valueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(valueOf.length() + 50);
            sb.append("Timed out waiting for ");
            sb.append(valueOf);
            sb.append(" to reach the RUNNING state.");
            throw new TimeoutException(sb.toString());
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException {
        if (this.f35219a.enterWhenUninterruptibly(this.f35223e, j, timeUnit)) {
            try {
                m27593b(Service.State.TERMINATED);
                return;
            } finally {
                this.f35219a.leave();
            }
        }
        String valueOf = String.valueOf(this);
        String valueOf2 = String.valueOf(state());
        StringBuilder sb = new StringBuilder(valueOf.length() + 65 + valueOf2.length());
        sb.append("Timed out waiting for ");
        sb.append(valueOf);
        sb.append(" to reach a terminal state. Current state: ");
        sb.append(valueOf2);
        throw new TimeoutException(sb.toString());
    }
}
