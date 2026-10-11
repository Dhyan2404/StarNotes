package org.apache.xerces.impl.dtd.models;

import java.io.PrintStream;
import java.util.HashMap;
import org.apache.xerces.xni.QName;

/* loaded from: classes13.dex */
public class DFAContentModel implements ContentModelValidator {

    /* renamed from: r */
    public static final boolean f112246r = false;

    /* renamed from: d */
    public boolean f112250d;

    /* renamed from: i */
    public int f112255i;

    /* renamed from: p */
    public static String f112244p = "<<CMNODE_EPSILON>>".intern();

    /* renamed from: q */
    public static String f112245q = f112245q.intern();

    /* renamed from: q */
    public static String f112245q = f112245q.intern();

    /* renamed from: a */
    public QName[] f112247a = null;

    /* renamed from: b */
    public int[] f112248b = null;

    /* renamed from: c */
    public int f112249c = 0;

    /* renamed from: e */
    public int f112251e = 0;

    /* renamed from: f */
    public boolean[] f112252f = null;

    /* renamed from: g */
    public CMStateSet[] f112253g = null;

    /* renamed from: h */
    public CMNode f112254h = null;

    /* renamed from: j */
    public CMLeaf[] f112256j = null;

    /* renamed from: k */
    public int[] f112257k = null;

    /* renamed from: l */
    public int[][] f112258l = null;

    /* renamed from: m */
    public int f112259m = 0;

    /* renamed from: n */
    public boolean f112260n = false;

    /* renamed from: o */
    public final QName f112261o = new QName();

    public DFAContentModel(CMNode cMNode, int i, boolean z) {
        this.f112255i = 0;
        this.f112255i = i;
        this.f112250d = z;
        m69916a(cMNode);
    }

    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v4, types: [org.apache.xerces.impl.dtd.models.CMStateSet[], org.apache.xerces.impl.dtd.models.CMNode, org.apache.xerces.impl.dtd.models.CMLeaf[]] */
    /* renamed from: a */
    public final void m69916a(CMNode cMNode) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        QName qName = this.f112261o;
        String str = f112245q;
        boolean z = false;
        qName.setValues(null, str, str, null);
        CMLeaf cMLeaf = new CMLeaf(this.f112261o);
        this.f112254h = new CMBinOp(5, cMNode, cMLeaf);
        int i7 = this.f112255i;
        this.f112251e = i7;
        this.f112255i = i7 + 1;
        cMLeaf.m69912d(i7);
        int i8 = this.f112255i;
        this.f112256j = new CMLeaf[i8];
        this.f112257k = new int[i8];
        m69920e(this.f112254h, 0);
        this.f112253g = new CMStateSet[this.f112255i];
        int i9 = 0;
        while (true) {
            int i10 = this.f112255i;
            if (i9 >= i10) {
                break;
            }
            this.f112253g[i9] = new CMStateSet(i10);
            i9++;
            z = false;
        }
        m69917b(this.f112254h);
        int i11 = this.f112255i;
        this.f112247a = new QName[i11];
        this.f112248b = new int[i11];
        this.f112249c = 0;
        int i12 = 0;
        boolean z2 = z;
        while (true) {
            i = this.f112255i;
            i2 = 1;
            if (i12 >= i) {
                break;
            }
            this.f112247a[i12] = new QName();
            QName m69910b = this.f112256j[i12].m69910b();
            while (true) {
                i6 = this.f112249c;
                i5 = (i5 < i6 && this.f112247a[i5].rawname != m69910b.rawname) ? i5 + 1 : 0;
            }
            if (i5 == i6) {
                this.f112247a[i6].setValues(m69910b);
                int[] iArr = this.f112248b;
                int i13 = this.f112249c;
                iArr[i13] = this.f112257k[i12];
                this.f112249c = i13 + 1;
            }
            i12++;
            z2 = false;
        }
        int[] iArr2 = new int[i + this.f112249c];
        int i14 = 0;
        int i15 = 0;
        boolean z3 = z2;
        while (true) {
            i3 = -1;
            if (i14 >= this.f112249c) {
                break;
            }
            for (int i16 = 0; i16 < this.f112255i; i16++) {
                if (this.f112256j[i16].m69910b().rawname == this.f112247a[i14].rawname) {
                    iArr2[i15] = i16;
                    i15++;
                }
            }
            iArr2[i15] = -1;
            i14++;
            i15++;
            z3 = false;
        }
        int i17 = this.f112255i * 4;
        CMStateSet[] cMStateSetArr = new CMStateSet[i17];
        this.f112252f = new boolean[i17];
        this.f112258l = new int[i17];
        CMStateSet firstPos = this.f112254h.firstPos();
        this.f112258l[0] = m69919d();
        cMStateSetArr[0] = firstPos;
        HashMap hashMap = new HashMap();
        int i18 = 0;
        ?? r3 = z3;
        while (i18 < i2) {
            CMStateSet cMStateSet = cMStateSetArr[i18];
            int[] iArr3 = this.f112258l[i18];
            this.f112252f[i18] = cMStateSet.getBit(this.f112251e);
            i18++;
            int i19 = 0;
            int i20 = i17;
            CMStateSet[] cMStateSetArr2 = cMStateSetArr;
            int i21 = i2;
            int i22 = 0;
            CMStateSet cMStateSet2 = r3;
            boolean z4 = r3;
            while (i19 < this.f112249c) {
                if (cMStateSet2 == null) {
                    cMStateSet2 = new CMStateSet(this.f112255i);
                } else {
                    cMStateSet2.zeroBits();
                }
                int i23 = i22 + 1;
                int i24 = iArr2[i22];
                while (i24 != i3) {
                    int i25 = i18;
                    if (cMStateSet.getBit(i24)) {
                        cMStateSet2.union(this.f112253g[i24]);
                    }
                    i24 = iArr2[i23];
                    i23++;
                    i18 = i25;
                    i3 = -1;
                }
                if (!cMStateSet2.isEmpty()) {
                    Integer num = (Integer) hashMap.get(cMStateSet2);
                    int intValue = num == null ? i21 : num.intValue();
                    if (intValue == i21) {
                        cMStateSetArr2[i21] = cMStateSet2;
                        this.f112258l[i21] = m69919d();
                        hashMap.put(cMStateSet2, new Integer(i21));
                        i21++;
                        cMStateSet2 = null;
                    }
                    iArr3[i19] = intValue;
                    if (i21 == i20) {
                        int i26 = i18;
                        int i27 = (int) (i20 * 1.5d);
                        CMStateSet[] cMStateSetArr3 = new CMStateSet[i27];
                        boolean[] zArr = new boolean[i27];
                        i4 = i26;
                        int[][] iArr4 = new int[i27];
                        System.arraycopy(cMStateSetArr2, 0, cMStateSetArr3, 0, i20);
                        System.arraycopy(this.f112252f, 0, zArr, 0, i20);
                        System.arraycopy(this.f112258l, 0, iArr4, 0, i20);
                        this.f112252f = zArr;
                        this.f112258l = iArr4;
                        i20 = i27;
                        cMStateSetArr2 = cMStateSetArr3;
                        i19++;
                        i22 = i23;
                        i18 = i4;
                        z4 = false;
                        i3 = -1;
                    }
                }
                i4 = i18;
                i19++;
                i22 = i23;
                i18 = i4;
                z4 = false;
                i3 = -1;
            }
            i17 = i20;
            cMStateSetArr = cMStateSetArr2;
            i2 = i21;
            r3 = z4;
        }
        this.f112260n = ((CMBinOp) this.f112254h).m69908b().isNullable();
        this.f112254h = r3;
        this.f112256j = r3;
        this.f112253g = r3;
    }

    /* renamed from: b */
    public final void m69917b(CMNode cMNode) {
        CMNode m69915b;
        if (cMNode.type() == 4) {
            CMBinOp cMBinOp = (CMBinOp) cMNode;
            m69917b(cMBinOp.m69908b());
            m69915b = cMBinOp.m69909c();
        } else {
            int i = 0;
            if (cMNode.type() == 5) {
                CMBinOp cMBinOp2 = (CMBinOp) cMNode;
                m69917b(cMBinOp2.m69908b());
                m69917b(cMBinOp2.m69909c());
                CMStateSet lastPos = cMBinOp2.m69908b().lastPos();
                CMStateSet firstPos = cMBinOp2.m69909c().firstPos();
                while (i < this.f112255i) {
                    if (lastPos.getBit(i)) {
                        this.f112253g[i].union(firstPos);
                    }
                    i++;
                }
                return;
            }
            if (cMNode.type() == 2 || cMNode.type() == 3) {
                m69917b(((CMUniOp) cMNode).m69915b());
                CMStateSet firstPos2 = cMNode.firstPos();
                CMStateSet lastPos2 = cMNode.lastPos();
                while (i < this.f112255i) {
                    if (lastPos2.getBit(i)) {
                        this.f112253g[i].union(firstPos2);
                    }
                    i++;
                }
                return;
            }
            if (cMNode.type() != 1) {
                return;
            } else {
                m69915b = ((CMUniOp) cMNode).m69915b();
            }
        }
        m69917b(m69915b);
    }

    /* renamed from: c */
    public final void m69918c(CMNode cMNode, int i) {
        PrintStream printStream;
        String str;
        int i2;
        CMNode m69909c;
        for (int i3 = 0; i3 < i; i3++) {
            System.out.print("   ");
        }
        int type = cMNode.type();
        if (type == 4 || type == 5) {
            if (type == 4) {
                printStream = System.out;
                str = "Choice Node ";
            } else {
                printStream = System.out;
                str = "Seq Node ";
            }
            printStream.print(str);
            if (cMNode.isNullable()) {
                System.out.print("Nullable ");
            }
            System.out.print("firstPos=");
            System.out.print(cMNode.firstPos().toString());
            System.out.print(" lastPos=");
            System.out.println(cMNode.lastPos().toString());
            CMBinOp cMBinOp = (CMBinOp) cMNode;
            i2 = i + 1;
            m69918c(cMBinOp.m69908b(), i2);
            m69909c = cMBinOp.m69909c();
        } else {
            if (cMNode.type() != 2) {
                if (cMNode.type() != 0) {
                    throw new RuntimeException("ImplementationMessages.VAL_NIICM");
                }
                PrintStream printStream2 = System.out;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Leaf: (pos=");
                CMLeaf cMLeaf = (CMLeaf) cMNode;
                stringBuffer.append(cMLeaf.m69911c());
                stringBuffer.append("), ");
                stringBuffer.append(cMLeaf.m69910b());
                stringBuffer.append("(elemIndex=");
                stringBuffer.append(cMLeaf.m69910b());
                stringBuffer.append(") ");
                printStream2.print(stringBuffer.toString());
                if (cMNode.isNullable()) {
                    System.out.print(" Nullable ");
                }
                System.out.print("firstPos=");
                System.out.print(cMNode.firstPos().toString());
                System.out.print(" lastPos=");
                System.out.println(cMNode.lastPos().toString());
                return;
            }
            System.out.print("Rep Node ");
            if (cMNode.isNullable()) {
                System.out.print("Nullable ");
            }
            System.out.print("firstPos=");
            System.out.print(cMNode.firstPos().toString());
            System.out.print(" lastPos=");
            System.out.println(cMNode.lastPos().toString());
            m69909c = ((CMUniOp) cMNode).m69915b();
            i2 = i + 1;
        }
        m69918c(m69909c, i2);
    }

    /* renamed from: d */
    public final int[] m69919d() {
        int[] iArr = new int[this.f112249c];
        for (int i = 0; i < this.f112249c; i++) {
            iArr[i] = -1;
        }
        return iArr;
    }

    /* renamed from: e */
    public final int m69920e(CMNode cMNode, int i) {
        CMNode m69909c;
        cMNode.setMaxStates(this.f112255i);
        if ((cMNode.type() & 15) != 6 && (cMNode.type() & 15) != 8 && (cMNode.type() & 15) != 7) {
            if (cMNode.type() == 4 || cMNode.type() == 5) {
                CMBinOp cMBinOp = (CMBinOp) cMNode;
                i = m69920e(cMBinOp.m69908b(), i);
                m69909c = cMBinOp.m69909c();
            } else if (cMNode.type() == 2 || cMNode.type() == 3 || cMNode.type() == 1) {
                m69909c = ((CMUniOp) cMNode).m69915b();
            } else {
                if (cMNode.type() != 0) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("ImplementationMessages.VAL_NIICM: type=");
                    stringBuffer.append(cMNode.type());
                    throw new RuntimeException(stringBuffer.toString());
                }
                CMLeaf cMLeaf = (CMLeaf) cMNode;
                if (cMLeaf.m69910b().localpart == f112244p) {
                    return i;
                }
                this.f112256j[i] = cMLeaf;
                this.f112257k[i] = 0;
            }
            return m69920e(m69909c, i);
        }
        CMAny cMAny = (CMAny) cMNode;
        this.f112256j[i] = new CMLeaf(new QName(null, null, null, cMAny.m69906d()), cMAny.m69904b());
        this.f112257k[i] = cMNode.type();
        return i + 1;
    }

    @Override // org.apache.xerces.impl.dtd.models.ContentModelValidator
    public int validate(QName[] qNameArr, int i, int i2) {
        int i3;
        if (i2 == 0) {
            return this.f112260n ? -1 : 0;
        }
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            QName qName = qNameArr[i + i4];
            if (!this.f112250d || qName.localpart != null) {
                int i6 = 0;
                while (true) {
                    i3 = this.f112249c;
                    if (i6 >= i3) {
                        break;
                    }
                    int i7 = this.f112248b[i6] & 15;
                    if (i7 == 0) {
                        if (this.f112247a[i6].rawname == qName.rawname) {
                            break;
                        }
                        i6++;
                    } else if (i7 == 6) {
                        String str = this.f112247a[i6].uri;
                        if (str == null || str == qName.uri) {
                            break;
                        }
                        i6++;
                    } else if (i7 != 8) {
                        if (i7 == 7 && this.f112247a[i6].uri != qName.uri) {
                            break;
                        }
                        i6++;
                    } else {
                        if (qName.uri == null) {
                            break;
                        }
                        i6++;
                    }
                }
                if (i6 == i3 || (i5 = this.f112258l[i5][i6]) == -1) {
                    return i4;
                }
            }
            i4++;
        }
        if (this.f112252f[i5]) {
            return -1;
        }
        return i2;
    }
}
