package com.google.firebase.components;

import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.ComponentRuntime;
import com.google.firebase.dynamicloading.ComponentLoader;
import com.google.firebase.events.Publisher;
import com.google.firebase.events.Subscriber;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import com.sunia.HTREnginev2.cxf;
import com.sunia.HTREnginev2.cyi;
import com.sunia.HTREnginev2.dpe;
import com.sunia.HTREnginev2.eml;
import com.sunia.HTREnginev2.phk;
import com.sunia.HTREnginev2.uwi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes6.dex */
public class ComponentRuntime implements ComponentContainer, ComponentLoader {

    /* renamed from: i */
    public static final Provider<Set<Object>> f35814i = new Provider() { // from class: com.sunia.HTREnginev2.h7e
        @Override // com.google.firebase.inject.Provider
        public final Object get() {
            return Collections.emptySet();
        }
    };

    /* renamed from: a */
    public final Map<Component<?>, Provider<?>> f35815a;

    /* renamed from: b */
    public final Map<Qualified<?>, Provider<?>> f35816b;

    /* renamed from: c */
    public final Map<Qualified<?>, uwi<?>> f35817c;

    /* renamed from: d */
    public final List<Provider<ComponentRegistrar>> f35818d;

    /* renamed from: e */
    public Set<String> f35819e;

    /* renamed from: f */
    public final cxf f35820f;

    /* renamed from: g */
    public final AtomicReference<Boolean> f35821g;

    /* renamed from: h */
    public final ComponentRegistrarProcessor f35822h;

    /* loaded from: classes6.dex */
    public static final class Builder {

        /* renamed from: a */
        public final Executor f35823a;

        /* renamed from: b */
        public final List<Provider<ComponentRegistrar>> f35824b = new ArrayList();

        /* renamed from: c */
        public final List<Component<?>> f35825c = new ArrayList();

        /* renamed from: d */
        public ComponentRegistrarProcessor f35826d = ComponentRegistrarProcessor.NOOP;

        public Builder(Executor executor) {
            this.f35823a = executor;
        }

        /* renamed from: b */
        public static /* synthetic */ ComponentRegistrar m28049b(ComponentRegistrar componentRegistrar) {
            return componentRegistrar;
        }

        @CanIgnoreReturnValue
        public Builder addComponent(Component<?> component) {
            this.f35825c.add(component);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder addComponentRegistrar(final ComponentRegistrar componentRegistrar) {
            this.f35824b.add(new Provider() { // from class: com.sunia.HTREnginev2.i7e
                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    ComponentRegistrar m28049b;
                    m28049b = ComponentRuntime.Builder.m28049b(ComponentRegistrar.this);
                    return m28049b;
                }
            });
            return this;
        }

        @CanIgnoreReturnValue
        public Builder addLazyComponentRegistrars(Collection<Provider<ComponentRegistrar>> collection) {
            this.f35824b.addAll(collection);
            return this;
        }

        public ComponentRuntime build() {
            return new ComponentRuntime(this.f35823a, this.f35824b, this.f35825c, this.f35826d);
        }

        @CanIgnoreReturnValue
        public Builder setProcessor(ComponentRegistrarProcessor componentRegistrarProcessor) {
            this.f35826d = componentRegistrarProcessor;
            return this;
        }
    }

    public static Builder builder(Executor executor) {
        return new Builder(executor);
    }

    /* renamed from: h */
    public static <T> List<T> m28035h(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ Object m28036i(Component component) {
        return component.getFactory().create(new eml(component, this));
    }

    /* renamed from: l */
    public static /* synthetic */ ComponentRegistrar m28039l(ComponentRegistrar componentRegistrar) {
        return componentRegistrar;
    }

    /* renamed from: q */
    public static Iterable<Provider<ComponentRegistrar>> m28040q(Iterable<ComponentRegistrar> iterable) {
        ArrayList arrayList = new ArrayList();
        for (final ComponentRegistrar componentRegistrar : iterable) {
            arrayList.add(new Provider() { // from class: com.sunia.HTREnginev2.g7e
                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    ComponentRegistrar m28039l;
                    m28039l = ComponentRuntime.m28039l(ComponentRegistrar.this);
                    return m28039l;
                }
            });
        }
        return arrayList;
    }

    @Override // com.google.firebase.dynamicloading.ComponentLoader
    public void discoverComponents() {
        synchronized (this) {
            if (this.f35818d.isEmpty()) {
                return;
            }
            m28041e(new ArrayList());
        }
    }

    /* renamed from: e */
    public final void m28041e(List<Component<?>> list) {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<Provider<ComponentRegistrar>> it2 = this.f35818d.iterator();
            while (it2.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = it2.next().get();
                    if (componentRegistrar != null) {
                        list.addAll(this.f35822h.processRegistrar(componentRegistrar));
                        it2.remove();
                    }
                } catch (InvalidRegistrarException e) {
                    it2.remove();
                    Log.w(ComponentDiscovery.f35808c, "Invalid component registrar.", e);
                }
            }
            Iterator<Component<?>> it3 = list.iterator();
            while (it3.hasNext()) {
                Object[] array = it3.next().getProvidedInterfaces().toArray();
                int length = array.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        Object obj = array[i];
                        if (obj.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                            if (this.f35819e.contains(obj.toString())) {
                                it3.remove();
                                break;
                            }
                            this.f35819e.add(obj.toString());
                        }
                        i++;
                    }
                }
            }
            if (this.f35815a.isEmpty()) {
                dpe.m53687a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.f35815a.keySet());
                arrayList2.addAll(list);
                dpe.m53687a(arrayList2);
            }
            for (final Component<?> component : list) {
                this.f35815a.put(component, new Lazy(new Provider() { // from class: com.sunia.HTREnginev2.e7e
                    @Override // com.google.firebase.inject.Provider
                    public final Object get() {
                        Object m28036i;
                        m28036i = ComponentRuntime.this.m28036i(component);
                        return m28036i;
                    }
                }));
            }
            arrayList.addAll(m28046o(list));
            arrayList.addAll(m28047p());
            m28045n();
        }
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            ((Runnable) it4.next()).run();
        }
        m28044m();
    }

    /* renamed from: f */
    public final void m28042f(Map<Component<?>, Provider<?>> map, boolean z) {
        for (Map.Entry<Component<?>, Provider<?>> entry : map.entrySet()) {
            Component<?> key = entry.getKey();
            Provider<?> value = entry.getValue();
            if (key.isAlwaysEager() || (key.isEagerInDefaultApp() && z)) {
                value.get();
            }
        }
        this.f35820f.m53535b();
    }

    @VisibleForTesting
    /* renamed from: g */
    public Collection<Component<?>> m28043g() {
        return this.f35815a.keySet();
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> Deferred<T> getDeferred(Qualified<T> qualified) {
        Provider<T> provider = getProvider(qualified);
        return provider == null ? phk.m56266d() : provider instanceof phk ? (phk) provider : phk.m56270h(provider);
    }

    @Override // com.google.firebase.components.ComponentContainer
    public synchronized <T> Provider<T> getProvider(Qualified<T> qualified) {
        Preconditions.checkNotNull(qualified, "Null interface requested.");
        return (Provider) this.f35816b.get(qualified);
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    @VisibleForTesting
    public void initializeAllComponentsForTests() {
        Iterator<Provider<?>> it2 = this.f35815a.values().iterator();
        while (it2.hasNext()) {
            it2.next().get();
        }
    }

    public void initializeEagerComponents(boolean z) {
        HashMap hashMap;
        if (cyi.m53538a(this.f35821g, null, Boolean.valueOf(z))) {
            synchronized (this) {
                hashMap = new HashMap(this.f35815a);
            }
            m28042f(hashMap, z);
        }
    }

    /* renamed from: m */
    public final void m28044m() {
        Boolean bool = this.f35821g.get();
        if (bool != null) {
            m28042f(this.f35815a, bool.booleanValue());
        }
    }

    /* renamed from: n */
    public final void m28045n() {
        for (Component<?> component : this.f35815a.keySet()) {
            for (Dependency dependency : component.getDependencies()) {
                if (dependency.isSet() && !this.f35817c.containsKey(dependency.getInterface())) {
                    this.f35817c.put(dependency.getInterface(), uwi.m57669b(Collections.emptySet()));
                } else if (this.f35816b.containsKey(dependency.getInterface())) {
                    continue;
                } else {
                    if (dependency.isRequired()) {
                        throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", component, dependency.getInterface()));
                    }
                    if (!dependency.isSet()) {
                        this.f35816b.put(dependency.getInterface(), phk.m56266d());
                    }
                }
            }
        }
    }

    /* renamed from: o */
    public final List<Runnable> m28046o(List<Component<?>> list) {
        ArrayList arrayList = new ArrayList();
        for (Component<?> component : list) {
            if (component.isValue()) {
                final Provider<?> provider = this.f35815a.get(component);
                for (Qualified<? super Object> qualified : component.getProvidedInterfaces()) {
                    if (this.f35816b.containsKey(qualified)) {
                        final phk phkVar = (phk) this.f35816b.get(qualified);
                        arrayList.add(new Runnable() { // from class: com.sunia.HTREnginev2.d7e
                            @Override // java.lang.Runnable
                            public final void run() {
                                phk.this.m56271i(provider);
                            }
                        });
                    } else {
                        this.f35816b.put(qualified, provider);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: p */
    public final List<Runnable> m28047p() {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (Map.Entry<Component<?>, Provider<?>> entry : this.f35815a.entrySet()) {
            Component<?> key = entry.getKey();
            if (!key.isValue()) {
                Provider<?> value = entry.getValue();
                for (Qualified<? super Object> qualified : key.getProvidedInterfaces()) {
                    if (!hashMap.containsKey(qualified)) {
                        hashMap.put(qualified, new HashSet());
                    }
                    ((Set) hashMap.get(qualified)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            if (this.f35817c.containsKey(entry2.getKey())) {
                final uwi<?> uwiVar = this.f35817c.get(entry2.getKey());
                for (final Provider provider : (Set) entry2.getValue()) {
                    arrayList.add(new Runnable() { // from class: com.sunia.HTREnginev2.f7e
                        @Override // java.lang.Runnable
                        public final void run() {
                            uwi.this.m57670a(provider);
                        }
                    });
                }
            } else {
                this.f35817c.put((Qualified) entry2.getKey(), uwi.m57669b((Collection) entry2.getValue()));
            }
        }
        return arrayList;
    }

    @Override // com.google.firebase.components.ComponentContainer
    public synchronized <T> Provider<Set<T>> setOfProvider(Qualified<T> qualified) {
        uwi<?> uwiVar = this.f35817c.get(qualified);
        if (uwiVar != null) {
            return uwiVar;
        }
        return (Provider<Set<T>>) f35814i;
    }

    @Deprecated
    public ComponentRuntime(Executor executor, Iterable<ComponentRegistrar> iterable, Component<?>... componentArr) {
        this(executor, m28040q(iterable), Arrays.asList(componentArr), ComponentRegistrarProcessor.NOOP);
    }

    public ComponentRuntime(Executor executor, Iterable<Provider<ComponentRegistrar>> iterable, Collection<Component<?>> collection, ComponentRegistrarProcessor componentRegistrarProcessor) {
        this.f35815a = new HashMap();
        this.f35816b = new HashMap();
        this.f35817c = new HashMap();
        this.f35819e = new HashSet();
        this.f35821g = new AtomicReference<>();
        cxf cxfVar = new cxf(executor);
        this.f35820f = cxfVar;
        this.f35822h = componentRegistrarProcessor;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Component.m28020of(cxfVar, (Class<cxf>) cxf.class, (Class<? super cxf>[]) new Class[]{Subscriber.class, Publisher.class}));
        arrayList.add(Component.m28020of(this, (Class<ComponentRuntime>) ComponentLoader.class, (Class<? super ComponentRuntime>[]) new Class[0]));
        for (Component<?> component : collection) {
            if (component != null) {
                arrayList.add(component);
            }
        }
        this.f35818d = m28035h(iterable);
        m28041e(arrayList);
    }
}
