package org.apache.commons.compress.harmony.unpack200;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.function.IntFunction;
import java.util.function.IntToDoubleFunction;
import org.apache.commons.compress.harmony.pack200.Codec;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;
import org.apache.commons.compress.harmony.unpack200.CpBands;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPClass;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPDouble;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPFieldRef;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPFloat;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPInteger;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPInterfaceMethodRef;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPLong;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPMethodRef;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPNameAndType;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPString;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPUTF8;

/* loaded from: classes12.dex */
public class CpBands extends BandSet {

    /* renamed from: A */
    public String[] f106900A;

    /* renamed from: B */
    public final Map<String, CPUTF8> f106901B;

    /* renamed from: C */
    public final Map<String, CPString> f106902C;

    /* renamed from: D */
    public final Map<Long, CPLong> f106903D;

    /* renamed from: E */
    public final Map<Integer, CPInteger> f106904E;

    /* renamed from: F */
    public final Map<Float, CPFloat> f106905F;

    /* renamed from: G */
    public final Map<String, CPClass> f106906G;

    /* renamed from: H */
    public final Map<Double, CPDouble> f106907H;

    /* renamed from: I */
    public final Map<String, CPNameAndType> f106908I;

    /* renamed from: J */
    public Map<String, Integer> f106909J;

    /* renamed from: K */
    public Map<String, Integer> f106910K;

    /* renamed from: L */
    public Map<String, Integer> f106911L;

    /* renamed from: M */
    public Map<String, Integer> f106912M;

    /* renamed from: N */
    public int f106913N;

    /* renamed from: O */
    public int f106914O;

    /* renamed from: P */
    public int f106915P;

    /* renamed from: Q */
    public int f106916Q;

    /* renamed from: R */
    public int f106917R;

    /* renamed from: S */
    public int f106918S;

    /* renamed from: T */
    public int f106919T;

    /* renamed from: U */
    public int f106920U;

    /* renamed from: V */
    public int f106921V;

    /* renamed from: W */
    public int f106922W;

    /* renamed from: X */
    public int f106923X;

    /* renamed from: a */
    public final SegmentConstantPool f106924a;

    /* renamed from: b */
    public String[] f106925b;

    /* renamed from: c */
    public int[] f106926c;

    /* renamed from: d */
    public int[] f106927d;

    /* renamed from: e */
    public int[] f106928e;

    /* renamed from: f */
    public String[] f106929f;

    /* renamed from: g */
    public double[] f106930g;

    /* renamed from: h */
    public String[] f106931h;

    /* renamed from: i */
    public String[] f106932i;

    /* renamed from: j */
    public int[] f106933j;

    /* renamed from: k */
    public int[] f106934k;

    /* renamed from: l */
    public float[] f106935l;

    /* renamed from: m */
    public String[] f106936m;

    /* renamed from: n */
    public String[] f106937n;

    /* renamed from: o */
    public int[] f106938o;

    /* renamed from: p */
    public int[] f106939p;

    /* renamed from: q */
    public int[] f106940q;

    /* renamed from: r */
    public long[] f106941r;

    /* renamed from: s */
    public String[] f106942s;

    /* renamed from: t */
    public String[] f106943t;

    /* renamed from: u */
    public int[] f106944u;

    /* renamed from: v */
    public int[] f106945v;

    /* renamed from: w */
    public String[] f106946w;

    /* renamed from: x */
    public int[] f106947x;

    /* renamed from: y */
    public String[] f106948y;

    /* renamed from: z */
    public int[] f106949z;

    public CpBands(Segment segment) {
        super(segment);
        this.f106924a = new SegmentConstantPool(this);
        this.f106901B = new HashMap();
        this.f106902C = new HashMap();
        this.f106903D = new HashMap();
        this.f106904E = new HashMap();
        this.f106905F = new HashMap();
        this.f106906G = new HashMap();
        this.f106907H = new HashMap();
        this.f106908I = new HashMap();
    }

    /* renamed from: e */
    public static /* synthetic */ double m67042e(long[] jArr, int i) {
        return Double.longBitsToDouble(jArr[i]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ String m67043f(int i) {
        return this.f106900A[this.f106949z[i]];
    }

    public CPClass cpClassValue(int i) {
        String str = this.f106925b[i];
        int i2 = this.f106926c[i];
        int i3 = this.f106918S + i;
        CPClass cPClass = this.f106906G.get(str);
        if (cPClass != null) {
            return cPClass;
        }
        CPClass cPClass2 = new CPClass(cpUTF8Value(i2), i3);
        this.f106906G.put(str, cPClass2);
        return cPClass2;
    }

    public CPDouble cpDoubleValue(int i) {
        Double valueOf = Double.valueOf(this.f106930g[i]);
        CPDouble cPDouble = this.f106907H.get(valueOf);
        if (cPDouble != null) {
            return cPDouble;
        }
        CPDouble cPDouble2 = new CPDouble(valueOf, i + this.f106916Q);
        this.f106907H.put(valueOf, cPDouble2);
        return cPDouble2;
    }

    public CPFieldRef cpFieldValue(int i) {
        return new CPFieldRef(cpClassValue(this.f106933j[i]), cpNameAndTypeValue(this.f106934k[i]), i + this.f106921V);
    }

    public CPFloat cpFloatValue(int i) {
        Float valueOf = Float.valueOf(this.f106935l[i]);
        CPFloat cPFloat = this.f106905F.get(valueOf);
        if (cPFloat != null) {
            return cPFloat;
        }
        CPFloat cPFloat2 = new CPFloat(valueOf, i + this.f106914O);
        this.f106905F.put(valueOf, cPFloat2);
        return cPFloat2;
    }

    public CPInterfaceMethodRef cpIMethodValue(int i) {
        return new CPInterfaceMethodRef(cpClassValue(this.f106938o[i]), cpNameAndTypeValue(this.f106939p[i]), i + this.f106923X);
    }

    public CPInteger cpIntegerValue(int i) {
        Integer valueOf = Integer.valueOf(this.f106940q[i]);
        CPInteger cPInteger = this.f106904E.get(valueOf);
        if (cPInteger != null) {
            return cPInteger;
        }
        CPInteger cPInteger2 = new CPInteger(valueOf, i + this.f106913N);
        this.f106904E.put(valueOf, cPInteger2);
        return cPInteger2;
    }

    public CPLong cpLongValue(int i) {
        Long valueOf = Long.valueOf(this.f106941r[i]);
        CPLong cPLong = this.f106903D.get(valueOf);
        if (cPLong != null) {
            return cPLong;
        }
        CPLong cPLong2 = new CPLong(valueOf, i + this.f106915P);
        this.f106903D.put(valueOf, cPLong2);
        return cPLong2;
    }

    public CPMethodRef cpMethodValue(int i) {
        return new CPMethodRef(cpClassValue(this.f106944u[i]), cpNameAndTypeValue(this.f106945v[i]), i + this.f106922W);
    }

    public CPNameAndType cpNameAndTypeValue(int i) {
        String str = this.f106929f[i];
        CPNameAndType cPNameAndType = this.f106908I.get(str);
        if (cPNameAndType != null) {
            return cPNameAndType;
        }
        CPNameAndType cPNameAndType2 = new CPNameAndType(cpUTF8Value(this.f106927d[i]), cpSignatureValue(this.f106928e[i]), i + this.f106920U);
        this.f106908I.put(str, cPNameAndType2);
        return cPNameAndType2;
    }

    public CPUTF8 cpSignatureValue(int i) {
        int i2 = this.f106947x[i];
        if (i2 == -1) {
            i2 = this.f106919T + i;
        }
        String str = this.f106946w[i];
        CPUTF8 cputf8 = this.f106901B.get(str);
        if (cputf8 != null) {
            return cputf8;
        }
        CPUTF8 cputf82 = new CPUTF8(str, i2);
        this.f106901B.put(str, cputf82);
        return cputf82;
    }

    public CPString cpStringValue(int i) {
        String str = this.f106948y[i];
        int i2 = this.f106949z[i];
        int i3 = this.f106917R + i;
        CPString cPString = this.f106902C.get(str);
        if (cPString != null) {
            return cPString;
        }
        CPString cPString2 = new CPString(cpUTF8Value(i2), i3);
        this.f106902C.put(str, cPString2);
        return cPString2;
    }

    public CPUTF8 cpUTF8Value(int i) {
        String str = this.f106900A[i];
        CPUTF8 cputf8 = this.f106901B.get(str);
        if (cputf8 == null) {
            CPUTF8 cputf82 = new CPUTF8(str, i);
            this.f106901B.put(str, cputf82);
            return cputf82;
        }
        if (cputf8.getGlobalIndex() <= i) {
            return cputf8;
        }
        cputf8.setGlobalIndex(i);
        return cputf8;
    }

    /* renamed from: g */
    public final void m67044g(InputStream inputStream) throws IOException, Pack200Exception {
        int cpClassCount = this.header.getCpClassCount();
        this.f106926c = decodeBandInt("cp_Class", inputStream, Codec.UDELTA5, cpClassCount);
        this.f106925b = new String[cpClassCount];
        this.f106909J = new HashMap(cpClassCount);
        for (int i = 0; i < cpClassCount; i++) {
            String[] strArr = this.f106925b;
            String str = this.f106900A[this.f106926c[i]];
            strArr[i] = str;
            this.f106909J.put(str, Integer.valueOf(i));
        }
    }

    public SegmentConstantPool getConstantPool() {
        return this.f106924a;
    }

    public String[] getCpClass() {
        return this.f106925b;
    }

    public String[] getCpDescriptor() {
        return this.f106929f;
    }

    public int[] getCpDescriptorNameInts() {
        return this.f106927d;
    }

    public int[] getCpDescriptorTypeInts() {
        return this.f106928e;
    }

    public String[] getCpFieldClass() {
        return this.f106931h;
    }

    public String[] getCpIMethodClass() {
        return this.f106936m;
    }

    public int[] getCpInt() {
        return this.f106940q;
    }

    public long[] getCpLong() {
        return this.f106941r;
    }

    public String[] getCpMethodClass() {
        return this.f106942s;
    }

    public String[] getCpMethodDescriptor() {
        return this.f106943t;
    }

    public String[] getCpSignature() {
        return this.f106946w;
    }

    public String[] getCpUTF8() {
        return this.f106900A;
    }

    /* renamed from: h */
    public final void m67045h(InputStream inputStream) throws IOException, Pack200Exception {
        int cpDescriptorCount = this.header.getCpDescriptorCount();
        this.f106927d = decodeBandInt("cp_Descr_name", inputStream, Codec.DELTA5, cpDescriptorCount);
        this.f106928e = decodeBandInt("cp_Descr_type", inputStream, Codec.UDELTA5, cpDescriptorCount);
        String[] references = getReferences(this.f106927d, this.f106900A);
        String[] references2 = getReferences(this.f106928e, this.f106946w);
        this.f106929f = new String[cpDescriptorCount];
        this.f106910K = new HashMap(cpDescriptorCount);
        for (int i = 0; i < cpDescriptorCount; i++) {
            this.f106929f[i] = references[i] + ":" + references2[i];
            this.f106910K.put(this.f106929f[i], Integer.valueOf(i));
        }
    }

    /* renamed from: i */
    public final void m67046i(InputStream inputStream) throws IOException, Pack200Exception {
        final long[] parseFlags = parseFlags("cp_Double", inputStream, this.header.getCpDoubleCount(), Codec.UDELTA5, Codec.DELTA5);
        double[] dArr = new double[parseFlags.length];
        this.f106930g = dArr;
        Arrays.setAll(dArr, new IntToDoubleFunction() { // from class: com.sunia.HTREnginev2.tfe
            @Override // java.util.function.IntToDoubleFunction
            public final double applyAsDouble(int i) {
                double m67042e;
                m67042e = CpBands.m67042e(parseFlags, i);
                return m67042e;
            }
        });
    }

    /* renamed from: j */
    public final void m67047j(InputStream inputStream) throws IOException, Pack200Exception {
        int cpFieldCount = this.header.getCpFieldCount();
        this.f106933j = decodeBandInt("cp_Field_class", inputStream, Codec.DELTA5, cpFieldCount);
        this.f106934k = decodeBandInt("cp_Field_desc", inputStream, Codec.UDELTA5, cpFieldCount);
        this.f106931h = new String[cpFieldCount];
        this.f106932i = new String[cpFieldCount];
        for (int i = 0; i < cpFieldCount; i++) {
            this.f106931h[i] = this.f106925b[this.f106933j[i]];
            this.f106932i[i] = this.f106929f[this.f106934k[i]];
        }
    }

    /* renamed from: k */
    public final void m67048k(InputStream inputStream) throws IOException, Pack200Exception {
        int cpFloatCount = this.header.getCpFloatCount();
        this.f106935l = new float[cpFloatCount];
        int[] decodeBandInt = decodeBandInt("cp_Float", inputStream, Codec.UDELTA5, cpFloatCount);
        for (int i = 0; i < cpFloatCount; i++) {
            this.f106935l[i] = Float.intBitsToFloat(decodeBandInt[i]);
        }
    }

    /* renamed from: l */
    public final void m67049l(InputStream inputStream) throws IOException, Pack200Exception {
        int cpIMethodCount = this.header.getCpIMethodCount();
        this.f106938o = decodeBandInt("cp_Imethod_class", inputStream, Codec.DELTA5, cpIMethodCount);
        this.f106939p = decodeBandInt("cp_Imethod_desc", inputStream, Codec.UDELTA5, cpIMethodCount);
        this.f106936m = new String[cpIMethodCount];
        this.f106937n = new String[cpIMethodCount];
        for (int i = 0; i < cpIMethodCount; i++) {
            this.f106936m[i] = this.f106925b[this.f106938o[i]];
            this.f106937n[i] = this.f106929f[this.f106939p[i]];
        }
    }

    /* renamed from: m */
    public final void m67050m(InputStream inputStream) throws IOException, Pack200Exception {
        this.f106940q = decodeBandInt("cpInt", inputStream, Codec.UDELTA5, this.header.getCpIntCount());
    }

    /* renamed from: n */
    public final void m67051n(InputStream inputStream) throws IOException, Pack200Exception {
        this.f106941r = parseFlags("cp_Long", inputStream, this.header.getCpLongCount(), Codec.UDELTA5, Codec.DELTA5);
    }

    /* renamed from: o */
    public final void m67052o(InputStream inputStream) throws IOException, Pack200Exception {
        int cpMethodCount = this.header.getCpMethodCount();
        this.f106944u = decodeBandInt("cp_Method_class", inputStream, Codec.DELTA5, cpMethodCount);
        this.f106945v = decodeBandInt("cp_Method_desc", inputStream, Codec.UDELTA5, cpMethodCount);
        this.f106942s = new String[cpMethodCount];
        this.f106943t = new String[cpMethodCount];
        for (int i = 0; i < cpMethodCount; i++) {
            this.f106942s[i] = this.f106925b[this.f106944u[i]];
            this.f106943t[i] = this.f106929f[this.f106945v[i]];
        }
    }

    /* renamed from: p */
    public final void m67053p(InputStream inputStream) throws IOException, Pack200Exception {
        int cpSignatureCount = this.header.getCpSignatureCount();
        int[] decodeBandInt = decodeBandInt("cp_Signature_form", inputStream, Codec.DELTA5, cpSignatureCount);
        this.f106947x = decodeBandInt;
        String[] references = getReferences(decodeBandInt, this.f106900A);
        this.f106946w = new String[cpSignatureCount];
        this.f106912M = new HashMap();
        int i = 0;
        for (int i2 = 0; i2 < cpSignatureCount; i2++) {
            for (char c : references[i2].toCharArray()) {
                if (c == 'L') {
                    this.f106947x[i2] = -1;
                    i++;
                }
            }
        }
        String[] parseReferences = parseReferences("cp_Signature_classes", inputStream, Codec.UDELTA5, i, this.f106925b);
        int i3 = 0;
        for (int i4 = 0; i4 < cpSignatureCount; i4++) {
            String str = references[i4];
            int length = str.length();
            StringBuilder sb = new StringBuilder(64);
            ArrayList arrayList = new ArrayList();
            for (int i5 = 0; i5 < length; i5++) {
                char charAt = str.charAt(i5);
                sb.append(charAt);
                if (charAt == 'L') {
                    String str2 = parseReferences[i3];
                    arrayList.add(str2);
                    sb.append(str2);
                    i3++;
                }
            }
            this.f106946w[i4] = sb.toString();
            this.f106912M.put(sb.toString(), Integer.valueOf(i4));
        }
    }

    /* renamed from: q */
    public final void m67054q(InputStream inputStream) throws IOException, Pack200Exception {
        int cpStringCount = this.header.getCpStringCount();
        this.f106949z = decodeBandInt("cp_String", inputStream, Codec.UDELTA5, cpStringCount);
        String[] strArr = new String[cpStringCount];
        this.f106948y = strArr;
        Arrays.setAll(strArr, new IntFunction() { // from class: com.sunia.HTREnginev2.vfe
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String m67043f;
                m67043f = CpBands.this.m67043f(i);
                return m67043f;
            }
        });
    }

    /* renamed from: r */
    public final void m67055r(InputStream inputStream) throws IOException, Pack200Exception {
        int cpUTF8Count = this.header.getCpUTF8Count();
        this.f106900A = new String[cpUTF8Count];
        HashMap hashMap = new HashMap(cpUTF8Count + 1);
        this.f106911L = hashMap;
        this.f106900A[0] = "";
        hashMap.put("", 0);
        int[] decodeBandInt = decodeBandInt("cpUTF8Prefix", inputStream, Codec.DELTA5, cpUTF8Count - 2);
        int[] decodeBandInt2 = decodeBandInt("cpUTF8Suffix", inputStream, Codec.UNSIGNED5, cpUTF8Count - 1);
        int i = 0;
        int i2 = 0;
        for (int i3 : decodeBandInt2) {
            if (i3 == 0) {
                i2++;
            } else {
                i += i3;
            }
        }
        char[] cArr = new char[i];
        int[] decodeBandInt3 = decodeBandInt("cp_Utf8_chars", inputStream, Codec.CHAR3, i);
        for (int i4 = 0; i4 < i; i4++) {
            cArr[i4] = (char) decodeBandInt3[i4];
        }
        int[] decodeBandInt4 = decodeBandInt("cp_Utf8_big_suffix", inputStream, Codec.DELTA5, i2);
        int[][] iArr = new int[i2];
        for (int i5 = 0; i5 < i2; i5++) {
            iArr[i5] = decodeBandInt("cp_Utf8_big_chars " + i5, inputStream, Codec.DELTA5, decodeBandInt4[i5]);
        }
        char[][] cArr2 = new char[i2];
        for (int i6 = 0; i6 < i2; i6++) {
            cArr2[i6] = new char[iArr[i6].length];
            int i7 = 0;
            while (true) {
                int[] iArr2 = iArr[i6];
                if (i7 < iArr2.length) {
                    cArr2[i6][i7] = (char) iArr2[i7];
                    i7++;
                }
            }
        }
        int i8 = 0;
        int i9 = 0;
        int i10 = 1;
        while (i10 < cpUTF8Count) {
            String[] strArr = this.f106900A;
            int i11 = i10 - 1;
            String str = strArr[i11];
            if (decodeBandInt2[i11] == 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(str.substring(0, i10 > 1 ? decodeBandInt[i10 - 2] : 0));
                sb.append(new String(cArr2[i9]));
                strArr[i10] = sb.toString();
                this.f106911L.put(this.f106900A[i10], Integer.valueOf(i10));
                i9++;
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str.substring(0, i10 > 1 ? decodeBandInt[i10 - 2] : 0));
                sb2.append(new String(cArr, i8, decodeBandInt2[i11]));
                strArr[i10] = sb2.toString();
                i8 += decodeBandInt2[i11];
                this.f106911L.put(this.f106900A[i10], Integer.valueOf(i10));
            }
            i10++;
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void read(InputStream inputStream) throws IOException, Pack200Exception {
        m67055r(inputStream);
        m67050m(inputStream);
        m67048k(inputStream);
        m67051n(inputStream);
        m67046i(inputStream);
        m67054q(inputStream);
        m67044g(inputStream);
        m67053p(inputStream);
        m67045h(inputStream);
        m67047j(inputStream);
        m67052o(inputStream);
        m67049l(inputStream);
        int length = this.f106900A.length;
        this.f106913N = length;
        int length2 = length + this.f106940q.length;
        this.f106914O = length2;
        int length3 = length2 + this.f106935l.length;
        this.f106915P = length3;
        int length4 = length3 + this.f106941r.length;
        this.f106916Q = length4;
        int length5 = length4 + this.f106930g.length;
        this.f106917R = length5;
        int length6 = length5 + this.f106948y.length;
        this.f106918S = length6;
        int length7 = length6 + this.f106925b.length;
        this.f106919T = length7;
        int length8 = length7 + this.f106946w.length;
        this.f106920U = length8;
        int length9 = length8 + this.f106929f.length;
        this.f106921V = length9;
        int length10 = length9 + this.f106931h.length;
        this.f106922W = length10;
        this.f106923X = length10 + this.f106942s.length;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.BandSet
    public void unpack() {
    }

    public CPClass cpClassValue(String str) {
        CPClass cPClass = this.f106906G.get(str);
        if (cPClass != null) {
            return cPClass;
        }
        Integer num = this.f106909J.get(str);
        if (num != null) {
            return cpClassValue(num.intValue());
        }
        CPClass cPClass2 = new CPClass(cpUTF8Value(str, false), -1);
        this.f106906G.put(str, cPClass2);
        return cPClass2;
    }

    public CPUTF8 cpUTF8Value(String str) {
        return cpUTF8Value(str, true);
    }

    public CPUTF8 cpUTF8Value(String str, boolean z) {
        CPUTF8 cputf8 = this.f106901B.get(str);
        if (cputf8 != null) {
            return cputf8;
        }
        Integer num = z ? this.f106911L.get(str) : null;
        if (num != null) {
            return cpUTF8Value(num.intValue());
        }
        if (z) {
            num = this.f106912M.get(str);
        }
        if (num != null) {
            return cpSignatureValue(num.intValue());
        }
        CPUTF8 cputf82 = new CPUTF8(str, -1);
        this.f106901B.put(str, cputf82);
        return cputf82;
    }

    public CPNameAndType cpNameAndTypeValue(String str) {
        CPNameAndType cPNameAndType = this.f106908I.get(str);
        if (cPNameAndType != null) {
            return cPNameAndType;
        }
        Integer num = this.f106910K.get(str);
        if (num != null) {
            return cpNameAndTypeValue(num.intValue());
        }
        int indexOf = str.indexOf(58);
        CPNameAndType cPNameAndType2 = new CPNameAndType(cpUTF8Value(str.substring(0, indexOf), true), cpUTF8Value(str.substring(indexOf + 1), true), this.f106920U - 1);
        this.f106908I.put(str, cPNameAndType2);
        return cPNameAndType2;
    }
}
