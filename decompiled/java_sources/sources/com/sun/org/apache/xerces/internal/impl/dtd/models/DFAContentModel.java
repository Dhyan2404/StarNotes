package com.sun.org.apache.xerces.internal.impl.dtd.models;

import com.sun.org.apache.xerces.internal.xni.QName;
import java.io.PrintStream;
import java.util.Hashtable;

/* loaded from: classes10.dex */
public class DFAContentModel implements ContentModelValidator {
    private static final boolean DEBUG_VALIDATE_CONTENT = false;
    private int fLeafCount;
    private boolean fMixed;
    private static String fEpsilonString = "<<CMNODE_EPSILON>>".intern();
    private static String fEOCString = fEOCString.intern();
    private static String fEOCString = fEOCString.intern();
    private QName[] fElemMap = null;
    private int[] fElemMapType = null;
    private int fElemMapSize = 0;
    private int fEOCPos = 0;
    private boolean[] fFinalStateFlags = null;
    private CMStateSet[] fFollowList = null;
    private CMNode fHeadNode = null;
    private CMLeaf[] fLeafList = null;
    private int[] fLeafListType = null;
    private int[][] fTransTable = null;
    private int fTransTableSize = 0;
    private boolean fEmptyContentIsValid = false;
    private QName fQName = new QName();

    public DFAContentModel(CMNode cMNode, int i, boolean z) {
        this.fLeafCount = 0;
        this.fLeafCount = i;
        this.fMixed = z;
        buildDFA(cMNode);
    }

    private void buildDFA(CMNode cMNode) {
        int i;
        int i2;
        int i3;
        int[] iArr;
        int i4;
        int i5;
        QName qName = this.fQName;
        String str = fEOCString;
        CMStateSet cMStateSet = null;
        qName.setValues(null, str, str, null);
        CMLeaf cMLeaf = new CMLeaf(this.fQName);
        this.fHeadNode = new CMBinOp(5, cMNode, cMLeaf);
        int i6 = this.fLeafCount;
        this.fEOCPos = i6;
        this.fLeafCount = i6 + 1;
        cMLeaf.setPosition(i6);
        int i7 = this.fLeafCount;
        this.fLeafList = new CMLeaf[i7];
        this.fLeafListType = new int[i7];
        int i8 = 0;
        postTreeBuildInit(this.fHeadNode, 0);
        this.fFollowList = new CMStateSet[this.fLeafCount];
        int i9 = 0;
        while (true) {
            int i10 = this.fLeafCount;
            if (i9 >= i10) {
                break;
            }
            this.fFollowList[i9] = new CMStateSet(i10);
            i9++;
        }
        calcFollowList(this.fHeadNode);
        int i11 = this.fLeafCount;
        this.fElemMap = new QName[i11];
        this.fElemMapType = new int[i11];
        this.fElemMapSize = 0;
        int i12 = 0;
        while (true) {
            i = this.fLeafCount;
            i2 = 1;
            if (i12 >= i) {
                break;
            }
            this.fElemMap[i12] = new QName();
            QName element = this.fLeafList[i12].getElement();
            int i13 = 0;
            while (true) {
                i5 = this.fElemMapSize;
                if (i13 >= i5 || this.fElemMap[i13].rawname == element.rawname) {
                    break;
                } else {
                    i13++;
                }
            }
            if (i13 == i5) {
                this.fElemMap[i5].setValues(element);
                int[] iArr2 = this.fElemMapType;
                int i14 = this.fElemMapSize;
                iArr2[i14] = this.fLeafListType[i12];
                this.fElemMapSize = i14 + 1;
            }
            i12++;
        }
        int[] iArr3 = new int[i + this.fElemMapSize];
        int i15 = 0;
        int i16 = 0;
        while (true) {
            i3 = -1;
            if (i15 >= this.fElemMapSize) {
                break;
            }
            for (int i17 = 0; i17 < this.fLeafCount; i17++) {
                if (this.fLeafList[i17].getElement().rawname == this.fElemMap[i15].rawname) {
                    iArr3[i16] = i17;
                    i16++;
                }
            }
            iArr3[i16] = -1;
            i15++;
            i16++;
        }
        int i18 = this.fLeafCount * 4;
        CMStateSet[] cMStateSetArr = new CMStateSet[i18];
        this.fFinalStateFlags = new boolean[i18];
        this.fTransTable = new int[i18];
        CMStateSet firstPos = this.fHeadNode.firstPos();
        this.fTransTable[0] = makeDefStateList();
        cMStateSetArr[0] = firstPos;
        Hashtable hashtable = new Hashtable();
        int i19 = 0;
        while (i19 < i2) {
            CMStateSet cMStateSet2 = cMStateSetArr[i19];
            int[] iArr4 = this.fTransTable[i19];
            this.fFinalStateFlags[i19] = cMStateSet2.getBit(this.fEOCPos);
            i19++;
            int i20 = i8;
            int i21 = i20;
            CMStateSet cMStateSet3 = cMStateSet;
            while (i20 < this.fElemMapSize) {
                if (cMStateSet3 == null) {
                    cMStateSet3 = new CMStateSet(this.fLeafCount);
                } else {
                    cMStateSet3.zeroBits();
                }
                int i22 = i21 + 1;
                int i23 = iArr3[i21];
                while (i23 != i3) {
                    if (cMStateSet2.getBit(i23)) {
                        cMStateSet3.union(this.fFollowList[i23]);
                    }
                    i23 = iArr3[i22];
                    i22++;
                }
                if (!cMStateSet3.isEmpty()) {
                    Integer num = (Integer) hashtable.get(cMStateSet3);
                    int intValue = num == null ? i2 : num.intValue();
                    if (intValue == i2) {
                        cMStateSetArr[i2] = cMStateSet3;
                        this.fTransTable[i2] = makeDefStateList();
                        hashtable.put(cMStateSet3, new Integer(i2));
                        i2++;
                        cMStateSet3 = cMStateSet;
                    }
                    iArr4[i20] = intValue;
                    if (i2 == i18) {
                        i4 = i19;
                        int i24 = (int) (i18 * 1.5d);
                        CMStateSet[] cMStateSetArr2 = new CMStateSet[i24];
                        boolean[] zArr = new boolean[i24];
                        int[][] iArr5 = new int[i24];
                        iArr = iArr3;
                        int i25 = 0;
                        while (i25 < i18) {
                            cMStateSetArr2[i25] = cMStateSetArr[i25];
                            zArr[i25] = this.fFinalStateFlags[i25];
                            iArr5[i25] = this.fTransTable[i25];
                            i25++;
                            i18 = i18;
                        }
                        this.fFinalStateFlags = zArr;
                        this.fTransTable = iArr5;
                        i18 = i24;
                        cMStateSetArr = cMStateSetArr2;
                        i20++;
                        i19 = i4;
                        i21 = i22;
                        iArr3 = iArr;
                        i8 = 0;
                        cMStateSet = null;
                        i3 = -1;
                    }
                }
                iArr = iArr3;
                i4 = i19;
                i20++;
                i19 = i4;
                i21 = i22;
                iArr3 = iArr;
                i8 = 0;
                cMStateSet = null;
                i3 = -1;
            }
        }
        this.fEmptyContentIsValid = ((CMBinOp) this.fHeadNode).getLeft().isNullable();
        this.fHeadNode = null;
        this.fLeafList = null;
        this.fFollowList = null;
    }

    private void calcFollowList(CMNode cMNode) {
        if (cMNode.type() == 4) {
            CMBinOp cMBinOp = (CMBinOp) cMNode;
            calcFollowList(cMBinOp.getLeft());
            calcFollowList(cMBinOp.getRight());
            return;
        }
        int i = 0;
        if (cMNode.type() == 5) {
            CMBinOp cMBinOp2 = (CMBinOp) cMNode;
            calcFollowList(cMBinOp2.getLeft());
            calcFollowList(cMBinOp2.getRight());
            CMStateSet lastPos = cMBinOp2.getLeft().lastPos();
            CMStateSet firstPos = cMBinOp2.getRight().firstPos();
            while (i < this.fLeafCount) {
                if (lastPos.getBit(i)) {
                    this.fFollowList[i].union(firstPos);
                }
                i++;
            }
            return;
        }
        if (cMNode.type() != 2 && cMNode.type() != 3) {
            if (cMNode.type() == 1) {
                calcFollowList(((CMUniOp) cMNode).getChild());
                return;
            }
            return;
        }
        calcFollowList(((CMUniOp) cMNode).getChild());
        CMStateSet firstPos2 = cMNode.firstPos();
        CMStateSet lastPos2 = cMNode.lastPos();
        while (i < this.fLeafCount) {
            if (lastPos2.getBit(i)) {
                this.fFollowList[i].union(firstPos2);
            }
            i++;
        }
    }

    private void dumpTree(CMNode cMNode, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            System.out.print("   ");
        }
        int type = cMNode.type();
        if (type == 4 || type == 5) {
            if (type == 4) {
                System.out.print("Choice Node ");
            } else {
                System.out.print("Seq Node ");
            }
            if (cMNode.isNullable()) {
                System.out.print("Nullable ");
            }
            System.out.print("firstPos=");
            System.out.print(cMNode.firstPos().toString());
            System.out.print(" lastPos=");
            System.out.println(cMNode.lastPos().toString());
            CMBinOp cMBinOp = (CMBinOp) cMNode;
            int i3 = i + 1;
            dumpTree(cMBinOp.getLeft(), i3);
            dumpTree(cMBinOp.getRight(), i3);
            return;
        }
        if (cMNode.type() == 2) {
            System.out.print("Rep Node ");
            if (cMNode.isNullable()) {
                System.out.print("Nullable ");
            }
            System.out.print("firstPos=");
            System.out.print(cMNode.firstPos().toString());
            System.out.print(" lastPos=");
            System.out.println(cMNode.lastPos().toString());
            dumpTree(((CMUniOp) cMNode).getChild(), i + 1);
            return;
        }
        if (cMNode.type() != 0) {
            throw new RuntimeException("ImplementationMessages.VAL_NIICM");
        }
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append("Leaf: (pos=");
        CMLeaf cMLeaf = (CMLeaf) cMNode;
        sb.append(cMLeaf.getPosition());
        sb.append("), ");
        sb.append(cMLeaf.getElement());
        sb.append("(elemIndex=");
        sb.append(cMLeaf.getElement());
        sb.append(") ");
        printStream.print(sb.toString());
        if (cMNode.isNullable()) {
            System.out.print(" Nullable ");
        }
        System.out.print("firstPos=");
        System.out.print(cMNode.firstPos().toString());
        System.out.print(" lastPos=");
        System.out.println(cMNode.lastPos().toString());
    }

    private int[] makeDefStateList() {
        int[] iArr = new int[this.fElemMapSize];
        for (int i = 0; i < this.fElemMapSize; i++) {
            iArr[i] = -1;
        }
        return iArr;
    }

    private int postTreeBuildInit(CMNode cMNode, int i) {
        cMNode.setMaxStates(this.fLeafCount);
        if ((cMNode.type() & 15) == 6 || (cMNode.type() & 15) == 8 || (cMNode.type() & 15) == 7) {
            CMAny cMAny = (CMAny) cMNode;
            this.fLeafList[i] = new CMLeaf(new QName(null, null, null, cMAny.getURI()), cMAny.getPosition());
            this.fLeafListType[i] = cMNode.type();
            return i + 1;
        }
        if (cMNode.type() == 4 || cMNode.type() == 5) {
            CMBinOp cMBinOp = (CMBinOp) cMNode;
            return postTreeBuildInit(cMBinOp.getRight(), postTreeBuildInit(cMBinOp.getLeft(), i));
        }
        if (cMNode.type() == 2 || cMNode.type() == 3 || cMNode.type() == 1) {
            return postTreeBuildInit(((CMUniOp) cMNode).getChild(), i);
        }
        if (cMNode.type() != 0) {
            throw new RuntimeException("ImplementationMessages.VAL_NIICM: type=" + cMNode.type());
        }
        CMLeaf cMLeaf = (CMLeaf) cMNode;
        if (cMLeaf.getElement().localpart == fEpsilonString) {
            return i;
        }
        this.fLeafList[i] = cMLeaf;
        this.fLeafListType[i] = 0;
        return i + 1;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.dtd.models.ContentModelValidator
    public int validate(QName[] qNameArr, int i, int i2) {
        int i3;
        if (i2 == 0) {
            return this.fEmptyContentIsValid ? -1 : 0;
        }
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            QName qName = qNameArr[i + i4];
            if (!this.fMixed || qName.localpart != null) {
                int i6 = 0;
                while (true) {
                    i3 = this.fElemMapSize;
                    if (i6 >= i3) {
                        break;
                    }
                    int i7 = this.fElemMapType[i6] & 15;
                    if (i7 == 0) {
                        if (this.fElemMap[i6].rawname == qName.rawname) {
                            break;
                        }
                        i6++;
                    } else if (i7 == 6) {
                        String str = this.fElemMap[i6].uri;
                        if (str == null || str == qName.uri) {
                            break;
                        }
                        i6++;
                    } else if (i7 != 8) {
                        if (i7 == 7 && this.fElemMap[i6].uri != qName.uri) {
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
                if (i6 == i3 || (i5 = this.fTransTable[i5][i6]) == -1) {
                    return i4;
                }
            }
            i4++;
        }
        if (this.fFinalStateFlags[i5]) {
            return -1;
        }
        return i2;
    }
}
