package org.apache.xerces.impl.p117xs.util;

import java.util.AbstractSet;
import java.util.Iterator;
import org.apache.xerces.impl.p117xs.util.XSNamedMapImpl;

/* renamed from: org.apache.xerces.impl.xs.util.a */
/* loaded from: classes13.dex */
public class C20065a extends AbstractSet {

    /* renamed from: e */
    public final /* synthetic */ int f113264e;

    /* renamed from: f */
    public final /* synthetic */ XSNamedMapImpl.C20063a[] f113265f;

    /* renamed from: g */
    public final /* synthetic */ XSNamedMapImpl f113266g;

    public C20065a(XSNamedMapImpl xSNamedMapImpl, int i, XSNamedMapImpl.C20063a[] c20063aArr) {
        this.f113266g = xSNamedMapImpl;
        this.f113264e = i;
        this.f113265f = c20063aArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return new C20066b(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f113264e;
    }
}
