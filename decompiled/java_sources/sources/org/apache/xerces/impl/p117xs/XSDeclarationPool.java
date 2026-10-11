package org.apache.xerces.impl.p117xs;

import org.apache.xerces.impl.p115dv.p116xs.SchemaDVFactoryImpl;
import org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl;

/* loaded from: classes13.dex */
public final class XSDeclarationPool {

    /* renamed from: p */
    public static final int f112895p = 8;

    /* renamed from: q */
    public static final int f112896q = 256;

    /* renamed from: r */
    public static final int f112897r = 255;

    /* renamed from: s */
    public static final int f112898s = 4;

    /* renamed from: a */
    public XSElementDecl[][] f112899a = new XSElementDecl[4];

    /* renamed from: b */
    public int f112900b = 0;

    /* renamed from: c */
    public XSParticleDecl[][] f112901c = new XSParticleDecl[4];

    /* renamed from: d */
    public int f112902d = 0;

    /* renamed from: e */
    public XSModelGroupImpl[][] f112903e = new XSModelGroupImpl[4];

    /* renamed from: f */
    public int f112904f = 0;

    /* renamed from: g */
    public XSAttributeDecl[][] f112905g = new XSAttributeDecl[4];

    /* renamed from: h */
    public int f112906h = 0;

    /* renamed from: i */
    public XSComplexTypeDecl[][] f112907i = new XSComplexTypeDecl[4];

    /* renamed from: j */
    public int f112908j = 0;

    /* renamed from: k */
    public XSSimpleTypeDecl[][] f112909k = new XSSimpleTypeDecl[4];

    /* renamed from: l */
    public int f112910l = 0;

    /* renamed from: m */
    public XSAttributeUseImpl[][] f112911m = new XSAttributeUseImpl[4];

    /* renamed from: n */
    public int f112912n = 0;

    /* renamed from: o */
    public SchemaDVFactoryImpl f112913o;

    /* renamed from: h */
    public static XSSimpleTypeDecl[][] m70223h(XSSimpleTypeDecl[][] xSSimpleTypeDeclArr, int i) {
        XSSimpleTypeDecl[][] xSSimpleTypeDeclArr2 = new XSSimpleTypeDecl[i];
        System.arraycopy(xSSimpleTypeDeclArr, 0, xSSimpleTypeDeclArr2, 0, xSSimpleTypeDeclArr.length);
        return xSSimpleTypeDeclArr2;
    }

    /* renamed from: i */
    public static XSAttributeDecl[][] m70224i(XSAttributeDecl[][] xSAttributeDeclArr, int i) {
        XSAttributeDecl[][] xSAttributeDeclArr2 = new XSAttributeDecl[i];
        System.arraycopy(xSAttributeDeclArr, 0, xSAttributeDeclArr2, 0, xSAttributeDeclArr.length);
        return xSAttributeDeclArr2;
    }

    /* renamed from: j */
    public static XSAttributeUseImpl[][] m70225j(XSAttributeUseImpl[][] xSAttributeUseImplArr, int i) {
        XSAttributeUseImpl[][] xSAttributeUseImplArr2 = new XSAttributeUseImpl[i];
        System.arraycopy(xSAttributeUseImplArr, 0, xSAttributeUseImplArr2, 0, xSAttributeUseImplArr.length);
        return xSAttributeUseImplArr2;
    }

    /* renamed from: k */
    public static XSComplexTypeDecl[][] m70226k(XSComplexTypeDecl[][] xSComplexTypeDeclArr, int i) {
        XSComplexTypeDecl[][] xSComplexTypeDeclArr2 = new XSComplexTypeDecl[i];
        System.arraycopy(xSComplexTypeDeclArr, 0, xSComplexTypeDeclArr2, 0, xSComplexTypeDeclArr.length);
        return xSComplexTypeDeclArr2;
    }

    /* renamed from: l */
    public static XSElementDecl[][] m70227l(XSElementDecl[][] xSElementDeclArr, int i) {
        XSElementDecl[][] xSElementDeclArr2 = new XSElementDecl[i];
        System.arraycopy(xSElementDeclArr, 0, xSElementDeclArr2, 0, xSElementDeclArr.length);
        return xSElementDeclArr2;
    }

    /* renamed from: m */
    public static XSModelGroupImpl[][] m70228m(XSModelGroupImpl[][] xSModelGroupImplArr, int i) {
        XSModelGroupImpl[][] xSModelGroupImplArr2 = new XSModelGroupImpl[i];
        System.arraycopy(xSModelGroupImplArr, 0, xSModelGroupImplArr2, 0, xSModelGroupImplArr.length);
        return xSModelGroupImplArr2;
    }

    /* renamed from: n */
    public static XSParticleDecl[][] m70229n(XSParticleDecl[][] xSParticleDeclArr, int i) {
        XSParticleDecl[][] xSParticleDeclArr2 = new XSParticleDecl[i];
        System.arraycopy(xSParticleDeclArr, 0, xSParticleDeclArr2, 0, xSParticleDeclArr.length);
        return xSParticleDeclArr2;
    }

    /* renamed from: a */
    public final boolean m70230a(int i) {
        XSAttributeDecl[][] xSAttributeDeclArr = this.f112905g;
        if (i >= xSAttributeDeclArr.length) {
            this.f112905g = m70224i(xSAttributeDeclArr, xSAttributeDeclArr.length * 2);
        } else if (xSAttributeDeclArr[i] != null) {
            return false;
        }
        this.f112905g[i] = new XSAttributeDecl[256];
        return true;
    }

    /* renamed from: b */
    public final boolean m70231b(int i) {
        XSAttributeUseImpl[][] xSAttributeUseImplArr = this.f112911m;
        if (i >= xSAttributeUseImplArr.length) {
            this.f112911m = m70225j(xSAttributeUseImplArr, xSAttributeUseImplArr.length * 2);
        } else if (xSAttributeUseImplArr[i] != null) {
            return false;
        }
        this.f112911m[i] = new XSAttributeUseImpl[256];
        return true;
    }

    /* renamed from: c */
    public final boolean m70232c(int i) {
        XSComplexTypeDecl[][] xSComplexTypeDeclArr = this.f112907i;
        if (i >= xSComplexTypeDeclArr.length) {
            this.f112907i = m70226k(xSComplexTypeDeclArr, xSComplexTypeDeclArr.length * 2);
        } else if (xSComplexTypeDeclArr[i] != null) {
            return false;
        }
        this.f112907i[i] = new XSComplexTypeDecl[256];
        return true;
    }

    /* renamed from: d */
    public final boolean m70233d(int i) {
        XSElementDecl[][] xSElementDeclArr = this.f112899a;
        if (i >= xSElementDeclArr.length) {
            this.f112899a = m70227l(xSElementDeclArr, xSElementDeclArr.length * 2);
        } else if (xSElementDeclArr[i] != null) {
            return false;
        }
        this.f112899a[i] = new XSElementDecl[256];
        return true;
    }

    /* renamed from: e */
    public final boolean m70234e(int i) {
        XSModelGroupImpl[][] xSModelGroupImplArr = this.f112903e;
        if (i >= xSModelGroupImplArr.length) {
            this.f112903e = m70228m(xSModelGroupImplArr, xSModelGroupImplArr.length * 2);
        } else if (xSModelGroupImplArr[i] != null) {
            return false;
        }
        this.f112903e[i] = new XSModelGroupImpl[256];
        return true;
    }

    /* renamed from: f */
    public final boolean m70235f(int i) {
        XSParticleDecl[][] xSParticleDeclArr = this.f112901c;
        if (i >= xSParticleDeclArr.length) {
            this.f112901c = m70229n(xSParticleDeclArr, xSParticleDeclArr.length * 2);
        } else if (xSParticleDeclArr[i] != null) {
            return false;
        }
        this.f112901c[i] = new XSParticleDecl[256];
        return true;
    }

    /* renamed from: g */
    public final boolean m70236g(int i) {
        XSSimpleTypeDecl[][] xSSimpleTypeDeclArr = this.f112909k;
        if (i >= xSSimpleTypeDeclArr.length) {
            this.f112909k = m70223h(xSSimpleTypeDeclArr, xSSimpleTypeDeclArr.length * 2);
        } else if (xSSimpleTypeDeclArr[i] != null) {
            return false;
        }
        this.f112909k[i] = new XSSimpleTypeDecl[256];
        return true;
    }

    public final XSAttributeDecl getAttributeDecl() {
        int i = this.f112906h;
        int i2 = i >> 8;
        int i3 = i & 255;
        m70230a(i2);
        XSAttributeDecl[] xSAttributeDeclArr = this.f112905g[i2];
        XSAttributeDecl xSAttributeDecl = xSAttributeDeclArr[i3];
        if (xSAttributeDecl == null) {
            xSAttributeDeclArr[i3] = new XSAttributeDecl();
        } else {
            xSAttributeDecl.reset();
        }
        this.f112906h++;
        return this.f112905g[i2][i3];
    }

    public final XSAttributeUseImpl getAttributeUse() {
        int i = this.f112912n;
        int i2 = i >> 8;
        int i3 = i & 255;
        m70231b(i2);
        XSAttributeUseImpl[] xSAttributeUseImplArr = this.f112911m[i2];
        XSAttributeUseImpl xSAttributeUseImpl = xSAttributeUseImplArr[i3];
        if (xSAttributeUseImpl == null) {
            xSAttributeUseImplArr[i3] = new XSAttributeUseImpl();
        } else {
            xSAttributeUseImpl.reset();
        }
        this.f112912n++;
        return this.f112911m[i2][i3];
    }

    public final XSComplexTypeDecl getComplexTypeDecl() {
        int i = this.f112908j;
        int i2 = i >> 8;
        int i3 = i & 255;
        m70232c(i2);
        XSComplexTypeDecl[] xSComplexTypeDeclArr = this.f112907i[i2];
        XSComplexTypeDecl xSComplexTypeDecl = xSComplexTypeDeclArr[i3];
        if (xSComplexTypeDecl == null) {
            xSComplexTypeDeclArr[i3] = new XSComplexTypeDecl();
        } else {
            xSComplexTypeDecl.reset();
        }
        this.f112908j++;
        return this.f112907i[i2][i3];
    }

    public final XSElementDecl getElementDecl() {
        int i = this.f112900b;
        int i2 = i >> 8;
        int i3 = i & 255;
        m70233d(i2);
        XSElementDecl[] xSElementDeclArr = this.f112899a[i2];
        XSElementDecl xSElementDecl = xSElementDeclArr[i3];
        if (xSElementDecl == null) {
            xSElementDeclArr[i3] = new XSElementDecl();
        } else {
            xSElementDecl.reset();
        }
        this.f112900b++;
        return this.f112899a[i2][i3];
    }

    public final XSModelGroupImpl getModelGroup() {
        int i = this.f112904f;
        int i2 = i >> 8;
        int i3 = i & 255;
        m70234e(i2);
        XSModelGroupImpl[] xSModelGroupImplArr = this.f112903e[i2];
        XSModelGroupImpl xSModelGroupImpl = xSModelGroupImplArr[i3];
        if (xSModelGroupImpl == null) {
            xSModelGroupImplArr[i3] = new XSModelGroupImpl();
        } else {
            xSModelGroupImpl.reset();
        }
        this.f112904f++;
        return this.f112903e[i2][i3];
    }

    public final XSParticleDecl getParticleDecl() {
        int i = this.f112902d;
        int i2 = i >> 8;
        int i3 = i & 255;
        m70235f(i2);
        XSParticleDecl[] xSParticleDeclArr = this.f112901c[i2];
        XSParticleDecl xSParticleDecl = xSParticleDeclArr[i3];
        if (xSParticleDecl == null) {
            xSParticleDeclArr[i3] = new XSParticleDecl();
        } else {
            xSParticleDecl.reset();
        }
        this.f112902d++;
        return this.f112901c[i2][i3];
    }

    public final XSSimpleTypeDecl getSimpleTypeDecl() {
        int i = this.f112910l;
        int i2 = i >> 8;
        int i3 = i & 255;
        m70236g(i2);
        XSSimpleTypeDecl[] xSSimpleTypeDeclArr = this.f112909k[i2];
        XSSimpleTypeDecl xSSimpleTypeDecl = xSSimpleTypeDeclArr[i3];
        if (xSSimpleTypeDecl == null) {
            xSSimpleTypeDeclArr[i3] = this.f112913o.newXSSimpleTypeDecl();
        } else {
            xSSimpleTypeDecl.reset();
        }
        this.f112910l++;
        return this.f112909k[i2][i3];
    }

    public void reset() {
        this.f112900b = 0;
        this.f112902d = 0;
        this.f112904f = 0;
        this.f112910l = 0;
        this.f112908j = 0;
        this.f112906h = 0;
        this.f112912n = 0;
    }

    public void setDVFactory(SchemaDVFactoryImpl schemaDVFactoryImpl) {
        this.f112913o = schemaDVFactoryImpl;
    }
}
