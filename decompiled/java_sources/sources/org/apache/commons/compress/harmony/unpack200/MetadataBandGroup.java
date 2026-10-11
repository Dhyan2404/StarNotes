package org.apache.commons.compress.harmony.unpack200;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.IntFunction;
import org.apache.commons.compress.harmony.unpack200.MetadataBandGroup;
import org.apache.commons.compress.harmony.unpack200.bytecode.AnnotationDefaultAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.AnnotationsAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.Attribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPDouble;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPFloat;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPInteger;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPLong;
import org.apache.commons.compress.harmony.unpack200.bytecode.CPUTF8;
import org.apache.commons.compress.harmony.unpack200.bytecode.RuntimeVisibleorInvisibleAnnotationsAttribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.RuntimeVisibleorInvisibleParameterAnnotationsAttribute;

/* loaded from: classes12.dex */
public class MetadataBandGroup {

    /* renamed from: s */
    public static CPUTF8 f106984s;

    /* renamed from: t */
    public static CPUTF8 f106985t;

    /* renamed from: u */
    public static CPUTF8 f106986u;

    /* renamed from: v */
    public static CPUTF8 f106987v;

    /* renamed from: T */
    public int[] f106988T;

    /* renamed from: a */
    public final String f106989a;
    public int[] anno_N;

    /* renamed from: b */
    public final CpBands f106990b;

    /* renamed from: c */
    public List<Attribute> f106991c;
    public CPDouble[] caseD_KD;
    public CPFloat[] caseF_KF;
    public CPInteger[] caseI_KI;
    public CPLong[] caseJ_KJ;
    public int[] casearray_N;
    public CPUTF8[] casec_RS;
    public String[] caseec_RU;
    public String[] caseet_RS;
    public CPUTF8[] cases_RU;

    /* renamed from: d */
    public int f106992d;

    /* renamed from: e */
    public int f106993e;

    /* renamed from: f */
    public int f106994f;

    /* renamed from: g */
    public int f106995g;

    /* renamed from: h */
    public int f106996h;

    /* renamed from: i */
    public int f106997i;

    /* renamed from: j */
    public int f106998j;

    /* renamed from: k */
    public int f106999k;

    /* renamed from: l */
    public int f107000l;

    /* renamed from: m */
    public int f107001m;

    /* renamed from: n */
    public int f107002n;
    public CPUTF8[] name_RU;
    public CPUTF8[] nestname_RU;
    public int[] nestpair_N;
    public CPUTF8[] nesttype_RS;

    /* renamed from: o */
    public int f107003o;

    /* renamed from: p */
    public Iterator<CPUTF8> f107004p;
    public int[][] pair_N;
    public int[] param_NB;

    /* renamed from: q */
    public int f107005q;

    /* renamed from: r */
    public int f107006r;
    public CPUTF8[][] type_RS;

    public MetadataBandGroup(String str, CpBands cpBands) {
        this.f106989a = str;
        this.f106990b = cpBands;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ AnnotationsAttribute.Annotation m67064g(CPUTF8[] cputf8Arr, int[] iArr, Iterator it2, int i) {
        return m67066c(cputf8Arr[i], iArr[i], it2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ AnnotationsAttribute.Annotation m67065h(int[] iArr, Iterator it2, int i) {
        return m67066c(this.type_RS[this.f107005q - 1][i], iArr[i], it2);
    }

    public static void setRiaAttributeName(CPUTF8 cputf8) {
        f106985t = cputf8;
    }

    public static void setRipaAttributeName(CPUTF8 cputf8) {
        f106987v = cputf8;
    }

    public static void setRvaAttributeName(CPUTF8 cputf8) {
        f106984s = cputf8;
    }

    public static void setRvpaAttributeName(CPUTF8 cputf8) {
        f106986u = cputf8;
    }

    /* renamed from: c */
    public final AnnotationsAttribute.Annotation m67066c(CPUTF8 cputf8, int i, Iterator<CPUTF8> it2) {
        CPUTF8[] cputf8Arr = new CPUTF8[i];
        AnnotationsAttribute.ElementValue[] elementValueArr = new AnnotationsAttribute.ElementValue[i];
        for (int i2 = 0; i2 < i; i2++) {
            cputf8Arr[i2] = it2.next();
            int[] iArr = this.f106988T;
            int i3 = this.f107001m;
            this.f107001m = i3 + 1;
            int i4 = iArr[i3];
            elementValueArr[i2] = new AnnotationsAttribute.ElementValue(i4, m67068e(i4));
        }
        return new AnnotationsAttribute.Annotation(i, cputf8, cputf8Arr, elementValueArr);
    }

    /* renamed from: d */
    public final Attribute m67067d(int i, final CPUTF8[] cputf8Arr, final int[] iArr, final Iterator<CPUTF8> it2) {
        AnnotationsAttribute.Annotation[] annotationArr = new AnnotationsAttribute.Annotation[i];
        Arrays.setAll(annotationArr, new IntFunction() { // from class: com.sunia.HTREnginev2.lnj
            @Override // java.util.function.IntFunction
            public final Object apply(int i2) {
                AnnotationsAttribute.Annotation m67064g;
                m67064g = MetadataBandGroup.this.m67064g(cputf8Arr, iArr, it2, i2);
                return m67064g;
            }
        });
        return new RuntimeVisibleorInvisibleAnnotationsAttribute(this.f106989a.equals("RVA") ? f106984s : f106985t, annotationArr);
    }

    /* renamed from: e */
    public final Object m67068e(int i) {
        if (i == 64) {
            CPUTF8[] cputf8Arr = this.nesttype_RS;
            int i2 = this.f107002n;
            this.f107002n = i2 + 1;
            CPUTF8 cputf8 = cputf8Arr[i2];
            int[] iArr = this.nestpair_N;
            int i3 = this.f107003o;
            this.f107003o = i3 + 1;
            return m67066c(cputf8, iArr[i3], this.f107004p);
        }
        if (i == 70) {
            CPFloat[] cPFloatArr = this.caseF_KF;
            int i4 = this.f106994f;
            this.f106994f = i4 + 1;
            return cPFloatArr[i4];
        }
        if (i != 83) {
            if (i == 99) {
                CPUTF8[] cputf8Arr2 = this.casec_RS;
                int i5 = this.f106996h;
                this.f106996h = i5 + 1;
                return cputf8Arr2[i5];
            }
            if (i == 101) {
                StringBuilder sb = new StringBuilder();
                String[] strArr = this.caseet_RS;
                int i6 = this.f106997i;
                this.f106997i = i6 + 1;
                sb.append(strArr[i6]);
                sb.append(":");
                String[] strArr2 = this.caseec_RU;
                int i7 = this.f106998j;
                this.f106998j = i7 + 1;
                sb.append(strArr2[i7]);
                return this.f106990b.cpNameAndTypeValue(sb.toString());
            }
            if (i == 115) {
                CPUTF8[] cputf8Arr3 = this.cases_RU;
                int i8 = this.f106999k;
                this.f106999k = i8 + 1;
                return cputf8Arr3[i8];
            }
            if (i != 73) {
                if (i == 74) {
                    CPLong[] cPLongArr = this.caseJ_KJ;
                    int i9 = this.f106995g;
                    this.f106995g = i9 + 1;
                    return cPLongArr[i9];
                }
                if (i != 90) {
                    if (i == 91) {
                        int[] iArr2 = this.casearray_N;
                        int i10 = this.f107000l;
                        this.f107000l = i10 + 1;
                        int i11 = iArr2[i10];
                        AnnotationsAttribute.ElementValue[] elementValueArr = new AnnotationsAttribute.ElementValue[i11];
                        for (int i12 = 0; i12 < i11; i12++) {
                            int[] iArr3 = this.f106988T;
                            int i13 = this.f107001m;
                            this.f107001m = i13 + 1;
                            int i14 = iArr3[i13];
                            elementValueArr[i12] = new AnnotationsAttribute.ElementValue(i14, m67068e(i14));
                        }
                        return elementValueArr;
                    }
                    switch (i) {
                        case 66:
                        case 67:
                            break;
                        case 68:
                            CPDouble[] cPDoubleArr = this.caseD_KD;
                            int i15 = this.f106993e;
                            this.f106993e = i15 + 1;
                            return cPDoubleArr[i15];
                        default:
                            return null;
                    }
                }
            }
        }
        CPInteger[] cPIntegerArr = this.caseI_KI;
        int i16 = this.f106992d;
        this.f106992d = i16 + 1;
        return cPIntegerArr[i16];
    }

    /* renamed from: f */
    public final Attribute m67069f(int i, final Iterator<CPUTF8> it2) {
        RuntimeVisibleorInvisibleParameterAnnotationsAttribute.ParameterAnnotation[] parameterAnnotationArr = new RuntimeVisibleorInvisibleParameterAnnotationsAttribute.ParameterAnnotation[i];
        for (int i2 = 0; i2 < i; i2++) {
            int[] iArr = this.anno_N;
            int i3 = this.f107005q;
            this.f107005q = i3 + 1;
            int i4 = iArr[i3];
            int[][] iArr2 = this.pair_N;
            int i5 = this.f107006r;
            this.f107006r = i5 + 1;
            final int[] iArr3 = iArr2[i5];
            AnnotationsAttribute.Annotation[] annotationArr = new AnnotationsAttribute.Annotation[i4];
            Arrays.setAll(annotationArr, new IntFunction() { // from class: com.sunia.HTREnginev2.jnj
                @Override // java.util.function.IntFunction
                public final Object apply(int i6) {
                    AnnotationsAttribute.Annotation m67065h;
                    m67065h = MetadataBandGroup.this.m67065h(iArr3, it2, i6);
                    return m67065h;
                }
            });
            parameterAnnotationArr[i2] = new RuntimeVisibleorInvisibleParameterAnnotationsAttribute.ParameterAnnotation(annotationArr);
        }
        return new RuntimeVisibleorInvisibleParameterAnnotationsAttribute(this.f106989a.equals("RVPA") ? f106986u : f106987v, parameterAnnotationArr);
    }

    public List<Attribute> getAttributes() {
        if (this.f106991c == null) {
            this.f106991c = new ArrayList();
            CPUTF8[] cputf8Arr = this.name_RU;
            int i = 0;
            if (cputf8Arr != null) {
                Iterator<CPUTF8> it2 = Arrays.asList(cputf8Arr).iterator();
                if (!this.f106989a.equals("AD")) {
                    this.f107001m = 0;
                }
                this.f106992d = 0;
                this.f106993e = 0;
                this.f106994f = 0;
                this.f106995g = 0;
                this.f106996h = 0;
                this.f106997i = 0;
                this.f106998j = 0;
                this.f106999k = 0;
                this.f107000l = 0;
                this.f107002n = 0;
                this.f107003o = 0;
                this.f107004p = Arrays.asList(this.nestname_RU).iterator();
                if (this.f106989a.equals("RVA") || this.f106989a.equals("RIA")) {
                    while (true) {
                        int[] iArr = this.anno_N;
                        if (i >= iArr.length) {
                            break;
                        }
                        this.f106991c.add(m67067d(iArr[i], this.type_RS[i], this.pair_N[i], it2));
                        i++;
                    }
                } else if (this.f106989a.equals("RVPA") || this.f106989a.equals("RIPA")) {
                    this.f107005q = 0;
                    this.f107006r = 0;
                    int[] iArr2 = this.param_NB;
                    int length = iArr2.length;
                    while (i < length) {
                        this.f106991c.add(m67069f(iArr2[i], it2));
                        i++;
                    }
                }
            } else if (this.f106989a.equals("AD")) {
                int[] iArr3 = this.f106988T;
                int length2 = iArr3.length;
                while (i < length2) {
                    int i2 = iArr3[i];
                    this.f106991c.add(new AnnotationDefaultAttribute(new AnnotationsAttribute.ElementValue(i2, m67068e(i2))));
                    i++;
                }
            }
        }
        return this.f106991c;
    }
}
