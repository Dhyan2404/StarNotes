package com.sunia.HTREnginev2;

import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.DependencyException;
import com.google.firebase.components.Qualified;
import com.google.firebase.events.Event;
import com.google.firebase.events.Publisher;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes6.dex */
public final class eml implements ComponentContainer {

    /* renamed from: a */
    public final Set<Qualified<?>> f69086a;

    /* renamed from: b */
    public final Set<Qualified<?>> f69087b;

    /* renamed from: c */
    public final Set<Qualified<?>> f69088c;

    /* renamed from: d */
    public final Set<Qualified<?>> f69089d;

    /* renamed from: e */
    public final Set<Qualified<?>> f69090e;

    /* renamed from: f */
    public final Set<Class<?>> f69091f;

    /* renamed from: g */
    public final ComponentContainer f69092g;

    /* renamed from: com.sunia.HTREnginev2.eml$a */
    /* loaded from: classes6.dex */
    public static class C13679a implements Publisher {

        /* renamed from: a */
        public final Set<Class<?>> f69093a;

        /* renamed from: b */
        public final Publisher f69094b;

        public C13679a(Set<Class<?>> set, Publisher publisher) {
            this.f69093a = set;
            this.f69094b = publisher;
        }

        @Override // com.google.firebase.events.Publisher
        public void publish(Event<?> event) {
            if (!this.f69093a.contains(event.getType())) {
                throw new DependencyException(String.format("Attempting to publish an undeclared event %s.", event));
            }
            this.f69094b.publish(event);
        }
    }

    public eml(Component<?> component, ComponentContainer componentContainer) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (Dependency dependency : component.getDependencies()) {
            if (dependency.isDirectInjection()) {
                if (dependency.isSet()) {
                    hashSet4.add(dependency.getInterface());
                } else {
                    hashSet.add(dependency.getInterface());
                }
            } else if (dependency.isDeferred()) {
                hashSet3.add(dependency.getInterface());
            } else if (dependency.isSet()) {
                hashSet5.add(dependency.getInterface());
            } else {
                hashSet2.add(dependency.getInterface());
            }
        }
        if (!component.getPublishedEvents().isEmpty()) {
            hashSet.add(Qualified.unqualified(Publisher.class));
        }
        this.f69086a = Collections.unmodifiableSet(hashSet);
        this.f69087b = Collections.unmodifiableSet(hashSet2);
        this.f69088c = Collections.unmodifiableSet(hashSet3);
        this.f69089d = Collections.unmodifiableSet(hashSet4);
        this.f69090e = Collections.unmodifiableSet(hashSet5);
        this.f69091f = component.getPublishedEvents();
        this.f69092g = componentContainer;
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> T get(Class<T> cls) {
        if (this.f69086a.contains(Qualified.unqualified(cls))) {
            T t = (T) this.f69092g.get(cls);
            return !cls.equals(Publisher.class) ? t : (T) new C13679a(this.f69091f, (Publisher) t);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", cls));
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> Deferred<T> getDeferred(Class<T> cls) {
        return getDeferred(Qualified.unqualified(cls));
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> Provider<T> getProvider(Class<T> cls) {
        return getProvider(Qualified.unqualified(cls));
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> Set<T> setOf(Qualified<T> qualified) {
        if (this.f69089d.contains(qualified)) {
            return this.f69092g.setOf(qualified);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Set<%s>.", qualified));
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> Provider<Set<T>> setOfProvider(Class<T> cls) {
        return setOfProvider(Qualified.unqualified(cls));
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> Deferred<T> getDeferred(Qualified<T> qualified) {
        if (this.f69088c.contains(qualified)) {
            return this.f69092g.getDeferred(qualified);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Deferred<%s>.", qualified));
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> Provider<T> getProvider(Qualified<T> qualified) {
        if (this.f69087b.contains(qualified)) {
            return this.f69092g.getProvider(qualified);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<%s>.", qualified));
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> Provider<Set<T>> setOfProvider(Qualified<T> qualified) {
        if (this.f69090e.contains(qualified)) {
            return this.f69092g.setOfProvider(qualified);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", qualified));
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> T get(Qualified<T> qualified) {
        if (this.f69086a.contains(qualified)) {
            return (T) this.f69092g.get(qualified);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", qualified));
    }
}
