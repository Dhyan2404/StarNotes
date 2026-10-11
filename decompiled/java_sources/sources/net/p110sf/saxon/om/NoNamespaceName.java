package net.p110sf.saxon.om;

/* loaded from: classes11.dex */
public final class NoNamespaceName implements NodeName {

    /* renamed from: e */
    public final String f100836e;

    /* renamed from: f */
    public int f100837f;

    public NoNamespaceName(String str) {
        this.f100837f = -1;
        this.f100836e = str;
    }

    public boolean equals(Object obj) {
        if (obj instanceof NodeName) {
            NodeName nodeName = (NodeName) obj;
            if (nodeName.getLocalPart().equals(this.f100836e) && nodeName.hasURI("")) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.om.NodeName
    public String getDisplayName() {
        return this.f100836e;
    }

    @Override // net.p110sf.saxon.om.NodeName
    public int getFingerprint() {
        return this.f100837f & 1048575;
    }

    @Override // net.p110sf.saxon.om.NodeName
    public String getLocalPart() {
        return this.f100836e;
    }

    @Override // net.p110sf.saxon.om.NodeName
    public NamespaceBinding getNamespaceBinding() {
        return NamespaceBinding.DEFAULT_UNDECLARATION;
    }

    @Override // net.p110sf.saxon.om.NodeName
    public String getPrefix() {
        return "";
    }

    @Override // net.p110sf.saxon.om.NodeName
    public StructuredQName getStructuredQName() {
        return new StructuredQName("", "", getLocalPart());
    }

    @Override // net.p110sf.saxon.om.NodeName
    public String getURI() {
        return "";
    }

    @Override // net.p110sf.saxon.om.NodeName
    public boolean hasFingerprint() {
        return this.f100837f != -1;
    }

    @Override // net.p110sf.saxon.om.NodeName
    public boolean hasURI(String str) {
        return str.isEmpty();
    }

    public int hashCode() {
        return StructuredQName.computeHashCode("", this.f100836e);
    }

    @Override // net.p110sf.saxon.om.IdentityComparable
    public int identityHashCode() {
        return getPrefix().hashCode() ^ hashCode();
    }

    @Override // net.p110sf.saxon.om.IdentityComparable
    public boolean isIdentical(IdentityComparable identityComparable) {
        return (identityComparable instanceof NodeName) && equals(identityComparable) && ((NodeName) identityComparable).getPrefix().isEmpty();
    }

    @Override // net.p110sf.saxon.om.NodeName
    public int obtainFingerprint(NamePool namePool) {
        int i = this.f100837f;
        if (i != -1) {
            return i;
        }
        int allocateFingerprint = namePool.allocateFingerprint("", this.f100836e);
        this.f100837f = allocateFingerprint;
        return allocateFingerprint;
    }

    public String toString() {
        return this.f100836e;
    }

    public NoNamespaceName(String str, int i) {
        this.f100836e = str;
        this.f100837f = i;
    }
}
