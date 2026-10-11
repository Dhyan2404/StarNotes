package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.FlagSet;
import com.google.android.exoplayer2.util.ListenerSet;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes5.dex */
public final class ListenerSet<T> {

    /* renamed from: h */
    public static final int f28373h = 0;

    /* renamed from: a */
    public final Clock f28374a;

    /* renamed from: b */
    public final HandlerWrapper f28375b;

    /* renamed from: c */
    public final IterationFinishedEvent<T> f28376c;

    /* renamed from: d */
    public final CopyOnWriteArraySet<C5014a<T>> f28377d;

    /* renamed from: e */
    public final ArrayDeque<Runnable> f28378e;

    /* renamed from: f */
    public final ArrayDeque<Runnable> f28379f;

    /* renamed from: g */
    public boolean f28380g;

    /* loaded from: classes5.dex */
    public interface Event<T> {
        void invoke(T t);
    }

    /* loaded from: classes5.dex */
    public interface IterationFinishedEvent<T> {
        void invoke(T t, FlagSet flagSet);
    }

    /* renamed from: com.google.android.exoplayer2.util.ListenerSet$a */
    /* loaded from: classes5.dex */
    public static final class C5014a<T> {

        /* renamed from: a */
        public final T f28381a;

        /* renamed from: b */
        public FlagSet.Builder f28382b = new FlagSet.Builder();

        /* renamed from: c */
        public boolean f28383c;

        /* renamed from: d */
        public boolean f28384d;

        public C5014a(T t) {
            this.f28381a = t;
        }

        /* renamed from: a */
        public void m21482a(int i, Event<T> event) {
            if (this.f28384d) {
                return;
            }
            if (i != -1) {
                this.f28382b.add(i);
            }
            this.f28383c = true;
            event.invoke(this.f28381a);
        }

        /* renamed from: b */
        public void m21483b(IterationFinishedEvent<T> iterationFinishedEvent) {
            if (this.f28384d || !this.f28383c) {
                return;
            }
            FlagSet build = this.f28382b.build();
            this.f28382b = new FlagSet.Builder();
            this.f28383c = false;
            iterationFinishedEvent.invoke(this.f28381a, build);
        }

        /* renamed from: c */
        public void m21484c(IterationFinishedEvent<T> iterationFinishedEvent) {
            this.f28384d = true;
            if (this.f28383c) {
                iterationFinishedEvent.invoke(this.f28381a, this.f28382b.build());
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C5014a.class != obj.getClass()) {
                return false;
            }
            return this.f28381a.equals(((C5014a) obj).f28381a);
        }

        public int hashCode() {
            return this.f28381a.hashCode();
        }
    }

    public ListenerSet(Looper looper, Clock clock, IterationFinishedEvent<T> iterationFinishedEvent) {
        this(new CopyOnWriteArraySet(), looper, clock, iterationFinishedEvent);
    }

    /* renamed from: d */
    public static /* synthetic */ void m21480d(CopyOnWriteArraySet copyOnWriteArraySet, int i, Event event) {
        Iterator it2 = copyOnWriteArraySet.iterator();
        while (it2.hasNext()) {
            ((C5014a) it2.next()).m21482a(i, event);
        }
    }

    public void add(T t) {
        if (this.f28380g) {
            return;
        }
        Assertions.checkNotNull(t);
        this.f28377d.add(new C5014a<>(t));
    }

    /* renamed from: c */
    public final boolean m21481c(Message message) {
        Iterator<C5014a<T>> it2 = this.f28377d.iterator();
        while (it2.hasNext()) {
            it2.next().m21483b(this.f28376c);
            if (this.f28375b.hasMessages(0)) {
                return true;
            }
        }
        return true;
    }

    public void clear() {
        this.f28377d.clear();
    }

    @CheckResult
    public ListenerSet<T> copy(Looper looper, IterationFinishedEvent<T> iterationFinishedEvent) {
        return copy(looper, this.f28374a, iterationFinishedEvent);
    }

    public void flushEvents() {
        if (this.f28379f.isEmpty()) {
            return;
        }
        if (!this.f28375b.hasMessages(0)) {
            HandlerWrapper handlerWrapper = this.f28375b;
            handlerWrapper.sendMessageAtFrontOfQueue(handlerWrapper.obtainMessage(0));
        }
        boolean z = !this.f28378e.isEmpty();
        this.f28378e.addAll(this.f28379f);
        this.f28379f.clear();
        if (z) {
            return;
        }
        while (!this.f28378e.isEmpty()) {
            this.f28378e.peekFirst().run();
            this.f28378e.removeFirst();
        }
    }

    public void queueEvent(final int i, final Event<T> event) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f28377d);
        this.f28379f.add(new Runnable() { // from class: com.sunia.HTREnginev2.rzi
            @Override // java.lang.Runnable
            public final void run() {
                ListenerSet.m21480d(copyOnWriteArraySet, i, event);
            }
        });
    }

    public void release() {
        Iterator<C5014a<T>> it2 = this.f28377d.iterator();
        while (it2.hasNext()) {
            it2.next().m21484c(this.f28376c);
        }
        this.f28377d.clear();
        this.f28380g = true;
    }

    public void remove(T t) {
        Iterator<C5014a<T>> it2 = this.f28377d.iterator();
        while (it2.hasNext()) {
            C5014a<T> next = it2.next();
            if (next.f28381a.equals(t)) {
                next.m21484c(this.f28376c);
                this.f28377d.remove(next);
            }
        }
    }

    public void sendEvent(int i, Event<T> event) {
        queueEvent(i, event);
        flushEvents();
    }

    public int size() {
        return this.f28377d.size();
    }

    public ListenerSet(CopyOnWriteArraySet<C5014a<T>> copyOnWriteArraySet, Looper looper, Clock clock, IterationFinishedEvent<T> iterationFinishedEvent) {
        this.f28374a = clock;
        this.f28377d = copyOnWriteArraySet;
        this.f28376c = iterationFinishedEvent;
        this.f28378e = new ArrayDeque<>();
        this.f28379f = new ArrayDeque<>();
        this.f28375b = clock.createHandler(looper, new Handler.Callback() { // from class: com.sunia.HTREnginev2.qzi
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean m21481c;
                m21481c = ListenerSet.this.m21481c(message);
                return m21481c;
            }
        });
    }

    @CheckResult
    public ListenerSet<T> copy(Looper looper, Clock clock, IterationFinishedEvent<T> iterationFinishedEvent) {
        return new ListenerSet<>(this.f28377d, looper, clock, iterationFinishedEvent);
    }
}
