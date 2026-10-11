package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import com.google.common.collect.Queues;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

@unf
/* loaded from: classes6.dex */
public abstract class q5f {

    /* renamed from: com.sunia.HTREnginev2.q5f$b */
    /* loaded from: classes6.dex */
    public static final class C14284b extends q5f {

        /* renamed from: a */
        public static final C14284b f81664a = new C14284b();

        @Override // com.sunia.HTREnginev2.q5f
        /* renamed from: a */
        public void mo56629a(Object obj, Iterator<h5n> it2) {
            Preconditions.checkNotNull(obj);
            while (it2.hasNext()) {
                it2.next().m54406d(obj);
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.q5f$c */
    /* loaded from: classes6.dex */
    public static final class C14285c extends q5f {

        /* renamed from: a */
        public final ConcurrentLinkedQueue<a> f81665a;

        /* renamed from: com.sunia.HTREnginev2.q5f$c$a */
        /* loaded from: classes6.dex */
        public static final class a {

            /* renamed from: a */
            public final Object f81666a;

            /* renamed from: b */
            public final h5n f81667b;

            public a(Object obj, h5n h5nVar) {
                this.f81666a = obj;
                this.f81667b = h5nVar;
            }
        }

        public C14285c() {
            this.f81665a = Queues.newConcurrentLinkedQueue();
        }

        @Override // com.sunia.HTREnginev2.q5f
        /* renamed from: a */
        public void mo56629a(Object obj, Iterator<h5n> it2) {
            Preconditions.checkNotNull(obj);
            while (it2.hasNext()) {
                this.f81665a.add(new a(obj, it2.next()));
            }
            while (true) {
                a poll = this.f81665a.poll();
                if (poll == null) {
                    return;
                } else {
                    poll.f81667b.m54406d(poll.f81666a);
                }
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.q5f$d */
    /* loaded from: classes6.dex */
    public static final class C14286d extends q5f {

        /* renamed from: a */
        public final ThreadLocal<Queue<c>> f81668a;

        /* renamed from: b */
        public final ThreadLocal<Boolean> f81669b;

        /* renamed from: com.sunia.HTREnginev2.q5f$d$a */
        /* loaded from: classes6.dex */
        public class a extends ThreadLocal<Queue<c>> {
            public a(C14286d c14286d) {
            }

            @Override // java.lang.ThreadLocal
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Queue<c> initialValue() {
                return Queues.newArrayDeque();
            }
        }

        /* renamed from: com.sunia.HTREnginev2.q5f$d$b */
        /* loaded from: classes6.dex */
        public class b extends ThreadLocal<Boolean> {
            public b(C14286d c14286d) {
            }

            @Override // java.lang.ThreadLocal
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean initialValue() {
                return Boolean.FALSE;
            }
        }

        /* renamed from: com.sunia.HTREnginev2.q5f$d$c */
        /* loaded from: classes6.dex */
        public static final class c {

            /* renamed from: a */
            public final Object f81670a;

            /* renamed from: b */
            public final Iterator<h5n> f81671b;

            public c(Object obj, Iterator<h5n> it2) {
                this.f81670a = obj;
                this.f81671b = it2;
            }
        }

        public C14286d() {
            this.f81668a = new a(this);
            this.f81669b = new b(this);
        }

        @Override // com.sunia.HTREnginev2.q5f
        /* renamed from: a */
        public void mo56629a(Object obj, Iterator<h5n> it2) {
            Preconditions.checkNotNull(obj);
            Preconditions.checkNotNull(it2);
            Queue<c> queue = this.f81668a.get();
            queue.offer(new c(obj, it2));
            if (this.f81669b.get().booleanValue()) {
                return;
            }
            this.f81669b.set(Boolean.TRUE);
            while (true) {
                try {
                    c poll = queue.poll();
                    if (poll == null) {
                        return;
                    }
                    while (poll.f81671b.hasNext()) {
                        ((h5n) poll.f81671b.next()).m54406d(poll.f81670a);
                    }
                } finally {
                    this.f81669b.remove();
                    this.f81668a.remove();
                }
            }
        }
    }

    /* renamed from: b */
    public static q5f m56626b() {
        return C14284b.f81664a;
    }

    /* renamed from: c */
    public static q5f m56627c() {
        return new C14285c();
    }

    /* renamed from: d */
    public static q5f m56628d() {
        return new C14286d();
    }

    /* renamed from: a */
    public abstract void mo56629a(Object obj, Iterator<h5n> it2);
}
