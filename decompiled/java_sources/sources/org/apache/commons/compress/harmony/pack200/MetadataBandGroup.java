package org.apache.commons.compress.harmony.pack200;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.ToIntFunction;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes12.dex */
public class MetadataBandGroup extends BandSet {
    public static final int CONTEXT_CLASS = 0;
    public static final int CONTEXT_FIELD = 1;
    public static final int CONTEXT_METHOD = 2;

    /* renamed from: T */
    public List<String> f106655T;
    public IntList anno_N;
    public List<CPConstant<?>> caseD_KD;
    public List<CPConstant<?>> caseF_KF;
    public List<CPConstant<?>> caseI_KI;
    public List<CPConstant<?>> caseJ_KJ;
    public IntList casearray_N;
    public List<CPSignature> casec_RS;
    public List<CPUTF8> caseec_RU;
    public List<CPSignature> caseet_RS;
    public List<CPUTF8> cases_RU;

    /* renamed from: e */
    public final String f106656e;

    /* renamed from: f */
    public int f106657f;

    /* renamed from: g */
    public final CpBands f106658g;

    /* renamed from: h */
    public final int f106659h;
    public List<CPUTF8> name_RU;
    public List<CPUTF8> nestname_RU;
    public IntList nestpair_N;
    public List<CPSignature> nesttype_RS;
    public IntList pair_N;
    public IntList param_NB;
    public List<CPSignature> type_RS;

    public MetadataBandGroup(String str, int i, CpBands cpBands, SegmentHeader segmentHeader, int i2) {
        super(i2, segmentHeader);
        this.f106657f = 0;
        this.param_NB = new IntList();
        this.anno_N = new IntList();
        this.type_RS = new ArrayList();
        this.pair_N = new IntList();
        this.name_RU = new ArrayList();
        this.f106655T = new ArrayList();
        this.caseI_KI = new ArrayList();
        this.caseD_KD = new ArrayList();
        this.caseF_KF = new ArrayList();
        this.caseJ_KJ = new ArrayList();
        this.casec_RS = new ArrayList();
        this.caseet_RS = new ArrayList();
        this.caseec_RU = new ArrayList();
        this.cases_RU = new ArrayList();
        this.casearray_N = new IntList();
        this.nesttype_RS = new ArrayList();
        this.nestpair_N = new IntList();
        this.nestname_RU = new ArrayList();
        this.f106656e = str;
        this.f106658g = cpBands;
        this.f106659h = i;
    }

    public void addAnnotation(String str, List<String> list, List<String> list2, List<Object> list3, List<Integer> list4, List<String> list5, List<String> list6, List<Integer> list7) {
        this.type_RS.add(this.f106658g.getCPSignature(str));
        this.pair_N.add(list.size());
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            this.name_RU.add(this.f106658g.getCPUtf8(it2.next()));
        }
        Iterator<Object> it3 = list3.iterator();
        for (String str2 : list2) {
            this.f106655T.add(str2);
            if (str2.equals("B") || str2.equals(BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY) || str2.equals("I") || str2.equals("S") || str2.equals(Constants.HASIDCALL_INDEX_SIG)) {
                this.caseI_KI.add(this.f106658g.getConstant((Integer) it3.next()));
            } else if (str2.equals(SardineUtil.DEFAULT_NAMESPACE_PREFIX)) {
                this.caseD_KD.add(this.f106658g.getConstant((Double) it3.next()));
            } else if (str2.equals("F")) {
                this.caseF_KF.add(this.f106658g.getConstant((Float) it3.next()));
            } else if (str2.equals("J")) {
                this.caseJ_KJ.add(this.f106658g.getConstant((Long) it3.next()));
            } else if (str2.equals("c")) {
                this.casec_RS.add(this.f106658g.getCPSignature((String) it3.next()));
            } else if (str2.equals("e")) {
                String str3 = (String) it3.next();
                String str4 = (String) it3.next();
                this.caseet_RS.add(this.f106658g.getCPSignature(str3));
                this.caseec_RU.add(this.f106658g.getCPUtf8(str4));
            } else if (str2.equals("s")) {
                this.cases_RU.add(this.f106658g.getCPUtf8((String) it3.next()));
            }
        }
        Iterator<Integer> it4 = list4.iterator();
        while (it4.hasNext()) {
            int intValue = it4.next().intValue();
            this.casearray_N.add(intValue);
            this.f106657f += intValue;
        }
        Iterator<String> it5 = list5.iterator();
        while (it5.hasNext()) {
            this.nesttype_RS.add(this.f106658g.getCPSignature(it5.next()));
        }
        Iterator<String> it6 = list6.iterator();
        while (it6.hasNext()) {
            this.nestname_RU.add(this.f106658g.getCPUtf8(it6.next()));
        }
        for (Integer num : list7) {
            this.nestpair_N.add(num.intValue());
            this.f106657f += num.intValue();
        }
    }

    public void addParameterAnnotation(int i, int[] iArr, IntList intList, List<String> list, List<String> list2, List<String> list3, List<Object> list4, List<Integer> list5, List<String> list6, List<String> list7, List<Integer> list8) {
        this.param_NB.add(i);
        for (int i2 : iArr) {
            this.anno_N.add(i2);
        }
        this.pair_N.addAll(intList);
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            this.type_RS.add(this.f106658g.getCPSignature(it2.next()));
        }
        Iterator<String> it3 = list2.iterator();
        while (it3.hasNext()) {
            this.name_RU.add(this.f106658g.getCPUtf8(it3.next()));
        }
        Iterator<Object> it4 = list4.iterator();
        for (String str : list3) {
            this.f106655T.add(str);
            if (str.equals("B") || str.equals(BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY) || str.equals("I") || str.equals("S") || str.equals(Constants.HASIDCALL_INDEX_SIG)) {
                this.caseI_KI.add(this.f106658g.getConstant((Integer) it4.next()));
            } else if (str.equals(SardineUtil.DEFAULT_NAMESPACE_PREFIX)) {
                this.caseD_KD.add(this.f106658g.getConstant((Double) it4.next()));
            } else if (str.equals("F")) {
                this.caseF_KF.add(this.f106658g.getConstant((Float) it4.next()));
            } else if (str.equals("J")) {
                this.caseJ_KJ.add(this.f106658g.getConstant((Long) it4.next()));
            } else if (str.equals("c")) {
                this.casec_RS.add(this.f106658g.getCPSignature((String) it4.next()));
            } else if (str.equals("e")) {
                String str2 = (String) it4.next();
                String str3 = (String) it4.next();
                this.caseet_RS.add(this.f106658g.getCPSignature(str2));
                this.caseec_RU.add(this.f106658g.getCPUtf8(str3));
            } else if (str.equals("s")) {
                this.cases_RU.add(this.f106658g.getCPUtf8((String) it4.next()));
            }
        }
        Iterator<Integer> it5 = list5.iterator();
        while (it5.hasNext()) {
            int intValue = it5.next().intValue();
            this.casearray_N.add(intValue);
            this.f106657f += intValue;
        }
        Iterator<String> it6 = list6.iterator();
        while (it6.hasNext()) {
            this.nesttype_RS.add(this.f106658g.getCPSignature(it6.next()));
        }
        Iterator<String> it7 = list7.iterator();
        while (it7.hasNext()) {
            this.nestname_RU.add(this.f106658g.getCPUtf8(it7.next()));
        }
        for (Integer num : list8) {
            this.nestpair_N.add(num.intValue());
            this.f106657f += num.intValue();
        }
    }

    public boolean hasContent() {
        return this.type_RS.size() > 0;
    }

    public void incrementAnnoN() {
        this.anno_N.increment(r1.size() - 1);
    }

    /* renamed from: n */
    public final void m66954n() {
        String remove = this.f106655T.remove(r0.size() - 1);
        if (remove.equals("B") || remove.equals(BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY) || remove.equals("I") || remove.equals("S") || remove.equals(Constants.HASIDCALL_INDEX_SIG)) {
            this.caseI_KI.remove(r3.size() - 1);
            return;
        }
        if (remove.equals(SardineUtil.DEFAULT_NAMESPACE_PREFIX)) {
            this.caseD_KD.remove(r3.size() - 1);
            return;
        }
        if (remove.equals("F")) {
            this.caseF_KF.remove(r3.size() - 1);
            return;
        }
        if (remove.equals("J")) {
            this.caseJ_KJ.remove(r3.size() - 1);
            return;
        }
        if (remove.equals(BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY)) {
            this.casec_RS.remove(r3.size() - 1);
            return;
        }
        if (remove.equals("e")) {
            this.caseet_RS.remove(r0.size() - 1);
            this.caseec_RU.remove(this.caseet_RS.size() - 1);
            return;
        }
        if (remove.equals("s")) {
            this.cases_RU.remove(r3.size() - 1);
            return;
        }
        int i = 0;
        if (remove.equals(IteratorUtils.f104923a)) {
            int remove2 = this.casearray_N.remove(r0.size() - 1);
            this.f106657f -= remove2;
            while (i < remove2) {
                m66954n();
                i++;
            }
            return;
        }
        if (remove.equals("@")) {
            this.nesttype_RS.remove(r0.size() - 1);
            int remove3 = this.nestpair_N.remove(r0.size() - 1);
            this.f106657f -= remove3;
            while (i < remove3) {
                m66954n();
                i++;
            }
        }
    }

    public void newEntryInAnnoN() {
        this.anno_N.add(1);
    }

    public int numBackwardsCalls() {
        return this.f106657f;
    }

    /* renamed from: o */
    public final int[] m66955o(List<String> list) {
        return list.stream().mapToInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.knj
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                int charAt;
                charAt = ((String) obj).charAt(0);
                return charAt;
            }
        }).toArray();
    }

    @Override // org.apache.commons.compress.harmony.pack200.BandSet
    public void pack(OutputStream outputStream) throws IOException, Pack200Exception {
        PackingUtils.log("Writing metadata band group...");
        if (hasContent()) {
            int i = this.f106659h;
            String str = i == 0 ? "Class" : i == 1 ? "Field" : "Method";
            if (!this.f106656e.equals("AD")) {
                if (this.f106656e.indexOf(80) != -1) {
                    byte[] encodeBandInt = encodeBandInt(str + "_" + this.f106656e + " param_NB", this.param_NB.toArray(), Codec.BYTE1);
                    outputStream.write(encodeBandInt);
                    PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from " + str + "_" + this.f106656e + " anno_N[" + this.param_NB.size() + IteratorUtils.f104924b);
                }
                String str2 = str + "_" + this.f106656e + " anno_N";
                int[] array = this.anno_N.toArray();
                BHSDCodec bHSDCodec = Codec.UNSIGNED5;
                byte[] encodeBandInt2 = encodeBandInt(str2, array, bHSDCodec);
                outputStream.write(encodeBandInt2);
                PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from " + str + "_" + this.f106656e + " anno_N[" + this.anno_N.size() + IteratorUtils.f104924b);
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append("_");
                sb.append(this.f106656e);
                sb.append(" type_RS");
                byte[] encodeBandInt3 = encodeBandInt(sb.toString(), cpEntryListToArray(this.type_RS), bHSDCodec);
                outputStream.write(encodeBandInt3);
                PackingUtils.log("Wrote " + encodeBandInt3.length + " bytes from " + str + "_" + this.f106656e + " type_RS[" + this.type_RS.size() + IteratorUtils.f104924b);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append("_");
                sb2.append(this.f106656e);
                sb2.append(" pair_N");
                byte[] encodeBandInt4 = encodeBandInt(sb2.toString(), this.pair_N.toArray(), bHSDCodec);
                outputStream.write(encodeBandInt4);
                PackingUtils.log("Wrote " + encodeBandInt4.length + " bytes from " + str + "_" + this.f106656e + " pair_N[" + this.pair_N.size() + IteratorUtils.f104924b);
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str);
                sb3.append("_");
                sb3.append(this.f106656e);
                sb3.append(" name_RU");
                byte[] encodeBandInt5 = encodeBandInt(sb3.toString(), cpEntryListToArray(this.name_RU), bHSDCodec);
                outputStream.write(encodeBandInt5);
                PackingUtils.log("Wrote " + encodeBandInt5.length + " bytes from " + str + "_" + this.f106656e + " name_RU[" + this.name_RU.size() + IteratorUtils.f104924b);
            }
            byte[] encodeBandInt6 = encodeBandInt(str + "_" + this.f106656e + " T", m66955o(this.f106655T), Codec.BYTE1);
            outputStream.write(encodeBandInt6);
            PackingUtils.log("Wrote " + encodeBandInt6.length + " bytes from " + str + "_" + this.f106656e + " T[" + this.f106655T.size() + IteratorUtils.f104924b);
            StringBuilder sb4 = new StringBuilder();
            sb4.append(str);
            sb4.append("_");
            sb4.append(this.f106656e);
            sb4.append(" caseI_KI");
            String sb5 = sb4.toString();
            int[] cpEntryListToArray = cpEntryListToArray(this.caseI_KI);
            BHSDCodec bHSDCodec2 = Codec.UNSIGNED5;
            byte[] encodeBandInt7 = encodeBandInt(sb5, cpEntryListToArray, bHSDCodec2);
            outputStream.write(encodeBandInt7);
            PackingUtils.log("Wrote " + encodeBandInt7.length + " bytes from " + str + "_" + this.f106656e + " caseI_KI[" + this.caseI_KI.size() + IteratorUtils.f104924b);
            StringBuilder sb6 = new StringBuilder();
            sb6.append(str);
            sb6.append("_");
            sb6.append(this.f106656e);
            sb6.append(" caseD_KD");
            byte[] encodeBandInt8 = encodeBandInt(sb6.toString(), cpEntryListToArray(this.caseD_KD), bHSDCodec2);
            outputStream.write(encodeBandInt8);
            PackingUtils.log("Wrote " + encodeBandInt8.length + " bytes from " + str + "_" + this.f106656e + " caseD_KD[" + this.caseD_KD.size() + IteratorUtils.f104924b);
            StringBuilder sb7 = new StringBuilder();
            sb7.append(str);
            sb7.append("_");
            sb7.append(this.f106656e);
            sb7.append(" caseF_KF");
            byte[] encodeBandInt9 = encodeBandInt(sb7.toString(), cpEntryListToArray(this.caseF_KF), bHSDCodec2);
            outputStream.write(encodeBandInt9);
            PackingUtils.log("Wrote " + encodeBandInt9.length + " bytes from " + str + "_" + this.f106656e + " caseF_KF[" + this.caseF_KF.size() + IteratorUtils.f104924b);
            StringBuilder sb8 = new StringBuilder();
            sb8.append(str);
            sb8.append("_");
            sb8.append(this.f106656e);
            sb8.append(" caseJ_KJ");
            byte[] encodeBandInt10 = encodeBandInt(sb8.toString(), cpEntryListToArray(this.caseJ_KJ), bHSDCodec2);
            outputStream.write(encodeBandInt10);
            PackingUtils.log("Wrote " + encodeBandInt10.length + " bytes from " + str + "_" + this.f106656e + " caseJ_KJ[" + this.caseJ_KJ.size() + IteratorUtils.f104924b);
            StringBuilder sb9 = new StringBuilder();
            sb9.append(str);
            sb9.append("_");
            sb9.append(this.f106656e);
            sb9.append(" casec_RS");
            byte[] encodeBandInt11 = encodeBandInt(sb9.toString(), cpEntryListToArray(this.casec_RS), bHSDCodec2);
            outputStream.write(encodeBandInt11);
            PackingUtils.log("Wrote " + encodeBandInt11.length + " bytes from " + str + "_" + this.f106656e + " casec_RS[" + this.casec_RS.size() + IteratorUtils.f104924b);
            StringBuilder sb10 = new StringBuilder();
            sb10.append(str);
            sb10.append("_");
            sb10.append(this.f106656e);
            sb10.append(" caseet_RS");
            byte[] encodeBandInt12 = encodeBandInt(sb10.toString(), cpEntryListToArray(this.caseet_RS), bHSDCodec2);
            outputStream.write(encodeBandInt12);
            PackingUtils.log("Wrote " + encodeBandInt12.length + " bytes from " + str + "_" + this.f106656e + " caseet_RS[" + this.caseet_RS.size() + IteratorUtils.f104924b);
            StringBuilder sb11 = new StringBuilder();
            sb11.append(str);
            sb11.append("_");
            sb11.append(this.f106656e);
            sb11.append(" caseec_RU");
            byte[] encodeBandInt13 = encodeBandInt(sb11.toString(), cpEntryListToArray(this.caseec_RU), bHSDCodec2);
            outputStream.write(encodeBandInt13);
            PackingUtils.log("Wrote " + encodeBandInt13.length + " bytes from " + str + "_" + this.f106656e + " caseec_RU[" + this.caseec_RU.size() + IteratorUtils.f104924b);
            StringBuilder sb12 = new StringBuilder();
            sb12.append(str);
            sb12.append("_");
            sb12.append(this.f106656e);
            sb12.append(" cases_RU");
            byte[] encodeBandInt14 = encodeBandInt(sb12.toString(), cpEntryListToArray(this.cases_RU), bHSDCodec2);
            outputStream.write(encodeBandInt14);
            PackingUtils.log("Wrote " + encodeBandInt14.length + " bytes from " + str + "_" + this.f106656e + " cases_RU[" + this.cases_RU.size() + IteratorUtils.f104924b);
            StringBuilder sb13 = new StringBuilder();
            sb13.append(str);
            sb13.append("_");
            sb13.append(this.f106656e);
            sb13.append(" casearray_N");
            byte[] encodeBandInt15 = encodeBandInt(sb13.toString(), this.casearray_N.toArray(), bHSDCodec2);
            outputStream.write(encodeBandInt15);
            PackingUtils.log("Wrote " + encodeBandInt15.length + " bytes from " + str + "_" + this.f106656e + " casearray_N[" + this.casearray_N.size() + IteratorUtils.f104924b);
            StringBuilder sb14 = new StringBuilder();
            sb14.append(str);
            sb14.append("_");
            sb14.append(this.f106656e);
            sb14.append(" nesttype_RS");
            byte[] encodeBandInt16 = encodeBandInt(sb14.toString(), cpEntryListToArray(this.nesttype_RS), bHSDCodec2);
            outputStream.write(encodeBandInt16);
            PackingUtils.log("Wrote " + encodeBandInt16.length + " bytes from " + str + "_" + this.f106656e + " nesttype_RS[" + this.nesttype_RS.size() + IteratorUtils.f104924b);
            StringBuilder sb15 = new StringBuilder();
            sb15.append(str);
            sb15.append("_");
            sb15.append(this.f106656e);
            sb15.append(" nestpair_N");
            byte[] encodeBandInt17 = encodeBandInt(sb15.toString(), this.nestpair_N.toArray(), bHSDCodec2);
            outputStream.write(encodeBandInt17);
            PackingUtils.log("Wrote " + encodeBandInt17.length + " bytes from " + str + "_" + this.f106656e + " nestpair_N[" + this.nestpair_N.size() + IteratorUtils.f104924b);
            StringBuilder sb16 = new StringBuilder();
            sb16.append(str);
            sb16.append("_");
            sb16.append(this.f106656e);
            sb16.append(" nestname_RU");
            byte[] encodeBandInt18 = encodeBandInt(sb16.toString(), cpEntryListToArray(this.nestname_RU), bHSDCodec2);
            outputStream.write(encodeBandInt18);
            PackingUtils.log("Wrote " + encodeBandInt18.length + " bytes from " + str + "_" + this.f106656e + " nestname_RU[" + this.nestname_RU.size() + IteratorUtils.f104924b);
        }
    }

    public void removeLatest() {
        int remove = this.anno_N.remove(r0.size() - 1);
        for (int i = 0; i < remove; i++) {
            this.type_RS.remove(r3.size() - 1);
            int remove2 = this.pair_N.remove(r3.size() - 1);
            for (int i2 = 0; i2 < remove2; i2++) {
                m66954n();
            }
        }
    }
}
