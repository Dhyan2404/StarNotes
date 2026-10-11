package org.apache.commons.compress.harmony.pack200;

import com.caverock.androidsvg.SVG;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.IntFunction;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.compress.harmony.pack200.AttributeDefinitionBands;
import org.apache.commons.compress.harmony.pack200.CPClass;
import org.apache.commons.compress.harmony.pack200.ClassBands;
import org.apache.commons.compress.harmony.pack200.IcBands;
import org.apache.commons.compress.harmony.pack200.NewAttributeBands;
import org.objectweb.asm.Label;

/* loaded from: classes12.dex */
public class ClassBands extends BandSet {

    /* renamed from: A */
    public final CPNameAndType[][] f106512A;

    /* renamed from: A0 */
    public boolean f106513A0;

    /* renamed from: B */
    public final long[][] f106514B;

    /* renamed from: B0 */
    public boolean f106515B0;

    /* renamed from: C */
    public int[] f106516C;

    /* renamed from: C0 */
    public final Segment f106517C0;

    /* renamed from: D */
    public final List<CPSignature> f106518D;

    /* renamed from: D0 */
    public final Map<CPClass, Set<CPClass>> f106519D0;

    /* renamed from: E */
    public final IntList f106520E;

    /* renamed from: E0 */
    public final boolean f106521E0;

    /* renamed from: F */
    public final List<CPClass> f106522F;

    /* renamed from: F0 */
    public int f106523F0;

    /* renamed from: G */
    public int[] f106524G;

    /* renamed from: G0 */
    public int f106525G0;

    /* renamed from: H */
    public final IntList f106526H;

    /* renamed from: H0 */
    public int[] f106527H0;

    /* renamed from: I */
    public final IntList f106528I;

    /* renamed from: I0 */
    public CPClass[] f106529I0;

    /* renamed from: J */
    public final IntList f106530J;

    /* renamed from: J0 */
    public int[] f106531J0;

    /* renamed from: K */
    public final List f106532K;

    /* renamed from: K0 */
    public List<CPClass> f106533K0;

    /* renamed from: L */
    public final List f106534L;

    /* renamed from: L0 */
    public List<CPUTF8> f106535L0;

    /* renamed from: M */
    public final List f106536M;

    /* renamed from: N */
    public final List<CPClass> f106537N;

    /* renamed from: O */
    public final List<Long> f106538O;

    /* renamed from: P */
    public int[] f106539P;

    /* renamed from: Q */
    public final IntList f106540Q;

    /* renamed from: R */
    public final List f106541R;

    /* renamed from: S */
    public final IntList f106542S;

    /* renamed from: U */
    public final IntList f106543U;

    /* renamed from: V */
    public final List f106544V;

    /* renamed from: W */
    public final List f106545W;

    /* renamed from: X */
    public final List<ConstantPoolEntry> f106546X;

    /* renamed from: Y */
    public final List<ConstantPoolEntry> f106547Y;

    /* renamed from: Z */
    public final IntList f106548Z;

    /* renamed from: a0 */
    public final IntList f106549a0;

    /* renamed from: b0 */
    public final List f106550b0;

    /* renamed from: c0 */
    public final List f106551c0;

    /* renamed from: d0 */
    public final List<ConstantPoolEntry> f106552d0;

    /* renamed from: e */
    public final CpBands f106553e;

    /* renamed from: e0 */
    public final List<ConstantPoolEntry> f106554e0;

    /* renamed from: f */
    public final AttributeDefinitionBands f106555f;

    /* renamed from: f0 */
    public final IntList f106556f0;

    /* renamed from: g */
    public final CPClass[] f106557g;

    /* renamed from: g0 */
    public final MetadataBandGroup f106558g0;

    /* renamed from: h */
    public final CPClass[] f106559h;

    /* renamed from: h0 */
    public final MetadataBandGroup f106560h0;

    /* renamed from: i */
    public final CPClass[][] f106561i;

    /* renamed from: i0 */
    public final MetadataBandGroup f106562i0;

    /* renamed from: j */
    public final int[] f106563j;

    /* renamed from: j0 */
    public final MetadataBandGroup f106564j0;

    /* renamed from: k */
    public final int[] f106565k;

    /* renamed from: k0 */
    public final MetadataBandGroup f106566k0;

    /* renamed from: l */
    public final long[] f106567l;

    /* renamed from: l0 */
    public final MetadataBandGroup f106568l0;

    /* renamed from: m */
    public int[] f106569m;

    /* renamed from: m0 */
    public final MetadataBandGroup f106570m0;

    /* renamed from: n */
    public final List<CPUTF8> f106571n;

    /* renamed from: n0 */
    public final MetadataBandGroup f106572n0;

    /* renamed from: o */
    public final List<ConstantPoolEntry> f106573o;

    /* renamed from: o0 */
    public final MetadataBandGroup f106574o0;

    /* renamed from: p */
    public final List<ConstantPoolEntry> f106575p;

    /* renamed from: p0 */
    public final List<NewAttributeBands> f106576p0;

    /* renamed from: q */
    public final List<CPSignature> f106577q;

    /* renamed from: q0 */
    public final List<NewAttributeBands> f106578q0;

    /* renamed from: r */
    public final IntList f106579r;

    /* renamed from: r0 */
    public final List<NewAttributeBands> f106580r0;

    /* renamed from: s */
    public final IntList f106581s;

    /* renamed from: s0 */
    public final List<NewAttributeBands> f106582s0;

    /* renamed from: t */
    public final int[] f106583t;

    /* renamed from: t0 */
    public final List<Long> f106584t0;

    /* renamed from: u */
    public final CPNameAndType[][] f106585u;

    /* renamed from: u0 */
    public final List<CPNameAndType> f106586u0;

    /* renamed from: v */
    public final long[][] f106587v;

    /* renamed from: v0 */
    public final List<Long> f106588v0;

    /* renamed from: w */
    public int[] f106589w;

    /* renamed from: w0 */
    public final List<CPNameAndType> f106590w0;

    /* renamed from: x */
    public final List<CPConstant<?>> f106591x;

    /* renamed from: x0 */
    public C18892a f106592x0;

    /* renamed from: y */
    public final List<CPSignature> f106593y;

    /* renamed from: y0 */
    public C18892a f106594y0;

    /* renamed from: z */
    public final int[] f106595z;

    /* renamed from: z0 */
    public boolean f106596z0;

    /* renamed from: org.apache.commons.compress.harmony.pack200.ClassBands$a */
    /* loaded from: classes12.dex */
    public static class C18892a {

        /* renamed from: a */
        public int f106597a;

        /* renamed from: b */
        public int[] f106598b;

        /* renamed from: c */
        public IntList f106599c = new IntList();

        /* renamed from: d */
        public List<String> f106600d = new ArrayList();

        /* renamed from: e */
        public List<String> f106601e = new ArrayList();

        /* renamed from: f */
        public List<String> f106602f = new ArrayList();

        /* renamed from: g */
        public List<Object> f106603g = new ArrayList();

        /* renamed from: h */
        public List<Integer> f106604h = new ArrayList();

        /* renamed from: i */
        public List<String> f106605i = new ArrayList();

        /* renamed from: j */
        public List<String> f106606j = new ArrayList();

        /* renamed from: k */
        public List<Integer> f106607k = new ArrayList();

        public C18892a(int i) {
            this.f106597a = i;
            this.f106598b = new int[i];
        }

        /* renamed from: a */
        public void m66915a(int i, String str, List<String> list, List<String> list2, List<Object> list3, List<Integer> list4, List<String> list5, List<String> list6, List<Integer> list7) {
            int[] iArr = this.f106598b;
            iArr[i] = iArr[i] + 1;
            this.f106600d.add(str);
            this.f106599c.add(list.size());
            this.f106601e.addAll(list);
            this.f106602f.addAll(list2);
            this.f106603g.addAll(list3);
            this.f106604h.addAll(list4);
            this.f106605i.addAll(list5);
            this.f106606j.addAll(list6);
            this.f106607k.addAll(list7);
        }
    }

    public ClassBands(Segment segment, int i, int i2, boolean z) throws IOException {
        super(i2, segment.getSegmentHeader());
        this.f106571n = new ArrayList();
        this.f106573o = new ArrayList();
        this.f106575p = new ArrayList();
        this.f106577q = new ArrayList();
        this.f106579r = new IntList();
        this.f106581s = new IntList();
        this.f106591x = new ArrayList();
        this.f106593y = new ArrayList();
        this.f106518D = new ArrayList();
        this.f106520E = new IntList();
        this.f106522F = new ArrayList();
        this.f106526H = new IntList();
        this.f106528I = new IntList();
        this.f106530J = new IntList();
        this.f106532K = new ArrayList();
        this.f106534L = new ArrayList();
        this.f106536M = new ArrayList();
        this.f106537N = new ArrayList();
        this.f106538O = new ArrayList();
        this.f106540Q = new IntList();
        this.f106541R = new ArrayList();
        this.f106542S = new IntList();
        this.f106543U = new IntList();
        this.f106544V = new ArrayList();
        this.f106545W = new ArrayList();
        this.f106546X = new ArrayList();
        this.f106547Y = new ArrayList();
        this.f106548Z = new IntList();
        this.f106549a0 = new IntList();
        this.f106550b0 = new ArrayList();
        this.f106551c0 = new ArrayList();
        this.f106552d0 = new ArrayList();
        this.f106554e0 = new ArrayList();
        this.f106556f0 = new IntList();
        this.f106576p0 = new ArrayList();
        this.f106578q0 = new ArrayList();
        this.f106580r0 = new ArrayList();
        this.f106582s0 = new ArrayList();
        this.f106584t0 = new ArrayList();
        this.f106586u0 = new ArrayList();
        this.f106588v0 = new ArrayList();
        this.f106590w0 = new ArrayList();
        this.f106596z0 = false;
        this.f106513A0 = false;
        this.f106515B0 = false;
        this.f106519D0 = new HashMap();
        this.f106523F0 = 0;
        this.f106525G0 = 0;
        this.f106521E0 = z;
        this.f106517C0 = segment;
        this.f106553e = segment.getCpBands();
        this.f106555f = segment.getAttrBands();
        this.f106557g = new CPClass[i];
        this.f106559h = new CPClass[i];
        this.f106563j = new int[i];
        this.f106561i = new CPClass[i];
        this.f106583t = new int[i];
        this.f106595z = new int[i];
        this.f106585u = new CPNameAndType[i];
        this.f106587v = new long[i];
        this.f106512A = new CPNameAndType[i];
        this.f106514B = new long[i];
        for (int i3 = 0; i3 < i; i3++) {
            this.f106587v[i3] = new long[0];
            this.f106514B[i3] = new long[0];
        }
        this.f106565k = new int[i];
        this.f106567l = new long[i];
        this.f106558g0 = new MetadataBandGroup("RVA", 0, this.f106553e, this.segmentHeader, i2);
        this.f106560h0 = new MetadataBandGroup("RIA", 0, this.f106553e, this.segmentHeader, i2);
        this.f106562i0 = new MetadataBandGroup("RVA", 1, this.f106553e, this.segmentHeader, i2);
        this.f106564j0 = new MetadataBandGroup("RIA", 1, this.f106553e, this.segmentHeader, i2);
        this.f106566k0 = new MetadataBandGroup("RVA", 2, this.f106553e, this.segmentHeader, i2);
        this.f106568l0 = new MetadataBandGroup("RIA", 2, this.f106553e, this.segmentHeader, i2);
        this.f106570m0 = new MetadataBandGroup("RVPA", 2, this.f106553e, this.segmentHeader, i2);
        this.f106572n0 = new MetadataBandGroup("RIPA", 2, this.f106553e, this.segmentHeader, i2);
        this.f106574o0 = new MetadataBandGroup("AD", 2, this.f106553e, this.segmentHeader, i2);
        m66904n();
    }

    public static int countArgs(String str) {
        int indexOf = str.indexOf(40);
        int indexOf2 = str.indexOf(41);
        if (indexOf == -1 || indexOf2 == -1 || indexOf2 < indexOf) {
            throw new IllegalArgumentException("No arguments");
        }
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        for (int i2 = indexOf + 1; i2 < indexOf2; i2++) {
            char charAt = str.charAt(i2);
            if (z && charAt == ';') {
                z = false;
                z2 = false;
            } else if (!z && charAt == 'L') {
                i++;
                z = true;
            } else if (charAt == '[') {
                z2 = true;
            } else if (!z) {
                if (z2) {
                    i++;
                    z2 = false;
                } else {
                    i = (charAt == 'D' || charAt == 'J') ? i + 2 : i + 1;
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public /* synthetic */ CPClass m66900r(String[] strArr, int i) {
        return this.f106553e.getCPClass(strArr[i]);
    }

    /* renamed from: s */
    public static /* synthetic */ int m66901s(NewAttributeBands newAttributeBands, NewAttributeBands newAttributeBands2) {
        return newAttributeBands.getFlagIndex() - newAttributeBands2.getFlagIndex();
    }

    /* renamed from: A */
    public final void m66902A(OutputStream outputStream) throws IOException, Pack200Exception {
        long[][] jArr = this.f106587v;
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        byte[] encodeFlags = encodeFlags("field_flags", jArr, bHSDCodec, bHSDCodec, this.segmentHeader.have_field_flags_hi());
        outputStream.write(encodeFlags);
        PackingUtils.log("Wrote " + encodeFlags.length + " bytes from field_flags[" + this.f106587v.length + IteratorUtils.f104924b);
        byte[] encodeBandInt = encodeBandInt("field_attr_calls", this.f106589w, bHSDCodec);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from field_attr_calls[" + this.f106589w.length + IteratorUtils.f104924b);
        byte[] encodeBandInt2 = encodeBandInt("fieldConstantValueKQ", cpEntryListToArray(this.f106591x), bHSDCodec);
        outputStream.write(encodeBandInt2);
        PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from fieldConstantValueKQ[" + this.f106591x.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt3 = encodeBandInt("fieldSignature", cpEntryListToArray(this.f106593y), bHSDCodec);
        outputStream.write(encodeBandInt3);
        PackingUtils.log("Wrote " + encodeBandInt3.length + " bytes from fieldSignature[" + this.f106593y.size() + IteratorUtils.f104924b);
        this.f106562i0.pack(outputStream);
        this.f106564j0.pack(outputStream);
        Iterator<NewAttributeBands> it2 = this.f106580r0.iterator();
        while (it2.hasNext()) {
            it2.next().pack(outputStream);
        }
    }

    /* renamed from: B */
    public final void m66903B(OutputStream outputStream) throws IOException, Pack200Exception {
        long[][] jArr = this.f106514B;
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        byte[] encodeFlags = encodeFlags("method_flags", jArr, bHSDCodec, bHSDCodec, this.segmentHeader.have_method_flags_hi());
        outputStream.write(encodeFlags);
        PackingUtils.log("Wrote " + encodeFlags.length + " bytes from method_flags[" + this.f106514B.length + IteratorUtils.f104924b);
        byte[] encodeBandInt = encodeBandInt("method_attr_calls", this.f106516C, bHSDCodec);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from method_attr_calls[" + this.f106516C.length + IteratorUtils.f104924b);
        byte[] encodeBandInt2 = encodeBandInt("methodExceptionNumber", this.f106520E.toArray(), bHSDCodec);
        outputStream.write(encodeBandInt2);
        PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from methodExceptionNumber[" + this.f106520E.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt3 = encodeBandInt("methodExceptionClasses", cpEntryListToArray(this.f106522F), bHSDCodec);
        outputStream.write(encodeBandInt3);
        PackingUtils.log("Wrote " + encodeBandInt3.length + " bytes from methodExceptionClasses[" + this.f106522F.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt4 = encodeBandInt("methodSignature", cpEntryListToArray(this.f106518D), bHSDCodec);
        outputStream.write(encodeBandInt4);
        PackingUtils.log("Wrote " + encodeBandInt4.length + " bytes from methodSignature[" + this.f106518D.size() + IteratorUtils.f104924b);
        this.f106566k0.pack(outputStream);
        this.f106568l0.pack(outputStream);
        this.f106570m0.pack(outputStream);
        this.f106572n0.pack(outputStream);
        this.f106574o0.pack(outputStream);
        Iterator<NewAttributeBands> it2 = this.f106578q0.iterator();
        while (it2.hasNext()) {
            it2.next().pack(outputStream);
        }
    }

    public void addAnnotation(int i, String str, boolean z, List<String> list, List<String> list2, List<Object> list3, List<Integer> list4, List<String> list5, List<String> list6, List<Integer> list7) {
        if (i == 0) {
            if (z) {
                this.f106558g0.addAnnotation(str, list, list2, list3, list4, list5, list6, list7);
                if ((this.f106567l[this.f106523F0] & 2097152) != 0) {
                    this.f106558g0.incrementAnnoN();
                    return;
                }
                this.f106558g0.newEntryInAnnoN();
                long[] jArr = this.f106567l;
                int i2 = this.f106523F0;
                jArr[i2] = jArr[i2] | 2097152;
                return;
            }
            this.f106560h0.addAnnotation(str, list, list2, list3, list4, list5, list6, list7);
            if ((this.f106567l[this.f106523F0] & 4194304) != 0) {
                this.f106560h0.incrementAnnoN();
                return;
            }
            this.f106560h0.newEntryInAnnoN();
            long[] jArr2 = this.f106567l;
            int i3 = this.f106523F0;
            jArr2[i3] = jArr2[i3] | 4194304;
            return;
        }
        if (i == 1) {
            if (z) {
                this.f106562i0.addAnnotation(str, list, list2, list3, list4, list5, list6, list7);
                List<Long> list8 = this.f106584t0;
                if ((list8.remove(list8.size() - 1).intValue() & 2097152) != 0) {
                    this.f106562i0.incrementAnnoN();
                } else {
                    this.f106562i0.newEntryInAnnoN();
                }
                this.f106584t0.add(Long.valueOf(r1.intValue() | 2097152));
                return;
            }
            this.f106564j0.addAnnotation(str, list, list2, list3, list4, list5, list6, list7);
            List<Long> list9 = this.f106584t0;
            if ((list9.remove(list9.size() - 1).intValue() & 4194304) != 0) {
                this.f106564j0.incrementAnnoN();
            } else {
                this.f106564j0.newEntryInAnnoN();
            }
            this.f106584t0.add(Long.valueOf(r1.intValue() | 4194304));
            return;
        }
        if (i != 2) {
            return;
        }
        if (z) {
            this.f106566k0.addAnnotation(str, list, list2, list3, list4, list5, list6, list7);
            List<Long> list10 = this.f106588v0;
            if ((list10.remove(list10.size() - 1).intValue() & 2097152) != 0) {
                this.f106566k0.incrementAnnoN();
            } else {
                this.f106566k0.newEntryInAnnoN();
            }
            this.f106588v0.add(Long.valueOf(r1.intValue() | 2097152));
            return;
        }
        this.f106568l0.addAnnotation(str, list, list2, list3, list4, list5, list6, list7);
        List<Long> list11 = this.f106588v0;
        if ((list11.remove(list11.size() - 1).intValue() & 4194304) != 0) {
            this.f106568l0.incrementAnnoN();
        } else {
            this.f106568l0.newEntryInAnnoN();
        }
        this.f106588v0.add(Long.valueOf(r1.intValue() | 4194304));
    }

    public void addAnnotationDefault(List<String> list, List<String> list2, List<Object> list3, List<Integer> list4, List<String> list5, List<String> list6, List<Integer> list7) {
        this.f106574o0.addAnnotation(null, list, list2, list3, list4, list5, list6, list7);
        this.f106588v0.add(Long.valueOf(this.f106588v0.remove(r1.size() - 1).longValue() | SVG.f15804L));
    }

    public void addClass(int i, int i2, String str, String str2, String str3, final String[] strArr) {
        this.f106557g[this.f106523F0] = this.f106553e.getCPClass(str);
        this.f106559h[this.f106523F0] = this.f106553e.getCPClass(str3);
        int[] iArr = this.f106563j;
        int i3 = this.f106523F0;
        iArr[i3] = strArr.length;
        CPClass[][] cPClassArr = this.f106561i;
        CPClass[] cPClassArr2 = new CPClass[strArr.length];
        cPClassArr[i3] = cPClassArr2;
        Arrays.setAll(cPClassArr2, new IntFunction() { // from class: com.sunia.HTREnginev2.xtd
            @Override // java.util.function.IntFunction
            public final Object apply(int i4) {
                CPClass m66900r;
                m66900r = ClassBands.this.m66900r(strArr, i4);
                return m66900r;
            }
        });
        int[] iArr2 = this.f106565k;
        int i4 = this.f106523F0;
        iArr2[i4] = i;
        this.f106567l[i4] = i2;
        if (!this.f106596z0 && (i2 & 4096) != 0 && this.f106517C0.getCurrentClassReader().hasSyntheticAttributes()) {
            this.f106553e.m66940r("Synthetic");
            this.f106596z0 = true;
        }
        if (str2 != null) {
            long[] jArr = this.f106567l;
            int i5 = this.f106523F0;
            jArr[i5] = jArr[i5] | 524288;
            this.f106577q.add(this.f106553e.getCPSignature(str2));
        }
    }

    public void addClassAttribute(NewAttribute newAttribute) {
        String str = newAttribute.type;
        for (NewAttributeBands newAttributeBands : this.f106576p0) {
            if (newAttributeBands.getAttributeName().equals(str)) {
                newAttributeBands.addAttribute(newAttribute);
                int flagIndex = newAttributeBands.getFlagIndex();
                long[] jArr = this.f106567l;
                int i = this.f106523F0;
                jArr[i] = jArr[i] | (1 << flagIndex);
                return;
            }
        }
        throw new IllegalArgumentException("No suitable definition for " + str);
    }

    public void addCode() {
        this.f106530J.add(0);
        if (this.f106521E0) {
            return;
        }
        this.f106538O.add(4L);
        this.f106543U.add(0);
    }

    public void addCodeAttribute(NewAttribute newAttribute) {
        String str = newAttribute.type;
        for (NewAttributeBands newAttributeBands : this.f106582s0) {
            if (newAttributeBands.getAttributeName().equals(str)) {
                newAttributeBands.addAttribute(newAttribute);
                int flagIndex = newAttributeBands.getFlagIndex();
                List<Long> list = this.f106538O;
                this.f106538O.add(Long.valueOf(list.remove(list.size() - 1).longValue() | (1 << flagIndex)));
                return;
            }
        }
        throw new IllegalArgumentException("No suitable definition for " + str);
    }

    public void addEnclosingMethod(String str, String str2, String str3) {
        long[] jArr = this.f106567l;
        int i = this.f106523F0;
        jArr[i] = jArr[i] | 262144;
        this.f106573o.add(this.f106553e.getCPClass(str));
        this.f106575p.add(str2 == null ? null : this.f106553e.getCPNameAndType(str2, str3));
    }

    public void addField(int i, String str, String str2, String str3, Object obj) {
        int i2 = i & 65535;
        this.f106586u0.add(this.f106553e.getCPNameAndType(str, str2));
        if (str3 != null) {
            this.f106593y.add(this.f106553e.getCPSignature(str3));
            i2 |= 524288;
        }
        if ((i2 & 131072) != 0) {
            i2 = (i2 & (-131073)) | 1048576;
        }
        if (obj != null) {
            this.f106591x.add(this.f106553e.getConstant(obj));
            i2 |= 131072;
        }
        if (!this.f106513A0 && (i2 & 4096) != 0 && this.f106517C0.getCurrentClassReader().hasSyntheticAttributes()) {
            this.f106553e.m66940r("Synthetic");
            this.f106513A0 = true;
        }
        this.f106584t0.add(Long.valueOf(i2));
    }

    public void addFieldAttribute(NewAttribute newAttribute) {
        String str = newAttribute.type;
        for (NewAttributeBands newAttributeBands : this.f106580r0) {
            if (newAttributeBands.getAttributeName().equals(str)) {
                newAttributeBands.addAttribute(newAttribute);
                int flagIndex = newAttributeBands.getFlagIndex();
                List<Long> list = this.f106584t0;
                this.f106584t0.add(Long.valueOf(list.remove(list.size() - 1).longValue() | (1 << flagIndex)));
                return;
            }
        }
        throw new IllegalArgumentException("No suitable definition for " + str);
    }

    public void addHandler(Label label, Label label2, Label label3, String str) {
        this.f106530J.add(this.f106530J.remove(r0.size() - 1) + 1);
        this.f106532K.add(label);
        this.f106534L.add(label2);
        this.f106536M.add(label3);
        this.f106537N.add(str == null ? null : this.f106553e.getCPClass(str));
    }

    public void addLineNumber(int i, Label label) {
        List<Long> list = this.f106538O;
        if ((list.get(list.size() - 1).intValue() & 2) == 0) {
            List<Long> list2 = this.f106538O;
            list2.remove(list2.size() - 1);
            this.f106538O.add(Long.valueOf(r0.intValue() | 2));
            this.f106540Q.add(1);
        } else {
            IntList intList = this.f106540Q;
            intList.increment(intList.size() - 1);
        }
        this.f106542S.add(i);
        this.f106541R.add(label);
    }

    public void addLocalVariable(String str, String str2, String str3, Label label, Label label2, int i) {
        if (str3 != null) {
            List<Long> list = this.f106538O;
            if ((list.get(list.size() - 1).intValue() & 8) == 0) {
                List<Long> list2 = this.f106538O;
                list2.remove(list2.size() - 1);
                this.f106538O.add(Long.valueOf(r1.intValue() | 8));
                this.f106549a0.add(1);
            } else {
                IntList intList = this.f106549a0;
                intList.increment(intList.size() - 1);
            }
            this.f106550b0.add(label);
            this.f106551c0.add(label2);
            this.f106552d0.add(this.f106553e.getCPUtf8(str));
            this.f106554e0.add(this.f106553e.getCPSignature(str3));
            this.f106556f0.add(i);
        }
        IntList intList2 = this.f106543U;
        intList2.increment(intList2.size() - 1);
        this.f106544V.add(label);
        this.f106545W.add(label2);
        this.f106546X.add(this.f106553e.getCPUtf8(str));
        this.f106547Y.add(this.f106553e.getCPSignature(str2));
        this.f106548Z.add(i);
    }

    public void addMaxStack(int i, int i2) {
        List<Long> list = this.f106588v0;
        Long valueOf = Long.valueOf(list.remove(list.size() - 1).intValue() | 131072);
        this.f106588v0.add(valueOf);
        this.f106526H.add(i);
        if ((valueOf.longValue() & 8) == 0) {
            i2--;
        }
        this.f106528I.add(i2 - this.f106525G0);
    }

    public void addMethod(int i, String str, String str2, String str3, String[] strArr) {
        this.f106590w0.add(this.f106553e.getCPNameAndType(str, str2));
        if (str3 != null) {
            this.f106518D.add(this.f106553e.getCPSignature(str3));
            i |= 524288;
        }
        if (strArr != null) {
            this.f106520E.add(strArr.length);
            for (String str4 : strArr) {
                this.f106522F.add(this.f106553e.getCPClass(str4));
            }
            i |= 262144;
        }
        if ((131072 & i) != 0) {
            i = (i & (-131073)) | 1048576;
        }
        this.f106588v0.add(Long.valueOf(i));
        this.f106525G0 = countArgs(str2);
        if (this.f106515B0 || (i & 4096) == 0 || !this.f106517C0.getCurrentClassReader().hasSyntheticAttributes()) {
            return;
        }
        this.f106553e.m66940r("Synthetic");
        this.f106515B0 = true;
    }

    public void addMethodAttribute(NewAttribute newAttribute) {
        String str = newAttribute.type;
        for (NewAttributeBands newAttributeBands : this.f106578q0) {
            if (newAttributeBands.getAttributeName().equals(str)) {
                newAttributeBands.addAttribute(newAttribute);
                int flagIndex = newAttributeBands.getFlagIndex();
                List<Long> list = this.f106588v0;
                this.f106588v0.add(Long.valueOf(list.remove(list.size() - 1).longValue() | (1 << flagIndex)));
                return;
            }
        }
        throw new IllegalArgumentException("No suitable definition for " + str);
    }

    public void addParameterAnnotation(int i, String str, boolean z, List<String> list, List<String> list2, List<Object> list3, List<Integer> list4, List<String> list5, List<String> list6, List<Integer> list7) {
        if (z) {
            if (this.f106592x0 == null) {
                C18892a c18892a = new C18892a(this.f106525G0);
                this.f106592x0 = c18892a;
                c18892a.m66915a(i, str, list, list2, list3, list4, list5, list6, list7);
            }
            this.f106588v0.add(Long.valueOf(this.f106588v0.remove(r1.size() - 1).longValue() | 8388608));
            return;
        }
        if (this.f106594y0 == null) {
            C18892a c18892a2 = new C18892a(this.f106525G0);
            this.f106594y0 = c18892a2;
            c18892a2.m66915a(i, str, list, list2, list3, list4, list5, list6, list7);
        }
        this.f106588v0.add(Long.valueOf(this.f106588v0.remove(r1.size() - 1).longValue() | 16777216));
    }

    public void addSourceFile(String str) {
        String cPClass = this.f106557g[this.f106523F0].toString();
        if (cPClass.indexOf(36) != -1) {
            cPClass = cPClass.substring(0, cPClass.indexOf(36));
        }
        if (str.equals(cPClass.substring(cPClass.lastIndexOf(47) + 1) + ".java")) {
            this.f106571n.add(null);
        } else {
            this.f106571n.add(this.f106553e.getCPUtf8(str));
        }
        long[] jArr = this.f106567l;
        int i = this.f106523F0;
        jArr[i] = jArr[i] | 131072;
    }

    public void currentClassReferencesInnerClass(CPClass cPClass) {
        CPClass cPClass2;
        int i = this.f106523F0;
        CPClass[] cPClassArr = this.f106557g;
        if (i >= cPClassArr.length || (cPClass2 = cPClassArr[i]) == null || cPClass2.equals(cPClass) || m66907q(cPClass2.toString(), cPClass)) {
            return;
        }
        Set<CPClass> set = this.f106519D0.get(cPClass2);
        if (set == null) {
            set = new HashSet<>();
            this.f106519D0.put(cPClass2, set);
        }
        set.add(cPClass);
    }

    public void doBciRenumbering(IntList intList, Map<Label, Integer> map) {
        m66908t(this.f106541R, intList, map);
        m66908t(this.f106544V, intList, map);
        m66910v(this.f106544V, this.f106545W, intList, map);
        m66908t(this.f106550b0, intList, map);
        m66910v(this.f106550b0, this.f106551c0, intList, map);
        m66908t(this.f106532K, intList, map);
        m66910v(this.f106532K, this.f106534L, intList, map);
        m66909u(this.f106532K, this.f106534L, this.f106536M, intList, map);
        Iterator<NewAttributeBands> it2 = this.f106576p0.iterator();
        while (it2.hasNext()) {
            it2.next().renumberBci(intList, map);
        }
        Iterator<NewAttributeBands> it3 = this.f106578q0.iterator();
        while (it3.hasNext()) {
            it3.next().renumberBci(intList, map);
        }
        Iterator<NewAttributeBands> it4 = this.f106580r0.iterator();
        while (it4.hasNext()) {
            it4.next().renumberBci(intList, map);
        }
        Iterator<NewAttributeBands> it5 = this.f106582s0.iterator();
        while (it5.hasNext()) {
            it5.next().renumberBci(intList, map);
        }
    }

    public void endOfClass() {
        int size = this.f106586u0.size();
        int[] iArr = this.f106583t;
        int i = this.f106523F0;
        iArr[i] = size;
        this.f106585u[i] = new CPNameAndType[size];
        this.f106587v[i] = new long[size];
        for (int i2 = 0; i2 < size; i2++) {
            this.f106585u[this.f106523F0][i2] = this.f106586u0.get(i2);
            this.f106587v[this.f106523F0][i2] = this.f106584t0.get(i2).longValue();
        }
        int size2 = this.f106590w0.size();
        int[] iArr2 = this.f106595z;
        int i3 = this.f106523F0;
        iArr2[i3] = size2;
        this.f106512A[i3] = new CPNameAndType[size2];
        this.f106514B[i3] = new long[size2];
        for (int i4 = 0; i4 < size2; i4++) {
            this.f106512A[this.f106523F0][i4] = this.f106590w0.get(i4);
            this.f106514B[this.f106523F0][i4] = this.f106588v0.get(i4).longValue();
        }
        this.f106586u0.clear();
        this.f106584t0.clear();
        this.f106590w0.clear();
        this.f106588v0.clear();
        this.f106523F0++;
    }

    public void endOfMethod() {
        C18892a c18892a = this.f106592x0;
        if (c18892a != null) {
            this.f106570m0.addParameterAnnotation(c18892a.f106597a, c18892a.f106598b, c18892a.f106599c, c18892a.f106600d, c18892a.f106601e, c18892a.f106602f, c18892a.f106603g, c18892a.f106604h, c18892a.f106605i, c18892a.f106606j, c18892a.f106607k);
            this.f106592x0 = null;
        }
        C18892a c18892a2 = this.f106594y0;
        if (c18892a2 != null) {
            this.f106572n0.addParameterAnnotation(c18892a2.f106597a, c18892a2.f106598b, c18892a2.f106599c, c18892a2.f106600d, c18892a2.f106601e, c18892a2.f106602f, c18892a2.f106603g, c18892a2.f106604h, c18892a2.f106605i, c18892a2.f106606j, c18892a2.f106607k);
            this.f106594y0 = null;
        }
        if (this.f106538O.size() > 0) {
            long longValue = this.f106538O.get(r0.size() - 1).longValue();
            int i = this.f106543U.get(r2.size() - 1);
            if (longValue == 4 && i == 0) {
                this.f106543U.remove(r0.size() - 1);
                this.f106538O.remove(r0.size() - 1);
                this.f106538O.add(0L);
            }
        }
    }

    public void finaliseBands() {
        int i;
        int defaultMajorVersion = this.segmentHeader.getDefaultMajorVersion();
        int i2 = 0;
        while (true) {
            long[] jArr = this.f106567l;
            if (i2 >= jArr.length) {
                break;
            }
            int i3 = this.f106565k[i2];
            if (i3 != defaultMajorVersion) {
                jArr[i2] = jArr[i2] | 16777216;
                this.f106581s.add(i3);
                this.f106579r.add(0);
            }
            i2++;
        }
        this.f106524G = new int[this.f106530J.size()];
        int i4 = 0;
        for (int i5 = 0; i5 < this.f106524G.length; i5++) {
            int i6 = i5 - i4;
            int i7 = this.f106530J.get(i6);
            int i8 = this.f106528I.get(i6);
            int i9 = this.f106526H.get(i6);
            if (i7 == 0) {
                int i10 = (i8 * 12) + i9 + 1;
                if (i10 < 145 && i9 < 12) {
                    this.f106524G[i5] = i10;
                }
            } else if (i7 == 1) {
                int i11 = (i8 * 8) + i9 + 145;
                if (i11 < 209 && i9 < 8) {
                    this.f106524G[i5] = i11;
                }
            } else if (i7 == 2 && (i = (i8 * 7) + i9 + 209) < 256 && i9 < 7) {
                this.f106524G[i5] = i;
            }
            if (this.f106524G[i5] != 0) {
                this.f106530J.remove(i6);
                this.f106528I.remove(i6);
                this.f106526H.remove(i6);
                i4++;
            } else if (!this.f106517C0.getSegmentHeader().have_all_code_flags()) {
                this.f106538O.add(0L);
            }
        }
        IntList intList = new IntList();
        ArrayList arrayList = new ArrayList();
        int i12 = 0;
        while (true) {
            CPClass[] cPClassArr = this.f106557g;
            if (i12 >= cPClassArr.length) {
                break;
            }
            CPClass cPClass = cPClassArr[i12];
            Set<CPClass> set = this.f106519D0.get(cPClass);
            if (set != null) {
                List<IcBands.C18893a> innerClassesForOuter = this.f106517C0.getIcBands().getInnerClassesForOuter(cPClass.toString());
                if (innerClassesForOuter != null) {
                    Iterator<IcBands.C18893a> it2 = innerClassesForOuter.iterator();
                    while (it2.hasNext()) {
                        set.remove(it2.next().f106646e);
                    }
                }
                Iterator<CPClass> it3 = set.iterator();
                int i13 = 0;
                while (it3.hasNext()) {
                    IcBands.C18893a icTuple = this.f106517C0.getIcBands().getIcTuple(it3.next());
                    if (icTuple != null && !icTuple.m66948b()) {
                        arrayList.add(icTuple);
                        i13++;
                    }
                }
                if (i13 != 0) {
                    intList.add(i13);
                    long[] jArr2 = this.f106567l;
                    jArr2[i12] = jArr2[i12] | 8388608;
                }
            }
            i12++;
        }
        this.f106527H0 = intList.toArray();
        this.f106529I0 = new CPClass[arrayList.size()];
        this.f106531J0 = new int[arrayList.size()];
        this.f106533K0 = new ArrayList();
        this.f106535L0 = new ArrayList();
        for (int i14 = 0; i14 < this.f106529I0.length; i14++) {
            IcBands.C18893a c18893a = (IcBands.C18893a) arrayList.get(i14);
            this.f106529I0[i14] = c18893a.f106646e;
            CPClass cPClass2 = c18893a.f106648g;
            if (cPClass2 == null && c18893a.f106649h == null) {
                this.f106531J0[i14] = 0;
            } else {
                int i15 = c18893a.f106647f;
                if (i15 == 0) {
                    this.f106531J0[i14] = 65536;
                } else {
                    this.f106531J0[i14] = i15;
                }
                this.f106533K0.add(cPClass2);
                this.f106535L0.add(c18893a.f106649h);
            }
        }
        IntList intList2 = new IntList();
        IntList intList3 = new IntList();
        IntList intList4 = new IntList();
        IntList intList5 = new IntList();
        if (this.f106558g0.hasContent()) {
            intList2.add(this.f106558g0.numBackwardsCalls());
        }
        if (this.f106560h0.hasContent()) {
            intList2.add(this.f106560h0.numBackwardsCalls());
        }
        if (this.f106562i0.hasContent()) {
            intList3.add(this.f106562i0.numBackwardsCalls());
        }
        if (this.f106564j0.hasContent()) {
            intList3.add(this.f106564j0.numBackwardsCalls());
        }
        if (this.f106566k0.hasContent()) {
            intList4.add(this.f106566k0.numBackwardsCalls());
        }
        if (this.f106568l0.hasContent()) {
            intList4.add(this.f106568l0.numBackwardsCalls());
        }
        if (this.f106570m0.hasContent()) {
            intList4.add(this.f106570m0.numBackwardsCalls());
        }
        if (this.f106572n0.hasContent()) {
            intList4.add(this.f106572n0.numBackwardsCalls());
        }
        if (this.f106574o0.hasContent()) {
            intList4.add(this.f106574o0.numBackwardsCalls());
        }
        Comparator<? super NewAttributeBands> comparator = new Comparator() { // from class: com.sunia.HTREnginev2.ztd
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m66901s;
                m66901s = ClassBands.m66901s((NewAttributeBands) obj, (NewAttributeBands) obj2);
                return m66901s;
            }
        };
        this.f106576p0.sort(comparator);
        this.f106578q0.sort(comparator);
        this.f106580r0.sort(comparator);
        this.f106582s0.sort(comparator);
        for (NewAttributeBands newAttributeBands : this.f106576p0) {
            if (newAttributeBands.isUsedAtLeastOnce()) {
                for (int i16 : newAttributeBands.numBackwardsCalls()) {
                    intList2.add(i16);
                }
            }
        }
        for (NewAttributeBands newAttributeBands2 : this.f106578q0) {
            if (newAttributeBands2.isUsedAtLeastOnce()) {
                for (int i17 : newAttributeBands2.numBackwardsCalls()) {
                    intList4.add(i17);
                }
            }
        }
        for (NewAttributeBands newAttributeBands3 : this.f106580r0) {
            if (newAttributeBands3.isUsedAtLeastOnce()) {
                for (int i18 : newAttributeBands3.numBackwardsCalls()) {
                    intList3.add(i18);
                }
            }
        }
        for (NewAttributeBands newAttributeBands4 : this.f106582s0) {
            if (newAttributeBands4.isUsedAtLeastOnce()) {
                for (int i19 : newAttributeBands4.numBackwardsCalls()) {
                    intList5.add(i19);
                }
            }
        }
        this.f106569m = intList2.toArray();
        this.f106589w = intList3.toArray();
        this.f106516C = intList4.toArray();
        this.f106539P = intList5.toArray();
    }

    public boolean isAnySyntheticClasses() {
        return this.f106596z0;
    }

    public boolean isAnySyntheticFields() {
        return this.f106513A0;
    }

    public boolean isAnySyntheticMethods() {
        return this.f106515B0;
    }

    /* renamed from: n */
    public final void m66904n() throws IOException {
        Iterator<AttributeDefinitionBands.AttributeDefinition> it2 = this.f106555f.getClassAttributeLayouts().iterator();
        while (it2.hasNext()) {
            this.f106576p0.add(new NewAttributeBands(this.f106433a, this.f106553e, this.f106517C0.getSegmentHeader(), it2.next()));
        }
        Iterator<AttributeDefinitionBands.AttributeDefinition> it3 = this.f106555f.getMethodAttributeLayouts().iterator();
        while (it3.hasNext()) {
            this.f106578q0.add(new NewAttributeBands(this.f106433a, this.f106553e, this.f106517C0.getSegmentHeader(), it3.next()));
        }
        Iterator<AttributeDefinitionBands.AttributeDefinition> it4 = this.f106555f.getFieldAttributeLayouts().iterator();
        while (it4.hasNext()) {
            this.f106580r0.add(new NewAttributeBands(this.f106433a, this.f106553e, this.f106517C0.getSegmentHeader(), it4.next()));
        }
        Iterator<AttributeDefinitionBands.AttributeDefinition> it5 = this.f106555f.getCodeAttributeLayouts().iterator();
        while (it5.hasNext()) {
            this.f106582s0.add(new NewAttributeBands(this.f106433a, this.f106553e, this.f106517C0.getSegmentHeader(), it5.next()));
        }
    }

    public int numClassesProcessed() {
        return this.f106523F0;
    }

    /* renamed from: o */
    public final int[] m66905o(CPClass[] cPClassArr) {
        int length = cPClassArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            CPClass cPClass = cPClassArr[i];
            if (cPClass != null) {
                iArr[i] = cPClass.getIndex();
            }
        }
        return iArr;
    }

    /* renamed from: p */
    public final boolean m66906p(String str) {
        return str.indexOf(36) != -1;
    }

    @Override // org.apache.commons.compress.harmony.pack200.BandSet
    public void pack(OutputStream outputStream) throws IOException, Pack200Exception {
        PackingUtils.log("Writing class bands...");
        int[] m66905o = m66905o(this.f106557g);
        BHSDCodec bHSDCodec = Codec.DELTA5;
        byte[] encodeBandInt = encodeBandInt("class_this", m66905o, bHSDCodec);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from class_this[" + this.f106557g.length + IteratorUtils.f104924b);
        byte[] encodeBandInt2 = encodeBandInt("class_super", m66905o(this.f106559h), bHSDCodec);
        outputStream.write(encodeBandInt2);
        PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from class_super[" + this.f106559h.length + IteratorUtils.f104924b);
        byte[] encodeBandInt3 = encodeBandInt("class_interface_count", this.f106563j, bHSDCodec);
        outputStream.write(encodeBandInt3);
        PackingUtils.log("Wrote " + encodeBandInt3.length + " bytes from class_interface_count[" + this.f106563j.length + IteratorUtils.f104924b);
        int m66911w = m66911w(this.f106563j);
        int[] iArr = new int[m66911w];
        CPClass[][] cPClassArr = this.f106561i;
        int length = cPClassArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            CPClass[] cPClassArr2 = cPClassArr[i2];
            if (cPClassArr2 != null) {
                for (CPClass cPClass : cPClassArr2) {
                    iArr[i] = cPClass.getIndex();
                    i++;
                }
            }
        }
        BHSDCodec bHSDCodec2 = Codec.DELTA5;
        byte[] encodeBandInt4 = encodeBandInt("class_interface", iArr, bHSDCodec2);
        outputStream.write(encodeBandInt4);
        PackingUtils.log("Wrote " + encodeBandInt4.length + " bytes from class_interface[" + m66911w + IteratorUtils.f104924b);
        byte[] encodeBandInt5 = encodeBandInt("class_field_count", this.f106583t, bHSDCodec2);
        outputStream.write(encodeBandInt5);
        PackingUtils.log("Wrote " + encodeBandInt5.length + " bytes from class_field_count[" + this.f106583t.length + IteratorUtils.f104924b);
        byte[] encodeBandInt6 = encodeBandInt("class_method_count", this.f106595z, bHSDCodec2);
        outputStream.write(encodeBandInt6);
        PackingUtils.log("Wrote " + encodeBandInt6.length + " bytes from class_method_count[" + this.f106595z.length + IteratorUtils.f104924b);
        int m66911w2 = m66911w(this.f106583t);
        int[] iArr2 = new int[m66911w2];
        int i3 = 0;
        for (int i4 = 0; i4 < this.f106523F0; i4++) {
            int i5 = 0;
            while (true) {
                CPNameAndType[] cPNameAndTypeArr = this.f106585u[i4];
                if (i5 < cPNameAndTypeArr.length) {
                    iArr2[i3] = cPNameAndTypeArr[i5].getIndex();
                    i3++;
                    i5++;
                }
            }
        }
        byte[] encodeBandInt7 = encodeBandInt("field_descr", iArr2, Codec.DELTA5);
        outputStream.write(encodeBandInt7);
        PackingUtils.log("Wrote " + encodeBandInt7.length + " bytes from field_descr[" + m66911w2 + IteratorUtils.f104924b);
        m66902A(outputStream);
        int m66911w3 = m66911w(this.f106595z);
        int[] iArr3 = new int[m66911w3];
        int i6 = 0;
        for (int i7 = 0; i7 < this.f106523F0; i7++) {
            int i8 = 0;
            while (true) {
                CPNameAndType[] cPNameAndTypeArr2 = this.f106512A[i7];
                if (i8 < cPNameAndTypeArr2.length) {
                    iArr3[i6] = cPNameAndTypeArr2[i8].getIndex();
                    i6++;
                    i8++;
                }
            }
        }
        byte[] encodeBandInt8 = encodeBandInt("method_descr", iArr3, Codec.MDELTA5);
        outputStream.write(encodeBandInt8);
        PackingUtils.log("Wrote " + encodeBandInt8.length + " bytes from method_descr[" + m66911w3 + IteratorUtils.f104924b);
        m66903B(outputStream);
        m66912x(outputStream);
        m66914z(outputStream);
    }

    /* renamed from: q */
    public final boolean m66907q(String str, CPClass cPClass) {
        if (!m66906p(str)) {
            return false;
        }
        String substring = str.substring(0, str.lastIndexOf(36));
        if (substring.equals(cPClass.toString())) {
            return true;
        }
        return m66907q(substring, cPClass);
    }

    public void removeCurrentClass() {
        long j = 131072;
        if ((this.f106567l[this.f106523F0] & 131072) != 0) {
            this.f106571n.remove(r1.size() - 1);
        }
        if ((this.f106567l[this.f106523F0] & 262144) != 0) {
            this.f106573o.remove(r1.size() - 1);
            this.f106575p.remove(r1.size() - 1);
        }
        long j2 = 524288;
        if ((this.f106567l[this.f106523F0] & 524288) != 0) {
            this.f106577q.remove(r1.size() - 1);
        }
        if ((this.f106567l[this.f106523F0] & 2097152) != 0) {
            this.f106558g0.removeLatest();
        }
        if ((this.f106567l[this.f106523F0] & 4194304) != 0) {
            this.f106560h0.removeLatest();
        }
        Iterator<Long> it2 = this.f106584t0.iterator();
        while (it2.hasNext()) {
            long longValue = it2.next().longValue();
            if ((longValue & 524288) != 0) {
                this.f106593y.remove(r2.size() - 1);
            }
            if ((longValue & 131072) != 0) {
                this.f106591x.remove(r2.size() - 1);
            }
            if ((longValue & 2097152) != 0) {
                this.f106562i0.removeLatest();
            }
            if ((longValue & 4194304) != 0) {
                this.f106564j0.removeLatest();
            }
        }
        Iterator<Long> it3 = this.f106588v0.iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            long longValue2 = it3.next().longValue();
            if ((longValue2 & j2) != 0) {
                this.f106518D.remove(r2.size() - 1);
            }
            if ((longValue2 & 262144) != 0) {
                int remove = this.f106520E.remove(r2.size() - 1);
                for (int i = 0; i < remove; i++) {
                    this.f106522F.remove(r9.size() - 1);
                }
            }
            if ((longValue2 & j) != 0) {
                this.f106528I.remove(r2.size() - 1);
                this.f106526H.remove(r2.size() - 1);
                int remove2 = this.f106530J.remove(r2.size() - 1);
                for (int i2 = 0; i2 < remove2; i2++) {
                    int size = this.f106532K.size() - 1;
                    this.f106532K.remove(size);
                    this.f106534L.remove(size);
                    this.f106536M.remove(size);
                    this.f106537N.remove(size);
                }
                if (!this.f106521E0) {
                    long longValue3 = this.f106538O.remove(r2.size() - 1).longValue();
                    int remove3 = this.f106543U.remove(r2.size() - 1);
                    for (int i3 = 0; i3 < remove3; i3++) {
                        int size2 = this.f106544V.size() - 1;
                        this.f106544V.remove(size2);
                        this.f106545W.remove(size2);
                        this.f106546X.remove(size2);
                        this.f106547Y.remove(size2);
                        this.f106548Z.remove(size2);
                    }
                    if ((8 & longValue3) != 0) {
                        int remove4 = this.f106549a0.remove(r2.size() - 1);
                        for (int i4 = 0; i4 < remove4; i4++) {
                            int size3 = this.f106550b0.size() - 1;
                            this.f106550b0.remove(size3);
                            this.f106551c0.remove(size3);
                            this.f106552d0.remove(size3);
                            this.f106554e0.remove(size3);
                            this.f106556f0.remove(size3);
                        }
                    }
                    if ((2 & longValue3) != 0) {
                        int remove5 = this.f106540Q.remove(r2.size() - 1);
                        for (int i5 = 0; i5 < remove5; i5++) {
                            int size4 = this.f106541R.size() - 1;
                            this.f106541R.remove(size4);
                            this.f106542S.remove(size4);
                        }
                    }
                }
            }
            if ((longValue2 & 2097152) != 0) {
                this.f106566k0.removeLatest();
            }
            if ((longValue2 & 4194304) != 0) {
                this.f106568l0.removeLatest();
            }
            if ((8388608 & longValue2) != 0) {
                this.f106570m0.removeLatest();
            }
            if ((16777216 & longValue2) != 0) {
                this.f106572n0.removeLatest();
            }
            if ((SVG.f15804L & longValue2) != 0) {
                this.f106574o0.removeLatest();
            }
            j = 131072;
            j2 = 524288;
        }
        CPClass[] cPClassArr = this.f106557g;
        int i6 = this.f106523F0;
        cPClassArr[i6] = null;
        this.f106559h[i6] = null;
        this.f106563j[i6] = 0;
        this.f106561i[i6] = null;
        this.f106565k[i6] = 0;
        this.f106567l[i6] = 0;
        this.f106586u0.clear();
        this.f106584t0.clear();
        this.f106590w0.clear();
        this.f106588v0.clear();
        int i7 = this.f106523F0;
        if (i7 > 0) {
            this.f106523F0 = i7 - 1;
        }
    }

    /* renamed from: t */
    public final void m66908t(List<Integer> list, IntList intList, Map<Label, Integer> map) {
        for (int size = list.size() - 1; size >= 0; size--) {
            Integer num = list.get(size);
            if (num instanceof Integer) {
                return;
            }
            if (num instanceof Label) {
                list.remove(size);
                list.add(size, Integer.valueOf(intList.get(map.get(num).intValue())));
            }
        }
    }

    /* renamed from: u */
    public final void m66909u(List<Integer> list, List<Integer> list2, List<Object> list3, IntList intList, Map<Label, Integer> map) {
        for (int size = list3.size() - 1; size >= 0; size--) {
            Object obj = list3.get(size);
            if (obj instanceof Integer) {
                return;
            }
            if (obj instanceof Label) {
                list3.remove(size);
                list3.add(size, Integer.valueOf((intList.get(map.get(obj).intValue()) - list.get(size).intValue()) - list2.get(size).intValue()));
            }
        }
    }

    /* renamed from: v */
    public final void m66910v(List<Integer> list, List<Integer> list2, IntList intList, Map<Label, Integer> map) {
        for (int size = list2.size() - 1; size >= 0; size--) {
            Integer num = list2.get(size);
            if (num instanceof Integer) {
                return;
            }
            if (num instanceof Label) {
                list2.remove(size);
                list2.add(size, Integer.valueOf(intList.get(map.get(num).intValue()) - list.get(size).intValue()));
            }
        }
    }

    /* renamed from: w */
    public final int m66911w(int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        return i;
    }

    /* renamed from: x */
    public final void m66912x(OutputStream outputStream) throws IOException, Pack200Exception {
        long[] jArr = this.f106567l;
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        byte[] encodeFlags = encodeFlags("class_flags", jArr, bHSDCodec, bHSDCodec, this.segmentHeader.have_class_flags_hi());
        outputStream.write(encodeFlags);
        PackingUtils.log("Wrote " + encodeFlags.length + " bytes from class_flags[" + this.f106567l.length + IteratorUtils.f104924b);
        byte[] encodeBandInt = encodeBandInt("class_attr_calls", this.f106569m, bHSDCodec);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from class_attr_calls[" + this.f106569m.length + IteratorUtils.f104924b);
        byte[] encodeBandInt2 = encodeBandInt("classSourceFile", cpEntryOrNullListToArray(this.f106571n), bHSDCodec);
        outputStream.write(encodeBandInt2);
        PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from classSourceFile[" + this.f106571n.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt3 = encodeBandInt("class_enclosing_method_RC", cpEntryListToArray(this.f106573o), bHSDCodec);
        outputStream.write(encodeBandInt3);
        PackingUtils.log("Wrote " + encodeBandInt3.length + " bytes from class_enclosing_method_RC[" + this.f106573o.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt4 = encodeBandInt("class_EnclosingMethod_RDN", cpEntryOrNullListToArray(this.f106575p), bHSDCodec);
        outputStream.write(encodeBandInt4);
        PackingUtils.log("Wrote " + encodeBandInt4.length + " bytes from class_EnclosingMethod_RDN[" + this.f106575p.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt5 = encodeBandInt("class_Signature_RS", cpEntryListToArray(this.f106577q), bHSDCodec);
        outputStream.write(encodeBandInt5);
        PackingUtils.log("Wrote " + encodeBandInt5.length + " bytes from class_Signature_RS[" + this.f106577q.size() + IteratorUtils.f104924b);
        this.f106558g0.pack(outputStream);
        this.f106560h0.pack(outputStream);
        byte[] encodeBandInt6 = encodeBandInt("class_InnerClasses_N", this.f106527H0, bHSDCodec);
        outputStream.write(encodeBandInt6);
        PackingUtils.log("Wrote " + encodeBandInt6.length + " bytes from class_InnerClasses_N[" + this.f106527H0.length + IteratorUtils.f104924b);
        byte[] encodeBandInt7 = encodeBandInt("class_InnerClasses_RC", m66905o(this.f106529I0), bHSDCodec);
        outputStream.write(encodeBandInt7);
        PackingUtils.log("Wrote " + encodeBandInt7.length + " bytes from class_InnerClasses_RC[" + this.f106529I0.length + IteratorUtils.f104924b);
        byte[] encodeBandInt8 = encodeBandInt("class_InnerClasses_F", this.f106531J0, bHSDCodec);
        outputStream.write(encodeBandInt8);
        PackingUtils.log("Wrote " + encodeBandInt8.length + " bytes from class_InnerClasses_F[" + this.f106531J0.length + IteratorUtils.f104924b);
        byte[] encodeBandInt9 = encodeBandInt("class_InnerClasses_outer_RCN", cpEntryOrNullListToArray(this.f106533K0), bHSDCodec);
        outputStream.write(encodeBandInt9);
        PackingUtils.log("Wrote " + encodeBandInt9.length + " bytes from class_InnerClasses_outer_RCN[" + this.f106533K0.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt10 = encodeBandInt("class_InnerClasses_name_RUN", cpEntryOrNullListToArray(this.f106535L0), bHSDCodec);
        outputStream.write(encodeBandInt10);
        PackingUtils.log("Wrote " + encodeBandInt10.length + " bytes from class_InnerClasses_name_RUN[" + this.f106535L0.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt11 = encodeBandInt("classFileVersionMinor", this.f106579r.toArray(), bHSDCodec);
        outputStream.write(encodeBandInt11);
        PackingUtils.log("Wrote " + encodeBandInt11.length + " bytes from classFileVersionMinor[" + this.f106579r.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt12 = encodeBandInt("classFileVersionMajor", this.f106581s.toArray(), bHSDCodec);
        outputStream.write(encodeBandInt12);
        PackingUtils.log("Wrote " + encodeBandInt12.length + " bytes from classFileVersionMajor[" + this.f106581s.size() + IteratorUtils.f104924b);
        Iterator<NewAttributeBands> it2 = this.f106576p0.iterator();
        while (it2.hasNext()) {
            it2.next().pack(outputStream);
        }
    }

    /* renamed from: y */
    public final void m66913y(OutputStream outputStream) throws IOException, Pack200Exception {
        long[] longListToArray = longListToArray(this.f106538O);
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        byte[] encodeFlags = encodeFlags("codeFlags", longListToArray, bHSDCodec, bHSDCodec, this.segmentHeader.have_code_flags_hi());
        outputStream.write(encodeFlags);
        PackingUtils.log("Wrote " + encodeFlags.length + " bytes from codeFlags[" + this.f106538O.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt = encodeBandInt("code_attr_calls", this.f106539P, bHSDCodec);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from code_attr_calls[" + this.f106539P.length + IteratorUtils.f104924b);
        byte[] encodeBandInt2 = encodeBandInt("code_LineNumberTable_N", this.f106540Q.toArray(), bHSDCodec);
        outputStream.write(encodeBandInt2);
        PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from code_LineNumberTable_N[" + this.f106540Q.size() + IteratorUtils.f104924b);
        int[] integerListToArray = integerListToArray(this.f106541R);
        BHSDCodec bHSDCodec2 = Codec.BCI5;
        byte[] encodeBandInt3 = encodeBandInt("code_LineNumberTable_bci_P", integerListToArray, bHSDCodec2);
        outputStream.write(encodeBandInt3);
        PackingUtils.log("Wrote " + encodeBandInt3.length + " bytes from code_LineNumberTable_bci_P[" + this.f106541R.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt4 = encodeBandInt("code_LineNumberTable_line", this.f106542S.toArray(), bHSDCodec);
        outputStream.write(encodeBandInt4);
        PackingUtils.log("Wrote " + encodeBandInt4.length + " bytes from code_LineNumberTable_line[" + this.f106542S.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt5 = encodeBandInt("code_LocalVariableTable_N", this.f106543U.toArray(), bHSDCodec);
        outputStream.write(encodeBandInt5);
        PackingUtils.log("Wrote " + encodeBandInt5.length + " bytes from code_LocalVariableTable_N[" + this.f106543U.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt6 = encodeBandInt("code_LocalVariableTable_bci_P", integerListToArray(this.f106544V), bHSDCodec2);
        outputStream.write(encodeBandInt6);
        PackingUtils.log("Wrote " + encodeBandInt6.length + " bytes from code_LocalVariableTable_bci_P[" + this.f106544V.size() + IteratorUtils.f104924b);
        int[] integerListToArray2 = integerListToArray(this.f106545W);
        BHSDCodec bHSDCodec3 = Codec.BRANCH5;
        byte[] encodeBandInt7 = encodeBandInt("code_LocalVariableTable_span_O", integerListToArray2, bHSDCodec3);
        outputStream.write(encodeBandInt7);
        PackingUtils.log("Wrote " + encodeBandInt7.length + " bytes from code_LocalVariableTable_span_O[" + this.f106545W.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt8 = encodeBandInt("code_LocalVariableTable_name_RU", cpEntryListToArray(this.f106546X), bHSDCodec);
        outputStream.write(encodeBandInt8);
        PackingUtils.log("Wrote " + encodeBandInt8.length + " bytes from code_LocalVariableTable_name_RU[" + this.f106546X.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt9 = encodeBandInt("code_LocalVariableTable_type_RS", cpEntryListToArray(this.f106547Y), bHSDCodec);
        outputStream.write(encodeBandInt9);
        PackingUtils.log("Wrote " + encodeBandInt9.length + " bytes from code_LocalVariableTable_type_RS[" + this.f106547Y.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt10 = encodeBandInt("code_LocalVariableTable_slot", this.f106548Z.toArray(), bHSDCodec);
        outputStream.write(encodeBandInt10);
        PackingUtils.log("Wrote " + encodeBandInt10.length + " bytes from code_LocalVariableTable_slot[" + this.f106548Z.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt11 = encodeBandInt("code_LocalVariableTypeTable_N", this.f106549a0.toArray(), bHSDCodec);
        outputStream.write(encodeBandInt11);
        PackingUtils.log("Wrote " + encodeBandInt11.length + " bytes from code_LocalVariableTypeTable_N[" + this.f106549a0.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt12 = encodeBandInt("code_LocalVariableTypeTable_bci_P", integerListToArray(this.f106550b0), bHSDCodec2);
        outputStream.write(encodeBandInt12);
        PackingUtils.log("Wrote " + encodeBandInt12.length + " bytes from code_LocalVariableTypeTable_bci_P[" + this.f106550b0.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt13 = encodeBandInt("code_LocalVariableTypeTable_span_O", integerListToArray(this.f106551c0), bHSDCodec3);
        outputStream.write(encodeBandInt13);
        PackingUtils.log("Wrote " + encodeBandInt13.length + " bytes from code_LocalVariableTypeTable_span_O[" + this.f106551c0.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt14 = encodeBandInt("code_LocalVariableTypeTable_name_RU", cpEntryListToArray(this.f106552d0), bHSDCodec);
        outputStream.write(encodeBandInt14);
        PackingUtils.log("Wrote " + encodeBandInt14.length + " bytes from code_LocalVariableTypeTable_name_RU[" + this.f106552d0.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt15 = encodeBandInt("code_LocalVariableTypeTable_type_RS", cpEntryListToArray(this.f106554e0), bHSDCodec);
        outputStream.write(encodeBandInt15);
        PackingUtils.log("Wrote " + encodeBandInt15.length + " bytes from code_LocalVariableTypeTable_type_RS[" + this.f106554e0.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt16 = encodeBandInt("code_LocalVariableTypeTable_slot", this.f106556f0.toArray(), bHSDCodec);
        outputStream.write(encodeBandInt16);
        PackingUtils.log("Wrote " + encodeBandInt16.length + " bytes from code_LocalVariableTypeTable_slot[" + this.f106556f0.size() + IteratorUtils.f104924b);
        Iterator<NewAttributeBands> it2 = this.f106582s0.iterator();
        while (it2.hasNext()) {
            it2.next().pack(outputStream);
        }
    }

    /* renamed from: z */
    public final void m66914z(OutputStream outputStream) throws IOException, Pack200Exception {
        byte[] encodeBandInt = encodeBandInt("codeHeaders", this.f106524G, Codec.BYTE1);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from codeHeaders[" + this.f106524G.length + IteratorUtils.f104924b);
        int[] array = this.f106526H.toArray();
        BHSDCodec bHSDCodec = Codec.UNSIGNED5;
        byte[] encodeBandInt2 = encodeBandInt("codeMaxStack", array, bHSDCodec);
        outputStream.write(encodeBandInt2);
        PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from codeMaxStack[" + this.f106526H.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt3 = encodeBandInt("codeMaxLocals", this.f106528I.toArray(), bHSDCodec);
        outputStream.write(encodeBandInt3);
        PackingUtils.log("Wrote " + encodeBandInt3.length + " bytes from codeMaxLocals[" + this.f106528I.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt4 = encodeBandInt("codeHandlerCount", this.f106530J.toArray(), bHSDCodec);
        outputStream.write(encodeBandInt4);
        PackingUtils.log("Wrote " + encodeBandInt4.length + " bytes from codeHandlerCount[" + this.f106530J.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt5 = encodeBandInt("codeHandlerStartP", integerListToArray(this.f106532K), Codec.BCI5);
        outputStream.write(encodeBandInt5);
        PackingUtils.log("Wrote " + encodeBandInt5.length + " bytes from codeHandlerStartP[" + this.f106532K.size() + IteratorUtils.f104924b);
        int[] integerListToArray = integerListToArray(this.f106534L);
        BHSDCodec bHSDCodec2 = Codec.BRANCH5;
        byte[] encodeBandInt6 = encodeBandInt("codeHandlerEndPO", integerListToArray, bHSDCodec2);
        outputStream.write(encodeBandInt6);
        PackingUtils.log("Wrote " + encodeBandInt6.length + " bytes from codeHandlerEndPO[" + this.f106534L.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt7 = encodeBandInt("codeHandlerCatchPO", integerListToArray(this.f106536M), bHSDCodec2);
        outputStream.write(encodeBandInt7);
        PackingUtils.log("Wrote " + encodeBandInt7.length + " bytes from codeHandlerCatchPO[" + this.f106536M.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt8 = encodeBandInt("codeHandlerClass", cpEntryOrNullListToArray(this.f106537N), bHSDCodec);
        outputStream.write(encodeBandInt8);
        PackingUtils.log("Wrote " + encodeBandInt8.length + " bytes from codeHandlerClass[" + this.f106537N.size() + IteratorUtils.f104924b);
        m66913y(outputStream);
    }
}
