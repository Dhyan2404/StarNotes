package org.apache.commons.compress.harmony.unpack200;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.IntFunction;
import java.util.function.IntUnaryOperator;
import org.apache.commons.compress.harmony.pack200.BHSDCodec;
import org.apache.commons.compress.harmony.pack200.Codec;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;
import org.apache.commons.compress.harmony.unpack200.ClassBands;
import org.apache.commons.compress.harmony.unpack200.bytecode.Attribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPClass;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPUTF8;
import org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry;
import org.apache.commons.compress.harmony.unpack200.bytecode.ConstantValueAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.DeprecatedAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.EnclosingMethodAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.ExceptionsAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.LineNumberTableAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.LocalVariableTableAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.LocalVariableTypeTableAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.SignatureAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.SourceFileAttribute;

/* loaded from: classes12.dex */
public class ClassBands extends BandSet {

    /* renamed from: A */
    public final AttributeLayoutMap f106864A;

    /* renamed from: B */
    public final CpBands f106865B;

    /* renamed from: C */
    public final SegmentOptions f106866C;

    /* renamed from: D */
    public final int f106867D;

    /* renamed from: E */
    public int[] f106868E;

    /* renamed from: F */
    public int[][] f106869F;

    /* renamed from: G */
    public int[][] f106870G;

    /* renamed from: H */
    public int[][] f106871H;

    /* renamed from: I */
    public int[][] f106872I;

    /* renamed from: J */
    public boolean[] f106873J;

    /* renamed from: a */
    public int[] f106874a;

    /* renamed from: b */
    public long[] f106875b;

    /* renamed from: c */
    public long[] f106876c;

    /* renamed from: d */
    public int[][] f106877d;

    /* renamed from: e */
    public int[] f106878e;

    /* renamed from: f */
    public int[] f106879f;

    /* renamed from: g */
    public String[] f106880g;

    /* renamed from: h */
    public int[] f106881h;

    /* renamed from: i */
    public ArrayList<Attribute>[] f106882i;

    /* renamed from: j */
    public int[] f106883j;

    /* renamed from: k */
    public int[] f106884k;

    /* renamed from: l */
    public IcTuple[][] f106885l;

    /* renamed from: m */
    public List<Attribute>[] f106886m;

    /* renamed from: n */
    public int[] f106887n;

    /* renamed from: o */
    public int[] f106888o;

    /* renamed from: p */
    public int[] f106889p;

    /* renamed from: q */
    public ArrayList<Attribute>[][] f106890q;

    /* renamed from: r */
    public String[][] f106891r;

    /* renamed from: s */
    public int[][] f106892s;

    /* renamed from: t */
    public long[][] f106893t;

    /* renamed from: u */
    public long[][] f106894u;

    /* renamed from: v */
    public ArrayList<Attribute>[][] f106895v;

    /* renamed from: w */
    public String[][] f106896w;

    /* renamed from: x */
    public int[][] f106897x;

    /* renamed from: y */
    public long[][] f106898y;

    /* renamed from: z */
    public long[][] f106899z;

    public ClassBands(Segment segment) {
        super(segment);
        this.f106864A = segment.getAttrDefinitionBands().getAttributeDefinitionMap();
        this.f106865B = segment.getCpBands();
        this.f106867D = this.header.getClassCount();
        this.f106866C = this.header.getOptions();
    }

    /* renamed from: g */
    public static /* synthetic */ ArrayList m67025g(int i) {
        return new ArrayList();
    }

    /* renamed from: h */
    public static /* synthetic */ List m67026h(int i) {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ int m67027i(AttributeLayout[] attributeLayoutArr, int i) {
        return SegmentUtils.countMatches(this.f106898y, attributeLayoutArr[i]);
    }

    /* renamed from: f */
    public final int m67028f(int[][] iArr, long[][] jArr, int i) {
        int i2 = 0;
        for (int[] iArr2 : iArr) {
            int i3 = 0;
            while (true) {
                if (i3 < iArr2.length) {
                    i2 += this.f106864A.getAttributeLayout(iArr2[i3], i).numBackwardsCallables();
                    i3++;
                }
            }
        }
        int i4 = 0;
        for (long[] jArr2 : jArr) {
            int i5 = 0;
            while (true) {
                if (i5 < jArr2.length) {
                    i4 = (int) (i4 | jArr2[i5]);
                    i5++;
                }
            }
        }
        for (int i6 = 0; i6 < 26; i6++) {
            if (((1 << i6) & i4) != 0) {
                i2 += this.f106864A.getAttributeLayout(i6, i).numBackwardsCallables();
            }
        }
        return i2;
    }

    public ArrayList<Attribute>[] getClassAttributes() {
        return this.f106882i;
    }

    public int[] getClassFieldCount() {
        return this.f106874a;
    }

    public long[] getClassFlags() {
        if (this.f106876c == null) {
            int i = 0;
            long j = 32767;
            for (int i2 = 0; i2 < 16; i2++) {
                AttributeLayout attributeLayout = this.f106864A.getAttributeLayout(i2, 0);
                if (attributeLayout != null && !attributeLayout.isDefaultLayout()) {
                    j &= ~(1 << i2);
                }
            }
            this.f106876c = new long[this.f106875b.length];
            while (true) {
                long[] jArr = this.f106875b;
                if (i >= jArr.length) {
                    break;
                }
                this.f106876c[i] = jArr[i] & j;
                i++;
            }
        }
        return this.f106876c;
    }

    public int[][] getClassInterfacesInts() {
        return this.f106877d;
    }

    public int[] getClassMethodCount() {
        return this.f106878e;
    }

    public int[] getClassSuperInts() {
        return this.f106879f;
    }

    public int[] getClassThisInts() {
        return this.f106881h;
    }

    public int[] getClassVersionMajor() {
        return this.f106883j;
    }

    public int[] getClassVersionMinor() {
        return this.f106884k;
    }

    public int[][] getCodeHandlerCatchPO() {
        return this.f106871H;
    }

    public int[][] getCodeHandlerClassRCN() {
        return this.f106872I;
    }

    public int[] getCodeHandlerCount() {
        return this.f106887n;
    }

    public int[][] getCodeHandlerEndPO() {
        return this.f106870G;
    }

    public int[][] getCodeHandlerStartP() {
        return this.f106869F;
    }

    public boolean[] getCodeHasAttributes() {
        return this.f106873J;
    }

    public int[] getCodeMaxNALocals() {
        return this.f106888o;
    }

    public int[] getCodeMaxStack() {
        return this.f106889p;
    }

    public ArrayList<Attribute>[][] getFieldAttributes() {
        return this.f106890q;
    }

    public int[][] getFieldDescrInts() {
        return this.f106892s;
    }

    public long[][] getFieldFlags() {
        if (this.f106894u == null) {
            long j = 32767;
            for (int i = 0; i < 16; i++) {
                AttributeLayout attributeLayout = this.f106864A.getAttributeLayout(i, 1);
                if (attributeLayout != null && !attributeLayout.isDefaultLayout()) {
                    j &= ~(1 << i);
                }
            }
            this.f106894u = new long[this.f106893t.length];
            int i2 = 0;
            while (true) {
                long[][] jArr = this.f106893t;
                if (i2 >= jArr.length) {
                    break;
                }
                this.f106894u[i2] = new long[jArr[i2].length];
                int i3 = 0;
                while (true) {
                    long[] jArr2 = this.f106893t[i2];
                    if (i3 < jArr2.length) {
                        this.f106894u[i2][i3] = jArr2[i3] & j;
                        i3++;
                    }
                }
                i2++;
            }
        }
        return this.f106894u;
    }

    public IcTuple[][] getIcLocal() {
        return this.f106885l;
    }

    public ArrayList<Attribute>[][] getMethodAttributes() {
        return this.f106895v;
    }

    public String[][] getMethodDescr() {
        return this.f106896w;
    }

    public int[][] getMethodDescrInts() {
        return this.f106897x;
    }

    public long[][] getMethodFlags() {
        if (this.f106899z == null) {
            long j = 32767;
            for (int i = 0; i < 16; i++) {
                AttributeLayout attributeLayout = this.f106864A.getAttributeLayout(i, 2);
                if (attributeLayout != null && !attributeLayout.isDefaultLayout()) {
                    j &= ~(1 << i);
                }
            }
            this.f106899z = new long[this.f106898y.length];
            int i2 = 0;
            while (true) {
                long[][] jArr = this.f106898y;
                if (i2 >= jArr.length) {
                    break;
                }
                this.f106899z[i2] = new long[jArr[i2].length];
                int i3 = 0;
                while (true) {
                    long[] jArr2 = this.f106898y[i2];
                    if (i3 < jArr2.length) {
                        this.f106899z[i2][i3] = jArr2[i3] & j;
                        i3++;
                    }
                }
                i2++;
            }
        }
        return this.f106899z;
    }

    public ArrayList<List<Attribute>> getOrderedCodeAttributes() {
        ArrayList<List<Attribute>> arrayList = new ArrayList<>(this.f106886m.length);
        for (int i = 0; i < this.f106886m.length; i++) {
            ArrayList arrayList2 = new ArrayList(this.f106886m[i].size());
            for (int i2 = 0; i2 < this.f106886m[i].size(); i2++) {
                arrayList2.add(this.f106886m[i].get(i2));
            }
            arrayList.add(arrayList2);
        }
        return arrayList;
    }

    public long[] getRawClassFlags() {
        return this.f106875b;
    }

    /* renamed from: j */
    public final void m67029j(InputStream inputStream) throws IOException, Pack200Exception {
        AttributeLayout attributeLayout;
        List[] listArr;
        AttributeLayout attributeLayout2;
        int[] iArr;
        int i;
        int i2;
        int i3;
        AttributeLayout attributeLayout3;
        int i4;
        AttributeLayout attributeLayout4;
        int i5;
        int i6;
        AttributeLayout attributeLayout5;
        int i7;
        String str;
        String str2;
        int i8;
        int i9;
        int i10;
        int i11;
        int[] iArr2;
        int[][] iArr3;
        InputStream inputStream2 = inputStream;
        String[] cpUTF8 = this.f106865B.getCpUTF8();
        String[] cpClass = this.f106865B.getCpClass();
        ArrayList<Attribute>[] arrayListArr = new ArrayList[this.f106867D];
        this.f106882i = arrayListArr;
        Arrays.setAll(arrayListArr, new IntFunction() { // from class: com.sunia.HTREnginev2.ytd
            @Override // java.util.function.IntFunction
            public final Object apply(int i12) {
                ArrayList m67025g;
                m67025g = ClassBands.m67025g(i12);
                return m67025g;
            }
        });
        int i12 = this.f106867D;
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        long[] parseFlags = parseFlags("class_flags", inputStream, i12, bHSDCodec, this.f106866C.hasClassFlagsHi());
        this.f106875b = parseFlags;
        int[] decodeBandInt = decodeBandInt("class_attr_calls", inputStream2, bHSDCodec, m67028f(decodeBandInt("class_attr_indexes", inputStream2, bHSDCodec, decodeBandInt("class_attr_count", inputStream2, bHSDCodec, SegmentUtils.countBit16(parseFlags))), new long[][]{this.f106875b}, 0));
        AttributeLayout attributeLayout6 = this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_DEPRECATED, 0);
        AttributeLayout attributeLayout7 = this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_SOURCE_FILE, 0);
        int[] decodeBandInt2 = decodeBandInt("class_SourceFile_RUN", inputStream2, bHSDCodec, SegmentUtils.countMatches(this.f106875b, attributeLayout7));
        AttributeLayout attributeLayout8 = this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_ENCLOSING_METHOD, 0);
        int countMatches = SegmentUtils.countMatches(this.f106875b, attributeLayout8);
        int[] decodeBandInt3 = decodeBandInt("class_EnclosingMethod_RC", inputStream2, bHSDCodec, countMatches);
        int[] decodeBandInt4 = decodeBandInt("class_EnclosingMethod_RDN", inputStream2, bHSDCodec, countMatches);
        AttributeLayout attributeLayout9 = this.f106864A.getAttributeLayout("Signature", 0);
        int[] decodeBandInt5 = decodeBandInt("class_Signature_RS", inputStream2, bHSDCodec, SegmentUtils.countMatches(this.f106875b, attributeLayout9));
        int m67030k = m67030k(inputStream2, decodeBandInt);
        AttributeLayout attributeLayout10 = this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_INNER_CLASSES, 0);
        int[] decodeBandInt6 = decodeBandInt("class_InnerClasses_N", inputStream2, bHSDCodec, SegmentUtils.countMatches(this.f106875b, attributeLayout10));
        int[][] decodeBandInt7 = decodeBandInt("class_InnerClasses_RC", inputStream2, bHSDCodec, decodeBandInt6);
        int[][] decodeBandInt8 = decodeBandInt("class_InnerClasses_F", inputStream2, bHSDCodec, decodeBandInt6);
        int i13 = 0;
        int i14 = 0;
        while (i13 < decodeBandInt8.length) {
            AttributeLayout attributeLayout11 = attributeLayout10;
            int i15 = 0;
            while (true) {
                int[] iArr4 = decodeBandInt8[i13];
                iArr3 = decodeBandInt8;
                if (i15 < iArr4.length) {
                    if (iArr4[i15] != 0) {
                        i14++;
                    }
                    i15++;
                    decodeBandInt8 = iArr3;
                }
            }
            i13++;
            attributeLayout10 = attributeLayout11;
            decodeBandInt8 = iArr3;
        }
        AttributeLayout attributeLayout12 = attributeLayout10;
        int[][] iArr5 = decodeBandInt8;
        BHSDCodec bHSDCodec2 = Codec.UNSIGNED5;
        int[] decodeBandInt9 = decodeBandInt("class_InnerClasses_outer_RCN", inputStream2, bHSDCodec2, i14);
        int[] decodeBandInt10 = decodeBandInt("class_InnerClasses_name_RUN", inputStream2, bHSDCodec2, i14);
        AttributeLayout attributeLayout13 = this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_CLASS_FILE_VERSION, 0);
        int countMatches2 = SegmentUtils.countMatches(this.f106875b, attributeLayout13);
        int[] decodeBandInt11 = decodeBandInt("class_file_version_minor_H", inputStream2, bHSDCodec2, countMatches2);
        int[] decodeBandInt12 = decodeBandInt("class_file_version_major_H", inputStream2, bHSDCodec2, countMatches2);
        if (countMatches2 > 0) {
            int i16 = this.f106867D;
            this.f106883j = new int[i16];
            this.f106884k = new int[i16];
        }
        int defaultClassMajorVersion = this.header.getDefaultClassMajorVersion();
        int defaultClassMinorVersion = this.header.getDefaultClassMinorVersion();
        int i17 = this.f106866C.hasClassFlagsHi() ? 62 : 31;
        int i18 = i17 + 1;
        AttributeLayout[] attributeLayoutArr = new AttributeLayout[i18];
        AttributeLayout attributeLayout14 = attributeLayout13;
        int[] iArr6 = new int[i18];
        List[] listArr2 = new List[i18];
        int i19 = 0;
        while (i19 < i17) {
            int i20 = i17;
            AttributeLayout attributeLayout15 = attributeLayout9;
            AttributeLayout attributeLayout16 = this.f106864A.getAttributeLayout(i19, 0);
            if (attributeLayout16 != null && !attributeLayout16.isDefaultLayout()) {
                attributeLayoutArr[i19] = attributeLayout16;
                iArr6[i19] = SegmentUtils.countMatches(this.f106875b, attributeLayout16);
            }
            i19++;
            i17 = i20;
            attributeLayout9 = attributeLayout15;
        }
        AttributeLayout attributeLayout17 = attributeLayout9;
        int i21 = m67030k;
        int i22 = 0;
        while (i22 < i18) {
            if (iArr6[i22] > 0) {
                i11 = i18;
                NewAttributeBands attributeBands = this.f106864A.getAttributeBands(attributeLayoutArr[i22]);
                listArr2[i22] = attributeBands.parseAttributes(inputStream2, iArr6[i22]);
                int numBackwardsCallables = attributeLayoutArr[i22].numBackwardsCallables();
                if (numBackwardsCallables > 0) {
                    int[] iArr7 = new int[numBackwardsCallables];
                    iArr2 = iArr6;
                    System.arraycopy(decodeBandInt, i21, iArr7, 0, numBackwardsCallables);
                    attributeBands.setBackwardsCalls(iArr7);
                    i21 += numBackwardsCallables;
                    i22++;
                    inputStream2 = inputStream;
                    i18 = i11;
                    iArr6 = iArr2;
                }
            } else {
                i11 = i18;
            }
            iArr2 = iArr6;
            i22++;
            inputStream2 = inputStream;
            i18 = i11;
            iArr6 = iArr2;
        }
        int i23 = i18;
        this.f106885l = new IcTuple[this.f106867D];
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        int i29 = 0;
        int i30 = 0;
        while (i28 < this.f106867D) {
            int i31 = i30;
            long j = this.f106875b[i28];
            if (attributeLayout6.matches(j)) {
                attributeLayout = attributeLayout6;
                listArr = listArr2;
                this.f106882i[i28].add(new DeprecatedAttribute());
            } else {
                attributeLayout = attributeLayout6;
                listArr = listArr2;
            }
            if (attributeLayout7.matches(j)) {
                i = i28;
                ClassFileEntry value = attributeLayout7.getValue(decodeBandInt2[i25], this.f106865B.getConstantPool());
                if (value == null) {
                    String str3 = this.f106880g[i];
                    String substring = str3.substring(str3.lastIndexOf(47) + 1);
                    String substring2 = substring.substring(substring.lastIndexOf(46) + 1);
                    char[] charArray = substring2.toCharArray();
                    attributeLayout2 = attributeLayout7;
                    int i32 = 0;
                    while (true) {
                        if (i32 >= charArray.length) {
                            iArr = decodeBandInt2;
                            i10 = -1;
                            i32 = -1;
                            break;
                        } else {
                            iArr = decodeBandInt2;
                            if (charArray[i32] <= '-') {
                                i10 = -1;
                                break;
                            } else {
                                i32++;
                                decodeBandInt2 = iArr;
                            }
                        }
                    }
                    if (i32 > i10) {
                        substring2 = substring2.substring(0, i32);
                    }
                    value = this.f106865B.cpUTF8Value(substring2 + ".java", true);
                } else {
                    attributeLayout2 = attributeLayout7;
                    iArr = decodeBandInt2;
                }
                this.f106882i[i].add(new SourceFileAttribute((CPUTF8) value));
                i25++;
            } else {
                attributeLayout2 = attributeLayout7;
                iArr = decodeBandInt2;
                i = i28;
            }
            if (attributeLayout8.matches(j)) {
                CPClass cpClassValue = this.f106865B.cpClassValue(decodeBandInt3[i26]);
                int i33 = decodeBandInt4[i26];
                this.f106882i[i].add(new EnclosingMethodAttribute(cpClassValue, i33 != 0 ? this.f106865B.cpNameAndTypeValue(i33 - 1) : null));
                i26++;
            }
            AttributeLayout attributeLayout18 = attributeLayout17;
            if (attributeLayout18.matches(j)) {
                this.f106882i[i].add(new SignatureAttribute((CPUTF8) attributeLayout18.getValue(decodeBandInt5[i27], this.f106865B.getConstantPool())));
                i27++;
            }
            AttributeLayout attributeLayout19 = attributeLayout12;
            if (attributeLayout19.matches(j)) {
                this.f106885l[i] = new IcTuple[decodeBandInt6[i29]];
                i4 = i24;
                int i34 = 0;
                while (i34 < this.f106885l[i].length) {
                    int i35 = decodeBandInt7[i29][i34];
                    String str4 = cpClass[i35];
                    int i36 = iArr5[i29][i34];
                    if (i36 != 0) {
                        int i37 = decodeBandInt9[i4];
                        int i38 = decodeBandInt10[i4];
                        String str5 = cpClass[i37];
                        String str6 = cpUTF8[i38];
                        i4++;
                        i5 = i25;
                        i6 = i26;
                        attributeLayout5 = attributeLayout18;
                        i8 = i37;
                        i9 = i38;
                        str2 = str6;
                        str = str5;
                        i7 = i36;
                    } else {
                        i5 = i25;
                        IcTuple[] icTuples = this.segment.getIcBands().getIcTuples();
                        i6 = i26;
                        attributeLayout5 = attributeLayout18;
                        int i39 = 0;
                        while (true) {
                            if (i39 >= icTuples.length) {
                                i7 = i36;
                                str = null;
                                str2 = null;
                                break;
                            } else {
                                if (icTuples[i39].getC().equals(str4)) {
                                    int f = icTuples[i39].getF();
                                    String c2 = icTuples[i39].getC2();
                                    str2 = icTuples[i39].getN();
                                    i7 = f;
                                    str = c2;
                                    break;
                                }
                                i39++;
                            }
                        }
                        i8 = -1;
                        i9 = -1;
                    }
                    this.f106885l[i][i34] = new IcTuple(str4, i7, str, str2, i35, i8, i9, i34);
                    i34++;
                    i25 = i5;
                    i26 = i6;
                    attributeLayout18 = attributeLayout5;
                }
                i2 = i25;
                i3 = i26;
                attributeLayout3 = attributeLayout18;
                i29++;
            } else {
                i2 = i25;
                i3 = i26;
                attributeLayout3 = attributeLayout18;
                i4 = i24;
            }
            AttributeLayout attributeLayout20 = attributeLayout14;
            if (attributeLayout20.matches(j)) {
                this.f106883j[i] = decodeBandInt12[i31];
                this.f106884k[i] = decodeBandInt11[i31];
                i31++;
            } else {
                int[] iArr8 = this.f106883j;
                if (iArr8 != null) {
                    iArr8[i] = defaultClassMajorVersion;
                    this.f106884k[i] = defaultClassMinorVersion;
                }
            }
            int i40 = i23;
            int i41 = 0;
            while (i41 < i40) {
                AttributeLayout attributeLayout21 = attributeLayoutArr[i41];
                if (attributeLayout21 == null || !attributeLayout21.matches(j)) {
                    attributeLayout4 = attributeLayout20;
                } else {
                    attributeLayout4 = attributeLayout20;
                    this.f106882i[i].add(listArr[i41].get(0));
                    listArr[i41].remove(0);
                }
                i41++;
                attributeLayout20 = attributeLayout4;
            }
            attributeLayout14 = attributeLayout20;
            i28 = i + 1;
            i23 = i40;
            attributeLayout12 = attributeLayout19;
            i24 = i4;
            i30 = i31;
            attributeLayout6 = attributeLayout;
            listArr2 = listArr;
            attributeLayout7 = attributeLayout2;
            decodeBandInt2 = iArr;
            i25 = i2;
            i26 = i3;
            attributeLayout17 = attributeLayout3;
        }
    }

    /* renamed from: k */
    public final int m67030k(InputStream inputStream, int[] iArr) throws Pack200Exception, IOException {
        int i;
        String[] strArr = {"RVA", "RIA"};
        int i2 = 0;
        AttributeLayout attributeLayout = this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_VISIBLE_ANNOTATIONS, 0);
        AttributeLayout attributeLayout2 = this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_INVISIBLE_ANNOTATIONS, 0);
        int countMatches = SegmentUtils.countMatches(this.f106875b, attributeLayout);
        int countMatches2 = SegmentUtils.countMatches(this.f106875b, attributeLayout2);
        int[] iArr2 = {countMatches, countMatches2};
        int[] iArr3 = {0, 0};
        if (countMatches > 0) {
            iArr3[0] = iArr[0];
            if (countMatches2 > 0) {
                iArr3[1] = iArr[1];
                i = 2;
            }
            i = 1;
        } else if (countMatches2 > 0) {
            iArr3[1] = iArr[0];
            i = 1;
        } else {
            i = 0;
        }
        MetadataBandGroup[] m67036q = m67036q(inputStream, strArr, iArr2, iArr3, "class");
        List<Attribute> attributes = m67036q[0].getAttributes();
        List<Attribute> attributes2 = m67036q[1].getAttributes();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            long[] jArr = this.f106875b;
            if (i2 >= jArr.length) {
                return i;
            }
            if (attributeLayout.matches(jArr[i2])) {
                this.f106882i[i2].add(attributes.get(i3));
                i3++;
            }
            if (attributeLayout2.matches(this.f106875b[i2])) {
                this.f106882i[i2].add(attributes2.get(i4));
                i4++;
            }
            i2++;
        }
    }

    /* renamed from: l */
    public final void m67031l(InputStream inputStream, int i) throws IOException, Pack200Exception {
        AttributeLayout attributeLayout;
        int[] iArr;
        int i2;
        int[] iArr2;
        InputStream inputStream2 = inputStream;
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        long[] parseFlags = parseFlags("code_flags", inputStream, i, bHSDCodec, this.segment.getSegmentHeader().getOptions().hasCodeFlagsHi());
        int i3 = 0;
        for (int[] iArr3 : decodeBandInt("code_attr_indexes", inputStream2, bHSDCodec, decodeBandInt("code_attr_count", inputStream2, bHSDCodec, SegmentUtils.countBit16(parseFlags)))) {
            int i4 = 0;
            while (true) {
                if (i4 < iArr3.length) {
                    i3 += this.f106864A.getAttributeLayout(iArr3[i4], 3).numBackwardsCallables();
                    i4++;
                }
            }
        }
        BHSDCodec bHSDCodec2 = Codec.UNSIGNED5;
        int[] decodeBandInt = decodeBandInt("code_attr_calls", inputStream2, bHSDCodec2, i3);
        AttributeLayout attributeLayout2 = this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_LINE_NUMBER_TABLE, 3);
        int[] decodeBandInt2 = decodeBandInt("code_LineNumberTable_N", inputStream2, bHSDCodec2, SegmentUtils.countMatches(parseFlags, attributeLayout2));
        BHSDCodec bHSDCodec3 = Codec.BCI5;
        int[][] decodeBandInt3 = decodeBandInt("code_LineNumberTable_bci_P", inputStream2, bHSDCodec3, decodeBandInt2);
        int[][] decodeBandInt4 = decodeBandInt("code_LineNumberTable_line", inputStream2, bHSDCodec2, decodeBandInt2);
        AttributeLayout attributeLayout3 = this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_LOCAL_VARIABLE_TABLE, 3);
        AttributeLayout attributeLayout4 = this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_LOCAL_VARIABLE_TYPE_TABLE, 3);
        int[] decodeBandInt5 = decodeBandInt("code_LocalVariableTable_N", inputStream2, bHSDCodec2, SegmentUtils.countMatches(parseFlags, attributeLayout3));
        int[][] decodeBandInt6 = decodeBandInt("code_LocalVariableTable_bci_P", inputStream2, bHSDCodec3, decodeBandInt5);
        BHSDCodec bHSDCodec4 = Codec.BRANCH5;
        int[][] decodeBandInt7 = decodeBandInt("code_LocalVariableTable_span_O", inputStream2, bHSDCodec4, decodeBandInt5);
        CPUTF8[][] parseCPUTF8References = parseCPUTF8References("code_LocalVariableTable_name_RU", inputStream2, bHSDCodec2, decodeBandInt5);
        CPUTF8[][] parseCPSignatureReferences = parseCPSignatureReferences("code_LocalVariableTable_type_RS", inputStream2, bHSDCodec2, decodeBandInt5);
        int[][] decodeBandInt8 = decodeBandInt("code_LocalVariableTable_slot", inputStream2, bHSDCodec2, decodeBandInt5);
        AttributeLayout attributeLayout5 = attributeLayout4;
        int[] decodeBandInt9 = decodeBandInt("code_LocalVariableTypeTable_N", inputStream2, bHSDCodec2, SegmentUtils.countMatches(parseFlags, attributeLayout4));
        int[][] decodeBandInt10 = decodeBandInt("code_LocalVariableTypeTable_bci_P", inputStream2, bHSDCodec3, decodeBandInt9);
        int[][] decodeBandInt11 = decodeBandInt("code_LocalVariableTypeTable_span_O", inputStream2, bHSDCodec4, decodeBandInt9);
        CPUTF8[][] parseCPUTF8References2 = parseCPUTF8References("code_LocalVariableTypeTable_name_RU", inputStream2, bHSDCodec2, decodeBandInt9);
        CPUTF8[][] parseCPSignatureReferences2 = parseCPSignatureReferences("code_LocalVariableTypeTable_type_RS", inputStream2, bHSDCodec2, decodeBandInt9);
        int[][] decodeBandInt12 = decodeBandInt("code_LocalVariableTypeTable_slot", inputStream2, bHSDCodec2, decodeBandInt9);
        int i5 = this.f106866C.hasCodeFlagsHi() ? 62 : 31;
        int i6 = i5 + 1;
        AttributeLayout[] attributeLayoutArr = new AttributeLayout[i6];
        int[] iArr4 = new int[i6];
        List[] listArr = new List[i6];
        int i7 = 0;
        while (i7 < i5) {
            int i8 = i5;
            int[] iArr5 = decodeBandInt5;
            AttributeLayout attributeLayout6 = this.f106864A.getAttributeLayout(i7, 3);
            if (attributeLayout6 != null && !attributeLayout6.isDefaultLayout()) {
                attributeLayoutArr[i7] = attributeLayout6;
                iArr4[i7] = SegmentUtils.countMatches(parseFlags, attributeLayout6);
            }
            i7++;
            i5 = i8;
            decodeBandInt5 = iArr5;
        }
        int[] iArr6 = decodeBandInt5;
        int i9 = 0;
        int i10 = 0;
        while (i9 < i6) {
            if (iArr4[i9] > 0) {
                i2 = i6;
                NewAttributeBands attributeBands = this.f106864A.getAttributeBands(attributeLayoutArr[i9]);
                listArr[i9] = attributeBands.parseAttributes(inputStream2, iArr4[i9]);
                int numBackwardsCallables = attributeLayoutArr[i9].numBackwardsCallables();
                if (numBackwardsCallables > 0) {
                    int[] iArr7 = new int[numBackwardsCallables];
                    iArr2 = iArr4;
                    System.arraycopy(decodeBandInt, i10, iArr7, 0, numBackwardsCallables);
                    attributeBands.setBackwardsCalls(iArr7);
                    i10 += numBackwardsCallables;
                    i9++;
                    inputStream2 = inputStream;
                    i6 = i2;
                    iArr4 = iArr2;
                }
            } else {
                i2 = i6;
            }
            iArr2 = iArr4;
            i9++;
            inputStream2 = inputStream;
            i6 = i2;
            iArr4 = iArr2;
        }
        int i11 = i6;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i15 < i) {
            if (attributeLayout2.matches(parseFlags[i15])) {
                attributeLayout = attributeLayout2;
                iArr = decodeBandInt2;
                LineNumberTableAttribute lineNumberTableAttribute = new LineNumberTableAttribute(decodeBandInt2[i12], decodeBandInt3[i12], decodeBandInt4[i12]);
                i12++;
                this.f106886m[i15].add(lineNumberTableAttribute);
            } else {
                attributeLayout = attributeLayout2;
                iArr = decodeBandInt2;
            }
            if (attributeLayout3.matches(parseFlags[i15])) {
                LocalVariableTableAttribute localVariableTableAttribute = new LocalVariableTableAttribute(iArr6[i13], decodeBandInt6[i13], decodeBandInt7[i13], parseCPUTF8References[i13], parseCPSignatureReferences[i13], decodeBandInt8[i13]);
                i13++;
                this.f106886m[i15].add(localVariableTableAttribute);
            }
            AttributeLayout attributeLayout7 = attributeLayout5;
            if (attributeLayout7.matches(parseFlags[i15])) {
                LocalVariableTypeTableAttribute localVariableTypeTableAttribute = new LocalVariableTypeTableAttribute(decodeBandInt9[i14], decodeBandInt10[i14], decodeBandInt11[i14], parseCPUTF8References2[i14], parseCPSignatureReferences2[i14], decodeBandInt12[i14]);
                i14++;
                this.f106886m[i15].add(localVariableTypeTableAttribute);
            }
            int i16 = i11;
            int i17 = 0;
            while (i17 < i16) {
                AttributeLayout attributeLayout8 = attributeLayoutArr[i17];
                int i18 = i12;
                AttributeLayout[] attributeLayoutArr2 = attributeLayoutArr;
                if (attributeLayout8 != null && attributeLayout8.matches(parseFlags[i15])) {
                    this.f106886m[i15].add(listArr[i17].get(0));
                    listArr[i17].remove(0);
                }
                i17++;
                i12 = i18;
                attributeLayoutArr = attributeLayoutArr2;
            }
            i15++;
            attributeLayout5 = attributeLayout7;
            attributeLayout2 = attributeLayout;
            i11 = i16;
            decodeBandInt2 = iArr;
        }
    }

    /* renamed from: m */
    public final void m67032m(InputStream inputStream) throws Pack200Exception, IOException {
        char c;
        char c2 = 2;
        int countMatches = SegmentUtils.countMatches(this.f106898y, this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_CODE, 2));
        int[] decodeBandInt = decodeBandInt("code_headers", inputStream, Codec.BYTE1, countMatches);
        boolean hasAllCodeFlags = this.segment.getSegmentHeader().getOptions().hasAllCodeFlags();
        if (!hasAllCodeFlags) {
            this.f106873J = new boolean[countMatches];
        }
        int i = 0;
        for (int i2 = 0; i2 < countMatches; i2++) {
            if (decodeBandInt[i2] == 0) {
                i++;
                if (!hasAllCodeFlags) {
                    this.f106873J[i2] = true;
                }
            }
        }
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        int[] decodeBandInt2 = decodeBandInt("code_max_stack", inputStream, bHSDCodec, i);
        int[] decodeBandInt3 = decodeBandInt("code_max_na_locals", inputStream, bHSDCodec, i);
        int[] decodeBandInt4 = decodeBandInt("code_handler_count", inputStream, bHSDCodec, i);
        this.f106889p = new int[countMatches];
        this.f106888o = new int[countMatches];
        this.f106887n = new int[countMatches];
        int i3 = 0;
        int i4 = 0;
        while (i3 < countMatches) {
            int i5 = decodeBandInt[i3] & 255;
            if (i5 < 0) {
                throw new IllegalStateException("Shouldn't get here");
            }
            if (i5 == 0) {
                this.f106889p[i3] = decodeBandInt2[i4];
                this.f106888o[i3] = decodeBandInt3[i4];
                this.f106887n[i3] = decodeBandInt4[i4];
                i4++;
                c = c2;
            } else {
                if (i5 <= 144) {
                    int i6 = i5 - 1;
                    this.f106889p[i3] = i6 % 12;
                    this.f106888o[i3] = i6 / 12;
                    this.f106887n[i3] = 0;
                } else if (i5 <= 208) {
                    int i7 = i5 - 145;
                    this.f106889p[i3] = i7 % 8;
                    this.f106888o[i3] = i7 / 8;
                    this.f106887n[i3] = 1;
                } else {
                    if (i5 > 255) {
                        throw new IllegalStateException("Shouldn't get here either");
                    }
                    int i8 = i5 - 209;
                    this.f106889p[i3] = i8 % 7;
                    this.f106888o[i3] = i8 / 7;
                    c = 2;
                    this.f106887n[i3] = 2;
                }
                c = 2;
            }
            i3++;
            c2 = c;
        }
        this.f106869F = decodeBandInt("code_handler_start_P", inputStream, Codec.BCI5, this.f106887n);
        BHSDCodec bHSDCodec2 = Codec.BRANCH5;
        this.f106870G = decodeBandInt("code_handler_end_PO", inputStream, bHSDCodec2, this.f106887n);
        this.f106871H = decodeBandInt("code_handler_catch_PO", inputStream, bHSDCodec2, this.f106887n);
        this.f106872I = decodeBandInt("code_handler_class_RCN", inputStream, Codec.UNSIGNED5, this.f106887n);
        if (!hasAllCodeFlags) {
            countMatches = i;
        }
        List<Attribute>[] listArr = new List[countMatches];
        this.f106886m = listArr;
        Arrays.setAll(listArr, new IntFunction() { // from class: com.sunia.HTREnginev2.wtd
            @Override // java.util.function.IntFunction
            public final Object apply(int i9) {
                List m67026h;
                m67026h = ClassBands.m67026h(i9);
                return m67026h;
            }
        });
        m67031l(inputStream, countMatches);
    }

    /* renamed from: n */
    public final void m67033n(InputStream inputStream) throws IOException, Pack200Exception {
        int i;
        int[] iArr;
        AttributeLayout attributeLayout;
        AttributeLayout attributeLayout2;
        int[] iArr2 = this.f106874a;
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        long[][] parseFlags = parseFlags("field_flags", inputStream, iArr2, bHSDCodec, this.f106866C.hasFieldFlagsHi());
        this.f106893t = parseFlags;
        int[] decodeBandInt = decodeBandInt("field_attr_calls", inputStream, bHSDCodec, m67028f(decodeBandInt("field_attr_indexes", inputStream, bHSDCodec, decodeBandInt("field_attr_count", inputStream, bHSDCodec, SegmentUtils.countBit16(parseFlags))), this.f106893t, 1));
        this.f106890q = new ArrayList[this.f106867D];
        for (int i2 = 0; i2 < this.f106867D; i2++) {
            this.f106890q[i2] = new ArrayList[this.f106893t[i2].length];
            for (int i3 = 0; i3 < this.f106893t[i2].length; i3++) {
                this.f106890q[i2][i3] = new ArrayList<>();
            }
        }
        AttributeLayout attributeLayout3 = this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_CONSTANT_VALUE, 1);
        int countMatches = SegmentUtils.countMatches(this.f106893t, attributeLayout3);
        BHSDCodec bHSDCodec2 = Codec.UNSIGNED5;
        int[] decodeBandInt2 = decodeBandInt("field_ConstantValue_KQ", inputStream, bHSDCodec2, countMatches);
        AttributeLayout attributeLayout4 = this.f106864A.getAttributeLayout("Signature", 1);
        int[] decodeBandInt3 = decodeBandInt("field_Signature_RS", inputStream, bHSDCodec2, SegmentUtils.countMatches(this.f106893t, attributeLayout4));
        AttributeLayout attributeLayout5 = this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_DEPRECATED, 1);
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < this.f106867D) {
            int i7 = 0;
            while (true) {
                long[] jArr = this.f106893t[i4];
                if (i7 < jArr.length) {
                    long j = jArr[i7];
                    if (attributeLayout5.matches(j)) {
                        this.f106890q[i4][i7].add(new DeprecatedAttribute());
                    }
                    if (attributeLayout3.matches(j)) {
                        AttributeLayout attributeLayout6 = attributeLayout3;
                        long j2 = decodeBandInt2[i5];
                        String str = this.f106891r[i4][i7];
                        iArr = decodeBandInt2;
                        attributeLayout = attributeLayout5;
                        String substring = str.substring(str.indexOf(58) + 1);
                        if (substring.equals("B") || substring.equals("S") || substring.equals(BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY) || substring.equals(Constants.HASIDCALL_INDEX_SIG)) {
                            substring = "I";
                        }
                        attributeLayout2 = attributeLayout6;
                        this.f106890q[i4][i7].add(new ConstantValueAttribute(attributeLayout2.getValue(j2, substring, this.f106865B.getConstantPool())));
                        i5++;
                    } else {
                        iArr = decodeBandInt2;
                        attributeLayout = attributeLayout5;
                        attributeLayout2 = attributeLayout3;
                    }
                    if (attributeLayout4.matches(j)) {
                        long j3 = decodeBandInt3[i6];
                        String str2 = this.f106891r[i4][i7];
                        this.f106890q[i4][i7].add(new SignatureAttribute((CPUTF8) attributeLayout4.getValue(j3, str2.substring(str2.indexOf(58) + 1), this.f106865B.getConstantPool())));
                        i6++;
                    }
                    i7++;
                    attributeLayout3 = attributeLayout2;
                    decodeBandInt2 = iArr;
                    attributeLayout5 = attributeLayout;
                }
            }
            i4++;
            attributeLayout5 = attributeLayout5;
        }
        int m67035p = m67035p(inputStream, decodeBandInt);
        int i8 = this.f106866C.hasFieldFlagsHi() ? 62 : 31;
        int i9 = i8 + 1;
        AttributeLayout[] attributeLayoutArr = new AttributeLayout[i9];
        int[] iArr3 = new int[i9];
        List[] listArr = new List[i9];
        for (int i10 = 0; i10 < i8; i10++) {
            AttributeLayout attributeLayout7 = this.f106864A.getAttributeLayout(i10, 1);
            if (attributeLayout7 != null && !attributeLayout7.isDefaultLayout()) {
                attributeLayoutArr[i10] = attributeLayout7;
                iArr3[i10] = SegmentUtils.countMatches(this.f106893t, attributeLayout7);
            }
        }
        for (int i11 = 0; i11 < i9; i11++) {
            if (iArr3[i11] > 0) {
                NewAttributeBands attributeBands = this.f106864A.getAttributeBands(attributeLayoutArr[i11]);
                listArr[i11] = attributeBands.parseAttributes(inputStream, iArr3[i11]);
                int numBackwardsCallables = attributeLayoutArr[i11].numBackwardsCallables();
                if (numBackwardsCallables > 0) {
                    int[] iArr4 = new int[numBackwardsCallables];
                    System.arraycopy(decodeBandInt, m67035p, iArr4, 0, numBackwardsCallables);
                    attributeBands.setBackwardsCalls(iArr4);
                    m67035p += numBackwardsCallables;
                }
            }
        }
        for (int i12 = 0; i12 < this.f106867D; i12++) {
            int i13 = 0;
            while (true) {
                long[] jArr2 = this.f106893t[i12];
                if (i13 < jArr2.length) {
                    long j4 = jArr2[i13];
                    int i14 = 0;
                    for (int i15 = 0; i15 < i9; i15++) {
                        AttributeLayout attributeLayout8 = attributeLayoutArr[i15];
                        if (attributeLayout8 != null && attributeLayout8.matches(j4)) {
                            if (attributeLayoutArr[i15].getIndex() < 15) {
                                i = 0;
                                this.f106890q[i12][i13].add(i14, listArr[i15].get(0));
                                i14++;
                            } else {
                                i = 0;
                                this.f106890q[i12][i13].add(listArr[i15].get(0));
                            }
                            listArr[i15].remove(i);
                        }
                    }
                    i13++;
                }
            }
        }
    }

    /* renamed from: o */
    public final void m67034o(InputStream inputStream) throws IOException, Pack200Exception {
        int[][] decodeBandInt = decodeBandInt("field_descr", inputStream, Codec.DELTA5, this.f106874a);
        this.f106892s = decodeBandInt;
        this.f106891r = getReferences(decodeBandInt, this.f106865B.getCpDescriptor());
        m67033n(inputStream);
    }

    /* renamed from: p */
    public final int m67035p(InputStream inputStream, int[] iArr) throws Pack200Exception, IOException {
        int i;
        String[] strArr = {"RVA", "RIA"};
        AttributeLayout attributeLayout = this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_VISIBLE_ANNOTATIONS, 1);
        AttributeLayout attributeLayout2 = this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_INVISIBLE_ANNOTATIONS, 1);
        int countMatches = SegmentUtils.countMatches(this.f106893t, attributeLayout);
        int countMatches2 = SegmentUtils.countMatches(this.f106893t, attributeLayout2);
        int[] iArr2 = {countMatches, countMatches2};
        int[] iArr3 = {0, 0};
        if (countMatches > 0) {
            iArr3[0] = iArr[0];
            if (countMatches2 > 0) {
                iArr3[1] = iArr[1];
                i = 2;
            }
            i = 1;
        } else if (countMatches2 > 0) {
            iArr3[1] = iArr[0];
            i = 1;
        } else {
            i = 0;
        }
        MetadataBandGroup[] m67036q = m67036q(inputStream, strArr, iArr2, iArr3, "field");
        List<Attribute> attributes = m67036q[0].getAttributes();
        List<Attribute> attributes2 = m67036q[1].getAttributes();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < this.f106893t.length; i4++) {
            int i5 = 0;
            while (true) {
                long[] jArr = this.f106893t[i4];
                if (i5 < jArr.length) {
                    if (attributeLayout.matches(jArr[i5])) {
                        this.f106890q[i4][i5].add(attributes.get(i2));
                        i2++;
                    }
                    if (attributeLayout2.matches(this.f106893t[i4][i5])) {
                        this.f106890q[i4][i5].add(attributes2.get(i3));
                        i3++;
                    }
                    i5++;
                }
            }
        }
        return i;
    }

    /* renamed from: q */
    public final MetadataBandGroup[] m67036q(InputStream inputStream, String[] strArr, int[] iArr, int[] iArr2, String str) throws IOException, Pack200Exception {
        int i;
        MetadataBandGroup metadataBandGroup;
        ClassBands classBands = this;
        InputStream inputStream2 = inputStream;
        String[] strArr2 = strArr;
        MetadataBandGroup[] metadataBandGroupArr = new MetadataBandGroup[strArr2.length];
        int i2 = 0;
        while (i2 < strArr2.length) {
            metadataBandGroupArr[i2] = new MetadataBandGroup(strArr2[i2], classBands.f106865B);
            String str2 = strArr2[i2];
            if (str2.indexOf(80) >= 0) {
                metadataBandGroupArr[i2].param_NB = classBands.decodeBandInt(str + "_" + str2 + "_param_NB", inputStream2, Codec.BYTE1, iArr[i2]);
            }
            if (str2.equals("AD")) {
                i = iArr[i2];
            } else {
                BHSDCodec bHSDCodec = Codec.UNSIGNED5;
                metadataBandGroupArr[i2].anno_N = classBands.decodeBandInt(str + "_" + str2 + "_anno_N", inputStream2, bHSDCodec, iArr[i2]);
                metadataBandGroupArr[i2].type_RS = classBands.parseCPSignatureReferences(str + "_" + str2 + "_type_RS", inputStream2, bHSDCodec, metadataBandGroupArr[i2].anno_N);
                metadataBandGroupArr[i2].pair_N = classBands.decodeBandInt(str + "_" + str2 + "_pair_N", inputStream2, bHSDCodec, metadataBandGroupArr[i2].anno_N);
                int i3 = 0;
                i = 0;
                while (true) {
                    MetadataBandGroup metadataBandGroup2 = metadataBandGroupArr[i2];
                    if (i3 < metadataBandGroup2.pair_N.length) {
                        int i4 = 0;
                        while (true) {
                            int[] iArr3 = metadataBandGroupArr[i2].pair_N[i3];
                            if (i4 < iArr3.length) {
                                i += iArr3[i4];
                                i4++;
                            }
                        }
                        i3++;
                    } else {
                        metadataBandGroup2.name_RU = classBands.parseCPUTF8References(str + "_" + str2 + "_name_RU", inputStream2, Codec.UNSIGNED5, i);
                    }
                }
            }
            metadataBandGroupArr[i2].f106988T = classBands.decodeBandInt(str + "_" + str2 + "_T", inputStream2, Codec.BYTE1, i + iArr2[i2]);
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            while (true) {
                MetadataBandGroup metadataBandGroup3 = metadataBandGroupArr[i2];
                MetadataBandGroup[] metadataBandGroupArr2 = metadataBandGroupArr;
                int[] iArr4 = metadataBandGroup3.f106988T;
                if (i5 < iArr4.length) {
                    char c = (char) iArr4[i5];
                    if (c == '@') {
                        i11++;
                    } else if (c != 'F') {
                        if (c != 'S') {
                            if (c == 'c') {
                                i10++;
                            } else if (c == 'e') {
                                i14++;
                            } else if (c == 's') {
                                i13++;
                            } else if (c != 'I') {
                                if (c == 'J') {
                                    i9++;
                                } else if (c != 'Z') {
                                    if (c != '[') {
                                        switch (c) {
                                            case 'D':
                                                i7++;
                                                break;
                                        }
                                    } else {
                                        i12++;
                                    }
                                }
                            }
                        }
                        i6++;
                    } else {
                        i8++;
                    }
                    i5++;
                    metadataBandGroupArr = metadataBandGroupArr2;
                } else {
                    BHSDCodec bHSDCodec2 = Codec.UNSIGNED5;
                    int i15 = i11;
                    classBands = this;
                    int i16 = i12;
                    metadataBandGroup3.caseI_KI = classBands.parseCPIntReferences(str + "_" + str2 + "_caseI_KI", inputStream, bHSDCodec2, i6);
                    metadataBandGroupArr2[i2].caseD_KD = classBands.parseCPDoubleReferences(str + "_" + str2 + "_caseD_KD", inputStream, bHSDCodec2, i7);
                    metadataBandGroupArr2[i2].caseF_KF = classBands.parseCPFloatReferences(str + "_" + str2 + "_caseF_KF", inputStream, bHSDCodec2, i8);
                    metadataBandGroupArr2[i2].caseJ_KJ = classBands.parseCPLongReferences(str + "_" + str2 + "_caseJ_KJ", inputStream, bHSDCodec2, i9);
                    metadataBandGroupArr2[i2].casec_RS = classBands.parseCPSignatureReferences(str + "_" + str2 + "_casec_RS", inputStream, bHSDCodec2, i10);
                    int i17 = i14;
                    metadataBandGroupArr2[i2].caseet_RS = parseReferences(str + "_" + str2 + "_caseet_RS", inputStream, bHSDCodec2, i17, classBands.f106865B.getCpSignature());
                    metadataBandGroupArr2[i2].caseec_RU = parseReferences(str + "_" + str2 + "_caseec_RU", inputStream, bHSDCodec2, i17, classBands.f106865B.getCpUTF8());
                    metadataBandGroupArr2[i2].cases_RU = classBands.parseCPUTF8References(str + "_" + str2 + "_cases_RU", inputStream, bHSDCodec2, i13);
                    metadataBandGroupArr2[i2].casearray_N = classBands.decodeBandInt(str + "_" + str2 + "_casearray_N", inputStream, bHSDCodec2, i16);
                    metadataBandGroupArr2[i2].nesttype_RS = classBands.parseCPUTF8References(str + "_" + str2 + "_nesttype_RS", inputStream, bHSDCodec2, i15);
                    metadataBandGroupArr2[i2].nestpair_N = classBands.decodeBandInt(str + "_" + str2 + "_nestpair_N", inputStream, bHSDCodec2, i15);
                    int i18 = 0;
                    int i19 = 0;
                    while (true) {
                        metadataBandGroup = metadataBandGroupArr2[i2];
                        int[] iArr5 = metadataBandGroup.nestpair_N;
                        if (i18 < iArr5.length) {
                            i19 += iArr5[i18];
                            i18++;
                        }
                    }
                    metadataBandGroup.nestname_RU = classBands.parseCPUTF8References(str + "_" + str2 + "_nestname_RU", inputStream, Codec.UNSIGNED5, i19);
                    i2++;
                    strArr2 = strArr;
                    inputStream2 = inputStream;
                    metadataBandGroupArr = metadataBandGroupArr2;
                }
            }
        }
        return metadataBandGroupArr;
    }

    /* renamed from: r */
    public final void m67037r(InputStream inputStream) throws IOException, Pack200Exception {
        int i;
        AttributeLayout attributeLayout;
        int[] iArr;
        int[] iArr2 = this.f106878e;
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        long[][] parseFlags = parseFlags("method_flags", inputStream, iArr2, bHSDCodec, this.f106866C.hasMethodFlagsHi());
        this.f106898y = parseFlags;
        this.f106868E = decodeBandInt("method_attr_calls", inputStream, bHSDCodec, m67028f(decodeBandInt("method_attr_indexes", inputStream, bHSDCodec, decodeBandInt("method_attr_count", inputStream, bHSDCodec, SegmentUtils.countBit16(parseFlags))), this.f106898y, 2));
        this.f106895v = new ArrayList[this.f106867D];
        for (int i2 = 0; i2 < this.f106867D; i2++) {
            this.f106895v[i2] = new ArrayList[this.f106898y[i2].length];
            for (int i3 = 0; i3 < this.f106898y[i2].length; i3++) {
                this.f106895v[i2][i3] = new ArrayList<>();
            }
        }
        AttributeLayout attributeLayout2 = this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_EXCEPTIONS, 2);
        int countMatches = SegmentUtils.countMatches(this.f106898y, attributeLayout2);
        BHSDCodec bHSDCodec2 = Codec.UNSIGNED5;
        int[] decodeBandInt = decodeBandInt("method_Exceptions_n", inputStream, bHSDCodec2, countMatches);
        int[][] decodeBandInt2 = decodeBandInt("method_Exceptions_RC", inputStream, bHSDCodec2, decodeBandInt);
        AttributeLayout attributeLayout3 = this.f106864A.getAttributeLayout("Signature", 2);
        int[] decodeBandInt3 = decodeBandInt("method_signature_RS", inputStream, bHSDCodec2, SegmentUtils.countMatches(this.f106898y, attributeLayout3));
        AttributeLayout attributeLayout4 = this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_DEPRECATED, 2);
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < this.f106895v.length; i6++) {
            int i7 = 0;
            while (i7 < this.f106895v[i6].length) {
                long j = this.f106898y[i6][i7];
                if (attributeLayout2.matches(j)) {
                    int i8 = decodeBandInt[i4];
                    int[] iArr3 = decodeBandInt2[i4];
                    CPClass[] cPClassArr = new CPClass[i8];
                    attributeLayout = attributeLayout2;
                    int i9 = 0;
                    while (i9 < i8) {
                        cPClassArr[i9] = this.f106865B.cpClassValue(iArr3[i9]);
                        i9++;
                        i8 = i8;
                        decodeBandInt = decodeBandInt;
                    }
                    iArr = decodeBandInt;
                    this.f106895v[i6][i7].add(new ExceptionsAttribute(cPClassArr));
                    i4++;
                } else {
                    attributeLayout = attributeLayout2;
                    iArr = decodeBandInt;
                }
                if (attributeLayout3.matches(j)) {
                    long j2 = decodeBandInt3[i5];
                    String str = this.f106896w[i6][i7];
                    String substring = str.substring(str.indexOf(58) + 1);
                    if (substring.equals("B") || substring.equals("H")) {
                        substring = "I";
                    }
                    this.f106895v[i6][i7].add(new SignatureAttribute((CPUTF8) attributeLayout3.getValue(j2, substring, this.f106865B.getConstantPool())));
                    i5++;
                }
                if (attributeLayout4.matches(j)) {
                    this.f106895v[i6][i7].add(new DeprecatedAttribute());
                }
                i7++;
                attributeLayout2 = attributeLayout;
                decodeBandInt = iArr;
            }
        }
        int m67039t = m67039t(inputStream, this.f106868E);
        int i10 = this.f106866C.hasMethodFlagsHi() ? 62 : 31;
        int i11 = i10 + 1;
        AttributeLayout[] attributeLayoutArr = new AttributeLayout[i11];
        int[] iArr4 = new int[i11];
        for (int i12 = 0; i12 < i10; i12++) {
            AttributeLayout attributeLayout5 = this.f106864A.getAttributeLayout(i12, 2);
            if (attributeLayout5 != null && !attributeLayout5.isDefaultLayout()) {
                attributeLayoutArr[i12] = attributeLayout5;
                iArr4[i12] = SegmentUtils.countMatches(this.f106898y, attributeLayout5);
            }
        }
        List[] listArr = new List[i11];
        for (int i13 = 0; i13 < i11; i13++) {
            if (iArr4[i13] > 0) {
                NewAttributeBands attributeBands = this.f106864A.getAttributeBands(attributeLayoutArr[i13]);
                listArr[i13] = attributeBands.parseAttributes(inputStream, iArr4[i13]);
                int numBackwardsCallables = attributeLayoutArr[i13].numBackwardsCallables();
                if (numBackwardsCallables > 0) {
                    int[] iArr5 = new int[numBackwardsCallables];
                    System.arraycopy(this.f106868E, m67039t, iArr5, 0, numBackwardsCallables);
                    attributeBands.setBackwardsCalls(iArr5);
                    m67039t += numBackwardsCallables;
                }
            }
        }
        for (int i14 = 0; i14 < this.f106895v.length; i14++) {
            for (int i15 = 0; i15 < this.f106895v[i14].length; i15++) {
                long j3 = this.f106898y[i14][i15];
                int i16 = 0;
                for (int i17 = 0; i17 < i11; i17++) {
                    AttributeLayout attributeLayout6 = attributeLayoutArr[i17];
                    if (attributeLayout6 != null && attributeLayout6.matches(j3)) {
                        if (attributeLayoutArr[i17].getIndex() < 15) {
                            i = 0;
                            this.f106895v[i14][i15].add(i16, listArr[i17].get(0));
                            i16++;
                        } else {
                            i = 0;
                            this.f106895v[i14][i15].add(listArr[i17].get(0));
                        }
                        listArr[i17].remove(i);
                    }
                }
            }
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void read(InputStream inputStream) throws IOException, Pack200Exception {
        int classCount = this.header.getClassCount();
        BHSDCodec bHSDCodec = Codec.DELTA5;
        int[] decodeBandInt = decodeBandInt("class_this", inputStream, bHSDCodec, classCount);
        this.f106881h = decodeBandInt;
        this.f106880g = getReferences(decodeBandInt, this.f106865B.getCpClass());
        this.f106879f = decodeBandInt("class_super", inputStream, bHSDCodec, classCount);
        this.f106877d = decodeBandInt("class_interface", inputStream, bHSDCodec, decodeBandInt("class_interface_count", inputStream, bHSDCodec, classCount));
        this.f106874a = decodeBandInt("class_field_count", inputStream, bHSDCodec, classCount);
        this.f106878e = decodeBandInt("class_method_count", inputStream, bHSDCodec, classCount);
        m67034o(inputStream);
        m67038s(inputStream);
        m67029j(inputStream);
        m67032m(inputStream);
    }

    /* renamed from: s */
    public final void m67038s(InputStream inputStream) throws IOException, Pack200Exception {
        int[][] decodeBandInt = decodeBandInt("method_descr", inputStream, Codec.MDELTA5, this.f106878e);
        this.f106897x = decodeBandInt;
        this.f106896w = getReferences(decodeBandInt, this.f106865B.getCpDescriptor());
        m67037r(inputStream);
    }

    /* renamed from: t */
    public final int m67039t(InputStream inputStream, int[] iArr) throws Pack200Exception, IOException {
        String[] strArr = {"RVA", "RIA", "RVPA", "RIPA", "AD"};
        int[] iArr2 = {0, 0, 0, 0, 0};
        final AttributeLayout[] attributeLayoutArr = {this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_VISIBLE_ANNOTATIONS, 2), this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_INVISIBLE_ANNOTATIONS, 2), this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS, 2), this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS, 2), this.f106864A.getAttributeLayout(AttributeLayout.ATTRIBUTE_ANNOTATION_DEFAULT, 2)};
        Arrays.setAll(iArr2, new IntUnaryOperator() { // from class: com.sunia.HTREnginev2.aud
            @Override // java.util.function.IntUnaryOperator
            public final int applyAsInt(int i) {
                int m67027i;
                m67027i = ClassBands.this.m67027i(attributeLayoutArr, i);
                return m67027i;
            }
        });
        int[] iArr3 = new int[5];
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 5; i3++) {
            if (iArr2[i3] > 0) {
                i++;
                iArr3[i3] = iArr[i2];
                i2++;
            } else {
                iArr3[i3] = 0;
            }
        }
        MetadataBandGroup[] m67036q = m67036q(inputStream, strArr, iArr2, iArr3, "method");
        List[] listArr = new List[5];
        int[] iArr4 = new int[5];
        for (int i4 = 0; i4 < m67036q.length; i4++) {
            listArr[i4] = m67036q[i4].getAttributes();
            iArr4[i4] = 0;
        }
        for (int i5 = 0; i5 < this.f106898y.length; i5++) {
            for (int i6 = 0; i6 < this.f106898y[i5].length; i6++) {
                for (int i7 = 0; i7 < 5; i7++) {
                    if (attributeLayoutArr[i7].matches(this.f106898y[i5][i6])) {
                        ArrayList arrayList = this.f106895v[i5][i6];
                        List list = listArr[i7];
                        int i8 = iArr4[i7];
                        iArr4[i7] = i8 + 1;
                        arrayList.add(list.get(i8));
                    }
                }
            }
        }
        return i;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void unpack() {
    }
}
