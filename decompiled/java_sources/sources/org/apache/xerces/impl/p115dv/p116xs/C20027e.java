package org.apache.xerces.impl.p115dv.p116xs;

import org.apache.xerces.impl.p115dv.ValidatedInfo;
import org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl;

/* renamed from: org.apache.xerces.impl.dv.xs.e */
/* loaded from: classes13.dex */
public class C20027e extends XSSimpleTypeDecl.AbstractC20019a {

    /* renamed from: e */
    public final /* synthetic */ XSSimpleTypeDecl f112424e;

    public C20027e(XSSimpleTypeDecl xSSimpleTypeDecl) {
        super(null);
        this.f112424e = xSSimpleTypeDecl;
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x0011 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List, org.apache.xerces.p118xs.datatypes.ObjectList
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean contains(java.lang.Object r4) {
        /*
            r3 = this;
            org.apache.xerces.impl.dv.xs.XSSimpleTypeDecl r0 = r3.f112424e
            org.apache.xerces.impl.dv.ValidatedInfo[] r0 = org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl.m69954a(r0)
            r1 = 0
            if (r0 != 0) goto La
            return r1
        La:
            r0 = r1
        Lb:
            org.apache.xerces.impl.dv.xs.XSSimpleTypeDecl r2 = r3.f112424e
            int r2 = org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl.m69955b(r2)
            if (r0 < r2) goto L14
            return r1
        L14:
            org.apache.xerces.impl.dv.xs.XSSimpleTypeDecl r2 = r3.f112424e
            org.apache.xerces.impl.dv.ValidatedInfo[] r2 = org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl.m69954a(r2)
            r2 = r2[r0]
            java.lang.Object r2 = r2.getActualValue()
            boolean r2 = r2.equals(r4)
            if (r2 == 0) goto L28
            r3 = 1
            return r3
        L28:
            int r0 = r0 + 1
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p115dv.p116xs.C20027e.contains(java.lang.Object):boolean");
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl.AbstractC20019a, org.apache.xerces.p118xs.datatypes.ObjectList
    public int getLength() {
        ValidatedInfo[] validatedInfoArr;
        int i;
        validatedInfoArr = this.f112424e.f112410z;
        if (validatedInfoArr == null) {
            return 0;
        }
        i = this.f112424e.f112377J;
        return i;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl.AbstractC20019a, org.apache.xerces.p118xs.datatypes.ObjectList
    public Object item(int i) {
        ValidatedInfo[] validatedInfoArr;
        if (i < 0 || i >= getLength()) {
            return null;
        }
        validatedInfoArr = this.f112424e.f112410z;
        return validatedInfoArr[i].getActualValue();
    }
}
