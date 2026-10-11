package net.p110sf.saxon.tree.util;

import java.util.ArrayList;
import java.util.Iterator;
import net.p110sf.saxon.om.NamespaceResolver;

/* loaded from: classes11.dex */
public class NamespaceResolverWithDefault implements NamespaceResolver {

    /* renamed from: e */
    public final NamespaceResolver f102671e;

    /* renamed from: f */
    public final String f102672f;

    public NamespaceResolverWithDefault(NamespaceResolver namespaceResolver, String str) {
        this.f102671e = namespaceResolver;
        this.f102672f = str;
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public String getURIForPrefix(String str, boolean z) {
        return (z && str.isEmpty()) ? this.f102672f : this.f102671e.getURIForPrefix(str, z);
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public Iterator<String> iteratePrefixes() {
        ArrayList arrayList = new ArrayList(10);
        Iterator<String> iteratePrefixes = this.f102671e.iteratePrefixes();
        while (iteratePrefixes.hasNext()) {
            String next = iteratePrefixes.next();
            if (next.length() != 0) {
                arrayList.add(next);
            }
        }
        arrayList.add("");
        return arrayList.iterator();
    }
}
