package org.w3c.dom.bootstrap;

import java.util.Vector;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DOMImplementationList;

/* renamed from: org.w3c.dom.bootstrap.a */
/* loaded from: classes16.dex */
public class C20476a implements DOMImplementationList {

    /* renamed from: a */
    public final /* synthetic */ Vector f116072a;

    /* renamed from: b */
    public final /* synthetic */ DOMImplementationRegistry f116073b;

    public C20476a(DOMImplementationRegistry dOMImplementationRegistry, Vector vector) {
        this.f116073b = dOMImplementationRegistry;
        this.f116072a = vector;
    }

    @Override // org.w3c.dom.DOMImplementationList
    public int getLength() {
        return this.f116072a.size();
    }

    @Override // org.w3c.dom.DOMImplementationList
    public DOMImplementation item(int i) {
        if (i >= 0 && i < this.f116072a.size()) {
            try {
                return (DOMImplementation) this.f116072a.elementAt(i);
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
        }
        return null;
    }
}
