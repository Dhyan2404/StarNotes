package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@vnf
/* renamed from: com.sunia.HTREnginev2.i5 */
/* loaded from: classes6.dex */
public abstract class AbstractC13862i5<N, E> implements rtj<N, E> {

    /* renamed from: a */
    public final Map<E, N> f72878a;

    public AbstractC13862i5(Map<E, N> map) {
        this.f72878a = (Map) Preconditions.checkNotNull(map);
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: a */
    public Set<N> mo54676a() {
        return mo52942b();
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: c */
    public Set<N> mo54677c() {
        return mo52942b();
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: d */
    public N mo52943d(E e) {
        N remove = this.f72878a.remove(e);
        Objects.requireNonNull(remove);
        return remove;
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: e */
    public Set<E> mo52944e() {
        return mo52950k();
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: f */
    public N mo52945f(E e) {
        N n = this.f72878a.get(e);
        Objects.requireNonNull(n);
        return n;
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: g */
    public Set<E> mo52946g() {
        return mo52950k();
    }

    @Override // com.sunia.HTREnginev2.rtj
    @CheckForNull
    /* renamed from: h */
    public N mo52947h(E e, boolean z) {
        if (z) {
            return null;
        }
        return mo52943d(e);
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: i */
    public void mo52948i(E e, N n) {
        Preconditions.checkState(this.f72878a.put(e, n) == null);
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: j */
    public void mo52949j(E e, N n, boolean z) {
        if (z) {
            return;
        }
        mo52948i(e, n);
    }

    @Override // com.sunia.HTREnginev2.rtj
    /* renamed from: k */
    public Set<E> mo52950k() {
        return Collections.unmodifiableSet(this.f72878a.keySet());
    }
}
