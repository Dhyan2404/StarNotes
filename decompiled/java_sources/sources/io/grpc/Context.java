package io.grpc;

import com.sunia.HTREnginev2.q3l;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;

@InterfaceC17100f
/* loaded from: classes10.dex */
public class Context {
    public static final Context ROOT;

    /* renamed from: j */
    public static final Logger f94589j = Logger.getLogger(Context.class.getName());

    /* renamed from: k */
    public static final q3l<Key<?>, Object> f94590k;

    /* renamed from: l */
    public static final int f94591l = 1000;

    /* renamed from: e */
    public ArrayList<RunnableC17101g> f94592e;

    /* renamed from: f */
    public CancellationListener f94593f;

    /* renamed from: g */
    public final CancellableContext f94594g;

    /* renamed from: h */
    public final q3l<Key<?>, Object> f94595h;

    /* renamed from: i */
    public final int f94596i;

    /* loaded from: classes10.dex */
    public static final class CancellableContext extends Context implements Closeable {

        /* renamed from: m */
        public final Deadline f94597m;

        /* renamed from: n */
        public final Context f94598n;

        /* renamed from: o */
        public boolean f94599o;

        /* renamed from: p */
        public Throwable f94600p;

        /* renamed from: q */
        public ScheduledFuture<?> f94601q;

        /* renamed from: io.grpc.Context$CancellableContext$a */
        /* loaded from: classes10.dex */
        public final class RunnableC17094a implements Runnable {
            public RunnableC17094a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    CancellableContext.this.cancel(new TimeoutException("context timed out"));
                } catch (Throwable th) {
                    Context.f94589j.log(Level.SEVERE, "Cancel threw an exception, which should not happen", th);
                }
            }
        }

        public /* synthetic */ CancellableContext(Context context, RunnableC17095a runnableC17095a) {
            this(context);
        }

        @Override // io.grpc.Context
        public Context attach() {
            return this.f94598n.attach();
        }

        @InterfaceC17099e
        public boolean cancel(Throwable th) {
            boolean z;
            synchronized (this) {
                z = false;
                if (!this.f94599o) {
                    this.f94599o = true;
                    ScheduledFuture<?> scheduledFuture = this.f94601q;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                        this.f94601q = null;
                    }
                    this.f94600p = th;
                    z = true;
                }
            }
            if (z) {
                m60925M();
            }
            return z;
        }

        @Override // io.grpc.Context
        public Throwable cancellationCause() {
            if (isCancelled()) {
                return this.f94600p;
            }
            return null;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            cancel(null);
        }

        @Override // io.grpc.Context
        public void detach(Context context) {
            this.f94598n.detach(context);
        }

        public void detachAndCancel(Context context, Throwable th) {
            try {
                detach(context);
            } finally {
                cancel(th);
            }
        }

        @Override // io.grpc.Context
        /* renamed from: f */
        public boolean mo60926f() {
            return true;
        }

        @Override // io.grpc.Context
        public Deadline getDeadline() {
            return this.f94597m;
        }

        /* renamed from: h0 */
        public final void m60928h0(Deadline deadline, ScheduledExecutorService scheduledExecutorService) {
            if (deadline.isExpired()) {
                cancel(new TimeoutException("context timed out"));
            } else {
                synchronized (this) {
                    this.f94601q = deadline.runOnExpiration(new RunnableC17094a(), scheduledExecutorService);
                }
            }
        }

        @Override // io.grpc.Context
        public boolean isCancelled() {
            synchronized (this) {
                if (this.f94599o) {
                    return true;
                }
                if (!super.isCancelled()) {
                    return false;
                }
                cancel(super.cancellationCause());
                return true;
            }
        }

        @Override // io.grpc.Context
        @Deprecated
        public boolean isCurrent() {
            return this.f94598n.isCurrent();
        }

        public /* synthetic */ CancellableContext(Context context, Deadline deadline, RunnableC17095a runnableC17095a) {
            this(context, deadline);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public CancellableContext(io.grpc.Context r3) {
            /*
                r2 = this;
                com.sunia.HTREnginev2.q3l<io.grpc.Context$Key<?>, java.lang.Object> r0 = r3.f94595h
                r1 = 0
                r2.<init>(r3, r0, r1)
                io.grpc.Deadline r3 = r3.getDeadline()
                r2.f94597m = r3
                io.grpc.Context r3 = new io.grpc.Context
                com.sunia.HTREnginev2.q3l<io.grpc.Context$Key<?>, java.lang.Object> r0 = r2.f94595h
                r3.<init>(r2, r0, r1)
                r2.f94598n = r3
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.Context.CancellableContext.<init>(io.grpc.Context):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public CancellableContext(io.grpc.Context r3, io.grpc.Deadline r4) {
            /*
                r2 = this;
                com.sunia.HTREnginev2.q3l<io.grpc.Context$Key<?>, java.lang.Object> r0 = r3.f94595h
                r1 = 0
                r2.<init>(r3, r0, r1)
                r2.f94597m = r4
                io.grpc.Context r3 = new io.grpc.Context
                com.sunia.HTREnginev2.q3l<io.grpc.Context$Key<?>, java.lang.Object> r4 = r2.f94595h
                r3.<init>(r2, r4, r1)
                r2.f94598n = r3
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.Context.CancellableContext.<init>(io.grpc.Context, io.grpc.Deadline):void");
        }
    }

    /* loaded from: classes10.dex */
    public interface CancellationListener {
        void cancelled(Context context);
    }

    /* loaded from: classes10.dex */
    public enum DirectExecutor implements Executor {
        INSTANCE;

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Context.DirectExecutor";
        }
    }

    /* loaded from: classes10.dex */
    public static final class Key<T> {

        /* renamed from: a */
        public final String f94603a;

        /* renamed from: b */
        public final T f94604b;

        public Key(String str) {
            this(str, null);
        }

        public T get() {
            return get(Context.current());
        }

        public String toString() {
            return this.f94603a;
        }

        public Key(String str, T t) {
            this.f94603a = (String) Context.m60922w(str, "name");
            this.f94604b = t;
        }

        public T get(Context context) {
            T t = (T) context.m60924I(this);
            return t == null ? this.f94604b : t;
        }
    }

    /* loaded from: classes10.dex */
    public static abstract class Storage {
        @Deprecated
        public void attach(Context context) {
            throw new UnsupportedOperationException("Deprecated. Do not call.");
        }

        public abstract Context current();

        public abstract void detach(Context context, Context context2);

        public Context doAttach(Context context) {
            Context current = current();
            attach(context);
            return current;
        }
    }

    /* renamed from: io.grpc.Context$a */
    /* loaded from: classes10.dex */
    public class RunnableC17095a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Runnable f94605e;

        public RunnableC17095a(Runnable runnable) {
            this.f94605e = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            Context attach = Context.this.attach();
            try {
                this.f94605e.run();
            } finally {
                Context.this.detach(attach);
            }
        }
    }

    /* renamed from: io.grpc.Context$b */
    /* loaded from: classes10.dex */
    public final class ExecutorC17096b implements Executor {

        /* renamed from: e */
        public final /* synthetic */ Executor f94607e;

        public ExecutorC17096b(Executor executor) {
            this.f94607e = executor;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f94607e.execute(Context.current().wrap(runnable));
        }
    }

    /* renamed from: io.grpc.Context$c */
    /* loaded from: classes10.dex */
    public final class ExecutorC17097c implements Executor {

        /* renamed from: e */
        public final /* synthetic */ Executor f94608e;

        public ExecutorC17097c(Executor executor) {
            this.f94608e = executor;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f94608e.execute(Context.this.wrap(runnable));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [C] */
    /* renamed from: io.grpc.Context$d */
    /* loaded from: classes10.dex */
    public class CallableC17098d<C> implements Callable<C> {

        /* renamed from: e */
        public final /* synthetic */ Callable f94610e;

        public CallableC17098d(Callable callable) {
            this.f94610e = callable;
        }

        @Override // java.util.concurrent.Callable
        public C call() throws Exception {
            Context attach = Context.this.attach();
            try {
                return (C) this.f94610e.call();
            } finally {
                Context.this.detach(attach);
            }
        }
    }

    /* renamed from: io.grpc.Context$e */
    /* loaded from: classes10.dex */
    public @interface InterfaceC17099e {
    }

    /* renamed from: io.grpc.Context$f */
    /* loaded from: classes10.dex */
    public @interface InterfaceC17100f {
    }

    /* renamed from: io.grpc.Context$g */
    /* loaded from: classes10.dex */
    public final class RunnableC17101g implements Runnable {

        /* renamed from: e */
        public final Executor f94612e;

        /* renamed from: f */
        public final CancellationListener f94613f;

        public RunnableC17101g(Executor executor, CancellationListener cancellationListener) {
            this.f94612e = executor;
            this.f94613f = cancellationListener;
        }

        /* renamed from: a */
        public void m60929a() {
            try {
                this.f94612e.execute(this);
            } catch (Throwable th) {
                Context.f94589j.log(Level.INFO, "Exception notifying context listener", th);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f94613f.cancelled(Context.this);
        }
    }

    /* renamed from: io.grpc.Context$h */
    /* loaded from: classes10.dex */
    public static final class C17102h {

        /* renamed from: a */
        public static final Storage f94615a;

        static {
            AtomicReference atomicReference = new AtomicReference();
            f94615a = m60930a(atomicReference);
            Throwable th = (Throwable) atomicReference.get();
            if (th != null) {
                Context.f94589j.log(Level.FINE, "Storage override doesn't exist. Using default", th);
            }
        }

        /* renamed from: a */
        public static Storage m60930a(AtomicReference<? super ClassNotFoundException> atomicReference) {
            try {
                return (Storage) Class.forName("io.grpc.override.ContextStorageOverride").asSubclass(Storage.class).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e) {
                atomicReference.set(e);
                return new C17106a();
            } catch (Exception e2) {
                throw new RuntimeException("Storage override failed to initialize", e2);
            }
        }
    }

    /* renamed from: io.grpc.Context$i */
    /* loaded from: classes10.dex */
    public final class C17103i implements CancellationListener {
        public C17103i() {
        }

        @Override // io.grpc.Context.CancellationListener
        public void cancelled(Context context) {
            Context context2 = Context.this;
            if (context2 instanceof CancellableContext) {
                ((CancellableContext) context2).cancel(context.cancellationCause());
            } else {
                context2.m60925M();
            }
        }

        public /* synthetic */ C17103i(Context context, RunnableC17095a runnableC17095a) {
            this();
        }
    }

    static {
        q3l<Key<?>, Object> q3lVar = new q3l<>();
        f94590k = q3lVar;
        ROOT = new Context((Context) null, q3lVar);
    }

    public /* synthetic */ Context(Context context, q3l q3lVar, RunnableC17095a runnableC17095a) {
        this(context, (q3l<Key<?>, Object>) q3lVar);
    }

    public static Context current() {
        Context current = m60919e0().current();
        return current == null ? ROOT : current;
    }

    public static Executor currentContextExecutor(Executor executor) {
        return new ExecutorC17096b(executor);
    }

    /* renamed from: e0 */
    public static Storage m60919e0() {
        return C17102h.f94615a;
    }

    /* renamed from: f0 */
    public static void m60920f0(int i) {
        if (i == 1000) {
            f94589j.log(Level.SEVERE, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000", (Throwable) new Exception());
        }
    }

    /* renamed from: j */
    public static CancellableContext m60921j(Context context) {
        if (context == null) {
            return null;
        }
        return context instanceof CancellableContext ? (CancellableContext) context : context.f94594g;
    }

    public static <T> Key<T> key(String str) {
        return new Key<>(str);
    }

    public static <T> Key<T> keyWithDefault(String str, T t) {
        return new Key<>(str, t);
    }

    @InterfaceC17099e
    /* renamed from: w */
    public static <T> T m60922w(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: H */
    public int m60923H() {
        int size;
        synchronized (this) {
            ArrayList<RunnableC17101g> arrayList = this.f94592e;
            size = arrayList == null ? 0 : arrayList.size();
        }
        return size;
    }

    /* renamed from: I */
    public Object m60924I(Key<?> key) {
        return this.f94595h.m56595a(key);
    }

    /* renamed from: M */
    public void m60925M() {
        if (mo60926f()) {
            synchronized (this) {
                ArrayList<RunnableC17101g> arrayList = this.f94592e;
                if (arrayList == null) {
                    return;
                }
                this.f94592e = null;
                for (int i = 0; i < arrayList.size(); i++) {
                    if (!(arrayList.get(i).f94613f instanceof C17103i)) {
                        arrayList.get(i).m60929a();
                    }
                }
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    if (arrayList.get(i2).f94613f instanceof C17103i) {
                        arrayList.get(i2).m60929a();
                    }
                }
                CancellableContext cancellableContext = this.f94594g;
                if (cancellableContext != null) {
                    cancellableContext.removeListener(this.f94593f);
                }
            }
        }
    }

    public void addListener(CancellationListener cancellationListener, Executor executor) {
        m60922w(cancellationListener, "cancellationListener");
        m60922w(executor, "executor");
        if (mo60926f()) {
            RunnableC17101g runnableC17101g = new RunnableC17101g(executor, cancellationListener);
            synchronized (this) {
                if (isCancelled()) {
                    runnableC17101g.m60929a();
                } else {
                    ArrayList<RunnableC17101g> arrayList = this.f94592e;
                    if (arrayList == null) {
                        ArrayList<RunnableC17101g> arrayList2 = new ArrayList<>();
                        this.f94592e = arrayList2;
                        arrayList2.add(runnableC17101g);
                        CancellableContext cancellableContext = this.f94594g;
                        if (cancellableContext != null) {
                            cancellableContext.addListener(this.f94593f, DirectExecutor.INSTANCE);
                        }
                    } else {
                        arrayList.add(runnableC17101g);
                    }
                }
            }
        }
    }

    public Context attach() {
        Context doAttach = m60919e0().doAttach(this);
        return doAttach == null ? ROOT : doAttach;
    }

    @InterfaceC17099e
    public <V> V call(Callable<V> callable) throws Exception {
        Context attach = attach();
        try {
            return callable.call();
        } finally {
            detach(attach);
        }
    }

    public Throwable cancellationCause() {
        CancellableContext cancellableContext = this.f94594g;
        if (cancellableContext == null) {
            return null;
        }
        return cancellableContext.cancellationCause();
    }

    public void detach(Context context) {
        m60922w(context, "toAttach");
        m60919e0().detach(this, context);
    }

    /* renamed from: f */
    public boolean mo60926f() {
        return this.f94594g != null;
    }

    public Executor fixedContextExecutor(Executor executor) {
        return new ExecutorC17097c(executor);
    }

    public Context fork() {
        return new Context(this.f94595h, this.f94596i + 1);
    }

    public Deadline getDeadline() {
        CancellableContext cancellableContext = this.f94594g;
        if (cancellableContext == null) {
            return null;
        }
        return cancellableContext.getDeadline();
    }

    public boolean isCancelled() {
        CancellableContext cancellableContext = this.f94594g;
        if (cancellableContext == null) {
            return false;
        }
        return cancellableContext.isCancelled();
    }

    public boolean isCurrent() {
        return current() == this;
    }

    public void removeListener(CancellationListener cancellationListener) {
        if (mo60926f()) {
            synchronized (this) {
                ArrayList<RunnableC17101g> arrayList = this.f94592e;
                if (arrayList != null) {
                    int size = arrayList.size() - 1;
                    while (true) {
                        if (size < 0) {
                            break;
                        }
                        if (this.f94592e.get(size).f94613f == cancellationListener) {
                            this.f94592e.remove(size);
                            break;
                        }
                        size--;
                    }
                    if (this.f94592e.isEmpty()) {
                        CancellableContext cancellableContext = this.f94594g;
                        if (cancellableContext != null) {
                            cancellableContext.removeListener(this.f94593f);
                        }
                        this.f94592e = null;
                    }
                }
            }
        }
    }

    public void run(Runnable runnable) {
        Context attach = attach();
        try {
            runnable.run();
        } finally {
            detach(attach);
        }
    }

    public CancellableContext withCancellation() {
        return new CancellableContext(this, (RunnableC17095a) null);
    }

    public CancellableContext withDeadline(Deadline deadline, ScheduledExecutorService scheduledExecutorService) {
        boolean z;
        m60922w(deadline, "deadline");
        m60922w(scheduledExecutorService, "scheduler");
        Deadline deadline2 = getDeadline();
        if (deadline2 == null || deadline2.compareTo(deadline) > 0) {
            z = true;
        } else {
            z = false;
            deadline = deadline2;
        }
        CancellableContext cancellableContext = new CancellableContext(this, deadline, null);
        if (z) {
            cancellableContext.m60928h0(deadline, scheduledExecutorService);
        }
        return cancellableContext;
    }

    public CancellableContext withDeadlineAfter(long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return withDeadline(Deadline.after(j, timeUnit), scheduledExecutorService);
    }

    public <V> Context withValue(Key<V> key, V v) {
        return new Context(this, this.f94595h.m56596b(key, v));
    }

    public <V1, V2> Context withValues(Key<V1> key, V1 v1, Key<V2> key2, V2 v2) {
        return new Context(this, this.f94595h.m56596b(key, v1).m56596b(key2, v2));
    }

    public Runnable wrap(Runnable runnable) {
        return new RunnableC17095a(runnable);
    }

    public Context(q3l<Key<?>, Object> q3lVar, int i) {
        this.f94593f = new C17103i(this, null);
        this.f94594g = null;
        this.f94595h = q3lVar;
        this.f94596i = i;
        m60920f0(i);
    }

    public <C> Callable<C> wrap(Callable<C> callable) {
        return new CallableC17098d(callable);
    }

    public <V1, V2, V3> Context withValues(Key<V1> key, V1 v1, Key<V2> key2, V2 v2, Key<V3> key3, V3 v3) {
        return new Context(this, this.f94595h.m56596b(key, v1).m56596b(key2, v2).m56596b(key3, v3));
    }

    public <V1, V2, V3, V4> Context withValues(Key<V1> key, V1 v1, Key<V2> key2, V2 v2, Key<V3> key3, V3 v3, Key<V4> key4, V4 v4) {
        return new Context(this, this.f94595h.m56596b(key, v1).m56596b(key2, v2).m56596b(key3, v3).m56596b(key4, v4));
    }

    public Context(Context context, q3l<Key<?>, Object> q3lVar) {
        this.f94593f = new C17103i(this, null);
        this.f94594g = m60921j(context);
        this.f94595h = q3lVar;
        int i = context == null ? 0 : context.f94596i + 1;
        this.f94596i = i;
        m60920f0(i);
    }
}
