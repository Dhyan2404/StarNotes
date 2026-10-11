package net.p110sf.saxon.pull;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import javax.xml.namespace.NamespaceContext;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.pull.NamespaceContextImpl;

/* loaded from: classes11.dex */
public class NamespaceContextImpl implements NamespaceResolver, NamespaceContext {

    /* renamed from: e */
    public NamespaceResolver f100941e;

    public NamespaceContextImpl(NamespaceResolver namespaceResolver) {
        this.f100941e = namespaceResolver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m63473b(String str, List list, String str2) {
        if (this.f100941e.getURIForPrefix(str2, true).equals(str)) {
            list.add(str2);
        }
    }

    @Override // javax.xml.namespace.NamespaceContext
    public String getNamespaceURI(String str) {
        return str.equals("xmlns") ? "http://www.w3.org/2000/xmlns/" : this.f100941e.getURIForPrefix(str, true);
    }

    @Override // javax.xml.namespace.NamespaceContext
    public String getPrefix(String str) {
        Iterator<String> iteratePrefixes = iteratePrefixes();
        while (iteratePrefixes.hasNext()) {
            String next = iteratePrefixes.next();
            if (this.f100941e.getURIForPrefix(next, true).equals(str)) {
                return next;
            }
        }
        return null;
    }

    @Override // javax.xml.namespace.NamespaceContext
    public Iterator<String> getPrefixes(final String str) {
        final ArrayList arrayList = new ArrayList(4);
        iteratePrefixes().forEachRemaining(new Consumer() { // from class: com.sunia.HTREnginev2.msj
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                NamespaceContextImpl.this.m63473b(str, arrayList, (String) obj);
            }
        });
        return arrayList.iterator();
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public String getURIForPrefix(String str, boolean z) {
        return this.f100941e.getURIForPrefix(str, z);
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public Iterator<String> iteratePrefixes() {
        return this.f100941e.iteratePrefixes();
    }
}
