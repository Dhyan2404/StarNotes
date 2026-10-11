package com.sunia.HTREnginev2;

import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.p118xs.AttributePSVI;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xpointer.XPointerPart;

/* loaded from: classes13.dex */
public final class pom implements XPointerPart {

    /* renamed from: a */
    public String f81056a;

    /* renamed from: c */
    public SymbolTable f81058c;

    /* renamed from: b */
    public boolean f81057b = false;

    /* renamed from: d */
    public int f81059d = 0;

    public pom() {
    }

    /* renamed from: a */
    public String m56350a(XMLAttributes xMLAttributes, int i) throws XNIException {
        return null;
    }

    /* renamed from: b */
    public String m56351b(XMLAttributes xMLAttributes, int i) throws XNIException {
        if (xMLAttributes.getType(i).equals("ID")) {
            return xMLAttributes.getValue(i);
        }
        return null;
    }

    /* renamed from: c */
    public String m56352c(XMLAttributes xMLAttributes, int i) throws XNIException {
        AttributePSVI attributePSVI = (AttributePSVI) xMLAttributes.getAugmentations(i).getItem("ATTRIBUTE_PSVI");
        if (attributePSVI == null) {
            return null;
        }
        XSTypeDefinition memberTypeDefinition = attributePSVI.getMemberTypeDefinition();
        if (memberTypeDefinition != null) {
            memberTypeDefinition = attributePSVI.getTypeDefinition();
        }
        if (memberTypeDefinition == null || !((XSSimpleType) memberTypeDefinition).isIDType()) {
            return null;
        }
        return attributePSVI.getSchemaNormalizedValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x002c, code lost:
    
        if (r4.equals(r1.f81056a) == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002e, code lost:
    
        return true;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m56353d(org.apache.xerces.xni.QName r2, org.apache.xerces.xni.XMLAttributes r3, org.apache.xerces.xni.Augmentations r4, int r5) throws org.apache.xerces.xni.XNIException {
        /*
            r1 = this;
            r2 = 0
            r4 = 0
            if (r3 == 0) goto L24
            r5 = r2
        L5:
            int r0 = r3.getLength()
            if (r5 < r0) goto Lc
            goto L24
        Lc:
            java.lang.String r4 = r1.m56352c(r3, r5)
            if (r4 == 0) goto L13
            goto L24
        L13:
            java.lang.String r4 = r1.m56350a(r3, r5)
            if (r4 == 0) goto L1a
            goto L24
        L1a:
            java.lang.String r4 = r1.m56351b(r3, r5)
            if (r4 == 0) goto L21
            goto L24
        L21:
            int r5 = r5 + 1
            goto L5
        L24:
            if (r4 == 0) goto L30
            java.lang.String r1 = r1.f81056a
            boolean r1 = r4.equals(r1)
            if (r1 == 0) goto L30
            r1 = 1
            return r1
        L30:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.pom.m56353d(org.apache.xerces.xni.QName, org.apache.xerces.xni.XMLAttributes, org.apache.xerces.xni.Augmentations, int):boolean");
    }

    @Override // org.apache.xerces.xpointer.XPointerPart
    public String getSchemeData() {
        return null;
    }

    @Override // org.apache.xerces.xpointer.XPointerPart
    public String getSchemeName() {
        return this.f81056a;
    }

    @Override // org.apache.xerces.xpointer.XPointerPart
    public boolean isChildFragmentResolved() {
        return this.f81057b && this.f81059d > 0;
    }

    @Override // org.apache.xerces.xpointer.XPointerPart
    public boolean isFragmentResolved() {
        return this.f81057b;
    }

    @Override // org.apache.xerces.xpointer.XPointerPart
    public void parseXPointer(String str) throws XNIException {
        this.f81056a = str;
        this.f81057b = false;
    }

    @Override // org.apache.xerces.xpointer.XPointerPart
    public boolean resolveXPointer(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations, int i) throws XNIException {
        int i2 = this.f81059d;
        if (i2 == 0) {
            this.f81057b = false;
        }
        if (i == 0) {
            if (i2 == 0) {
                this.f81057b = m56353d(qName, xMLAttributes, augmentations, i);
            }
            if (this.f81057b) {
                this.f81059d++;
            }
        } else if (i == 2) {
            if (i2 == 0) {
                this.f81057b = m56353d(qName, xMLAttributes, augmentations, i);
            }
        } else if (this.f81057b) {
            this.f81059d = i2 - 1;
        }
        return this.f81057b;
    }

    @Override // org.apache.xerces.xpointer.XPointerPart
    public void setSchemeData(String str) {
    }

    @Override // org.apache.xerces.xpointer.XPointerPart
    public void setSchemeName(String str) {
        this.f81056a = str;
    }

    public pom(SymbolTable symbolTable) {
        this.f81058c = symbolTable;
    }
}
