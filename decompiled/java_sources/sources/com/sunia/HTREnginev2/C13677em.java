package com.sunia.HTREnginev2;

import org.apache.xerces.impl.dtd.DTDGrammar;
import org.apache.xerces.impl.dtd.XMLDTDDescription;
import org.apache.xerces.impl.dtd.XMLElementDecl;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.XNIException;

/* renamed from: com.sunia.HTREnginev2.em */
/* loaded from: classes13.dex */
public final class C13677em extends DTDGrammar {

    /* renamed from: g1 */
    public boolean f69060g1;

    /* renamed from: h1 */
    public int f69061h1;

    /* renamed from: i1 */
    public short[] f69062i1;

    /* renamed from: j1 */
    public int[][] f69063j1;

    /* renamed from: k1 */
    public int[] f69064k1;

    public C13677em(SymbolTable symbolTable, XMLDTDDescription xMLDTDDescription) {
        super(symbolTable, xMLDTDDescription);
        this.f69061h1 = 0;
        this.f69062i1 = null;
    }

    @Override // org.apache.xerces.impl.dtd.DTDGrammar
    public final void addContentSpecToElement(XMLElementDecl xMLElementDecl) {
        setContentSpecIndex(this.fCurrentElementIndex, this.f69064k1[0] > 0 ? this.f69063j1[0][0] : -1);
    }

    @Override // org.apache.xerces.impl.dtd.DTDGrammar, org.apache.xerces.xni.XMLDTDContentModelHandler
    public final void element(String str, Augmentations augmentations) throws XNIException {
        m53978w(addUniqueLeafNode(str));
    }

    @Override // org.apache.xerces.impl.dtd.DTDGrammar, org.apache.xerces.xni.XMLDTDHandler
    public final void endDTD(Augmentations augmentations) throws XNIException {
        super.endDTD(augmentations);
        this.f69062i1 = null;
        this.f69063j1 = null;
        this.f69064k1 = null;
    }

    @Override // org.apache.xerces.impl.dtd.DTDGrammar, org.apache.xerces.xni.XMLDTDContentModelHandler
    public final void endGroup(Augmentations augmentations) throws XNIException {
        int i = this.f69064k1[this.f69061h1];
        this.f69061h1--;
        m53978w(i > 0 ? m53977v(0, i - 1) : addUniqueLeafNode(null));
    }

    @Override // org.apache.xerces.impl.dtd.DTDGrammar, org.apache.xerces.xni.XMLDTDContentModelHandler
    public final void occurrence(short s, Augmentations augmentations) throws XNIException {
        if (this.f69060g1) {
            return;
        }
        int[] iArr = this.f69064k1;
        int i = this.f69061h1;
        int i2 = iArr[i] - 1;
        if (s == 2) {
            int[] iArr2 = this.f69063j1[i];
            iArr2[i2] = addContentSpecNode((short) 1, iArr2[i2], -1);
        } else if (s == 3) {
            int[] iArr3 = this.f69063j1[i];
            iArr3[i2] = addContentSpecNode((short) 2, iArr3[i2], -1);
        } else if (s == 4) {
            int[] iArr4 = this.f69063j1[i];
            iArr4[i2] = addContentSpecNode((short) 3, iArr4[i2], -1);
        }
    }

    @Override // org.apache.xerces.impl.dtd.DTDGrammar, org.apache.xerces.xni.XMLDTDContentModelHandler
    public final void pcdata(Augmentations augmentations) throws XNIException {
        this.f69060g1 = true;
    }

    @Override // org.apache.xerces.impl.dtd.DTDGrammar, org.apache.xerces.xni.XMLDTDContentModelHandler
    public final void separator(short s, Augmentations augmentations) throws XNIException {
        if (s == 0) {
            this.f69062i1[this.f69061h1] = 4;
        } else if (s == 1) {
            this.f69062i1[this.f69061h1] = 5;
        }
    }

    @Override // org.apache.xerces.impl.dtd.DTDGrammar, org.apache.xerces.xni.XMLDTDContentModelHandler
    public final void startContentModel(String str, Augmentations augmentations) throws XNIException {
        this.f69061h1 = 0;
        m53979x();
        super.startContentModel(str, augmentations);
    }

    @Override // org.apache.xerces.impl.dtd.DTDGrammar, org.apache.xerces.xni.XMLDTDContentModelHandler
    public final void startGroup(Augmentations augmentations) throws XNIException {
        this.f69061h1++;
        m53979x();
        this.f69060g1 = false;
    }

    /* renamed from: v */
    public final int m53977v(int i, int i2) {
        if (i == i2) {
            return this.f69063j1[this.f69061h1][i];
        }
        int i3 = (i + i2) >>> 1;
        return addContentSpecNode(this.f69062i1[this.f69061h1], m53977v(i, i3), m53977v(i3 + 1, i2));
    }

    /* renamed from: w */
    public final void m53978w(int i) {
        int[][] iArr = this.f69063j1;
        int i2 = this.f69061h1;
        int[] iArr2 = iArr[i2];
        int[] iArr3 = this.f69064k1;
        int i3 = iArr3[i2];
        iArr3[i2] = i3 + 1;
        if (iArr2 == null) {
            iArr2 = new int[8];
            iArr[i2] = iArr2;
        } else if (i3 == iArr2.length) {
            int[] iArr4 = new int[iArr2.length * 2];
            System.arraycopy(iArr2, 0, iArr4, 0, iArr2.length);
            this.f69063j1[this.f69061h1] = iArr4;
            iArr2 = iArr4;
        }
        iArr2[i3] = i;
    }

    /* renamed from: x */
    public final void m53979x() {
        short[] sArr = this.f69062i1;
        if (sArr == null) {
            this.f69062i1 = new short[8];
            this.f69063j1 = new int[8];
            this.f69064k1 = new int[8];
        } else {
            int i = this.f69061h1;
            if (i == sArr.length) {
                short[] sArr2 = new short[i * 2];
                System.arraycopy(sArr, 0, sArr2, 0, i);
                this.f69062i1 = sArr2;
                int i2 = this.f69061h1;
                int[][] iArr = new int[i2 * 2];
                System.arraycopy(this.f69063j1, 0, iArr, 0, i2);
                this.f69063j1 = iArr;
                int i3 = this.f69061h1;
                int[] iArr2 = new int[i3 * 2];
                System.arraycopy(this.f69064k1, 0, iArr2, 0, i3);
                this.f69064k1 = iArr2;
            }
        }
        short[] sArr3 = this.f69062i1;
        int i4 = this.f69061h1;
        sArr3[i4] = -1;
        this.f69064k1[i4] = 0;
    }
}
