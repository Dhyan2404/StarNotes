package com.sunia.HTREnginev2;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.google.common.collect.HashMultimap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.eventbus.EventBus;
import com.google.common.eventbus.Subscribe;
import com.google.common.primitives.Primitives;
import com.google.common.reflect.TypeToken;
import com.google.common.util.concurrent.UncheckedExecutionException;
import com.google.j2objc.annotations.Weak;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.CheckForNull;

@unf
/* loaded from: classes6.dex */
public final class j5n {

    /* renamed from: c */
    public static final LoadingCache<Class<?>, ImmutableList<Method>> f73957c = CacheBuilder.newBuilder().weakKeys().build(new C13908a());

    /* renamed from: d */
    public static final LoadingCache<Class<?>, ImmutableSet<Class<?>>> f73958d = CacheBuilder.newBuilder().weakKeys().build(new C13909b());

    /* renamed from: a */
    public final ConcurrentMap<Class<?>, CopyOnWriteArraySet<h5n>> f73959a = Maps.newConcurrentMap();

    /* renamed from: b */
    @Weak
    public final EventBus f73960b;

    /* renamed from: com.sunia.HTREnginev2.j5n$a */
    /* loaded from: classes6.dex */
    public class C13908a extends CacheLoader<Class<?>, ImmutableList<Method>> {
        @Override // com.google.common.cache.CacheLoader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ImmutableList<Method> load(Class<?> cls) throws Exception {
            return j5n.m54886e(cls);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.j5n$b */
    /* loaded from: classes6.dex */
    public class C13909b extends CacheLoader<Class<?>, ImmutableSet<Class<?>>> {
        @Override // com.google.common.cache.CacheLoader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ImmutableSet<Class<?>> load(Class<?> cls) {
            return ImmutableSet.copyOf((Collection) TypeToken.m27494of((Class) cls).getTypes().rawTypes());
        }
    }

    /* renamed from: com.sunia.HTREnginev2.j5n$c */
    /* loaded from: classes6.dex */
    public static final class C13910c {

        /* renamed from: a */
        public final String f73961a;

        /* renamed from: b */
        public final List<Class<?>> f73962b;

        public C13910c(Method method) {
            this.f73961a = method.getName();
            this.f73962b = Arrays.asList(method.getParameterTypes());
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof C13910c)) {
                return false;
            }
            C13910c c13910c = (C13910c) obj;
            return this.f73961a.equals(c13910c.f73961a) && this.f73962b.equals(c13910c.f73962b);
        }

        public int hashCode() {
            return Objects.hashCode(this.f73961a, this.f73962b);
        }
    }

    public j5n(EventBus eventBus) {
        this.f73960b = (EventBus) Preconditions.checkNotNull(eventBus);
    }

    @VisibleForTesting
    /* renamed from: c */
    public static ImmutableSet<Class<?>> m54884c(Class<?> cls) {
        try {
            return f73958d.getUnchecked(cls);
        } catch (UncheckedExecutionException e) {
            throw Throwables.propagate(e.getCause());
        }
    }

    /* renamed from: d */
    public static ImmutableList<Method> m54885d(Class<?> cls) {
        try {
            return f73957c.getUnchecked(cls);
        } catch (UncheckedExecutionException e) {
            Throwables.throwIfUnchecked(e.getCause());
            throw e;
        }
    }

    /* renamed from: e */
    public static ImmutableList<Method> m54886e(Class<?> cls) {
        Set rawTypes = TypeToken.m27494of((Class) cls).getTypes().rawTypes();
        HashMap newHashMap = Maps.newHashMap();
        Iterator it2 = rawTypes.iterator();
        while (it2.hasNext()) {
            for (Method method : ((Class) it2.next()).getDeclaredMethods()) {
                if (method.isAnnotationPresent(Subscribe.class) && !method.isSynthetic()) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    Preconditions.checkArgument(parameterTypes.length == 1, "Method %s has @Subscribe annotation but has %s parameters. Subscriber methods must have exactly 1 parameter.", (Object) method, parameterTypes.length);
                    Preconditions.checkArgument(!parameterTypes[0].isPrimitive(), "@Subscribe method %s's parameter is %s. Subscriber methods cannot accept primitives. Consider changing the parameter to %s.", method, parameterTypes[0].getName(), Primitives.wrap(parameterTypes[0]).getSimpleName());
                    C13910c c13910c = new C13910c(method);
                    if (!newHashMap.containsKey(c13910c)) {
                        newHashMap.put(c13910c, method);
                    }
                }
            }
        }
        return ImmutableList.copyOf(newHashMap.values());
    }

    /* renamed from: b */
    public final Multimap<Class<?>, h5n> m54887b(Object obj) {
        HashMultimap create = HashMultimap.create();
        UnmodifiableIterator<Method> it2 = m54885d(obj.getClass()).iterator();
        while (it2.hasNext()) {
            Method next = it2.next();
            create.put(next.getParameterTypes()[0], h5n.m54402c(this.f73960b, obj, next));
        }
        return create;
    }

    /* renamed from: f */
    public Iterator<h5n> m54888f(Object obj) {
        ImmutableSet<Class<?>> m54884c = m54884c(obj.getClass());
        ArrayList newArrayListWithCapacity = Lists.newArrayListWithCapacity(m54884c.size());
        UnmodifiableIterator<Class<?>> it2 = m54884c.iterator();
        while (it2.hasNext()) {
            CopyOnWriteArraySet<h5n> copyOnWriteArraySet = this.f73959a.get(it2.next());
            if (copyOnWriteArraySet != null) {
                newArrayListWithCapacity.add(copyOnWriteArraySet.iterator());
            }
        }
        return Iterators.concat(newArrayListWithCapacity.iterator());
    }

    @VisibleForTesting
    /* renamed from: g */
    public Set<h5n> m54889g(Class<?> cls) {
        return (Set) MoreObjects.firstNonNull(this.f73959a.get(cls), ImmutableSet.m26234of());
    }

    /* renamed from: h */
    public void m54890h(Object obj) {
        for (Map.Entry<Class<?>, Collection<h5n>> entry : m54887b(obj).asMap().entrySet()) {
            Class<?> key = entry.getKey();
            Collection<h5n> value = entry.getValue();
            CopyOnWriteArraySet<h5n> copyOnWriteArraySet = this.f73959a.get(key);
            if (copyOnWriteArraySet == null) {
                CopyOnWriteArraySet<h5n> copyOnWriteArraySet2 = new CopyOnWriteArraySet<>();
                copyOnWriteArraySet = (CopyOnWriteArraySet) MoreObjects.firstNonNull(this.f73959a.putIfAbsent(key, copyOnWriteArraySet2), copyOnWriteArraySet2);
            }
            copyOnWriteArraySet.addAll(value);
        }
    }

    /* renamed from: i */
    public void m54891i(Object obj) {
        for (Map.Entry<Class<?>, Collection<h5n>> entry : m54887b(obj).asMap().entrySet()) {
            Class<?> key = entry.getKey();
            Collection<h5n> value = entry.getValue();
            CopyOnWriteArraySet<h5n> copyOnWriteArraySet = this.f73959a.get(key);
            if (copyOnWriteArraySet == null || !copyOnWriteArraySet.removeAll(value)) {
                String valueOf = String.valueOf(obj);
                StringBuilder sb = new StringBuilder(valueOf.length() + 65);
                sb.append("missing event subscriber for an annotated method. Is ");
                sb.append(valueOf);
                sb.append(" registered?");
                throw new IllegalArgumentException(sb.toString());
            }
        }
    }
}
