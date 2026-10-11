package dagger.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes10.dex */
public final class SetFactory<T> implements Factory<Set<T>> {

    /* renamed from: c */
    public static final Factory<Set<Object>> f94552c = InstanceFactory.create(Collections.emptySet());

    /* renamed from: a */
    public final List<Provider<T>> f94553a;

    /* renamed from: b */
    public final List<Provider<Collection<T>>> f94554b;

    /* loaded from: classes10.dex */
    public static final class Builder<T> {

        /* renamed from: c */
        public static final /* synthetic */ boolean f94555c = false;

        /* renamed from: a */
        public final List<Provider<T>> f94556a;

        /* renamed from: b */
        public final List<Provider<Collection<T>>> f94557b;

        public Builder<T> addCollectionProvider(Provider<? extends Collection<? extends T>> provider) {
            this.f94557b.add(provider);
            return this;
        }

        public Builder<T> addProvider(Provider<? extends T> provider) {
            this.f94556a.add(provider);
            return this;
        }

        public SetFactory<T> build() {
            return new SetFactory<>(this.f94556a, this.f94557b);
        }

        public Builder(int i, int i2) {
            this.f94556a = DaggerCollections.presizedList(i);
            this.f94557b = DaggerCollections.presizedList(i2);
        }

        @Deprecated
        public Builder<T> addCollectionProvider(javax.inject.Provider<? extends Collection<? extends T>> provider) {
            return addCollectionProvider((Provider) Providers.asDaggerProvider(provider));
        }

        @Deprecated
        public Builder<T> addProvider(javax.inject.Provider<? extends T> provider) {
            return addProvider((Provider) Providers.asDaggerProvider(provider));
        }
    }

    public static <T> Builder<T> builder(int i, int i2) {
        return new Builder<>(i, i2);
    }

    public static <T> Factory<Set<T>> empty() {
        return (Factory<Set<T>>) f94552c;
    }

    public SetFactory(List<Provider<T>> list, List<Provider<Collection<T>>> list2) {
        this.f94553a = list;
        this.f94554b = list2;
    }

    @Override // javax.inject.Provider
    public Set<T> get() {
        int size = this.f94553a.size();
        ArrayList arrayList = new ArrayList(this.f94554b.size());
        int size2 = this.f94554b.size();
        for (int i = 0; i < size2; i++) {
            Collection<T> collection = this.f94554b.get(i).get();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet m60904b = DaggerCollections.m60904b(size);
        int size3 = this.f94553a.size();
        for (int i2 = 0; i2 < size3; i2++) {
            m60904b.add(Preconditions.checkNotNull(this.f94553a.get(i2).get()));
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            Iterator it2 = ((Collection) arrayList.get(i3)).iterator();
            while (it2.hasNext()) {
                m60904b.add(Preconditions.checkNotNull(it2.next()));
            }
        }
        return Collections.unmodifiableSet(m60904b);
    }
}
