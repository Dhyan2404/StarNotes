package com.sunia.HTREnginev2;

import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.XSModelGroupImpl;
import org.apache.xerces.impl.p117xs.XSParticleDecl;
import org.apache.xerces.impl.p117xs.traversers.AbstractC20056a;
import org.apache.xerces.impl.p117xs.traversers.XSAttributeChecker;
import org.apache.xerces.impl.p117xs.traversers.XSDHandler;
import org.apache.xerces.p118xs.XSObject;
import org.w3c.dom.Element;

/* loaded from: classes13.dex */
public abstract class omo extends AbstractC20056a {

    /* renamed from: o */
    public C14202a f79942o;

    /* renamed from: com.sunia.HTREnginev2.omo$a */
    /* loaded from: classes13.dex */
    public static class C14202a {

        /* renamed from: a */
        public XSParticleDecl[] f79943a = new XSParticleDecl[10];

        /* renamed from: b */
        public int[] f79944b = new int[5];

        /* renamed from: c */
        public int f79945c = 0;

        /* renamed from: a */
        public void m56105a(XSParticleDecl xSParticleDecl) {
            int i = this.f79944b[this.f79945c];
            XSParticleDecl[] xSParticleDeclArr = this.f79943a;
            if (i == xSParticleDeclArr.length) {
                XSParticleDecl[] xSParticleDeclArr2 = new XSParticleDecl[i * 2];
                System.arraycopy(xSParticleDeclArr, 0, xSParticleDeclArr2, 0, i);
                this.f79943a = xSParticleDeclArr2;
            }
            XSParticleDecl[] xSParticleDeclArr3 = this.f79943a;
            int[] iArr = this.f79944b;
            int i2 = this.f79945c;
            int i3 = iArr[i2];
            iArr[i2] = i3 + 1;
            xSParticleDeclArr3[i3] = xSParticleDecl;
        }

        /* renamed from: b */
        public int m56106b() {
            int[] iArr = this.f79944b;
            int i = this.f79945c;
            return iArr[i] - iArr[i - 1];
        }

        /* renamed from: c */
        public XSParticleDecl[] m56107c() {
            int[] iArr = this.f79944b;
            int i = this.f79945c;
            int i2 = iArr[i] - iArr[i - 1];
            XSParticleDecl[] xSParticleDeclArr = null;
            if (i2 != 0) {
                XSParticleDecl[] xSParticleDeclArr2 = new XSParticleDecl[i2];
                System.arraycopy(this.f79943a, iArr[i - 1], xSParticleDeclArr2, 0, i2);
                for (int i3 = this.f79944b[this.f79945c - 1]; i3 < this.f79944b[this.f79945c]; i3++) {
                    this.f79943a[i3] = null;
                }
                xSParticleDeclArr = xSParticleDeclArr2;
            }
            this.f79945c--;
            return xSParticleDeclArr;
        }

        /* renamed from: d */
        public void m56108d() {
            int i = this.f79945c + 1;
            this.f79945c = i;
            int[] iArr = this.f79944b;
            if (i == iArr.length) {
                int[] iArr2 = new int[i * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                this.f79944b = iArr2;
            }
            int[] iArr3 = this.f79944b;
            int i2 = this.f79945c;
            iArr3[i2] = iArr3[i2 - 1];
        }
    }

    public omo(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
        this.f79942o = new C14202a();
    }

    /* renamed from: q */
    public boolean m56100q(XSParticleDecl xSParticleDecl) {
        return xSParticleDecl != null && xSParticleDecl.fType == 3 && ((XSModelGroupImpl) xSParticleDecl.fValue).fCompositor == 103;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00b5  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xerces.impl.p117xs.XSParticleDecl m56101r(org.w3c.dom.Element r15, com.sunia.HTREnginev2.tmo r16, org.apache.xerces.impl.p117xs.SchemaGrammar r17, int r18, org.apache.xerces.p118xs.XSObject r19) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.omo.m56101r(org.w3c.dom.Element, com.sunia.HTREnginev2.tmo, org.apache.xerces.impl.xs.SchemaGrammar, int, org.apache.xerces.xs.XSObject):org.apache.xerces.impl.xs.XSParticleDecl");
    }

    /* renamed from: s */
    public XSParticleDecl m56102s(Element element, tmo tmoVar, SchemaGrammar schemaGrammar, int i, XSObject xSObject) {
        return m56103t(element, tmoVar, schemaGrammar, i, true, xSObject);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00c4  */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.apache.xerces.impl.p117xs.XSParticleDecl m56103t(org.w3c.dom.Element r16, com.sunia.HTREnginev2.tmo r17, org.apache.xerces.impl.p117xs.SchemaGrammar r18, int r19, boolean r20, org.apache.xerces.p118xs.XSObject r21) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.omo.m56103t(org.w3c.dom.Element, com.sunia.HTREnginev2.tmo, org.apache.xerces.impl.xs.SchemaGrammar, int, boolean, org.apache.xerces.xs.XSObject):org.apache.xerces.impl.xs.XSParticleDecl");
    }

    /* renamed from: u */
    public XSParticleDecl m56104u(Element element, tmo tmoVar, SchemaGrammar schemaGrammar, int i, XSObject xSObject) {
        return m56103t(element, tmoVar, schemaGrammar, i, false, xSObject);
    }
}
