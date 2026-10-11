package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSModelGroupImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl;
import com.sun.org.apache.xerces.internal.p056xs.XSObject;
import org.w3c.dom.Element;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public abstract class XSDAbstractParticleTraverser extends XSDAbstractTraverser {
    ParticleArray fPArray;

    /* loaded from: classes10.dex */
    public static class ParticleArray {
        XSParticleDecl[] fParticles = new XSParticleDecl[10];
        int[] fPos = new int[5];
        int fContextCount = 0;

        public void addParticle(XSParticleDecl xSParticleDecl) {
            int i = this.fPos[this.fContextCount];
            XSParticleDecl[] xSParticleDeclArr = this.fParticles;
            if (i == xSParticleDeclArr.length) {
                XSParticleDecl[] xSParticleDeclArr2 = new XSParticleDecl[i * 2];
                System.arraycopy(xSParticleDeclArr, 0, xSParticleDeclArr2, 0, i);
                this.fParticles = xSParticleDeclArr2;
            }
            XSParticleDecl[] xSParticleDeclArr3 = this.fParticles;
            int[] iArr = this.fPos;
            int i2 = this.fContextCount;
            int i3 = iArr[i2];
            iArr[i2] = i3 + 1;
            xSParticleDeclArr3[i3] = xSParticleDecl;
        }

        public int getParticleCount() {
            int[] iArr = this.fPos;
            int i = this.fContextCount;
            return iArr[i] - iArr[i - 1];
        }

        public XSParticleDecl[] popContext() {
            int[] iArr = this.fPos;
            int i = this.fContextCount;
            int i2 = iArr[i] - iArr[i - 1];
            XSParticleDecl[] xSParticleDeclArr = null;
            if (i2 != 0) {
                XSParticleDecl[] xSParticleDeclArr2 = new XSParticleDecl[i2];
                System.arraycopy(this.fParticles, iArr[i - 1], xSParticleDeclArr2, 0, i2);
                for (int i3 = this.fPos[this.fContextCount - 1]; i3 < this.fPos[this.fContextCount]; i3++) {
                    this.fParticles[i3] = null;
                }
                xSParticleDeclArr = xSParticleDeclArr2;
            }
            this.fContextCount--;
            return xSParticleDeclArr;
        }

        public void pushContext() {
            int i = this.fContextCount + 1;
            this.fContextCount = i;
            int[] iArr = this.fPos;
            if (i == iArr.length) {
                int[] iArr2 = new int[i * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                this.fPos = iArr2;
            }
            int[] iArr3 = this.fPos;
            int i2 = this.fContextCount;
            iArr3[i2] = iArr3[i2 - 1];
        }
    }

    public XSDAbstractParticleTraverser(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        super(xSDHandler, xSAttributeChecker);
        this.fPArray = new ParticleArray();
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl traverseSeqChoice(org.w3c.dom.Element r16, com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDocumentInfo r17, com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar r18, int r19, boolean r20, com.sun.org.apache.xerces.internal.p056xs.XSObject r21) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDAbstractParticleTraverser.traverseSeqChoice(org.w3c.dom.Element, com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar, int, boolean, com.sun.org.apache.xerces.internal.xs.XSObject):com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl");
    }

    public boolean hasAllContent(XSParticleDecl xSParticleDecl) {
        return xSParticleDecl != null && xSParticleDecl.fType == 3 && ((XSModelGroupImpl) xSParticleDecl.fValue).fCompositor == 103;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl traverseAll(org.w3c.dom.Element r15, com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDocumentInfo r16, com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar r17, int r18, com.sun.org.apache.xerces.internal.p056xs.XSObject r19) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDAbstractParticleTraverser.traverseAll(org.w3c.dom.Element, com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar, int, com.sun.org.apache.xerces.internal.xs.XSObject):com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl");
    }

    public XSParticleDecl traverseChoice(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar, int i, XSObject xSObject) {
        return traverseSeqChoice(element, xSDocumentInfo, schemaGrammar, i, true, xSObject);
    }

    public XSParticleDecl traverseSequence(Element element, XSDocumentInfo xSDocumentInfo, SchemaGrammar schemaGrammar, int i, XSObject xSObject) {
        return traverseSeqChoice(element, xSDocumentInfo, schemaGrammar, i, false, xSObject);
    }
}
