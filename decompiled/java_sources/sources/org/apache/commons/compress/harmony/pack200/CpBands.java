package org.apache.commons.compress.harmony.pack200;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.function.Consumer;
import java.util.function.IntUnaryOperator;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.compress.harmony.pack200.CPMethodOrField;
import org.apache.commons.compress.harmony.pack200.CPSignature;
import org.apache.commons.compress.harmony.pack200.CpBands;
import org.apache.commons.compress.harmony.unpack200.AttributeLayout;
import org.objectweb.asm.Type;

/* loaded from: classes12.dex */
public class CpBands extends BandSet {

    /* renamed from: e */
    public final Set<String> f106611e;

    /* renamed from: f */
    public final Set<CPUTF8> f106612f;

    /* renamed from: g */
    public final Set<CPInt> f106613g;

    /* renamed from: h */
    public final Set<CPFloat> f106614h;

    /* renamed from: i */
    public final Set<CPLong> f106615i;

    /* renamed from: j */
    public final Set<CPDouble> f106616j;

    /* renamed from: k */
    public final Set<CPString> f106617k;

    /* renamed from: l */
    public final Set<CPClass> f106618l;

    /* renamed from: m */
    public final Set<CPSignature> f106619m;

    /* renamed from: n */
    public final Set<CPNameAndType> f106620n;

    /* renamed from: o */
    public final Set<CPMethodOrField> f106621o;

    /* renamed from: p */
    public final Set<CPMethodOrField> f106622p;

    /* renamed from: q */
    public final Set<CPMethodOrField> f106623q;

    /* renamed from: r */
    public final Map<String, CPUTF8> f106624r;

    /* renamed from: s */
    public final Map<String, CPNameAndType> f106625s;

    /* renamed from: t */
    public final Map<String, CPClass> f106626t;

    /* renamed from: u */
    public final Map<String, CPSignature> f106627u;

    /* renamed from: v */
    public final Map<String, CPMethodOrField> f106628v;

    /* renamed from: w */
    public final Map<String, CPMethodOrField> f106629w;

    /* renamed from: x */
    public final Map<String, CPMethodOrField> f106630x;

    /* renamed from: y */
    public final Map<Object, CPConstant<?>> f106631y;

    /* renamed from: z */
    public final Segment f106632z;

    public CpBands(Segment segment, int i) {
        super(i, segment.getSegmentHeader());
        HashSet hashSet = new HashSet();
        this.f106611e = hashSet;
        this.f106612f = new TreeSet();
        this.f106613g = new TreeSet();
        this.f106614h = new TreeSet();
        this.f106615i = new TreeSet();
        this.f106616j = new TreeSet();
        this.f106617k = new TreeSet();
        this.f106618l = new TreeSet();
        this.f106619m = new TreeSet();
        this.f106620n = new TreeSet();
        this.f106621o = new TreeSet();
        this.f106622p = new TreeSet();
        this.f106623q = new TreeSet();
        this.f106624r = new HashMap();
        this.f106625s = new HashMap();
        this.f106626t = new HashMap();
        this.f106627u = new HashMap();
        this.f106628v = new HashMap();
        this.f106629w = new HashMap();
        this.f106630x = new HashMap();
        this.f106631y = new HashMap();
        this.f106632z = segment;
        hashSet.add(AttributeLayout.ATTRIBUTE_ANNOTATION_DEFAULT);
        hashSet.add(AttributeLayout.ATTRIBUTE_RUNTIME_VISIBLE_ANNOTATIONS);
        hashSet.add(AttributeLayout.ATTRIBUTE_RUNTIME_INVISIBLE_ANNOTATIONS);
        hashSet.add(AttributeLayout.ATTRIBUTE_RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS);
        hashSet.add(AttributeLayout.ATTRIBUTE_RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS);
        hashSet.add(AttributeLayout.ATTRIBUTE_CODE);
        hashSet.add(AttributeLayout.ATTRIBUTE_LINE_NUMBER_TABLE);
        hashSet.add(AttributeLayout.ATTRIBUTE_LOCAL_VARIABLE_TABLE);
        hashSet.add(AttributeLayout.ATTRIBUTE_LOCAL_VARIABLE_TYPE_TABLE);
        hashSet.add(AttributeLayout.ATTRIBUTE_CONSTANT_VALUE);
        hashSet.add(AttributeLayout.ATTRIBUTE_DEPRECATED);
        hashSet.add(AttributeLayout.ATTRIBUTE_ENCLOSING_METHOD);
        hashSet.add(AttributeLayout.ATTRIBUTE_EXCEPTIONS);
        hashSet.add(AttributeLayout.ATTRIBUTE_INNER_CLASSES);
        hashSet.add("Signature");
        hashSet.add(AttributeLayout.ATTRIBUTE_SOURCE_FILE);
    }

    /* renamed from: u */
    public static /* synthetic */ void m66922u(Map map, CPMethodOrField cPMethodOrField) {
        CPClass className = cPMethodOrField.getClassName();
        Integer num = (Integer) map.get(className);
        if (num == null) {
            map.put(className, 1);
            cPMethodOrField.setIndexInClass(0);
        } else {
            int intValue = num.intValue();
            cPMethodOrField.setIndexInClass(intValue);
            map.put(className, Integer.valueOf(intValue + 1));
        }
    }

    /* renamed from: v */
    public static /* synthetic */ void m66923v(Map map, Map map2, CPMethodOrField cPMethodOrField) {
        CPClass className = cPMethodOrField.getClassName();
        Integer num = (Integer) map.get(className);
        if (num == null) {
            map.put(className, 1);
            cPMethodOrField.setIndexInClass(0);
        } else {
            int intValue = num.intValue();
            cPMethodOrField.setIndexInClass(intValue);
            map.put(className, Integer.valueOf(intValue + 1));
        }
        if (cPMethodOrField.getDesc().getName().equals(Constants.CONSTRUCTOR_NAME)) {
            Integer num2 = (Integer) map2.get(className);
            if (num2 == null) {
                map2.put(className, 1);
                cPMethodOrField.setIndexInClassForConstructor(0);
            } else {
                int intValue2 = num2.intValue();
                cPMethodOrField.setIndexInClassForConstructor(intValue2);
                map2.put(className, Integer.valueOf(intValue2 + 1));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w */
    public /* synthetic */ void m66924w(CPSignature cPSignature) {
        String underlyingString = cPSignature.getUnderlyingString();
        if (underlyingString.equals(cPSignature.getSignatureForm().getUnderlyingString())) {
            return;
        }
        m66928A(underlyingString);
    }

    /* renamed from: x */
    public static /* synthetic */ int m66925x(List list, int i) {
        return ((CPClass) list.get(i)).getIndex();
    }

    /* renamed from: y */
    public static /* synthetic */ int m66926y(List list, int i) {
        return ((Character) list.get(i)).charValue();
    }

    /* renamed from: z */
    public static /* synthetic */ int m66927z(List list, int i) {
        return ((Character) list.remove(0)).charValue();
    }

    /* renamed from: A */
    public final void m66928A(String str) {
        CPUTF8 cputf8 = this.f106624r.get(str);
        if (cputf8 == null || this.f106626t.get(str) != null) {
            return;
        }
        this.f106624r.remove(str);
        this.f106612f.remove(cputf8);
    }

    /* renamed from: B */
    public final void m66929B() {
        this.f106619m.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.yfe
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CpBands.this.m66924w((CPSignature) obj);
            }
        });
    }

    /* renamed from: C */
    public final void m66930C(OutputStream outputStream) throws IOException, Pack200Exception {
        PackingUtils.log("Writing " + this.f106618l.size() + " Class entries...");
        int size = this.f106618l.size();
        int[] iArr = new int[size];
        Iterator<CPClass> it2 = this.f106618l.iterator();
        int i = 0;
        while (it2.hasNext()) {
            iArr[i] = it2.next().getIndexInCpUtf8();
            i++;
        }
        byte[] encodeBandInt = encodeBandInt("cpClass", iArr, Codec.UDELTA5);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from cpClass[" + size + IteratorUtils.f104924b);
    }

    /* renamed from: D */
    public final void m66931D(OutputStream outputStream) throws IOException, Pack200Exception {
        PackingUtils.log("Writing " + this.f106620n.size() + " Descriptor entries...");
        int size = this.f106620n.size();
        int[] iArr = new int[size];
        int size2 = this.f106620n.size();
        int[] iArr2 = new int[size2];
        int i = 0;
        for (CPNameAndType cPNameAndType : this.f106620n) {
            iArr[i] = cPNameAndType.getNameIndex();
            iArr2[i] = cPNameAndType.getTypeIndex();
            i++;
        }
        byte[] encodeBandInt = encodeBandInt("cp_Descr_Name", iArr, Codec.DELTA5);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from cp_Descr_Name[" + size + IteratorUtils.f104924b);
        byte[] encodeBandInt2 = encodeBandInt("cp_Descr_Type", iArr2, Codec.UDELTA5);
        outputStream.write(encodeBandInt2);
        PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from cp_Descr_Type[" + size2 + IteratorUtils.f104924b);
    }

    /* renamed from: E */
    public final void m66932E(OutputStream outputStream) throws IOException, Pack200Exception {
        PackingUtils.log("Writing " + this.f106616j.size() + " Double entries...");
        int size = this.f106616j.size();
        int[] iArr = new int[size];
        int size2 = this.f106616j.size();
        int[] iArr2 = new int[size2];
        Iterator<CPDouble> it2 = this.f106616j.iterator();
        int i = 0;
        while (it2.hasNext()) {
            long doubleToLongBits = Double.doubleToLongBits(it2.next().getDouble());
            iArr[i] = (int) (doubleToLongBits >> 32);
            iArr2[i] = (int) doubleToLongBits;
            i++;
        }
        byte[] encodeBandInt = encodeBandInt("cp_Double_hi", iArr, Codec.UDELTA5);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from cp_Double_hi[" + size + IteratorUtils.f104924b);
        byte[] encodeBandInt2 = encodeBandInt("cp_Double_lo", iArr2, Codec.DELTA5);
        outputStream.write(encodeBandInt2);
        PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from cp_Double_lo[" + size2 + IteratorUtils.f104924b);
    }

    /* renamed from: F */
    public final void m66933F(OutputStream outputStream) throws IOException, Pack200Exception {
        PackingUtils.log("Writing " + this.f106614h.size() + " Float entries...");
        int size = this.f106614h.size();
        int[] iArr = new int[size];
        Iterator<CPFloat> it2 = this.f106614h.iterator();
        int i = 0;
        while (it2.hasNext()) {
            iArr[i] = Float.floatToIntBits(it2.next().getFloat());
            i++;
        }
        byte[] encodeBandInt = encodeBandInt("cp_Float", iArr, Codec.UDELTA5);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from cp_Float[" + size + IteratorUtils.f104924b);
    }

    /* renamed from: G */
    public final void m66934G(OutputStream outputStream) throws IOException, Pack200Exception {
        PackingUtils.log("Writing " + this.f106613g.size() + " Integer entries...");
        int size = this.f106613g.size();
        int[] iArr = new int[size];
        Iterator<CPInt> it2 = this.f106613g.iterator();
        int i = 0;
        while (it2.hasNext()) {
            iArr[i] = it2.next().getInt();
            i++;
        }
        byte[] encodeBandInt = encodeBandInt("cp_Int", iArr, Codec.UDELTA5);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from cp_Int[" + size + IteratorUtils.f104924b);
    }

    /* renamed from: H */
    public final void m66935H(OutputStream outputStream) throws IOException, Pack200Exception {
        PackingUtils.log("Writing " + this.f106615i.size() + " Long entries...");
        int size = this.f106615i.size();
        int[] iArr = new int[size];
        int size2 = this.f106615i.size();
        int[] iArr2 = new int[size2];
        Iterator<CPLong> it2 = this.f106615i.iterator();
        int i = 0;
        while (it2.hasNext()) {
            long j = it2.next().getLong();
            iArr[i] = (int) (j >> 32);
            iArr2[i] = (int) j;
            i++;
        }
        byte[] encodeBandInt = encodeBandInt("cp_Long_hi", iArr, Codec.UDELTA5);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from cp_Long_hi[" + size + IteratorUtils.f104924b);
        byte[] encodeBandInt2 = encodeBandInt("cp_Long_lo", iArr2, Codec.DELTA5);
        outputStream.write(encodeBandInt2);
        PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from cp_Long_lo[" + size2 + IteratorUtils.f104924b);
    }

    /* renamed from: I */
    public final void m66936I(Set<CPMethodOrField> set, OutputStream outputStream, String str) throws IOException, Pack200Exception {
        PackingUtils.log("Writing " + set.size() + " Method and Field entries...");
        int size = set.size();
        int[] iArr = new int[size];
        int size2 = set.size();
        int[] iArr2 = new int[size2];
        int i = 0;
        for (CPMethodOrField cPMethodOrField : set) {
            iArr[i] = cPMethodOrField.getClassIndex();
            iArr2[i] = cPMethodOrField.getDescIndex();
            i++;
        }
        byte[] encodeBandInt = encodeBandInt(str + "_class", iArr, Codec.DELTA5);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from " + str + "_class[" + size + IteratorUtils.f104924b);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("_desc");
        byte[] encodeBandInt2 = encodeBandInt(sb.toString(), iArr2, Codec.UDELTA5);
        outputStream.write(encodeBandInt2);
        PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from " + str + "_desc[" + size2 + IteratorUtils.f104924b);
    }

    /* renamed from: J */
    public final void m66937J(OutputStream outputStream) throws IOException, Pack200Exception {
        PackingUtils.log("Writing " + this.f106619m.size() + " Signature entries...");
        int size = this.f106619m.size();
        int[] iArr = new int[size];
        final ArrayList arrayList = new ArrayList();
        int i = 0;
        for (CPSignature cPSignature : this.f106619m) {
            arrayList.addAll(cPSignature.getClasses());
            iArr[i] = cPSignature.getIndexInCpUtf8();
            i++;
        }
        int size2 = arrayList.size();
        int[] iArr2 = new int[size2];
        Arrays.setAll(iArr2, new IntUnaryOperator() { // from class: com.sunia.HTREnginev2.xfe
            @Override // java.util.function.IntUnaryOperator
            public final int applyAsInt(int i2) {
                int m66925x;
                m66925x = CpBands.m66925x(arrayList, i2);
                return m66925x;
            }
        });
        byte[] encodeBandInt = encodeBandInt("cpSignatureForm", iArr, Codec.DELTA5);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from cpSignatureForm[" + size + IteratorUtils.f104924b);
        byte[] encodeBandInt2 = encodeBandInt("cpSignatureClasses", iArr2, Codec.UDELTA5);
        outputStream.write(encodeBandInt2);
        PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from cpSignatureClasses[" + size2 + IteratorUtils.f104924b);
    }

    /* renamed from: K */
    public final void m66938K(OutputStream outputStream) throws IOException, Pack200Exception {
        PackingUtils.log("Writing " + this.f106617k.size() + " String entries...");
        int size = this.f106617k.size();
        int[] iArr = new int[size];
        Iterator<CPString> it2 = this.f106617k.iterator();
        int i = 0;
        while (it2.hasNext()) {
            iArr[i] = it2.next().getIndexInCpUtf8();
            i++;
        }
        byte[] encodeBandInt = encodeBandInt("cpString", iArr, Codec.UDELTA5);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from cpString[" + size + IteratorUtils.f104924b);
    }

    /* renamed from: L */
    public final void m66939L(OutputStream outputStream) throws IOException, Pack200Exception {
        int i;
        PackingUtils.log("Writing " + this.f106612f.size() + " UTF8 entries...");
        int i2 = 2;
        int size = this.f106612f.size() - 2;
        int[] iArr = new int[size];
        int size2 = this.f106612f.size() - 1;
        int[] iArr2 = new int[size2];
        final ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        Object[] array = this.f106612f.toArray();
        String underlyingString = ((CPUTF8) array[1]).getUnderlyingString();
        int i3 = 0;
        iArr2[0] = underlyingString.length();
        m66941s(arrayList, underlyingString.toCharArray());
        while (i2 < array.length) {
            int i4 = i2 - 1;
            char[] charArray = ((CPUTF8) array[i4]).getUnderlyingString().toCharArray();
            String underlyingString2 = ((CPUTF8) array[i2]).getUnderlyingString();
            char[] charArray2 = underlyingString2.toCharArray();
            int i5 = size2;
            Object[] objArr = array;
            int i6 = i3;
            while (i3 < charArray.length) {
                char[] cArr = charArray;
                if (charArray[i3] != charArray2[i3]) {
                    break;
                }
                i6++;
                i3++;
                charArray = cArr;
            }
            iArr[i2 - 2] = i6;
            char[] charArray3 = underlyingString2.substring(i6).toCharArray();
            if (charArray3.length > 1000) {
                i = 0;
                iArr2[i4] = 0;
                arrayList2.add(Integer.valueOf(charArray3.length));
                m66941s(arrayList3, charArray3);
            } else {
                i = 0;
                iArr2[i4] = charArray3.length;
                m66941s(arrayList, charArray3);
            }
            i2++;
            i3 = i;
            array = objArr;
            size2 = i5;
        }
        int i7 = size2;
        int i8 = i3;
        int size3 = arrayList.size();
        int[] iArr3 = new int[size3];
        int size4 = arrayList2.size();
        int[] iArr4 = new int[size4];
        int size5 = arrayList2.size();
        int[][] iArr5 = new int[size5];
        Arrays.setAll(iArr3, new IntUnaryOperator() { // from class: com.sunia.HTREnginev2.zfe
            @Override // java.util.function.IntUnaryOperator
            public final int applyAsInt(int i9) {
                int m66926y;
                m66926y = CpBands.m66926y(arrayList, i9);
                return m66926y;
            }
        });
        for (int i9 = i8; i9 < size4; i9++) {
            int intValue = ((Integer) arrayList2.get(i9)).intValue();
            iArr4[i9] = intValue;
            int[] iArr6 = new int[intValue];
            iArr5[i9] = iArr6;
            Arrays.setAll(iArr6, new IntUnaryOperator() { // from class: com.sunia.HTREnginev2.age
                @Override // java.util.function.IntUnaryOperator
                public final int applyAsInt(int i10) {
                    int m66927z;
                    m66927z = CpBands.m66927z(arrayList3, i10);
                    return m66927z;
                }
            });
        }
        BHSDCodec bHSDCodec = Codec.DELTA5;
        byte[] encodeBandInt = encodeBandInt("cpUtf8Prefix", iArr, bHSDCodec);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from cpUtf8Prefix[" + size + IteratorUtils.f104924b);
        byte[] encodeBandInt2 = encodeBandInt("cpUtf8Suffix", iArr2, Codec.UNSIGNED5);
        outputStream.write(encodeBandInt2);
        PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from cpUtf8Suffix[" + i7 + IteratorUtils.f104924b);
        byte[] encodeBandInt3 = encodeBandInt("cpUtf8Chars", iArr3, Codec.CHAR3);
        outputStream.write(encodeBandInt3);
        PackingUtils.log("Wrote " + encodeBandInt3.length + " bytes from cpUtf8Chars[" + size3 + IteratorUtils.f104924b);
        byte[] encodeBandInt4 = encodeBandInt("cpUtf8BigSuffix", iArr4, bHSDCodec);
        outputStream.write(encodeBandInt4);
        PackingUtils.log("Wrote " + encodeBandInt4.length + " bytes from cpUtf8BigSuffix[" + size4 + IteratorUtils.f104924b);
        for (int i10 = 0; i10 < size5; i10++) {
            byte[] encodeBandInt5 = encodeBandInt("cpUtf8BigChars " + i10, iArr5[i10], Codec.DELTA5);
            outputStream.write(encodeBandInt5);
            PackingUtils.log("Wrote " + encodeBandInt5.length + " bytes from cpUtf8BigChars" + i10 + IteratorUtils.f104923a + iArr5[i10].length + IteratorUtils.f104924b);
        }
    }

    public void addCPClass(String str) {
        getCPClass(str);
    }

    public boolean existsCpClass(String str) {
        return this.f106626t.get(str) != null;
    }

    public void finaliseBands() {
        m66940r("");
        m66929B();
        m66942t();
        this.segmentHeader.setCp_Utf8_count(this.f106612f.size());
        this.segmentHeader.setCp_Int_count(this.f106613g.size());
        this.segmentHeader.setCp_Float_count(this.f106614h.size());
        this.segmentHeader.setCp_Long_count(this.f106615i.size());
        this.segmentHeader.setCp_Double_count(this.f106616j.size());
        this.segmentHeader.setCp_String_count(this.f106617k.size());
        this.segmentHeader.setCp_Class_count(this.f106618l.size());
        this.segmentHeader.setCp_Signature_count(this.f106619m.size());
        this.segmentHeader.setCp_Descr_count(this.f106620n.size());
        this.segmentHeader.setCp_Field_count(this.f106621o.size());
        this.segmentHeader.setCp_Method_count(this.f106622p.size());
        this.segmentHeader.setCp_Imethod_count(this.f106623q.size());
    }

    public CPClass getCPClass(String str) {
        if (str == null) {
            return null;
        }
        String replace = str.replace('.', '/');
        CPClass cPClass = this.f106626t.get(replace);
        if (cPClass == null) {
            CPClass cPClass2 = new CPClass(getCPUtf8(replace));
            this.f106618l.add(cPClass2);
            this.f106626t.put(replace, cPClass2);
            cPClass = cPClass2;
        }
        if (cPClass.isInnerClass()) {
            this.f106632z.getClassBands().currentClassReferencesInnerClass(cPClass);
        }
        return cPClass;
    }

    public CPMethodOrField getCPField(CPClass cPClass, String str, String str2) {
        String str3 = cPClass.toString() + ":" + str + ":" + str2;
        CPMethodOrField cPMethodOrField = this.f106629w.get(str3);
        if (cPMethodOrField != null) {
            return cPMethodOrField;
        }
        CPMethodOrField cPMethodOrField2 = new CPMethodOrField(cPClass, getCPNameAndType(str, str2));
        this.f106621o.add(cPMethodOrField2);
        this.f106629w.put(str3, cPMethodOrField2);
        return cPMethodOrField2;
    }

    public CPMethodOrField getCPIMethod(CPClass cPClass, String str, String str2) {
        String str3 = cPClass.toString() + ":" + str + ":" + str2;
        CPMethodOrField cPMethodOrField = this.f106630x.get(str3);
        if (cPMethodOrField != null) {
            return cPMethodOrField;
        }
        CPMethodOrField cPMethodOrField2 = new CPMethodOrField(cPClass, getCPNameAndType(str, str2));
        this.f106623q.add(cPMethodOrField2);
        this.f106630x.put(str3, cPMethodOrField2);
        return cPMethodOrField2;
    }

    public CPMethodOrField getCPMethod(CPClass cPClass, String str, String str2) {
        String str3 = cPClass.toString() + ":" + str + ":" + str2;
        CPMethodOrField cPMethodOrField = this.f106628v.get(str3);
        if (cPMethodOrField != null) {
            return cPMethodOrField;
        }
        CPMethodOrField cPMethodOrField2 = new CPMethodOrField(cPClass, getCPNameAndType(str, str2));
        this.f106622p.add(cPMethodOrField2);
        this.f106628v.put(str3, cPMethodOrField2);
        return cPMethodOrField2;
    }

    public CPNameAndType getCPNameAndType(String str, String str2) {
        String str3 = str + ":" + str2;
        CPNameAndType cPNameAndType = this.f106625s.get(str3);
        if (cPNameAndType != null) {
            return cPNameAndType;
        }
        CPNameAndType cPNameAndType2 = new CPNameAndType(getCPUtf8(str), getCPSignature(str2));
        this.f106625s.put(str3, cPNameAndType2);
        this.f106620n.add(cPNameAndType2);
        return cPNameAndType2;
    }

    public CPSignature getCPSignature(String str) {
        CPUTF8 cPUtf8;
        CPClass cPClass;
        if (str == null) {
            return null;
        }
        CPSignature cPSignature = this.f106627u.get(str);
        if (cPSignature != null) {
            return cPSignature;
        }
        ArrayList arrayList = new ArrayList();
        if (str.length() <= 1 || str.indexOf(76) == -1) {
            cPUtf8 = getCPUtf8(str);
        } else {
            ArrayList<String> arrayList2 = new ArrayList();
            char[] charArray = str.toCharArray();
            StringBuilder sb = new StringBuilder();
            int i = 0;
            while (i < charArray.length) {
                sb.append(charArray[i]);
                if (charArray[i] == 'L') {
                    StringBuilder sb2 = new StringBuilder();
                    int i2 = i + 1;
                    while (true) {
                        if (i2 < charArray.length) {
                            char c = charArray[i2];
                            if (!Character.isLetter(c) && !Character.isDigit(c) && c != '/' && c != '$' && c != '_') {
                                arrayList2.add(sb2.toString());
                                i = i2 - 1;
                                break;
                            }
                            sb2.append(c);
                            i2++;
                        }
                    }
                }
                i++;
            }
            m66928A(str);
            for (String str2 : arrayList2) {
                if (str2 != null) {
                    String replace = str2.replace('.', '/');
                    cPClass = this.f106626t.get(replace);
                    if (cPClass == null) {
                        CPClass cPClass2 = new CPClass(getCPUtf8(replace));
                        this.f106618l.add(cPClass2);
                        this.f106626t.put(replace, cPClass2);
                        cPClass = cPClass2;
                    }
                } else {
                    cPClass = null;
                }
                arrayList.add(cPClass);
            }
            cPUtf8 = getCPUtf8(sb.toString());
        }
        CPSignature cPSignature2 = new CPSignature(str, cPUtf8, arrayList);
        this.f106619m.add(cPSignature2);
        this.f106627u.put(str, cPSignature2);
        return cPSignature2;
    }

    public CPUTF8 getCPUtf8(String str) {
        if (str == null) {
            return null;
        }
        CPUTF8 cputf8 = this.f106624r.get(str);
        if (cputf8 != null) {
            return cputf8;
        }
        CPUTF8 cputf82 = new CPUTF8(str);
        this.f106612f.add(cputf82);
        this.f106624r.put(str, cputf82);
        return cputf82;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CPConstant<?> getConstant(Object obj) {
        CPConstant<?> cPConstant = this.f106631y.get(obj);
        if (cPConstant == null) {
            if (obj instanceof Integer) {
                cPConstant = new CPInt(((Integer) obj).intValue());
                this.f106613g.add(cPConstant);
            } else if (obj instanceof Long) {
                cPConstant = new CPLong(((Long) obj).longValue());
                this.f106615i.add(cPConstant);
            } else if (obj instanceof Float) {
                cPConstant = new CPFloat(((Float) obj).floatValue());
                this.f106614h.add(cPConstant);
            } else if (obj instanceof Double) {
                cPConstant = new CPDouble(((Double) obj).doubleValue());
                this.f106616j.add(cPConstant);
            } else if (obj instanceof String) {
                cPConstant = new CPString(getCPUtf8((String) obj));
                this.f106617k.add(cPConstant);
            } else if (obj instanceof Type) {
                String className = ((Type) obj).getClassName();
                if (className.endsWith("[]")) {
                    String str = "[L" + className.substring(0, className.length() - 2);
                    while (str.endsWith("[]")) {
                        str = IteratorUtils.f104923a + str.substring(0, str.length() - 2);
                    }
                    className = str + AndroidTreeView.f47214k;
                }
                cPConstant = getCPClass(className);
            }
            this.f106631y.put(obj, cPConstant);
        }
        return cPConstant;
    }

    @Override // org.apache.commons.compress.harmony.pack200.BandSet
    public void pack(OutputStream outputStream) throws IOException, Pack200Exception {
        PackingUtils.log("Writing constant pool bands...");
        m66939L(outputStream);
        m66934G(outputStream);
        m66933F(outputStream);
        m66935H(outputStream);
        m66932E(outputStream);
        m66938K(outputStream);
        m66930C(outputStream);
        m66937J(outputStream);
        m66931D(outputStream);
        m66936I(this.f106621o, outputStream, "cp_Field");
        m66936I(this.f106622p, outputStream, "cp_Method");
        m66936I(this.f106623q, outputStream, "cp_Imethod");
    }

    /* renamed from: r */
    public void m66940r(String str) {
        getCPUtf8(str);
    }

    /* renamed from: s */
    public final void m66941s(List<Character> list, char[] cArr) {
        for (char c : cArr) {
            list.add(Character.valueOf(c));
        }
    }

    /* renamed from: t */
    public final void m66942t() {
        Iterator it2 = Arrays.asList(this.f106612f, this.f106613g, this.f106614h, this.f106615i, this.f106616j, this.f106617k, this.f106618l, this.f106619m, this.f106620n, this.f106621o, this.f106622p, this.f106623q).iterator();
        while (it2.hasNext()) {
            Iterator it3 = ((Set) it2.next()).iterator();
            int i = 0;
            while (it3.hasNext()) {
                ((ConstantPoolEntry) it3.next()).setIndex(i);
                i++;
            }
        }
        final HashMap hashMap = new HashMap();
        this.f106621o.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.ufe
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CpBands.m66922u(hashMap, (CPMethodOrField) obj);
            }
        });
        hashMap.clear();
        final HashMap hashMap2 = new HashMap();
        this.f106622p.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.wfe
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                CpBands.m66923v(hashMap, hashMap2, (CPMethodOrField) obj);
            }
        });
    }

    public CPMethodOrField getCPField(String str, String str2, String str3) {
        return getCPField(getCPClass(str), str2, str3);
    }

    public CPMethodOrField getCPIMethod(String str, String str2, String str3) {
        return getCPIMethod(getCPClass(str), str2, str3);
    }

    public CPMethodOrField getCPMethod(String str, String str2, String str3) {
        return getCPMethod(getCPClass(str), str2, str3);
    }
}
