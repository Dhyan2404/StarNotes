package net.p110sf.saxon.om;

import java.util.Iterator;
import net.p110sf.saxon.tree.jiter.MonoIterator;

/* loaded from: classes11.dex */
public final class NamespaceBinding implements NamespaceBindingSet {

    /* renamed from: e */
    public final String f100828e;

    /* renamed from: f */
    public final String f100829f;
    public static final NamespaceBinding XML = new NamespaceBinding("xml", "http://www.w3.org/XML/1998/namespace");
    public static final NamespaceBinding DEFAULT_UNDECLARATION = new NamespaceBinding("", "");
    public static final NamespaceBinding[] EMPTY_ARRAY = new NamespaceBinding[0];

    public NamespaceBinding(String str, String str2) {
        this.f100828e = str;
        this.f100829f = str2;
        if (str == null || str2 == null) {
            throw null;
        }
    }

    public static NamespaceBinding makeNamespaceBinding(CharSequence charSequence, CharSequence charSequence2) {
        return (charSequence.length() == 0 && charSequence2.length() == 0) ? DEFAULT_UNDECLARATION : (charSequence.equals("xml") && charSequence2.equals("http://www.w3.org/XML/1998/namespace")) ? XML : new NamespaceBinding(charSequence.toString(), charSequence2.toString());
    }

    public boolean equals(Object obj) {
        if (obj instanceof NamespaceBinding) {
            NamespaceBinding namespaceBinding = (NamespaceBinding) obj;
            if (this.f100828e.equals(namespaceBinding.getPrefix()) && this.f100829f.equals(namespaceBinding.getURI())) {
                return true;
            }
        }
        return false;
    }

    public String getPrefix() {
        return this.f100828e;
    }

    @Override // net.p110sf.saxon.om.NamespaceBindingSet
    public String getURI(String str) {
        if (str.equals(this.f100828e)) {
            return this.f100829f;
        }
        return null;
    }

    public int hashCode() {
        return this.f100829f.hashCode() ^ this.f100828e.hashCode();
    }

    public boolean isDefaultUndeclaration() {
        return this.f100828e.isEmpty() && this.f100829f.isEmpty();
    }

    public boolean isXmlNamespace() {
        return this.f100828e.equals("xml");
    }

    @Override // java.lang.Iterable
    public Iterator<NamespaceBinding> iterator() {
        return new MonoIterator(this);
    }

    public String toString() {
        return this.f100828e + "=" + this.f100829f;
    }

    public String getURI() {
        return this.f100829f;
    }
}
