package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.Lists;
import com.google.common.util.concurrent.AggregateFuture;
import com.sunia.HTREnginev2.pnf;
import com.sunia.HTREnginev2.uvk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.annotation.CheckForNull;

@GwtCompatible(emulated = true)
@pnf
/* renamed from: com.google.common.util.concurrent.d */
/* loaded from: classes6.dex */
public abstract class AbstractC6412d<V, C> extends AggregateFuture<V, C> {

    /* renamed from: u */
    @CheckForNull
    public List<b<V>> f35470u;

    /* renamed from: com.google.common.util.concurrent.d$a */
    /* loaded from: classes6.dex */
    public static final class a<V> extends AbstractC6412d<V, List<V>> {
        public a(ImmutableCollection<? extends ListenableFuture<? extends V>> immutableCollection, boolean z) {
            super(immutableCollection, z);
            m27619M();
        }

        @Override // com.google.common.util.concurrent.AbstractC6412d
        /* renamed from: T, reason: merged with bridge method [inline-methods] */
        public List<V> mo27871S(List<b<V>> list) {
            ArrayList newArrayListWithCapacity = Lists.newArrayListWithCapacity(list.size());
            Iterator<b<V>> it2 = list.iterator();
            while (it2.hasNext()) {
                b<V> next = it2.next();
                newArrayListWithCapacity.add(next != null ? next.f35471a : null);
            }
            return Collections.unmodifiableList(newArrayListWithCapacity);
        }
    }

    /* renamed from: com.google.common.util.concurrent.d$b */
    /* loaded from: classes6.dex */
    public static final class b<V> {

        /* renamed from: a */
        public V f35471a;

        public b(V v) {
            this.f35471a = v;
        }
    }

    public AbstractC6412d(ImmutableCollection<? extends ListenableFuture<? extends V>> immutableCollection, boolean z) {
        super(immutableCollection, z, true);
        List<b<V>> emptyList = immutableCollection.isEmpty() ? Collections.emptyList() : Lists.newArrayListWithCapacity(immutableCollection.size());
        for (int i = 0; i < immutableCollection.size(); i++) {
            emptyList.add(null);
        }
        this.f35470u = emptyList;
    }

    @Override // com.google.common.util.concurrent.AggregateFuture
    /* renamed from: H */
    public final void mo27614H(int i, @uvk V v) {
        List<b<V>> list = this.f35470u;
        if (list != null) {
            list.set(i, new b<>(v));
        }
    }

    @Override // com.google.common.util.concurrent.AggregateFuture
    /* renamed from: K */
    public final void mo27617K() {
        List<b<V>> list = this.f35470u;
        if (list != null) {
            set(mo27871S(list));
        }
    }

    @Override // com.google.common.util.concurrent.AggregateFuture
    /* renamed from: R */
    public void mo27621R(AggregateFuture.ReleaseResourcesReason releaseResourcesReason) {
        super.mo27621R(releaseResourcesReason);
        this.f35470u = null;
    }

    /* renamed from: S */
    public abstract C mo27871S(List<b<V>> list);
}
