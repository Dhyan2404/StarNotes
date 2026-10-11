package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.MoreCollectors;
import com.sunia.HTREnginev2.snf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public final class MoreCollectors {

    /* renamed from: a */
    public static final Collector<Object, ?, Optional<Object>> f34300a = Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.toj
        @Override // java.util.function.Supplier
        public final Object get() {
            return new MoreCollectors.C5977a();
        }
    }, new BiConsumer() { // from class: com.sunia.HTREnginev2.uoj
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            ((MoreCollectors.C5977a) obj).m26599a(obj2);
        }
    }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.voj
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return ((MoreCollectors.C5977a) obj).m26600b((MoreCollectors.C5977a) obj2);
        }
    }, new Function() { // from class: com.sunia.HTREnginev2.woj
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((MoreCollectors.C5977a) obj).m26602d();
        }
    }, Collector.Characteristics.UNORDERED);

    /* renamed from: b */
    public static final Object f34301b = new Object();

    /* renamed from: c */
    public static final Collector<Object, ?, Object> f34302c = Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.toj
        @Override // java.util.function.Supplier
        public final Object get() {
            return new MoreCollectors.C5977a();
        }
    }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xoj
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            MoreCollectors.m26597c((MoreCollectors.C5977a) obj, obj2);
        }
    }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.voj
        @Override // java.util.function.BiFunction
        public final Object apply(Object obj, Object obj2) {
            return ((MoreCollectors.C5977a) obj).m26600b((MoreCollectors.C5977a) obj2);
        }
    }, new Function() { // from class: com.sunia.HTREnginev2.yoj
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            Object m26598d;
            m26598d = MoreCollectors.m26598d((MoreCollectors.C5977a) obj);
            return m26598d;
        }
    }, Collector.Characteristics.UNORDERED);

    /* renamed from: com.google.common.collect.MoreCollectors$a */
    /* loaded from: classes6.dex */
    public static final class C5977a {

        /* renamed from: c */
        public static final int f34303c = 4;

        /* renamed from: a */
        public Object f34304a = null;

        /* renamed from: b */
        public List<Object> f34305b = Collections.emptyList();

        /* renamed from: a */
        public void m26599a(Object obj) {
            Preconditions.checkNotNull(obj);
            if (this.f34304a == null) {
                this.f34304a = obj;
                return;
            }
            if (this.f34305b.isEmpty()) {
                ArrayList arrayList = new ArrayList(4);
                this.f34305b = arrayList;
                arrayList.add(obj);
            } else {
                if (this.f34305b.size() >= 4) {
                    throw m26603e(true);
                }
                this.f34305b.add(obj);
            }
        }

        /* renamed from: b */
        public C5977a m26600b(C5977a c5977a) {
            if (this.f34304a == null) {
                return c5977a;
            }
            if (c5977a.f34304a == null) {
                return this;
            }
            if (this.f34305b.isEmpty()) {
                this.f34305b = new ArrayList();
            }
            this.f34305b.add(c5977a.f34304a);
            this.f34305b.addAll(c5977a.f34305b);
            if (this.f34305b.size() <= 4) {
                return this;
            }
            List<Object> list = this.f34305b;
            list.subList(4, list.size()).clear();
            throw m26603e(true);
        }

        /* renamed from: c */
        public Object m26601c() {
            if (this.f34304a == null) {
                throw new NoSuchElementException();
            }
            if (this.f34305b.isEmpty()) {
                return this.f34304a;
            }
            throw m26603e(false);
        }

        /* renamed from: d */
        public Optional<Object> m26602d() {
            if (this.f34305b.isEmpty()) {
                return Optional.ofNullable(this.f34304a);
            }
            throw m26603e(false);
        }

        /* renamed from: e */
        public IllegalArgumentException m26603e(boolean z) {
            StringBuilder sb = new StringBuilder();
            sb.append("expected one element but was: <");
            sb.append(this.f34304a);
            for (Object obj : this.f34305b) {
                sb.append(", ");
                sb.append(obj);
            }
            if (z) {
                sb.append(", ...");
            }
            sb.append('>');
            throw new IllegalArgumentException(sb.toString());
        }
    }

    /* renamed from: c */
    public static /* synthetic */ void m26597c(C5977a c5977a, Object obj) {
        if (obj == null) {
            obj = f34301b;
        }
        c5977a.m26599a(obj);
    }

    /* renamed from: d */
    public static /* synthetic */ Object m26598d(C5977a c5977a) {
        Object m26601c = c5977a.m26601c();
        if (m26601c == f34301b) {
            return null;
        }
        return m26601c;
    }

    public static <T> Collector<T, ?, T> onlyElement() {
        return (Collector<T, ?, T>) f34302c;
    }

    public static <T> Collector<T, ?, Optional<T>> toOptional() {
        return (Collector<T, ?, Optional<T>>) f34300a;
    }
}
