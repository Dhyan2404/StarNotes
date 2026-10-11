package com.sun.org.apache.xerces.internal.impl.p055xs.models;

import com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode;
import com.sun.org.apache.xerces.internal.impl.dtd.models.CMStateSet;
import com.sun.org.apache.xerces.internal.impl.p055xs.SubstitutionGroupHandler;
import com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSConstraints;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSElementDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSWildcardDecl;
import com.sun.org.apache.xerces.internal.xni.QName;
import java.io.PrintStream;
import java.lang.reflect.Array;
import java.util.Hashtable;
import java.util.Vector;
import org.apache.xmlbeans.XmlErrorCodes;

/* loaded from: classes10.dex */
public class XSDFACM implements XSCMValidator {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_VALIDATE_CONTENT = false;
    private static long time;
    private int fLeafCount;
    private Object[] fElemMap = null;
    private int[] fElemMapType = null;
    private int[] fElemMapId = null;
    private int fElemMapSize = 0;
    private boolean[] fFinalStateFlags = null;
    private CMStateSet[] fFollowList = null;
    private CMNode fHeadNode = null;
    private XSCMLeaf[] fLeafList = null;
    private int[] fLeafListType = null;
    private int[][] fTransTable = null;
    private int fTransTableSize = 0;

    public XSDFACM(CMNode cMNode, int i) {
        this.fLeafCount = i;
        buildDFA(cMNode);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.sun.org.apache.xerces.internal.impl.dtd.models.CMStateSet[], com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode, int[], com.sun.org.apache.xerces.internal.impl.xs.models.XSCMLeaf[]] */
    private void buildDFA(CMNode cMNode) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = this.fLeafCount;
        this.fLeafCount = i5 + 1;
        int i6 = 1;
        CMStateSet cMStateSet = null;
        int i7 = -1;
        XSCMBinOp xSCMBinOp = new XSCMBinOp(102, cMNode, new XSCMLeaf(1, null, -1, i5));
        this.fHeadNode = xSCMBinOp;
        int i8 = this.fLeafCount;
        this.fLeafList = new XSCMLeaf[i8];
        this.fLeafListType = new int[i8];
        postTreeBuildInit(xSCMBinOp);
        this.fFollowList = new CMStateSet[this.fLeafCount];
        int i9 = 0;
        int i10 = 0;
        while (true) {
            int i11 = this.fLeafCount;
            if (i10 >= i11) {
                break;
            }
            this.fFollowList[i10] = new CMStateSet(i11);
            i10++;
        }
        calcFollowList(this.fHeadNode);
        int i12 = this.fLeafCount;
        this.fElemMap = new Object[i12];
        this.fElemMapType = new int[i12];
        this.fElemMapId = new int[i12];
        this.fElemMapSize = 0;
        int i13 = 0;
        while (true) {
            i = this.fLeafCount;
            if (i13 >= i) {
                break;
            }
            this.fElemMap[i13] = null;
            int particleId = this.fLeafList[i13].getParticleId();
            int i14 = 0;
            while (true) {
                i4 = this.fElemMapSize;
                if (i14 >= i4 || particleId == this.fElemMapId[i14]) {
                    break;
                } else {
                    i14++;
                }
            }
            if (i14 == i4) {
                this.fElemMap[i4] = this.fLeafList[i13].getLeaf();
                int[] iArr = this.fElemMapType;
                int i15 = this.fElemMapSize;
                iArr[i15] = this.fLeafListType[i13];
                this.fElemMapId[i15] = particleId;
                this.fElemMapSize = i15 + 1;
            }
            i13++;
        }
        int i16 = this.fElemMapSize - 1;
        this.fElemMapSize = i16;
        int[] iArr2 = new int[i + i16];
        int i17 = 0;
        int i18 = 0;
        while (i17 < this.fElemMapSize) {
            int i19 = this.fElemMapId[i17];
            for (int i20 = 0; i20 < this.fLeafCount; i20++) {
                if (i19 == this.fLeafList[i20].getParticleId()) {
                    iArr2[i18] = i20;
                    i18++;
                }
            }
            iArr2[i18] = -1;
            i17++;
            i18++;
        }
        int i21 = this.fLeafCount * 4;
        CMStateSet[] cMStateSetArr = new CMStateSet[i21];
        this.fFinalStateFlags = new boolean[i21];
        this.fTransTable = new int[i21];
        CMStateSet firstPos = this.fHeadNode.firstPos();
        this.fTransTable[0] = makeDefStateList();
        cMStateSetArr[0] = firstPos;
        Hashtable hashtable = new Hashtable();
        int i22 = 0;
        while (i22 < i6) {
            CMStateSet cMStateSet2 = cMStateSetArr[i22];
            int[] iArr3 = this.fTransTable[i22];
            this.fFinalStateFlags[i22] = cMStateSet2.getBit(i5);
            i22++;
            int i23 = i9;
            int i24 = i23;
            CMStateSet cMStateSet3 = cMStateSet;
            while (i23 < this.fElemMapSize) {
                if (cMStateSet3 == null) {
                    cMStateSet3 = new CMStateSet(this.fLeafCount);
                } else {
                    cMStateSet3.zeroBits();
                }
                int i25 = i24 + 1;
                int i26 = iArr2[i24];
                while (i26 != i7) {
                    if (cMStateSet2.getBit(i26)) {
                        cMStateSet3.union(this.fFollowList[i26]);
                    }
                    i26 = iArr2[i25];
                    i25++;
                    i7 = -1;
                }
                if (cMStateSet3.isEmpty()) {
                    i2 = i5;
                    i3 = i25;
                } else {
                    Integer num = (Integer) hashtable.get(cMStateSet3);
                    int intValue = num == null ? i6 : num.intValue();
                    if (intValue == i6) {
                        cMStateSetArr[i6] = cMStateSet3;
                        this.fTransTable[i6] = makeDefStateList();
                        hashtable.put(cMStateSet3, new Integer(i6));
                        i6++;
                        cMStateSet3 = cMStateSet;
                    }
                    iArr3[i23] = intValue;
                    if (i6 == i21) {
                        int i27 = (int) (i21 * 1.5d);
                        CMStateSet[] cMStateSetArr2 = new CMStateSet[i27];
                        boolean[] zArr = new boolean[i27];
                        i2 = i5;
                        int[][] iArr4 = new int[i27];
                        i3 = i25;
                        int i28 = 0;
                        while (i28 < i21) {
                            cMStateSetArr2[i28] = cMStateSetArr[i28];
                            zArr[i28] = this.fFinalStateFlags[i28];
                            iArr4[i28] = this.fTransTable[i28];
                            i28++;
                            i6 = i6;
                        }
                        this.fFinalStateFlags = zArr;
                        this.fTransTable = iArr4;
                        i21 = i27;
                        cMStateSetArr = cMStateSetArr2;
                    } else {
                        i2 = i5;
                        i3 = i25;
                    }
                }
                i23++;
                i5 = i2;
                i24 = i3;
                cMStateSet = null;
                i7 = -1;
            }
            i9 = 0;
        }
        ?? r1 = cMStateSet;
        this.fHeadNode = r1;
        this.fLeafList = r1;
        this.fFollowList = r1;
        this.fLeafListType = r1;
        this.fElemMapId = r1;
    }

    private void calcFollowList(CMNode cMNode) {
        if (cMNode.type() == 101) {
            XSCMBinOp xSCMBinOp = (XSCMBinOp) cMNode;
            calcFollowList(xSCMBinOp.getLeft());
            calcFollowList(xSCMBinOp.getRight());
            return;
        }
        int i = 0;
        if (cMNode.type() == 102) {
            XSCMBinOp xSCMBinOp2 = (XSCMBinOp) cMNode;
            calcFollowList(xSCMBinOp2.getLeft());
            calcFollowList(xSCMBinOp2.getRight());
            CMStateSet lastPos = xSCMBinOp2.getLeft().lastPos();
            CMStateSet firstPos = xSCMBinOp2.getRight().firstPos();
            while (i < this.fLeafCount) {
                if (lastPos.getBit(i)) {
                    this.fFollowList[i].union(firstPos);
                }
                i++;
            }
            return;
        }
        if (cMNode.type() != 4 && cMNode.type() != 6) {
            if (cMNode.type() == 5) {
                calcFollowList(((XSCMUniOp) cMNode).getChild());
                return;
            }
            return;
        }
        calcFollowList(((XSCMUniOp) cMNode).getChild());
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
        if (type == 1) {
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append("Leaf: (pos=");
            XSCMLeaf xSCMLeaf = (XSCMLeaf) cMNode;
            sb.append(xSCMLeaf.getPosition());
            sb.append("), ");
            sb.append("(elemIndex=");
            sb.append(xSCMLeaf.getLeaf());
            sb.append(") ");
            printStream.print(sb.toString());
            if (cMNode.isNullable()) {
                System.out.print(" Nullable ");
            }
            System.out.print("firstPos=");
            System.out.print(cMNode.firstPos().toString());
            System.out.print(" lastPos=");
            System.out.println(cMNode.lastPos().toString());
            return;
        }
        if (type == 2) {
            System.out.print("Any Node: ");
            System.out.print("firstPos=");
            System.out.print(cMNode.firstPos().toString());
            System.out.print(" lastPos=");
            System.out.println(cMNode.lastPos().toString());
            return;
        }
        if (type == 4 || type == 5 || type == 6) {
            System.out.print("Rep Node ");
            if (cMNode.isNullable()) {
                System.out.print("Nullable ");
            }
            System.out.print("firstPos=");
            System.out.print(cMNode.firstPos().toString());
            System.out.print(" lastPos=");
            System.out.println(cMNode.lastPos().toString());
            dumpTree(((XSCMUniOp) cMNode).getChild(), i + 1);
            return;
        }
        if (type != 101 && type != 102) {
            throw new RuntimeException("ImplementationMessages.VAL_NIICM");
        }
        if (type == 101) {
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
        XSCMBinOp xSCMBinOp = (XSCMBinOp) cMNode;
        int i3 = i + 1;
        dumpTree(xSCMBinOp.getLeft(), i3);
        dumpTree(xSCMBinOp.getRight(), i3);
    }

    private int[] makeDefStateList() {
        int[] iArr = new int[this.fElemMapSize];
        for (int i = 0; i < this.fElemMapSize; i++) {
            iArr[i] = -1;
        }
        return iArr;
    }

    private void postTreeBuildInit(CMNode cMNode) throws RuntimeException {
        cMNode.setMaxStates(this.fLeafCount);
        if (cMNode.type() == 2) {
            XSCMLeaf xSCMLeaf = (XSCMLeaf) cMNode;
            int position = xSCMLeaf.getPosition();
            this.fLeafList[position] = xSCMLeaf;
            this.fLeafListType[position] = 2;
            return;
        }
        if (cMNode.type() == 101 || cMNode.type() == 102) {
            XSCMBinOp xSCMBinOp = (XSCMBinOp) cMNode;
            postTreeBuildInit(xSCMBinOp.getLeft());
            postTreeBuildInit(xSCMBinOp.getRight());
        } else if (cMNode.type() == 4 || cMNode.type() == 6 || cMNode.type() == 5) {
            postTreeBuildInit(((XSCMUniOp) cMNode).getChild());
        } else {
            if (cMNode.type() != 1) {
                throw new RuntimeException("ImplementationMessages.VAL_NIICM");
            }
            XSCMLeaf xSCMLeaf2 = (XSCMLeaf) cMNode;
            int position2 = xSCMLeaf2.getPosition();
            this.fLeafList[position2] = xSCMLeaf2;
            this.fLeafListType[position2] = 1;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.models.XSCMValidator
    public boolean checkUniqueParticleAttribution(SubstitutionGroupHandler substitutionGroupHandler) throws XMLSchemaException {
        short s;
        int i = this.fElemMapSize;
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i, i);
        int i2 = 0;
        while (true) {
            int[][] iArr = this.fTransTable;
            if (i2 >= iArr.length || iArr[i2] == null) {
                break;
            }
            int i3 = 0;
            while (i3 < this.fElemMapSize) {
                int i4 = i3 + 1;
                for (int i5 = i4; i5 < this.fElemMapSize; i5++) {
                    int[] iArr2 = this.fTransTable[i2];
                    if (iArr2[i3] != -1 && iArr2[i5] != -1) {
                        byte[] bArr2 = bArr[i3];
                        if (bArr2[i5] == 0) {
                            Object[] objArr = this.fElemMap;
                            bArr2[i5] = XSConstraints.overlapUPA(objArr[i3], objArr[i5], substitutionGroupHandler) ? (byte) 1 : (byte) -1;
                        }
                    }
                }
                i3 = i4;
            }
            i2++;
        }
        for (int i6 = 0; i6 < this.fElemMapSize; i6++) {
            for (int i7 = 0; i7 < this.fElemMapSize; i7++) {
                if (bArr[i6][i7] == 1) {
                    throw new XMLSchemaException(XmlErrorCodes.UNIQUE_PARTICLE_ATTRIBUTION, new Object[]{this.fElemMap[i6].toString(), this.fElemMap[i7].toString()});
                }
            }
        }
        for (int i8 = 0; i8 < this.fElemMapSize; i8++) {
            if (this.fElemMapType[i8] == 2 && ((s = ((XSWildcardDecl) this.fElemMap[i8]).fType) == 3 || s == 2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.models.XSCMValidator
    public boolean endContentModel(int[] iArr) {
        return this.fFinalStateFlags[iArr[0]];
    }

    public Object findMatchingDecl(QName qName, SubstitutionGroupHandler substitutionGroupHandler) {
        for (int i = 0; i < this.fElemMapSize; i++) {
            int i2 = this.fElemMapType[i];
            if (i2 == 1) {
                XSElementDecl matchingElemDecl = substitutionGroupHandler.getMatchingElemDecl(qName, (XSElementDecl) this.fElemMap[i]);
                if (matchingElemDecl != null) {
                    return matchingElemDecl;
                }
            } else if (i2 == 2 && ((XSWildcardDecl) this.fElemMap[i]).allowNamespace(qName.uri)) {
                return this.fElemMap[i];
            }
        }
        return null;
    }

    public boolean isFinalState(int i) {
        if (i < 0) {
            return false;
        }
        return this.fFinalStateFlags[i];
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.models.XSCMValidator
    public Object oneTransition(QName qName, int[] iArr, SubstitutionGroupHandler substitutionGroupHandler) {
        int i = iArr[0];
        if (i == -1 || i == -2) {
            if (i == -1) {
                iArr[0] = -2;
            }
            return findMatchingDecl(qName, substitutionGroupHandler);
        }
        Object obj = null;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= this.fElemMapSize) {
                break;
            }
            i3 = this.fTransTable[i][i2];
            if (i3 != -1) {
                int i4 = this.fElemMapType[i2];
                if (i4 != 1) {
                    if (i4 == 2 && ((XSWildcardDecl) this.fElemMap[i2]).allowNamespace(qName.uri)) {
                        obj = this.fElemMap[i2];
                        break;
                    }
                } else {
                    obj = substitutionGroupHandler.getMatchingElemDecl(qName, (XSElementDecl) this.fElemMap[i2]);
                    if (obj != null) {
                        break;
                    }
                }
            }
            i2++;
        }
        if (i2 != this.fElemMapSize) {
            iArr[0] = i3;
            return obj;
        }
        iArr[1] = iArr[0];
        iArr[0] = -1;
        return findMatchingDecl(qName, substitutionGroupHandler);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.models.XSCMValidator
    public int[] startContentModel() {
        return new int[]{0};
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.models.XSCMValidator
    public Vector whatCanGoHere(int[] iArr) {
        int i = iArr[0];
        if (i < 0) {
            i = iArr[1];
        }
        Vector vector = new Vector();
        for (int i2 = 0; i2 < this.fElemMapSize; i2++) {
            if (this.fTransTable[i][i2] != -1) {
                vector.addElement(this.fElemMap[i2]);
            }
        }
        return vector;
    }
}
