package com.google.firebase.components;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes6.dex */
public final class Component<T> {

    /* renamed from: a */
    public final String f35794a;

    /* renamed from: b */
    public final Set<Qualified<? super T>> f35795b;

    /* renamed from: c */
    public final Set<Dependency> f35796c;

    /* renamed from: d */
    public final int f35797d;

    /* renamed from: e */
    public final int f35798e;

    /* renamed from: f */
    public final ComponentFactory<T> f35799f;

    /* renamed from: g */
    public final Set<Class<?>> f35800g;

    public static <T> Builder<T> builder(Class<T> cls) {
        return new Builder<>(cls, new Class[0]);
    }

    /* renamed from: f */
    public static /* synthetic */ Object m28013f(Object obj, ComponentContainer componentContainer) {
        return obj;
    }

    /* renamed from: g */
    public static /* synthetic */ Object m28014g(Object obj, ComponentContainer componentContainer) {
        return obj;
    }

    /* renamed from: h */
    public static /* synthetic */ Object m28015h(Object obj, ComponentContainer componentContainer) {
        return obj;
    }

    /* renamed from: i */
    public static /* synthetic */ Object m28016i(Object obj, ComponentContainer componentContainer) {
        return obj;
    }

    public static <T> Component<T> intoSet(final T t, Class<T> cls) {
        return intoSetBuilder(cls).factory(new ComponentFactory() { // from class: com.sunia.HTREnginev2.p6e
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                Object m28013f;
                m28013f = Component.m28013f(t, componentContainer);
                return m28013f;
            }
        }).build();
    }

    public static <T> Builder<T> intoSetBuilder(Class<T> cls) {
        return builder(cls).m28022b();
    }

    /* renamed from: j */
    public static /* synthetic */ Object m28017j(Object obj, ComponentContainer componentContainer) {
        return obj;
    }

    @Deprecated
    /* renamed from: of */
    public static <T> Component<T> m28018of(Class<T> cls, final T t) {
        return builder(cls).factory(new ComponentFactory() { // from class: com.sunia.HTREnginev2.s6e
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                Object m28015h;
                m28015h = Component.m28015h(t, componentContainer);
                return m28015h;
            }
        }).build();
    }

    public Set<Dependency> getDependencies() {
        return this.f35796c;
    }

    public ComponentFactory<T> getFactory() {
        return this.f35799f;
    }

    @Nullable
    public String getName() {
        return this.f35794a;
    }

    public Set<Qualified<? super T>> getProvidedInterfaces() {
        return this.f35795b;
    }

    public Set<Class<?>> getPublishedEvents() {
        return this.f35800g;
    }

    public boolean isAlwaysEager() {
        return this.f35797d == 1;
    }

    public boolean isEagerInDefaultApp() {
        return this.f35797d == 2;
    }

    public boolean isLazy() {
        return this.f35797d == 0;
    }

    public boolean isValue() {
        return this.f35798e == 0;
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f35795b.toArray()) + ">{" + this.f35797d + ", type=" + this.f35798e + ", deps=" + Arrays.toString(this.f35796c.toArray()) + "}";
    }

    public Component<T> withFactory(ComponentFactory<T> componentFactory) {
        return new Component<>(this.f35794a, this.f35795b, this.f35796c, this.f35797d, this.f35798e, componentFactory, this.f35800g);
    }

    /* loaded from: classes6.dex */
    public static class Builder<T> {

        /* renamed from: a */
        public String f35801a;

        /* renamed from: b */
        public final Set<Qualified<? super T>> f35802b;

        /* renamed from: c */
        public final Set<Dependency> f35803c;

        /* renamed from: d */
        public int f35804d;

        /* renamed from: e */
        public int f35805e;

        /* renamed from: f */
        public ComponentFactory<T> f35806f;

        /* renamed from: g */
        public final Set<Class<?>> f35807g;

        @CanIgnoreReturnValue
        public Builder<T> add(Dependency dependency) {
            Preconditions.checkNotNull(dependency, "Null dependency");
            m28024d(dependency.getInterface());
            this.f35803c.add(dependency);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<T> alwaysEager() {
            return m28023c(1);
        }

        @CanIgnoreReturnValue
        /* renamed from: b */
        public final Builder<T> m28022b() {
            this.f35805e = 1;
            return this;
        }

        public Component<T> build() {
            Preconditions.checkState(this.f35806f != null, "Missing required property: factory.");
            return new Component<>(this.f35801a, new HashSet(this.f35802b), new HashSet(this.f35803c), this.f35804d, this.f35805e, this.f35806f, this.f35807g);
        }

        @CanIgnoreReturnValue
        /* renamed from: c */
        public final Builder<T> m28023c(int i) {
            Preconditions.checkState(this.f35804d == 0, "Instantiation type has already been set.");
            this.f35804d = i;
            return this;
        }

        /* renamed from: d */
        public final void m28024d(Qualified<?> qualified) {
            Preconditions.checkArgument(!this.f35802b.contains(qualified), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        @CanIgnoreReturnValue
        public Builder<T> eagerInDefaultApp() {
            return m28023c(2);
        }

        @CanIgnoreReturnValue
        public Builder<T> factory(ComponentFactory<T> componentFactory) {
            this.f35806f = (ComponentFactory) Preconditions.checkNotNull(componentFactory, "Null factory");
            return this;
        }

        public Builder<T> name(@NonNull String str) {
            this.f35801a = str;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<T> publishes(Class<?> cls) {
            this.f35807g.add(cls);
            return this;
        }

        @SafeVarargs
        public Builder(Class<T> cls, Class<? super T>... clsArr) {
            this.f35801a = null;
            HashSet hashSet = new HashSet();
            this.f35802b = hashSet;
            this.f35803c = new HashSet();
            this.f35804d = 0;
            this.f35805e = 0;
            this.f35807g = new HashSet();
            Preconditions.checkNotNull(cls, "Null interface");
            hashSet.add(Qualified.unqualified(cls));
            for (Class<? super T> cls2 : clsArr) {
                Preconditions.checkNotNull(cls2, "Null interface");
                this.f35802b.add(Qualified.unqualified(cls2));
            }
        }

        @SafeVarargs
        public Builder(Qualified<T> qualified, Qualified<? super T>... qualifiedArr) {
            this.f35801a = null;
            HashSet hashSet = new HashSet();
            this.f35802b = hashSet;
            this.f35803c = new HashSet();
            this.f35804d = 0;
            this.f35805e = 0;
            this.f35807g = new HashSet();
            Preconditions.checkNotNull(qualified, "Null interface");
            hashSet.add(qualified);
            for (Qualified<? super T> qualified2 : qualifiedArr) {
                Preconditions.checkNotNull(qualified2, "Null interface");
            }
            Collections.addAll(this.f35802b, qualifiedArr);
        }
    }

    public Component(@Nullable String str, Set<Qualified<? super T>> set, Set<Dependency> set2, int i, int i2, ComponentFactory<T> componentFactory, Set<Class<?>> set3) {
        this.f35794a = str;
        this.f35795b = Collections.unmodifiableSet(set);
        this.f35796c = Collections.unmodifiableSet(set2);
        this.f35797d = i;
        this.f35798e = i2;
        this.f35799f = componentFactory;
        this.f35800g = Collections.unmodifiableSet(set3);
    }

    @SafeVarargs
    public static <T> Builder<T> builder(Class<T> cls, Class<? super T>... clsArr) {
        return new Builder<>(cls, clsArr);
    }

    public static <T> Component<T> intoSet(final T t, Qualified<T> qualified) {
        return intoSetBuilder(qualified).factory(new ComponentFactory() { // from class: com.sunia.HTREnginev2.q6e
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                Object m28014g;
                m28014g = Component.m28014g(t, componentContainer);
                return m28014g;
            }
        }).build();
    }

    public static <T> Builder<T> intoSetBuilder(Qualified<T> qualified) {
        return builder(qualified).m28022b();
    }

    @SafeVarargs
    /* renamed from: of */
    public static <T> Component<T> m28020of(final T t, Class<T> cls, Class<? super T>... clsArr) {
        return builder(cls, clsArr).factory(new ComponentFactory() { // from class: com.sunia.HTREnginev2.o6e
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                Object m28016i;
                m28016i = Component.m28016i(t, componentContainer);
                return m28016i;
            }
        }).build();
    }

    public static <T> Builder<T> builder(Qualified<T> qualified) {
        return new Builder<>(qualified, new Qualified[0]);
    }

    @SafeVarargs
    /* renamed from: of */
    public static <T> Component<T> m28019of(final T t, Qualified<T> qualified, Qualified<? super T>... qualifiedArr) {
        return builder(qualified, qualifiedArr).factory(new ComponentFactory() { // from class: com.sunia.HTREnginev2.r6e
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                Object m28017j;
                m28017j = Component.m28017j(t, componentContainer);
                return m28017j;
            }
        }).build();
    }

    @SafeVarargs
    public static <T> Builder<T> builder(Qualified<T> qualified, Qualified<? super T>... qualifiedArr) {
        return new Builder<>(qualified, qualifiedArr);
    }
}
