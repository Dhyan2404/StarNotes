package dagger.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes10.dex */
public final class SetBuilder<T> {

    /* renamed from: b */
    public static final String f94550b = "Set contributions cannot be null";

    /* renamed from: a */
    public final List<T> f94551a;

    public SetBuilder(int i) {
        this.f94551a = new ArrayList(i);
    }

    public static <T> SetBuilder<T> newSetBuilder(int i) {
        return new SetBuilder<>(i);
    }

    public SetBuilder<T> add(T t) {
        this.f94551a.add(Preconditions.checkNotNull(t, "Set contributions cannot be null"));
        return this;
    }

    public SetBuilder<T> addAll(Collection<? extends T> collection) {
        Iterator<? extends T> it2 = collection.iterator();
        while (it2.hasNext()) {
            Preconditions.checkNotNull(it2.next(), "Set contributions cannot be null");
        }
        this.f94551a.addAll(collection);
        return this;
    }

    public Set<T> build() {
        return this.f94551a.isEmpty() ? Collections.emptySet() : this.f94551a.size() == 1 ? Collections.singleton(this.f94551a.get(0)) : Collections.unmodifiableSet(new HashSet(this.f94551a));
    }
}
