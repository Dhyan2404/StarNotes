package net.p110sf.saxon.functions;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class OptionsParameter {

    /* renamed from: e */
    public String f100273e;

    /* renamed from: a */
    public final Map<String, SequenceType> f100269a = new HashMap(8);

    /* renamed from: b */
    public final Map<String, Sequence> f100270b = new HashMap(8);

    /* renamed from: c */
    public final Set<String> f100271c = new HashSet(4);

    /* renamed from: d */
    public final Map<String, Set<String>> f100272d = new HashMap(8);

    /* renamed from: f */
    public String f100274f = "SXJE9999";

    /* renamed from: g */
    public boolean f100275g = false;

    public void addAllowedOption(String str, SequenceType sequenceType) {
        this.f100269a.put(str, sequenceType);
    }

    public void addRequiredOption(String str, SequenceType sequenceType) {
        this.f100269a.put(str, sequenceType);
        this.f100271c.add(str);
    }

    public Map<String, Sequence> getDefaultOptions() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, Sequence> entry : this.f100270b.entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue());
        }
        return hashMap;
    }

    public String getErrorCodeForAbsentValue() {
        return this.f100274f;
    }

    public boolean isAllowCastFromString() {
        return this.f100275g;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, net.p110sf.saxon.om.Sequence> processSuppliedOptions(net.p110sf.saxon.ma.map.MapItem r11, net.p110sf.saxon.expr.XPathContext r12) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.functions.OptionsParameter.processSuppliedOptions(net.sf.saxon.ma.map.MapItem, net.sf.saxon.expr.XPathContext):java.util.Map");
    }

    public void setAllowCastFromString(boolean z) {
        this.f100275g = z;
    }

    public void setAllowedValues(String str, String str2, String... strArr) {
        this.f100272d.put(str, new HashSet(Arrays.asList(strArr)));
        this.f100273e = str2;
    }

    public void setErrorCodeForAbsentValue(String str) {
        this.f100274f = str;
    }

    public void addAllowedOption(String str, SequenceType sequenceType, Sequence sequence) {
        this.f100269a.put(str, sequenceType);
        if (sequence != null) {
            this.f100270b.put(str, sequence);
        }
    }
}
