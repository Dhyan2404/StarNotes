package org.apache.commons.compress.harmony.unpack200;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;
import org.apache.commons.compress.harmony.unpack200.bytecode.Attribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.CodeAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.ExceptionTableEntry;
import org.apache.commons.compress.harmony.unpack200.bytecode.NewAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.OperandManager;

/* loaded from: classes12.dex */
public class BcBands extends BandSet {

    /* renamed from: a */
    public byte[][][] f106838a;

    /* renamed from: b */
    public int[] f106839b;

    /* renamed from: c */
    public int[] f106840c;

    /* renamed from: d */
    public int[] f106841d;

    /* renamed from: e */
    public int[] f106842e;

    /* renamed from: f */
    public int[] f106843f;

    /* renamed from: g */
    public int[] f106844g;

    /* renamed from: h */
    public int[] f106845h;

    /* renamed from: i */
    public int[] f106846i;

    /* renamed from: j */
    public int[] f106847j;

    /* renamed from: k */
    public int[] f106848k;

    /* renamed from: l */
    public int[] f106849l;

    /* renamed from: m */
    public int[] f106850m;

    /* renamed from: n */
    public int[] f106851n;

    /* renamed from: o */
    public int[] f106852o;

    /* renamed from: p */
    public int[] f106853p;

    /* renamed from: q */
    public int[] f106854q;

    /* renamed from: r */
    public int[] f106855r;

    /* renamed from: s */
    public int[] f106856s;

    /* renamed from: t */
    public int[] f106857t;

    /* renamed from: u */
    public int[] f106858u;

    /* renamed from: v */
    public int[] f106859v;

    /* renamed from: w */
    public int[] f106860w;

    /* renamed from: x */
    public int[] f106861x;

    /* renamed from: y */
    public int[][] f106862y;

    /* renamed from: z */
    public List<Integer> f106863z;

    public BcBands(Segment segment) {
        super(segment);
    }

    /* renamed from: c */
    public final boolean m67019c(int i) {
        return i >= 21 && i <= 25;
    }

    /* renamed from: d */
    public final boolean m67020d(int i) {
        return i >= 54 && i <= 58;
    }

    /* renamed from: e */
    public final boolean m67021e(int i) {
        return (i >= 153 && i <= 166) || i == 198 || i == 199;
    }

    public int[] getBcByte() {
        return this.f106841d;
    }

    public int[] getBcCaseCount() {
        return this.f106839b;
    }

    public int[] getBcCaseValue() {
        return this.f106840c;
    }

    public int[] getBcClassRef() {
        return this.f106850m;
    }

    public int[] getBcDoubleRef() {
        return this.f106848k;
    }

    public int[] getBcFieldRef() {
        return this.f106851n;
    }

    public int[] getBcFloatRef() {
        return this.f106846i;
    }

    public int[] getBcIMethodRef() {
        return this.f106853p;
    }

    public int[] getBcInitRef() {
        return this.f106858u;
    }

    public int[] getBcIntRef() {
        return this.f106845h;
    }

    public int[] getBcLabel() {
        return this.f106844g;
    }

    public int[] getBcLocal() {
        return this.f106842e;
    }

    public int[] getBcLongRef() {
        return this.f106847j;
    }

    public int[] getBcMethodRef() {
        return this.f106852o;
    }

    public int[] getBcShort() {
        return this.f106843f;
    }

    public int[] getBcStringRef() {
        return this.f106849l;
    }

    public int[] getBcSuperField() {
        return this.f106855r;
    }

    public int[] getBcSuperMethod() {
        return this.f106857t;
    }

    public int[] getBcThisField() {
        return this.f106854q;
    }

    public int[] getBcThisMethod() {
        return this.f106856s;
    }

    public byte[][][] getMethodByteCodePacked() {
        return this.f106838a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x011c, code lost:
    
        if (m67021e(r5) != false) goto L62;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:35:0x00fc. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:36:0x00ff. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:37:0x0102. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:38:0x0105. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:39:0x0108. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0151 A[PHI: r10
      0x0151: PHI (r10v15 int) = (r10v12 int), (r10v16 int), (r10v12 int), (r10v12 int) binds: [B:36:0x00ff, B:61:0x014b, B:39:0x0108, B:45:0x011c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x015d  */
    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void read(java.io.InputStream r39) throws java.io.IOException, org.apache.commons.compress.harmony.pack200.Pack200Exception {
        /*
            Method dump skipped, instructions count: 930
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.harmony.unpack200.BcBands.read(java.io.InputStream):void");
    }

    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void unpack() throws Pack200Exception {
        int[] iArr;
        int[] iArr2;
        String[][] strArr;
        AttributeLayout attributeLayout;
        AttributeLayout attributeLayout2;
        ArrayList<List<Attribute>> arrayList;
        List<Attribute> list;
        List<Attribute> list2;
        int classCount = this.header.getClassCount();
        long[][] methodFlags = this.segment.getClassBands().getMethodFlags();
        int[] codeMaxNALocals = this.segment.getClassBands().getCodeMaxNALocals();
        int[] codeMaxStack = this.segment.getClassBands().getCodeMaxStack();
        List[][] methodAttributes = this.segment.getClassBands().getMethodAttributes();
        String[][] methodDescr = this.segment.getClassBands().getMethodDescr();
        AttributeLayoutMap attributeDefinitionMap = this.segment.getAttrDefinitionBands().getAttributeDefinitionMap();
        AttributeLayout attributeLayout3 = attributeDefinitionMap.getAttributeLayout(AttributeLayout.ACC_ABSTRACT, 2);
        AttributeLayout attributeLayout4 = attributeDefinitionMap.getAttributeLayout(AttributeLayout.ACC_NATIVE, 2);
        AttributeLayout attributeLayout5 = attributeDefinitionMap.getAttributeLayout(AttributeLayout.ACC_STATIC, 2);
        int size = this.f106863z.size();
        int[] iArr3 = new int[size];
        for (int i = 0; i < size; i++) {
            iArr3[i] = this.f106863z.get(i).intValue();
        }
        OperandManager operandManager = new OperandManager(this.f106839b, this.f106840c, this.f106841d, this.f106843f, this.f106842e, this.f106844g, this.f106845h, this.f106846i, this.f106847j, this.f106848k, this.f106849l, this.f106850m, this.f106851n, this.f106852o, this.f106853p, this.f106854q, this.f106855r, this.f106856s, this.f106857t, this.f106858u, iArr3);
        operandManager.setSegment(this.segment);
        ArrayList<List<Attribute>> orderedCodeAttributes = this.segment.getClassBands().getOrderedCodeAttributes();
        int[] codeHandlerCount = this.segment.getClassBands().getCodeHandlerCount();
        int[][] codeHandlerStartP = this.segment.getClassBands().getCodeHandlerStartP();
        int[][] codeHandlerEndPO = this.segment.getClassBands().getCodeHandlerEndPO();
        int[][] codeHandlerCatchPO = this.segment.getClassBands().getCodeHandlerCatchPO();
        int[][] codeHandlerClassRCN = this.segment.getClassBands().getCodeHandlerClassRCN();
        ArrayList<List<Attribute>> arrayList2 = orderedCodeAttributes;
        boolean hasAllCodeFlags = this.segment.getSegmentHeader().getOptions().hasAllCodeFlags();
        boolean[] codeHasAttributes = this.segment.getClassBands().getCodeHasAttributes();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < classCount) {
            int i5 = classCount;
            int length = methodFlags[i2].length;
            int[][] iArr4 = codeHandlerEndPO;
            int[][] iArr5 = codeHandlerCatchPO;
            int i6 = i3;
            int i7 = i4;
            int i8 = 0;
            while (i8 < length) {
                int i9 = length;
                long[][] jArr = methodFlags;
                long j = methodFlags[i2][i8];
                if (attributeLayout3.matches(j) || attributeLayout4.matches(j)) {
                    iArr = codeMaxNALocals;
                    iArr2 = codeMaxStack;
                    strArr = methodDescr;
                    attributeLayout = attributeLayout5;
                    attributeLayout2 = attributeLayout3;
                    arrayList = arrayList2;
                    i7 = i7;
                } else {
                    int i10 = codeMaxStack[i6];
                    int i11 = codeMaxNALocals[i6];
                    if (!attributeLayout5.matches(j)) {
                        i11++;
                    }
                    int countInvokeInterfaceArgs = i11 + SegmentUtils.countInvokeInterfaceArgs(methodDescr[i2][i8]);
                    String[] cpClass = this.segment.getCpBands().getCpClass();
                    operandManager.setCurrentClass(cpClass[this.segment.getClassBands().getClassThisInts()[i2]]);
                    operandManager.setSuperClass(cpClass[this.segment.getClassBands().getClassSuperInts()[i2]]);
                    ArrayList arrayList3 = new ArrayList();
                    iArr = codeMaxNALocals;
                    if (codeHandlerCount != null) {
                        int i12 = 0;
                        while (i12 < codeHandlerCount[i6]) {
                            int i13 = codeHandlerClassRCN[i6][i12] - 1;
                            int[] iArr6 = codeMaxStack;
                            arrayList3.add(new ExceptionTableEntry(codeHandlerStartP[i6][i12], iArr4[i6][i12], iArr5[i6][i12], i13 != -1 ? this.segment.getCpBands().cpClassValue(i13) : null));
                            i12++;
                            codeMaxStack = iArr6;
                            methodDescr = methodDescr;
                            attributeLayout5 = attributeLayout5;
                            attributeLayout3 = attributeLayout3;
                        }
                    }
                    iArr2 = codeMaxStack;
                    strArr = methodDescr;
                    attributeLayout = attributeLayout5;
                    attributeLayout2 = attributeLayout3;
                    CodeAttribute codeAttribute = new CodeAttribute(i10, countInvokeInterfaceArgs, this.f106838a[i2][i8], this.segment, operandManager, arrayList3);
                    List<Attribute> list3 = methodAttributes[i2][i8];
                    int i14 = 0;
                    for (Attribute attribute : list3) {
                        if (!(attribute instanceof NewAttribute) || ((NewAttribute) attribute).getLayoutIndex() >= 15) {
                            break;
                        } else {
                            i14++;
                        }
                    }
                    list3.add(i14, codeAttribute);
                    codeAttribute.renumber(codeAttribute.byteCodeOffsets);
                    if (hasAllCodeFlags) {
                        arrayList = arrayList2;
                        list2 = arrayList.get(i6);
                    } else {
                        arrayList = arrayList2;
                        if (codeHasAttributes[i6]) {
                            int i15 = i7;
                            list = arrayList.get(i15);
                            i7 = i15 + 1;
                        } else {
                            list = Collections.EMPTY_LIST;
                        }
                        list2 = list;
                    }
                    for (Attribute attribute2 : list2) {
                        codeAttribute.addAttribute(attribute2);
                        if (attribute2.hasBCIRenumbering()) {
                            ((BCIRenumberedAttribute) attribute2).renumber(codeAttribute.byteCodeOffsets);
                        }
                    }
                    i6++;
                }
                i8++;
                arrayList2 = arrayList;
                methodFlags = jArr;
                length = i9;
                codeMaxNALocals = iArr;
                codeMaxStack = iArr2;
                methodDescr = strArr;
                attributeLayout5 = attributeLayout;
                attributeLayout3 = attributeLayout2;
            }
            i2++;
            i4 = i7;
            i3 = i6;
            classCount = i5;
            codeHandlerCatchPO = iArr5;
            codeHandlerEndPO = iArr4;
            codeMaxNALocals = codeMaxNALocals;
        }
    }
}
