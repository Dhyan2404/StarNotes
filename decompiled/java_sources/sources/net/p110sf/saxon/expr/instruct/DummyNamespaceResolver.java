package net.p110sf.saxon.expr.instruct;

import java.util.Iterator;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.tree.jiter.PairIterator;

/* loaded from: classes11.dex */
public final class DummyNamespaceResolver implements NamespaceResolver {

    /* renamed from: e */
    public static final DummyNamespaceResolver f99685e = new DummyNamespaceResolver();

    public static DummyNamespaceResolver getInstance() {
        return f99685e;
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public String getURIForPrefix(String str, boolean z) {
        return (!str.isEmpty() && "xml".equals(str)) ? "http://www.w3.org/XML/1998/namespace" : "";
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public Iterator<String> iteratePrefixes() {
        return new PairIterator("", "xml");
    }
}
