package org.greenrobot.eventbus;

import com.sunia.HTREnginev2.RunnableC13530bm;
import com.sunia.HTREnginev2.RunnableC14650xf;
import com.sunia.HTREnginev2.i5n;
import com.sunia.HTREnginev2.k5n;
import com.sunia.HTREnginev2.z2l;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
import org.apache.commons.collections4.IteratorUtils;
import org.greenrobot.eventbus.android.AndroidDependenciesDetector;
import org.greenrobot.eventbus.meta.SubscriberInfoIndex;

/* loaded from: classes13.dex */
public class EventBus {
    public static String TAG = "EventBus";

    /* renamed from: s */
    public static volatile EventBus f113873s;

    /* renamed from: t */
    public static final EventBusBuilder f113874t = new EventBusBuilder();

    /* renamed from: u */
    public static final Map<Class<?>, List<Class<?>>> f113875u = new HashMap();

    /* renamed from: a */
    public final Map<Class<?>, CopyOnWriteArrayList<k5n>> f113876a;

    /* renamed from: b */
    public final Map<Object, List<Class<?>>> f113877b;

    /* renamed from: c */
    public final Map<Class<?>, Object> f113878c;

    /* renamed from: d */
    public final ThreadLocal<C20239d> f113879d;

    /* renamed from: e */
    public final MainThreadSupport f113880e;

    /* renamed from: f */
    public final Poster f113881f;

    /* renamed from: g */
    public final RunnableC13530bm f113882g;

    /* renamed from: h */
    public final RunnableC14650xf f113883h;

    /* renamed from: i */
    public final i5n f113884i;

    /* renamed from: j */
    public final ExecutorService f113885j;

    /* renamed from: k */
    public final boolean f113886k;

    /* renamed from: l */
    public final boolean f113887l;

    /* renamed from: m */
    public final boolean f113888m;

    /* renamed from: n */
    public final boolean f113889n;

    /* renamed from: o */
    public final boolean f113890o;

    /* renamed from: p */
    public final boolean f113891p;

    /* renamed from: q */
    public final int f113892q;

    /* renamed from: r */
    public final Logger f113893r;

    /* renamed from: org.greenrobot.eventbus.EventBus$a */
    /* loaded from: classes13.dex */
    public class C20236a extends ThreadLocal<C20239d> {
        public C20236a() {
        }

        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C20239d initialValue() {
            return new C20239d();
        }
    }

    /* renamed from: org.greenrobot.eventbus.EventBus$b */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C20237b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f113895a;

        static {
            int[] iArr = new int[ThreadMode.values().length];
            f113895a = iArr;
            try {
                iArr[ThreadMode.POSTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f113895a[ThreadMode.MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f113895a[ThreadMode.MAIN_ORDERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f113895a[ThreadMode.BACKGROUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f113895a[ThreadMode.ASYNC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: org.greenrobot.eventbus.EventBus$c */
    /* loaded from: classes13.dex */
    public interface InterfaceC20238c {
        /* renamed from: a */
        void m71035a(List<SubscriberExceptionEvent> list);
    }

    /* renamed from: org.greenrobot.eventbus.EventBus$d */
    /* loaded from: classes13.dex */
    public static final class C20239d {

        /* renamed from: a */
        public final List<Object> f113896a = new ArrayList();

        /* renamed from: b */
        public boolean f113897b;

        /* renamed from: c */
        public boolean f113898c;

        /* renamed from: d */
        public k5n f113899d;

        /* renamed from: e */
        public Object f113900e;

        /* renamed from: f */
        public boolean f113901f;
    }

    public EventBus() {
        this(f113874t);
    }

    /* renamed from: a */
    public static void m71021a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                m71021a(list, cls.getInterfaces());
            }
        }
    }

    public static EventBusBuilder builder() {
        return new EventBusBuilder();
    }

    public static void clearCaches() {
        i5n.m54678a();
        f113875u.clear();
    }

    public static EventBus getDefault() {
        EventBus eventBus = f113873s;
        if (eventBus == null) {
            synchronized (EventBus.class) {
                eventBus = f113873s;
                if (eventBus == null) {
                    eventBus = new EventBus();
                    f113873s = eventBus;
                }
            }
        }
        return eventBus;
    }

    /* renamed from: h */
    public static List<Class<?>> m71022h(Class<?> cls) {
        List<Class<?>> list;
        Map<Class<?>, List<Class<?>>> map = f113875u;
        synchronized (map) {
            list = map.get(cls);
            if (list == null) {
                list = new ArrayList<>();
                for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
                    list.add(cls2);
                    m71021a(list, cls2.getInterfaces());
                }
                f113875u.put(cls, list);
            }
        }
        return list;
    }

    /* renamed from: b */
    public final void m71023b(k5n k5nVar, Object obj) {
        if (obj != null) {
            m71031k(k5nVar, obj, m71028g());
        }
    }

    /* renamed from: c */
    public ExecutorService m71024c() {
        return this.f113885j;
    }

    public void cancelEventDelivery(Object obj) {
        C20239d c20239d = this.f113879d.get();
        if (!c20239d.f113897b) {
            throw new EventBusException("This method may only be called from inside event handling methods on the posting thread");
        }
        if (obj == null) {
            throw new EventBusException("Event may not be null");
        }
        if (c20239d.f113900e != obj) {
            throw new EventBusException("Only the currently handled event may be aborted");
        }
        if (c20239d.f113899d.f75114b.f113921b != ThreadMode.POSTING) {
            throw new EventBusException(" event handlers may only abort the incoming event");
        }
        c20239d.f113901f = true;
    }

    /* renamed from: d */
    public final void m71025d(k5n k5nVar, Object obj, Throwable th) {
        if (!(obj instanceof SubscriberExceptionEvent)) {
            if (this.f113886k) {
                throw new EventBusException("Invoking subscriber failed", th);
            }
            if (this.f113887l) {
                this.f113893r.log(Level.SEVERE, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + k5nVar.f75113a.getClass(), th);
            }
            if (this.f113889n) {
                post(new SubscriberExceptionEvent(this, th, obj, k5nVar.f75113a));
                return;
            }
            return;
        }
        if (this.f113887l) {
            Logger logger = this.f113893r;
            Level level = Level.SEVERE;
            logger.log(level, "SubscriberExceptionEvent subscriber " + k5nVar.f75113a.getClass() + " threw an exception", th);
            SubscriberExceptionEvent subscriberExceptionEvent = (SubscriberExceptionEvent) obj;
            this.f113893r.log(level, "Initial event " + subscriberExceptionEvent.causingEvent + " caused exception in " + subscriberExceptionEvent.causingSubscriber, subscriberExceptionEvent.throwable);
        }
    }

    /* renamed from: e */
    public void m71026e(z2l z2lVar) {
        Object obj = z2lVar.f91359a;
        k5n k5nVar = z2lVar.f91360b;
        z2l.m58608b(z2lVar);
        if (k5nVar.f75115c) {
            m71027f(k5nVar, obj);
        }
    }

    /* renamed from: f */
    public void m71027f(k5n k5nVar, Object obj) {
        try {
            k5nVar.f75114b.f113920a.invoke(k5nVar.f75113a, obj);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Unexpected exception", e);
        } catch (InvocationTargetException e2) {
            m71025d(k5nVar, obj, e2.getCause());
        }
    }

    /* renamed from: g */
    public final boolean m71028g() {
        MainThreadSupport mainThreadSupport = this.f113880e;
        return mainThreadSupport == null || mainThreadSupport.isMainThread();
    }

    public Logger getLogger() {
        return this.f113893r;
    }

    public <T> T getStickyEvent(Class<T> cls) {
        T cast;
        synchronized (this.f113878c) {
            cast = cls.cast(this.f113878c.get(cls));
        }
        return cast;
    }

    public boolean hasSubscriberForEvent(Class<?> cls) {
        CopyOnWriteArrayList<k5n> copyOnWriteArrayList;
        List<Class<?>> m71022h = m71022h(cls);
        if (m71022h != null) {
            int size = m71022h.size();
            for (int i = 0; i < size; i++) {
                Class<?> cls2 = m71022h.get(i);
                synchronized (this) {
                    copyOnWriteArrayList = this.f113876a.get(cls2);
                }
                if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: i */
    public final void m71029i(Object obj, C20239d c20239d) throws Error {
        boolean m71030j;
        Class<?> cls = obj.getClass();
        if (this.f113891p) {
            List<Class<?>> m71022h = m71022h(cls);
            int size = m71022h.size();
            m71030j = false;
            for (int i = 0; i < size; i++) {
                m71030j |= m71030j(obj, c20239d, m71022h.get(i));
            }
        } else {
            m71030j = m71030j(obj, c20239d, cls);
        }
        if (m71030j) {
            return;
        }
        if (this.f113888m) {
            this.f113893r.log(Level.FINE, "No subscribers registered for event " + cls);
        }
        if (!this.f113890o || cls == NoSubscriberEvent.class || cls == SubscriberExceptionEvent.class) {
            return;
        }
        post(new NoSubscriberEvent(this, obj));
    }

    public synchronized boolean isRegistered(Object obj) {
        return this.f113877b.containsKey(obj);
    }

    /* renamed from: j */
    public final boolean m71030j(Object obj, C20239d c20239d, Class<?> cls) {
        CopyOnWriteArrayList<k5n> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.f113876a.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator<k5n> it2 = copyOnWriteArrayList.iterator();
        while (it2.hasNext()) {
            k5n next = it2.next();
            c20239d.f113900e = obj;
            c20239d.f113899d = next;
            try {
                m71031k(next, obj, c20239d.f113898c);
                if (c20239d.f113901f) {
                    return true;
                }
            } finally {
                c20239d.f113900e = null;
                c20239d.f113899d = null;
                c20239d.f113901f = false;
            }
        }
        return true;
    }

    /* renamed from: k */
    public final void m71031k(k5n k5nVar, Object obj, boolean z) {
        int i = C20237b.f113895a[k5nVar.f75114b.f113921b.ordinal()];
        if (i == 1) {
            m71027f(k5nVar, obj);
            return;
        }
        if (i == 2) {
            if (z) {
                m71027f(k5nVar, obj);
                return;
            } else {
                this.f113881f.enqueue(k5nVar, obj);
                return;
            }
        }
        if (i == 3) {
            Poster poster = this.f113881f;
            if (poster != null) {
                poster.enqueue(k5nVar, obj);
                return;
            } else {
                m71027f(k5nVar, obj);
                return;
            }
        }
        if (i == 4) {
            if (z) {
                this.f113882g.enqueue(k5nVar, obj);
                return;
            } else {
                m71027f(k5nVar, obj);
                return;
            }
        }
        if (i == 5) {
            this.f113883h.enqueue(k5nVar, obj);
            return;
        }
        throw new IllegalStateException("Unknown thread mode: " + k5nVar.f75114b.f113921b);
    }

    /* renamed from: l */
    public final void m71032l(Object obj, SubscriberMethod subscriberMethod) {
        Class<?> cls = subscriberMethod.f113922c;
        k5n k5nVar = new k5n(obj, subscriberMethod);
        CopyOnWriteArrayList<k5n> copyOnWriteArrayList = this.f113876a.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f113876a.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(k5nVar)) {
            throw new EventBusException("Subscriber " + obj.getClass() + " already registered to event " + cls);
        }
        int size = copyOnWriteArrayList.size();
        for (int i = 0; i <= size; i++) {
            if (i == size || subscriberMethod.f113923d > copyOnWriteArrayList.get(i).f75114b.f113923d) {
                copyOnWriteArrayList.add(i, k5nVar);
                break;
            }
        }
        List<Class<?>> list = this.f113877b.get(obj);
        if (list == null) {
            list = new ArrayList<>();
            this.f113877b.put(obj, list);
        }
        list.add(cls);
        if (subscriberMethod.f113924e) {
            if (!this.f113891p) {
                m71023b(k5nVar, this.f113878c.get(cls));
                return;
            }
            for (Map.Entry<Class<?>, Object> entry : this.f113878c.entrySet()) {
                if (cls.isAssignableFrom(entry.getKey())) {
                    m71023b(k5nVar, entry.getValue());
                }
            }
        }
    }

    /* renamed from: m */
    public final void m71033m(Object obj, Class<?> cls) {
        CopyOnWriteArrayList<k5n> copyOnWriteArrayList = this.f113876a.get(cls);
        if (copyOnWriteArrayList != null) {
            int size = copyOnWriteArrayList.size();
            int i = 0;
            while (i < size) {
                k5n k5nVar = copyOnWriteArrayList.get(i);
                if (k5nVar.f75113a == obj) {
                    k5nVar.f75115c = false;
                    copyOnWriteArrayList.remove(i);
                    i--;
                    size--;
                }
                i++;
            }
        }
    }

    public void post(Object obj) {
        C20239d c20239d = this.f113879d.get();
        List<Object> list = c20239d.f113896a;
        list.add(obj);
        if (c20239d.f113897b) {
            return;
        }
        c20239d.f113898c = m71028g();
        c20239d.f113897b = true;
        if (c20239d.f113901f) {
            throw new EventBusException("Internal error. Abort state was not reset");
        }
        while (true) {
            try {
                if (list.isEmpty()) {
                    return;
                } else {
                    m71029i(list.remove(0), c20239d);
                }
            } finally {
                c20239d.f113897b = false;
                c20239d.f113898c = false;
            }
        }
    }

    public void postSticky(Object obj) {
        synchronized (this.f113878c) {
            this.f113878c.put(obj.getClass(), obj);
        }
        post(obj);
    }

    public void register(Object obj) {
        if (AndroidDependenciesDetector.isAndroidSDKAvailable() && !AndroidDependenciesDetector.areAndroidComponentsAvailable()) {
            throw new RuntimeException("It looks like you are using EventBus on Android, make sure to add the \"eventbus\" Android library to your dependencies.");
        }
        List<SubscriberMethod> m54679b = this.f113884i.m54679b(obj.getClass());
        synchronized (this) {
            Iterator<SubscriberMethod> it2 = m54679b.iterator();
            while (it2.hasNext()) {
                m71032l(obj, it2.next());
            }
        }
    }

    public void removeAllStickyEvents() {
        synchronized (this.f113878c) {
            this.f113878c.clear();
        }
    }

    public <T> T removeStickyEvent(Class<T> cls) {
        T cast;
        synchronized (this.f113878c) {
            cast = cls.cast(this.f113878c.remove(cls));
        }
        return cast;
    }

    public String toString() {
        return "EventBus[indexCount=" + this.f113892q + ", eventInheritance=" + this.f113891p + IteratorUtils.f104924b;
    }

    public synchronized void unregister(Object obj) {
        List<Class<?>> list = this.f113877b.get(obj);
        if (list != null) {
            Iterator<Class<?>> it2 = list.iterator();
            while (it2.hasNext()) {
                m71033m(obj, it2.next());
            }
            this.f113877b.remove(obj);
        } else {
            this.f113893r.log(Level.WARNING, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public EventBus(EventBusBuilder eventBusBuilder) {
        this.f113879d = new C20236a();
        this.f113893r = eventBusBuilder.m71036a();
        this.f113876a = new HashMap();
        this.f113877b = new HashMap();
        this.f113878c = new ConcurrentHashMap();
        MainThreadSupport m71037b = eventBusBuilder.m71037b();
        this.f113880e = m71037b;
        this.f113881f = m71037b != null ? m71037b.createPoster(this) : null;
        this.f113882g = new RunnableC13530bm(this);
        this.f113883h = new RunnableC14650xf(this);
        List<SubscriberInfoIndex> list = eventBusBuilder.f113913k;
        this.f113892q = list != null ? list.size() : 0;
        this.f113884i = new i5n(eventBusBuilder.f113913k, eventBusBuilder.f113910h, eventBusBuilder.f113909g);
        this.f113887l = eventBusBuilder.f113903a;
        this.f113888m = eventBusBuilder.f113904b;
        this.f113889n = eventBusBuilder.f113905c;
        this.f113890o = eventBusBuilder.f113906d;
        this.f113886k = eventBusBuilder.f113907e;
        this.f113891p = eventBusBuilder.f113908f;
        this.f113885j = eventBusBuilder.f113911i;
    }

    public boolean removeStickyEvent(Object obj) {
        synchronized (this.f113878c) {
            Class<?> cls = obj.getClass();
            if (!obj.equals(this.f113878c.get(cls))) {
                return false;
            }
            this.f113878c.remove(cls);
            return true;
        }
    }
}
