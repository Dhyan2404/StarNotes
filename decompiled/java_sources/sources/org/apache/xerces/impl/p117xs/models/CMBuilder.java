package org.apache.xerces.impl.p117xs.models;

import org.apache.xerces.impl.dtd.models.CMNode;
import org.apache.xerces.impl.p117xs.XSComplexTypeDecl;
import org.apache.xerces.impl.p117xs.XSDeclarationPool;
import org.apache.xerces.impl.p117xs.XSElementDecl;
import org.apache.xerces.impl.p117xs.XSModelGroupImpl;
import org.apache.xerces.impl.p117xs.XSParticleDecl;

/* loaded from: classes13.dex */
public class CMBuilder {

    /* renamed from: e */
    public static final XSEmptyCM f112958e = new XSEmptyCM();

    /* renamed from: a */
    public XSDeclarationPool f112959a = null;

    /* renamed from: b */
    public int f112960b;

    /* renamed from: c */
    public int f112961c;

    /* renamed from: d */
    public final CMNodeFactory f112962d;

    public CMBuilder(CMNodeFactory cMNodeFactory) {
        this.f112962d = cMNodeFactory;
    }

    /* renamed from: a */
    public final CMNode m70269a(XSParticleDecl xSParticleDecl) {
        int i;
        int i2 = xSParticleDecl.fMaxOccurs;
        int i3 = xSParticleDecl.fMinOccurs;
        short s = xSParticleDecl.fType;
        if (s == 2 || s == 1) {
            return m70270b(xSParticleDecl, i3, i2);
        }
        CMNode cMNode = null;
        if (s != 3) {
            return null;
        }
        XSModelGroupImpl xSModelGroupImpl = (XSModelGroupImpl) xSParticleDecl.fValue;
        int i4 = 0;
        if (xSModelGroupImpl.fParticleCount == 1 && (i3 != 1 || i2 != 1)) {
            return m70270b(xSModelGroupImpl.fParticles[0], i3, i2);
        }
        int i5 = 0;
        while (true) {
            i = xSModelGroupImpl.fParticleCount;
            if (i4 >= i) {
                break;
            }
            CMNode m70269a = m70269a(xSModelGroupImpl.fParticles[i4]);
            if (m70269a != null) {
                i5++;
                if (cMNode != null) {
                    m70269a = this.f112962d.getCMBinOpNode(xSModelGroupImpl.fCompositor, cMNode, m70269a);
                }
                cMNode = m70269a;
            }
            i4++;
        }
        return (cMNode == null || xSModelGroupImpl.fCompositor != 101 || i5 >= i) ? cMNode : this.f112962d.getCMUniOpNode(5, cMNode);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x009a, code lost:
    
        if (r13 == 0) goto L13;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.apache.xerces.impl.dtd.models.CMNode m70270b(org.apache.xerces.impl.p117xs.XSParticleDecl r12, int r13, int r14) {
        /*
            r11 = this;
            r0 = 1
            if (r13 != r0) goto L1d
            if (r14 != r0) goto L1d
            org.apache.xerces.impl.xs.models.CMNodeFactory r13 = r11.f112962d
            short r14 = r12.fType
            org.apache.xerces.xs.XSTerm r12 = r12.fValue
            int r0 = r11.f112961c
            int r1 = r0 + 1
            r11.f112961c = r1
            int r1 = r11.f112960b
            int r2 = r1 + 1
            r11.f112960b = r2
            org.apache.xerces.impl.dtd.models.CMNode r11 = r13.getCMLeafNode(r14, r12, r0, r1)
            goto La1
        L1d:
            if (r13 != 0) goto L3f
            if (r14 != r0) goto L3f
            org.apache.xerces.impl.xs.models.CMNodeFactory r13 = r11.f112962d
            short r14 = r12.fType
            org.apache.xerces.xs.XSTerm r12 = r12.fValue
            int r0 = r11.f112961c
            int r1 = r0 + 1
            r11.f112961c = r1
            int r1 = r11.f112960b
            int r2 = r1 + 1
            r11.f112960b = r2
            org.apache.xerces.impl.dtd.models.CMNode r12 = r13.getCMLeafNode(r14, r12, r0, r1)
            org.apache.xerces.impl.xs.models.CMNodeFactory r11 = r11.f112962d
            r13 = 5
            org.apache.xerces.impl.dtd.models.CMNode r11 = r11.getCMUniOpNode(r13, r12)
            goto La1
        L3f:
            r1 = 4
            r2 = -1
            if (r13 != 0) goto L62
            if (r14 != r2) goto L62
            org.apache.xerces.impl.xs.models.CMNodeFactory r13 = r11.f112962d
            short r14 = r12.fType
            org.apache.xerces.xs.XSTerm r12 = r12.fValue
            int r0 = r11.f112961c
            int r2 = r0 + 1
            r11.f112961c = r2
            int r2 = r11.f112960b
            int r3 = r2 + 1
            r11.f112960b = r3
            org.apache.xerces.impl.dtd.models.CMNode r12 = r13.getCMLeafNode(r14, r12, r0, r2)
            org.apache.xerces.impl.xs.models.CMNodeFactory r11 = r11.f112962d
        L5d:
            org.apache.xerces.impl.dtd.models.CMNode r11 = r11.getCMUniOpNode(r1, r12)
            goto La1
        L62:
            r3 = 6
            if (r13 != r0) goto L80
            if (r14 != r2) goto L80
            org.apache.xerces.impl.xs.models.CMNodeFactory r13 = r11.f112962d
            short r14 = r12.fType
            org.apache.xerces.xs.XSTerm r12 = r12.fValue
            int r0 = r11.f112961c
            int r1 = r0 + 1
            r11.f112961c = r1
            int r1 = r11.f112960b
            int r2 = r1 + 1
            r11.f112960b = r2
            org.apache.xerces.impl.dtd.models.CMNode r12 = r13.getCMLeafNode(r14, r12, r0, r1)
            org.apache.xerces.impl.xs.models.CMNodeFactory r11 = r11.f112962d
            goto L9d
        L80:
            org.apache.xerces.impl.xs.models.CMNodeFactory r4 = r11.f112962d
            short r5 = r12.fType
            org.apache.xerces.xs.XSTerm r6 = r12.fValue
            int r9 = r11.f112961c
            int r12 = r9 + 1
            r11.f112961c = r12
            int r10 = r11.f112960b
            int r12 = r10 + 1
            r11.f112960b = r12
            r7 = r13
            r8 = r14
            org.apache.xerces.impl.dtd.models.CMNode r12 = r4.getCMRepeatingLeafNode(r5, r6, r7, r8, r9, r10)
            org.apache.xerces.impl.xs.models.CMNodeFactory r11 = r11.f112962d
            if (r13 != 0) goto L9d
            goto L5d
        L9d:
            org.apache.xerces.impl.dtd.models.CMNode r11 = r11.getCMUniOpNode(r3, r12)
        La1:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.models.CMBuilder.m70270b(org.apache.xerces.impl.xs.XSParticleDecl, int, int):org.apache.xerces.impl.dtd.models.CMNode");
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0086, code lost:
    
        if (r3 != null) goto L30;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.apache.xerces.impl.dtd.models.CMNode m70271c(org.apache.xerces.impl.p117xs.XSParticleDecl r10, boolean r11) {
        /*
            r9 = this;
            int r0 = r10.fMaxOccurs
            int r1 = r10.fMinOccurs
            r2 = 2
            r3 = 1
            r4 = 0
            if (r11 == 0) goto L20
            if (r1 <= r3) goto L1a
            if (r0 > r1) goto L17
            boolean r1 = r10.getMaxOccursUnbounded()
            if (r1 == 0) goto L14
            goto L17
        L14:
            r1 = r2
            r5 = r3
            goto L1b
        L17:
            r1 = r3
            r5 = r1
            goto L1b
        L1a:
            r5 = r4
        L1b:
            if (r0 <= r3) goto L21
            r0 = r2
            r5 = r3
            goto L21
        L20:
            r5 = r4
        L21:
            short r6 = r10.fType
            if (r6 == r2) goto L6e
            if (r6 != r3) goto L28
            goto L6e
        L28:
            r2 = 3
            r3 = 0
            if (r6 != r2) goto L89
            org.apache.xerces.xs.XSTerm r10 = r10.fValue
            org.apache.xerces.impl.xs.XSModelGroupImpl r10 = (org.apache.xerces.impl.p117xs.XSModelGroupImpl) r10
            r2 = r4
        L31:
            int r6 = r10.fParticleCount
            if (r4 < r6) goto L4e
            if (r3 == 0) goto L89
            short r10 = r10.fCompositor
            r11 = 101(0x65, float:1.42E-43)
            if (r10 != r11) goto L46
            if (r2 >= r6) goto L46
            org.apache.xerces.impl.xs.models.CMNodeFactory r10 = r9.f112962d
            r11 = 5
            org.apache.xerces.impl.dtd.models.CMNode r3 = r10.getCMUniOpNode(r11, r3)
        L46:
            org.apache.xerces.impl.dtd.models.CMNode r3 = r9.m70275g(r3, r1, r0)
        L4a:
            r3.setIsCompactUPAModel(r5)
            goto L89
        L4e:
            org.apache.xerces.impl.xs.XSParticleDecl[] r6 = r10.fParticles
            r6 = r6[r4]
            org.apache.xerces.impl.dtd.models.CMNode r6 = r9.m70271c(r6, r11)
            if (r6 == 0) goto L6b
            boolean r7 = r6.isCompactedForUPA()
            r5 = r5 | r7
            int r2 = r2 + 1
            if (r3 != 0) goto L63
            r3 = r6
            goto L6b
        L63:
            org.apache.xerces.impl.xs.models.CMNodeFactory r7 = r9.f112962d
            short r8 = r10.fCompositor
            org.apache.xerces.impl.dtd.models.CMNode r3 = r7.getCMBinOpNode(r8, r3, r6)
        L6b:
            int r4 = r4 + 1
            goto L31
        L6e:
            org.apache.xerces.impl.xs.models.CMNodeFactory r11 = r9.f112962d
            org.apache.xerces.xs.XSTerm r10 = r10.fValue
            int r2 = r9.f112961c
            int r3 = r2 + 1
            r9.f112961c = r3
            int r3 = r9.f112960b
            int r4 = r3 + 1
            r9.f112960b = r4
            org.apache.xerces.impl.dtd.models.CMNode r10 = r11.getCMLeafNode(r6, r10, r2, r3)
            org.apache.xerces.impl.dtd.models.CMNode r3 = r9.m70275g(r10, r1, r0)
            if (r3 == 0) goto L89
            goto L4a
        L89:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.models.CMBuilder.m70271c(org.apache.xerces.impl.xs.XSParticleDecl, boolean):org.apache.xerces.impl.dtd.models.CMNode");
    }

    /* renamed from: d */
    public final CMNode m70272d(CMNode cMNode) {
        int type = cMNode.type();
        if (type == 101 || type == 102) {
            XSCMBinOp xSCMBinOp = (XSCMBinOp) cMNode;
            return this.f112962d.getCMBinOpNode(type, m70272d(xSCMBinOp.m70279b()), m70272d(xSCMBinOp.m70280c()));
        }
        if (type == 4 || type == 6 || type == 5) {
            return this.f112962d.getCMUniOpNode(type, m70272d(((XSCMUniOp) cMNode).m70287b()));
        }
        if (type != 1 && type != 2) {
            return cMNode;
        }
        XSCMLeaf xSCMLeaf = (XSCMLeaf) cMNode;
        CMNodeFactory cMNodeFactory = this.f112962d;
        int type2 = xSCMLeaf.type();
        Object m70281b = xSCMLeaf.m70281b();
        int m70282c = xSCMLeaf.m70282c();
        int i = this.f112960b;
        this.f112960b = i + 1;
        return cMNodeFactory.getCMLeafNode(type2, m70281b, m70282c, i);
    }

    /* renamed from: e */
    public XSCMValidator m70273e(XSParticleDecl xSParticleDecl) {
        if (xSParticleDecl.fMaxOccurs == 0) {
            return null;
        }
        XSModelGroupImpl xSModelGroupImpl = (XSModelGroupImpl) xSParticleDecl.fValue;
        XSAllCM xSAllCM = new XSAllCM(xSParticleDecl.fMinOccurs == 0, xSModelGroupImpl.fParticleCount);
        for (int i = 0; i < xSModelGroupImpl.fParticleCount; i++) {
            XSParticleDecl xSParticleDecl2 = xSModelGroupImpl.fParticles[i];
            xSAllCM.addElement((XSElementDecl) xSParticleDecl2.fValue, xSParticleDecl2.fMinOccurs == 0);
        }
        return xSAllCM;
    }

    /* renamed from: f */
    public XSCMValidator m70274f(XSParticleDecl xSParticleDecl, boolean z) {
        this.f112960b = 0;
        this.f112961c = 0;
        CMNode m70269a = m70277i(xSParticleDecl) ? m70269a(xSParticleDecl) : m70271c(xSParticleDecl, z);
        if (m70269a == null) {
            return null;
        }
        return new XSDFACM(m70269a, this.f112960b);
    }

    /* renamed from: g */
    public final CMNode m70275g(CMNode cMNode, int i, int i2) {
        if (i == 1 && i2 == 1) {
            return cMNode;
        }
        if (i == 0 && i2 == 1) {
            return this.f112962d.getCMUniOpNode(5, cMNode);
        }
        if (i == 0 && i2 == -1) {
            return this.f112962d.getCMUniOpNode(4, cMNode);
        }
        if (i == 1 && i2 == -1) {
            return this.f112962d.getCMUniOpNode(6, cMNode);
        }
        if (i2 == -1) {
            return this.f112962d.getCMBinOpNode(102, m70276h(cMNode, i - 1, true), this.f112962d.getCMUniOpNode(6, cMNode));
        }
        CMNode m70276h = i > 0 ? m70276h(cMNode, i, false) : null;
        if (i2 <= i) {
            return m70276h;
        }
        CMNode cMUniOpNode = this.f112962d.getCMUniOpNode(5, cMNode);
        return m70276h == null ? m70276h(cMUniOpNode, i2 - i, false) : this.f112962d.getCMBinOpNode(102, m70276h, m70276h(cMUniOpNode, i2 - i, true));
    }

    public XSCMValidator getContentModel(XSComplexTypeDecl xSComplexTypeDecl, boolean z) {
        short contentType = xSComplexTypeDecl.getContentType();
        if (contentType == 1 || contentType == 0) {
            return null;
        }
        XSParticleDecl xSParticleDecl = (XSParticleDecl) xSComplexTypeDecl.getParticle();
        if (xSParticleDecl == null) {
            return f112958e;
        }
        XSCMValidator m70273e = (xSParticleDecl.fType == 3 && ((XSModelGroupImpl) xSParticleDecl.fValue).fCompositor == 103) ? m70273e(xSParticleDecl) : m70274f(xSParticleDecl, z);
        this.f112962d.resetNodeCount();
        return m70273e == null ? f112958e : m70273e;
    }

    /* renamed from: h */
    public final CMNode m70276h(CMNode cMNode, int i, boolean z) {
        if (i == 0) {
            return null;
        }
        if (i == 1) {
            return z ? m70272d(cMNode) : cMNode;
        }
        int i2 = i / 2;
        return this.f112962d.getCMBinOpNode(102, m70276h(cMNode, i2, z), m70276h(cMNode, i - i2, true));
    }

    /* renamed from: i */
    public final boolean m70277i(XSParticleDecl xSParticleDecl) {
        int i = xSParticleDecl.fMaxOccurs;
        int i2 = xSParticleDecl.fMinOccurs;
        if (xSParticleDecl.fType != 3) {
            return true;
        }
        XSModelGroupImpl xSModelGroupImpl = (XSModelGroupImpl) xSParticleDecl.fValue;
        if (i2 == 1 && i == 1) {
            for (int i3 = 0; i3 < xSModelGroupImpl.fParticleCount; i3++) {
                if (!m70277i(xSModelGroupImpl.fParticles[i3])) {
                    return false;
                }
            }
            return true;
        }
        int i4 = xSModelGroupImpl.fParticleCount;
        if (i4 != 1) {
            return i4 == 0;
        }
        XSParticleDecl xSParticleDecl2 = xSModelGroupImpl.fParticles[0];
        short s = xSParticleDecl2.fType;
        return (s == 1 || s == 2) && xSParticleDecl2.fMinOccurs == 1 && xSParticleDecl2.fMaxOccurs == 1;
    }

    public void setDeclPool(XSDeclarationPool xSDeclarationPool) {
        this.f112959a = xSDeclarationPool;
    }
}
