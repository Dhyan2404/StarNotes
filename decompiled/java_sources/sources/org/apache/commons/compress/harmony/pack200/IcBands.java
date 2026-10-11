package org.apache.commons.compress.harmony.pack200;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeSet;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes12.dex */
public class IcBands extends BandSet {

    /* renamed from: e */
    public final Set<C18893a> f106642e;

    /* renamed from: f */
    public final CpBands f106643f;

    /* renamed from: g */
    public int f106644g;

    /* renamed from: h */
    public final Map<String, List<C18893a>> f106645h;

    /* renamed from: org.apache.commons.compress.harmony.pack200.IcBands$a */
    /* loaded from: classes12.dex */
    public class C18893a implements Comparable<C18893a> {

        /* renamed from: e */
        public CPClass f106646e;

        /* renamed from: f */
        public int f106647f;

        /* renamed from: g */
        public CPClass f106648g;

        /* renamed from: h */
        public CPUTF8 f106649h;

        public C18893a(CPClass cPClass, int i, CPClass cPClass2, CPUTF8 cputf8) {
            this.f106646e = cPClass;
            this.f106647f = i;
            this.f106648g = cPClass2;
            this.f106649h = cputf8;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(C18893a c18893a) {
            return this.f106646e.compareTo(c18893a.f106646e);
        }

        /* renamed from: b */
        public boolean m66948b() {
            String cPClass = this.f106646e.toString();
            return Character.isDigit(cPClass.substring(cPClass.lastIndexOf(36) + 1).charAt(0));
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C18893a)) {
                return false;
            }
            C18893a c18893a = (C18893a) obj;
            return this.f106646e.equals(c18893a.f106646e) && this.f106647f == c18893a.f106647f && Objects.equals(this.f106648g, c18893a.f106648g) && Objects.equals(this.f106649h, c18893a.f106649h);
        }

        public String toString() {
            return this.f106646e.toString();
        }
    }

    public IcBands(SegmentHeader segmentHeader, CpBands cpBands, int i) {
        super(i, segmentHeader);
        this.f106642e = new TreeSet();
        this.f106644g = 0;
        this.f106645h = new HashMap();
        this.f106643f = cpBands;
    }

    public void addInnerClass(String str, String str2, String str3, int i) {
        if (str2 == null && str3 == null) {
            C18893a c18893a = new C18893a(this.f106643f.getCPClass(str), i, null, null);
            m66944l(m66945m(str), c18893a);
            this.f106642e.add(c18893a);
        } else if (m66946n(str, str2, str3)) {
            C18893a c18893a2 = new C18893a(this.f106643f.getCPClass(str), i, null, null);
            m66944l(str2, c18893a2);
            this.f106642e.add(c18893a2);
        } else {
            C18893a c18893a3 = new C18893a(this.f106643f.getCPClass(str), i | 65536, this.f106643f.getCPClass(str2), this.f106643f.getCPUtf8(str3));
            if (this.f106642e.add(c18893a3)) {
                this.f106644g++;
                m66944l(str2, c18893a3);
            }
        }
    }

    public void finaliseBands() {
        this.segmentHeader.setIc_count(this.f106642e.size());
    }

    public C18893a getIcTuple(CPClass cPClass) {
        for (C18893a c18893a : this.f106642e) {
            if (c18893a.f106646e.equals(cPClass)) {
                return c18893a;
            }
        }
        return null;
    }

    public List<C18893a> getInnerClassesForOuter(String str) {
        return this.f106645h.get(str);
    }

    /* renamed from: l */
    public final void m66944l(String str, C18893a c18893a) {
        List<C18893a> list = this.f106645h.get(str);
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            this.f106645h.put(str, arrayList);
            arrayList.add(c18893a);
        } else {
            Iterator<C18893a> it2 = list.iterator();
            while (it2.hasNext()) {
                if (c18893a.equals(it2.next())) {
                    return;
                }
            }
            list.add(c18893a);
        }
    }

    /* renamed from: m */
    public final String m66945m(String str) {
        return str.substring(0, str.lastIndexOf(36));
    }

    /* renamed from: n */
    public final boolean m66946n(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append('$');
        sb.append(str3);
        return str.equals(sb.toString()) && str3.indexOf(36) == -1;
    }

    @Override // org.apache.commons.compress.harmony.pack200.BandSet
    public void pack(OutputStream outputStream) throws IOException, Pack200Exception {
        PackingUtils.log("Writing internal class bands...");
        int size = this.f106642e.size();
        int[] iArr = new int[size];
        int size2 = this.f106642e.size();
        int[] iArr2 = new int[size2];
        int i = this.f106644g;
        int[] iArr3 = new int[i];
        int[] iArr4 = new int[i];
        ArrayList arrayList = new ArrayList(this.f106642e);
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            C18893a c18893a = (C18893a) arrayList.get(i3);
            iArr[i3] = c18893a.f106646e.getIndex();
            int i4 = c18893a.f106647f;
            iArr2[i3] = i4;
            if ((i4 & 65536) != 0) {
                CPClass cPClass = c18893a.f106648g;
                iArr3[i2] = cPClass == null ? 0 : cPClass.getIndex() + 1;
                CPUTF8 cputf8 = c18893a.f106649h;
                iArr4[i2] = cputf8 == null ? 0 : cputf8.getIndex() + 1;
                i2++;
            }
        }
        byte[] encodeBandInt = encodeBandInt("ic_this_class", iArr, Codec.UDELTA5);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from ic_this_class[" + size + IteratorUtils.f104924b);
        byte[] encodeBandInt2 = encodeBandInt("ic_flags", iArr2, Codec.UNSIGNED5);
        outputStream.write(encodeBandInt2);
        PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from ic_flags[" + size2 + IteratorUtils.f104924b);
        BHSDCodec bHSDCodec = Codec.DELTA5;
        byte[] encodeBandInt3 = encodeBandInt("ic_outer_class", iArr3, bHSDCodec);
        outputStream.write(encodeBandInt3);
        PackingUtils.log("Wrote " + encodeBandInt3.length + " bytes from ic_outer_class[" + i + IteratorUtils.f104924b);
        byte[] encodeBandInt4 = encodeBandInt("ic_name", iArr4, bHSDCodec);
        outputStream.write(encodeBandInt4);
        PackingUtils.log("Wrote " + encodeBandInt4.length + " bytes from ic_name[" + i + IteratorUtils.f104924b);
    }
}
