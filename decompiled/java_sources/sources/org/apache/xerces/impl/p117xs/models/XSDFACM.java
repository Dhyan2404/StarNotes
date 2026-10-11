package org.apache.xerces.impl.p117xs.models;

import java.io.PrintStream;
import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.Vector;
import org.apache.xerces.impl.dtd.models.CMNode;
import org.apache.xerces.impl.dtd.models.CMStateSet;
import org.apache.xerces.impl.p117xs.SubstitutionGroupHandler;
import org.apache.xerces.impl.p117xs.XMLSchemaException;
import org.apache.xerces.impl.p117xs.XSConstraints;
import org.apache.xerces.impl.p117xs.XSElementDecl;
import org.apache.xerces.impl.p117xs.XSWildcardDecl;
import org.apache.xerces.xni.QName;
import org.apache.xmlbeans.XmlErrorCodes;

/* loaded from: classes13.dex */
public class XSDFACM implements XSCMValidator {

    /* renamed from: o */
    public static final boolean f112986o = false;

    /* renamed from: p */
    public static final boolean f112987p = false;

    /* renamed from: q */
    public static long f112988q;

    /* renamed from: h */
    public int f112996h;

    /* renamed from: n */
    public boolean f113002n;

    /* renamed from: a */
    public Object[] f112989a = null;

    /* renamed from: b */
    public int[] f112990b = null;

    /* renamed from: c */
    public int[] f112991c = null;

    /* renamed from: d */
    public int f112992d = 0;

    /* renamed from: e */
    public boolean[] f112993e = null;

    /* renamed from: f */
    public CMStateSet[] f112994f = null;

    /* renamed from: g */
    public CMNode f112995g = null;

    /* renamed from: i */
    public XSCMLeaf[] f112997i = null;

    /* renamed from: j */
    public int[] f112998j = null;

    /* renamed from: k */
    public int[][] f112999k = null;

    /* renamed from: l */
    public C20051a[] f113000l = null;

    /* renamed from: m */
    public int f113001m = 0;

    /* renamed from: org.apache.xerces.impl.xs.models.XSDFACM$a */
    /* loaded from: classes13.dex */
    public static final class C20051a {

        /* renamed from: a */
        public final int f113003a;

        /* renamed from: b */
        public final int f113004b;

        /* renamed from: c */
        public final int f113005c;

        public C20051a(XSCMRepeatingLeaf xSCMRepeatingLeaf, int i) {
            this.f113003a = xSCMRepeatingLeaf.m70286g();
            this.f113004b = xSCMRepeatingLeaf.m70285f();
            this.f113005c = i;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("minOccurs=");
            stringBuffer.append(this.f113003a);
            stringBuffer.append(";maxOccurs=");
            int i = this.f113004b;
            stringBuffer.append(i != -1 ? Integer.toString(i) : "unbounded");
            return stringBuffer.toString();
        }
    }

    public XSDFACM(CMNode cMNode, int i) {
        this.f112996h = i;
        this.f113002n = cMNode.isCompactedForUPA();
        m70288a(cMNode);
    }

    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v3, types: [org.apache.xerces.impl.dtd.models.CMStateSet[], org.apache.xerces.impl.dtd.models.CMNode, org.apache.xerces.impl.xs.models.XSCMLeaf[], int[]] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* renamed from: a */
    public final void m70288a(CMNode cMNode) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = this.f112996h;
        this.f112996h = i5 + 1;
        int i6 = 1;
        boolean z = false;
        int i7 = -1;
        XSCMBinOp xSCMBinOp = new XSCMBinOp(102, cMNode, new XSCMLeaf(1, null, -1, i5));
        this.f112995g = xSCMBinOp;
        int i8 = this.f112996h;
        this.f112997i = new XSCMLeaf[i8];
        this.f112998j = new int[i8];
        m70294g(xSCMBinOp);
        this.f112994f = new CMStateSet[this.f112996h];
        int i9 = 0;
        int i10 = 0;
        while (true) {
            int i11 = this.f112996h;
            if (i10 >= i11) {
                break;
            }
            this.f112994f[i10] = new CMStateSet(i11);
            i10++;
            i5 = i5;
        }
        m70289b(this.f112995g);
        int i12 = this.f112996h;
        this.f112989a = new Object[i12];
        this.f112990b = new int[i12];
        this.f112991c = new int[i12];
        this.f112992d = 0;
        int i13 = 0;
        C20051a[] c20051aArr = null;
        while (true) {
            i = this.f112996h;
            if (i13 >= i) {
                break;
            }
            int i14 = i5;
            z = false;
            this.f112989a[i13] = null;
            int m70282c = this.f112997i[i13].m70282c();
            while (true) {
                i4 = this.f112992d;
                i3 = (i3 < i4 && m70282c != this.f112991c[i3]) ? i3 + 1 : 0;
            }
            if (i3 == i4) {
                XSCMLeaf xSCMLeaf = this.f112997i[i13];
                this.f112989a[i4] = xSCMLeaf.m70281b();
                if (xSCMLeaf instanceof XSCMRepeatingLeaf) {
                    if (c20051aArr == null) {
                        c20051aArr = new C20051a[this.f112996h];
                    }
                    int i15 = this.f112992d;
                    c20051aArr[i15] = new C20051a((XSCMRepeatingLeaf) xSCMLeaf, i15);
                }
                int[] iArr = this.f112990b;
                int i16 = this.f112992d;
                iArr[i16] = this.f112998j[i13];
                this.f112991c[i16] = m70282c;
                this.f112992d = i16 + 1;
            }
            i13++;
            i5 = i14;
        }
        int i17 = this.f112992d - 1;
        this.f112992d = i17;
        int[] iArr2 = new int[i + i17];
        int i18 = 0;
        int i19 = 0;
        boolean z2 = z;
        while (i18 < this.f112992d) {
            int i20 = i5;
            int i21 = this.f112991c[i18];
            for (int i22 = 0; i22 < this.f112996h; i22++) {
                if (i21 == this.f112997i[i22].m70282c()) {
                    iArr2[i19] = i22;
                    i19++;
                }
            }
            i7 = -1;
            iArr2[i19] = -1;
            i18++;
            i19++;
            i5 = i20;
            z2 = false;
        }
        int i23 = this.f112996h * 4;
        CMStateSet[] cMStateSetArr = new CMStateSet[i23];
        this.f112993e = new boolean[i23];
        this.f112999k = new int[i23];
        CMStateSet firstPos = this.f112995g.firstPos();
        this.f112999k[0] = m70293f();
        cMStateSetArr[0] = firstPos;
        HashMap hashMap = new HashMap();
        int i24 = 0;
        ?? r4 = z2;
        while (i24 < i6) {
            CMStateSet cMStateSet = cMStateSetArr[i24];
            int[] iArr3 = this.f112999k[i24];
            this.f112993e[i24] = cMStateSet.getBit(i5);
            i24++;
            int i25 = i9;
            int i26 = i6;
            int i27 = i23;
            CMStateSet[] cMStateSetArr2 = cMStateSetArr;
            int i28 = i25;
            CMStateSet cMStateSet2 = r4;
            while (i28 < this.f112992d) {
                if (cMStateSet2 == null) {
                    cMStateSet2 = new CMStateSet(this.f112996h);
                } else {
                    cMStateSet2.zeroBits();
                }
                CMStateSet cMStateSet3 = cMStateSet2;
                int i29 = i25 + 1;
                int i30 = iArr2[i25];
                i25 = i29;
                int i31 = i30;
                while (i31 != i7) {
                    int i32 = i5;
                    CMStateSet[] cMStateSetArr3 = cMStateSetArr2;
                    if (cMStateSet.getBit(i31)) {
                        cMStateSet3.union(this.f112994f[i31]);
                    }
                    i31 = iArr2[i25];
                    i25++;
                    cMStateSetArr2 = cMStateSetArr3;
                    i5 = i32;
                    i7 = -1;
                }
                if (!cMStateSet3.isEmpty()) {
                    Integer num = (Integer) hashMap.get(cMStateSet3);
                    int intValue = num == null ? i26 : num.intValue();
                    if (intValue == i26) {
                        cMStateSetArr2[i26] = cMStateSet3;
                        this.f112999k[i26] = m70293f();
                        hashMap.put(cMStateSet3, new Integer(i26));
                        i26++;
                        cMStateSet3 = null;
                    }
                    iArr3[i28] = intValue;
                    if (i26 == i27) {
                        CMStateSet[] cMStateSetArr4 = cMStateSetArr2;
                        int i33 = (int) (i27 * 1.5d);
                        cMStateSetArr2 = new CMStateSet[i33];
                        boolean[] zArr = new boolean[i33];
                        i2 = i5;
                        int[][] iArr4 = new int[i33];
                        i9 = 0;
                        System.arraycopy(cMStateSetArr4, 0, cMStateSetArr2, 0, i27);
                        System.arraycopy(this.f112993e, 0, zArr, 0, i27);
                        System.arraycopy(this.f112999k, 0, iArr4, 0, i27);
                        this.f112993e = zArr;
                        this.f112999k = iArr4;
                        cMStateSet2 = cMStateSet3;
                        i27 = i33;
                        i28++;
                        i5 = i2;
                        i7 = -1;
                    }
                }
                i2 = i5;
                cMStateSet2 = cMStateSet3;
                i28++;
                i5 = i2;
                i7 = -1;
            }
            cMStateSetArr = cMStateSetArr2;
            i6 = i26;
            i23 = i27;
            r4 = 0;
        }
        if (c20051aArr != null) {
            this.f113000l = new C20051a[i6];
            for (int i34 = i9; i34 < i6; i34++) {
                int[] iArr5 = this.f112999k[i34];
                int i35 = i9;
                while (true) {
                    if (i35 < iArr5.length) {
                        if (i34 == iArr5[i35]) {
                            this.f113000l[i34] = c20051aArr[i35];
                            break;
                        }
                        i35++;
                    }
                }
            }
        }
        this.f112995g = r4;
        this.f112997i = r4;
        this.f112994f = r4;
        this.f112998j = r4;
        this.f112991c = r4;
    }

    /* renamed from: b */
    public final void m70289b(CMNode cMNode) {
        CMNode m70287b;
        if (cMNode.type() == 101) {
            XSCMBinOp xSCMBinOp = (XSCMBinOp) cMNode;
            m70289b(xSCMBinOp.m70279b());
            m70287b = xSCMBinOp.m70280c();
        } else {
            int i = 0;
            if (cMNode.type() == 102) {
                XSCMBinOp xSCMBinOp2 = (XSCMBinOp) cMNode;
                m70289b(xSCMBinOp2.m70279b());
                m70289b(xSCMBinOp2.m70280c());
                CMStateSet lastPos = xSCMBinOp2.m70279b().lastPos();
                CMStateSet firstPos = xSCMBinOp2.m70280c().firstPos();
                while (i < this.f112996h) {
                    if (lastPos.getBit(i)) {
                        this.f112994f[i].union(firstPos);
                    }
                    i++;
                }
                return;
            }
            if (cMNode.type() == 4 || cMNode.type() == 6) {
                m70289b(((XSCMUniOp) cMNode).m70287b());
                CMStateSet firstPos2 = cMNode.firstPos();
                CMStateSet lastPos2 = cMNode.lastPos();
                while (i < this.f112996h) {
                    if (lastPos2.getBit(i)) {
                        this.f112994f[i].union(firstPos2);
                    }
                    i++;
                }
                return;
            }
            if (cMNode.type() != 5) {
                return;
            } else {
                m70287b = ((XSCMUniOp) cMNode).m70287b();
            }
        }
        m70289b(m70287b);
    }

    /* renamed from: c */
    public final void m70290c(CMNode cMNode, int i) {
        PrintStream printStream;
        String str;
        CMNode m70287b;
        int i2;
        PrintStream printStream2;
        String str2;
        for (int i3 = 0; i3 < i; i3++) {
            System.out.print("   ");
        }
        int type = cMNode.type();
        if (type == 1) {
            PrintStream printStream3 = System.out;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Leaf: (pos=");
            XSCMLeaf xSCMLeaf = (XSCMLeaf) cMNode;
            stringBuffer.append(xSCMLeaf.m70283d());
            stringBuffer.append("), ");
            stringBuffer.append("(elemIndex=");
            stringBuffer.append(xSCMLeaf.m70281b());
            stringBuffer.append(") ");
            printStream3.print(stringBuffer.toString());
            if (cMNode.isNullable()) {
                printStream = System.out;
                str = " Nullable ";
            }
            System.out.print("firstPos=");
            System.out.print(cMNode.firstPos().toString());
            System.out.print(" lastPos=");
            System.out.println(cMNode.lastPos().toString());
        }
        if (type != 2) {
            if (type == 4 || type == 5 || type == 6) {
                System.out.print("Rep Node ");
                if (cMNode.isNullable()) {
                    System.out.print("Nullable ");
                }
                System.out.print("firstPos=");
                System.out.print(cMNode.firstPos().toString());
                System.out.print(" lastPos=");
                System.out.println(cMNode.lastPos().toString());
                m70287b = ((XSCMUniOp) cMNode).m70287b();
                i2 = i + 1;
            } else {
                if (type != 101 && type != 102) {
                    throw new RuntimeException("ImplementationMessages.VAL_NIICM");
                }
                if (type == 101) {
                    printStream2 = System.out;
                    str2 = "Choice Node ";
                } else {
                    printStream2 = System.out;
                    str2 = "Seq Node ";
                }
                printStream2.print(str2);
                if (cMNode.isNullable()) {
                    System.out.print("Nullable ");
                }
                System.out.print("firstPos=");
                System.out.print(cMNode.firstPos().toString());
                System.out.print(" lastPos=");
                System.out.println(cMNode.lastPos().toString());
                XSCMBinOp xSCMBinOp = (XSCMBinOp) cMNode;
                i2 = i + 1;
                m70290c(xSCMBinOp.m70279b(), i2);
                m70287b = xSCMBinOp.m70280c();
            }
            m70290c(m70287b, i2);
            return;
        }
        printStream = System.out;
        str = "Any Node: ";
        printStream.print(str);
        System.out.print("firstPos=");
        System.out.print(cMNode.firstPos().toString());
        System.out.print(" lastPos=");
        System.out.println(cMNode.lastPos().toString());
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public boolean checkUniqueParticleAttribution(SubstitutionGroupHandler substitutionGroupHandler) throws XMLSchemaException {
        short s;
        C20051a c20051a;
        int i = this.f112992d;
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i, i);
        int i2 = 0;
        while (true) {
            int[][] iArr = this.f112999k;
            if (i2 >= iArr.length || iArr[i2] == null) {
                break;
            }
            int i3 = 0;
            while (i3 < this.f112992d) {
                int i4 = i3 + 1;
                for (int i5 = i4; i5 < this.f112992d; i5++) {
                    int[] iArr2 = this.f112999k[i2];
                    if (iArr2[i3] != -1 && iArr2[i5] != -1 && bArr[i3][i5] == 0) {
                        Object[] objArr = this.f112989a;
                        if (XSConstraints.overlapUPA(objArr[i3], objArr[i5], substitutionGroupHandler)) {
                            C20051a[] c20051aArr = this.f113000l;
                            if (c20051aArr != null && (c20051a = c20051aArr[i2]) != null) {
                                int[] iArr3 = this.f112999k[i2];
                                if (((iArr3[i5] == i2) ^ (iArr3[i3] == i2)) && c20051a.f113003a == c20051a.f113004b) {
                                    bArr[i3][i5] = -1;
                                }
                            }
                            bArr[i3][i5] = 1;
                        } else {
                            bArr[i3][i5] = -1;
                        }
                    }
                }
                i3 = i4;
            }
            i2++;
        }
        for (int i6 = 0; i6 < this.f112992d; i6++) {
            for (int i7 = 0; i7 < this.f112992d; i7++) {
                if (bArr[i6][i7] == 1) {
                    throw new XMLSchemaException(XmlErrorCodes.UNIQUE_PARTICLE_ATTRIBUTION, new Object[]{this.f112989a[i6].toString(), this.f112989a[i7].toString()});
                }
            }
        }
        for (int i8 = 0; i8 < this.f112992d; i8++) {
            if (this.f112990b[i8] == 2 && ((s = ((XSWildcardDecl) this.f112989a[i8]).fType) == 3 || s == 2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public Object m70291d(QName qName, SubstitutionGroupHandler substitutionGroupHandler) {
        for (int i = 0; i < this.f112992d; i++) {
            int i2 = this.f112990b[i];
            if (i2 == 1) {
                XSElementDecl matchingElemDecl = substitutionGroupHandler.getMatchingElemDecl(qName, (XSElementDecl) this.f112989a[i]);
                if (matchingElemDecl != null) {
                    return matchingElemDecl;
                }
            } else if (i2 == 2 && ((XSWildcardDecl) this.f112989a[i]).allowNamespace(qName.uri)) {
                return this.f112989a[i];
            }
        }
        return null;
    }

    /* renamed from: e */
    public Object m70292e(QName qName, int[] iArr, SubstitutionGroupHandler substitutionGroupHandler, int i) {
        int i2 = iArr[0];
        Object obj = null;
        int i3 = 0;
        while (true) {
            i++;
            if (i >= this.f112992d) {
                break;
            }
            i3 = this.f112999k[i2][i];
            if (i3 != -1) {
                int i4 = this.f112990b[i];
                if (i4 != 1) {
                    if (i4 == 2 && ((XSWildcardDecl) this.f112989a[i]).allowNamespace(qName.uri)) {
                        obj = this.f112989a[i];
                        break;
                    }
                } else {
                    obj = substitutionGroupHandler.getMatchingElemDecl(qName, (XSElementDecl) this.f112989a[i]);
                    if (obj != null) {
                        break;
                    }
                }
            }
        }
        if (i == this.f112992d) {
            iArr[1] = iArr[0];
            iArr[0] = -1;
            return m70291d(qName, substitutionGroupHandler);
        }
        iArr[0] = i3;
        C20051a c20051a = this.f113000l[i3];
        if (c20051a != null) {
            iArr[2] = i == c20051a.f113005c ? 1 : 0;
        }
        return obj;
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public boolean endContentModel(int[] iArr) {
        C20051a c20051a;
        int i = iArr[0];
        if (!this.f112993e[i]) {
            return false;
        }
        C20051a[] c20051aArr = this.f113000l;
        return c20051aArr == null || (c20051a = c20051aArr[i]) == null || iArr[2] >= c20051a.f113003a;
    }

    /* renamed from: f */
    public final int[] m70293f() {
        int[] iArr = new int[this.f112992d];
        for (int i = 0; i < this.f112992d; i++) {
            iArr[i] = -1;
        }
        return iArr;
    }

    /* renamed from: g */
    public final void m70294g(CMNode cMNode) throws RuntimeException {
        CMNode m70280c;
        cMNode.setMaxStates(this.f112996h);
        if (cMNode.type() == 2) {
            XSCMLeaf xSCMLeaf = (XSCMLeaf) cMNode;
            int m70283d = xSCMLeaf.m70283d();
            this.f112997i[m70283d] = xSCMLeaf;
            this.f112998j[m70283d] = 2;
            return;
        }
        if (cMNode.type() == 101 || cMNode.type() == 102) {
            XSCMBinOp xSCMBinOp = (XSCMBinOp) cMNode;
            m70294g(xSCMBinOp.m70279b());
            m70280c = xSCMBinOp.m70280c();
        } else {
            if (cMNode.type() != 4 && cMNode.type() != 6 && cMNode.type() != 5) {
                if (cMNode.type() != 1) {
                    throw new RuntimeException("ImplementationMessages.VAL_NIICM");
                }
                XSCMLeaf xSCMLeaf2 = (XSCMLeaf) cMNode;
                int m70283d2 = xSCMLeaf2.m70283d();
                this.f112997i[m70283d2] = xSCMLeaf2;
                this.f112998j[m70283d2] = 1;
                return;
            }
            m70280c = ((XSCMUniOp) cMNode).m70287b();
        }
        m70294g(m70280c);
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public String getTermName(int i) {
        Object obj = this.f112989a[i];
        if (obj != null) {
            return obj.toString();
        }
        return null;
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public boolean isCompactedForUPA() {
        return this.f113002n;
    }

    public boolean isFinalState(int i) {
        if (i < 0) {
            return false;
        }
        return this.f112993e[i];
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public int[] occurenceInfo(int[] iArr) {
        C20051a[] c20051aArr = this.f113000l;
        if (c20051aArr == null) {
            return null;
        }
        int i = iArr[0];
        if (i < 0) {
            i = iArr[1];
        }
        C20051a c20051a = c20051aArr[i];
        if (c20051a != null) {
            return new int[]{c20051a.f113003a, c20051a.f113004b, iArr[2], c20051a.f113005c};
        }
        return null;
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public Object oneTransition(QName qName, int[] iArr, SubstitutionGroupHandler substitutionGroupHandler) {
        int i = iArr[0];
        if (i == -1 || i == -2) {
            if (i == -1) {
                iArr[0] = -2;
            }
            return m70291d(qName, substitutionGroupHandler);
        }
        Object obj = null;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= this.f112992d) {
                break;
            }
            i3 = this.f112999k[i][i2];
            if (i3 != -1) {
                int i4 = this.f112990b[i2];
                if (i4 != 1) {
                    if (i4 == 2 && ((XSWildcardDecl) this.f112989a[i2]).allowNamespace(qName.uri)) {
                        obj = this.f112989a[i2];
                        break;
                    }
                } else {
                    obj = substitutionGroupHandler.getMatchingElemDecl(qName, (XSElementDecl) this.f112989a[i2]);
                    if (obj != null) {
                        break;
                    }
                }
            }
            i2++;
        }
        if (i2 != this.f112992d) {
            C20051a[] c20051aArr = this.f113000l;
            if (c20051aArr != null) {
                C20051a c20051a = c20051aArr[i];
                if (c20051a == null) {
                    C20051a c20051a2 = c20051aArr[i3];
                    if (c20051a2 != null) {
                        iArr[2] = i2 != c20051a2.f113005c ? 0 : 1;
                    }
                } else if (i == i3) {
                    int i5 = iArr[2] + 1;
                    iArr[2] = i5;
                    int i6 = c20051a.f113004b;
                    if (i5 > i6 && i6 != -1) {
                        return m70292e(qName, iArr, substitutionGroupHandler, i2);
                    }
                } else if (iArr[2] < c20051a.f113003a) {
                    iArr[1] = iArr[0];
                    iArr[0] = -1;
                } else {
                    C20051a c20051a3 = c20051aArr[i3];
                    if (c20051a3 != null) {
                        iArr[2] = i2 != c20051a3.f113005c ? 0 : 1;
                    }
                }
            }
            iArr[0] = i3;
            return obj;
        }
        iArr[1] = iArr[0];
        iArr[0] = -1;
        return m70291d(qName, substitutionGroupHandler);
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public int[] startContentModel() {
        return new int[3];
    }

    @Override // org.apache.xerces.impl.p117xs.models.XSCMValidator
    public Vector whatCanGoHere(int[] iArr) {
        int i = iArr[0];
        if (i < 0) {
            i = iArr[1];
        }
        C20051a[] c20051aArr = this.f113000l;
        C20051a c20051a = c20051aArr != null ? c20051aArr[i] : null;
        int i2 = iArr[2];
        Vector vector = new Vector();
        for (int i3 = 0; i3 < this.f112992d; i3++) {
            int i4 = this.f112999k[i][i3];
            if (i4 != -1) {
                if (c20051a != null) {
                    if (i == i4) {
                        int i5 = c20051a.f113004b;
                        if (i2 >= i5 && i5 != -1) {
                        }
                    } else if (i2 < c20051a.f113003a) {
                    }
                }
                vector.addElement(this.f112989a[i3]);
            }
        }
        return vector;
    }
}
