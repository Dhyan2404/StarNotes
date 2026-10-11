package com.google.android.datatransport.runtime.dagger.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;

/* loaded from: classes4.dex */
public final class SetFactory<T> implements Factory<Set<T>> {

    /* renamed from: c */
    public static final Factory<Set<Object>> f21993c = InstanceFactory.create(Collections.emptySet());

    /* renamed from: a */
    public final List<Provider<T>> f21994a;

    /* renamed from: b */
    public final List<Provider<Collection<T>>> f21995b;

    /* loaded from: classes4.dex */
    public static final class Builder<T> {

        /* renamed from: c */
        public static final /* synthetic */ boolean f21996c = false;

        /* renamed from: a */
        public final List<Provider<T>> f21997a;

        /* renamed from: b */
        public final List<Provider<Collection<T>>> f21998b;

        public Builder<T> addCollectionProvider(Provider<? extends Collection<? extends T>> provider) {
            this.f21998b.add(provider);
            return this;
        }

        public Builder<T> addProvider(Provider<? extends T> provider) {
            this.f21997a.add(provider);
            return this;
        }

        public SetFactory<T> build() {
            return new SetFactory<>(this.f21997a, this.f21998b);
        }

        public Builder(int i, int i2) {
            this.f21997a = DaggerCollections.presizedList(i);
            this.f21998b = DaggerCollections.presizedList(i2);
        }
    }

    public static <T> Builder<T> builder(int i, int i2) {
        return new Builder<>(i, i2);
    }

    public static <T> Factory<Set<T>> empty() {
        return (Factory<Set<T>>) f21993c;
    }

    public SetFactory(List<Provider<T>> list, List<Provider<Collection<T>>> list2) {
        this.f21994a = list;
        this.f21995b = list2;
    }

    @Override // javax.inject.Provider
    public Set<T> get() {
        int size = this.f21994a.size();
        ArrayList arrayList = new ArrayList(this.f21995b.size());
        int size2 = this.f21995b.size();
        for (int i = 0; i < size2; i++) {
            Collection<T> collection = this.f21995b.get(i).get();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet m17443b = DaggerCollections.m17443b(size);
        int size3 = this.f21994a.size();
        for (int i2 = 0; i2 < size3; i2++) {
            m17443b.add(Preconditions.checkNotNull(this.f21994a.get(i2).get()));
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            Iterator it2 = ((Collection) arrayList.get(i3)).iterator();
            while (it2.hasNext()) {
                m17443b.add(Preconditions.checkNotNull(it2.next()));
            }
        }
        return Collections.unmodifiableSet(m17443b);
    }
}
