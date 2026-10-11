package com.google.android.datatransport.runtime.dagger.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes4.dex */
public final class SetBuilder<T> {

    /* renamed from: b */
    public static final String f21991b = "Set contributions cannot be null";

    /* renamed from: a */
    public final List<T> f21992a;

    public SetBuilder(int i) {
        this.f21992a = new ArrayList(i);
    }

    public static <T> SetBuilder<T> newSetBuilder(int i) {
        return new SetBuilder<>(i);
    }

    public SetBuilder<T> add(T t) {
        this.f21992a.add(Preconditions.checkNotNull(t, "Set contributions cannot be null"));
        return this;
    }

    public SetBuilder<T> addAll(Collection<? extends T> collection) {
        Iterator<? extends T> it2 = collection.iterator();
        while (it2.hasNext()) {
            Preconditions.checkNotNull(it2.next(), "Set contributions cannot be null");
        }
        this.f21992a.addAll(collection);
        return this;
    }

    public Set<T> build() {
        int size = this.f21992a.size();
        return size != 0 ? size != 1 ? Collections.unmodifiableSet(new HashSet(this.f21992a)) : Collections.singleton(this.f21992a.get(0)) : Collections.emptySet();
    }
}
