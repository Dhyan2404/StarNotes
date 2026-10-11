package net.p110sf.saxon.trans;

import java.util.HashMap;
import java.util.Map;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.HostLanguage;

/* loaded from: classes11.dex */
public class DecimalFormatManager {

    /* renamed from: a */
    public final DecimalSymbols f102265a;

    /* renamed from: b */
    public final HashMap<StructuredQName, DecimalSymbols> f102266b = new HashMap<>(10);

    /* renamed from: c */
    public final HostLanguage f102267c;

    /* renamed from: d */
    public final int f102268d;

    public DecimalFormatManager(HostLanguage hostLanguage, int i) {
        this.f102265a = new DecimalSymbols(hostLanguage, i);
        this.f102267c = hostLanguage;
        this.f102268d = i;
    }

    public void checkConsistency() throws XPathException {
        this.f102265a.checkConsistency(null);
        for (Map.Entry<StructuredQName, DecimalSymbols> entry : this.f102266b.entrySet()) {
            entry.getValue().checkConsistency(entry.getKey());
        }
    }

    public Iterable<StructuredQName> getDecimalFormatNames() {
        return this.f102266b.keySet();
    }

    public DecimalSymbols getDefaultDecimalFormat() {
        return this.f102265a;
    }

    public DecimalSymbols getNamedDecimalFormat(StructuredQName structuredQName) {
        DecimalSymbols decimalSymbols = this.f102266b.get(structuredQName);
        if (decimalSymbols == null) {
            return null;
        }
        return decimalSymbols;
    }

    public DecimalSymbols obtainNamedDecimalFormat(StructuredQName structuredQName) {
        DecimalSymbols decimalSymbols = this.f102266b.get(structuredQName);
        if (decimalSymbols != null) {
            return decimalSymbols;
        }
        DecimalSymbols decimalSymbols2 = new DecimalSymbols(this.f102267c, this.f102268d);
        this.f102266b.put(structuredQName, decimalSymbols2);
        return decimalSymbols2;
    }
}
