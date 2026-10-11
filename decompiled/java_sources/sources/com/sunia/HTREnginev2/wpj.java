package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.UnmodifiableIterator;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

@vnf
/* loaded from: classes6.dex */
public abstract class wpj<E> extends AbstractSet<E> {

    /* renamed from: e */
    public final Map<E, ?> f88869e;

    /* renamed from: f */
    public final Object f88870f;

    /* renamed from: com.sunia.HTREnginev2.wpj$a */
    /* loaded from: classes6.dex */
    public class C14617a extends AbstractIterator<E> {

        /* renamed from: g */
        public final /* synthetic */ Iterator f88871g;

        public C14617a(Iterator it2) {
            this.f88871g = it2;
        }

        @Override // com.google.common.collect.AbstractIterator
        @CheckForNull
        public E computeNext() {
            while (this.f88871g.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f88871g.next();
                if (wpj.this.f88870f.equals(entry.getValue())) {
                    return (E) entry.getKey();
                }
            }
            return endOfData();
        }
    }

    public wpj(Map<E, ?> map, Object obj) {
        this.f88869e = (Map) Preconditions.checkNotNull(map);
        this.f88870f = Preconditions.checkNotNull(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public UnmodifiableIterator<E> iterator() {
        return new C14617a(this.f88869e.entrySet().iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@CheckForNull Object obj) {
        return this.f88870f.equals(this.f88869e.get(obj));
    }
}
