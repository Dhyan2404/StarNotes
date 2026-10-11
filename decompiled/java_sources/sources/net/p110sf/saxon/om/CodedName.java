package net.p110sf.saxon.om;

/* loaded from: classes11.dex */
public class CodedName implements NodeName {

    /* renamed from: e */
    public final int f100771e;

    /* renamed from: f */
    public final String f100772f;

    /* renamed from: g */
    public final NamePool f100773g;

    public CodedName(int i, String str, NamePool namePool) {
        this.f100771e = i;
        this.f100772f = str;
        this.f100773g = namePool;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof NodeName)) {
            return false;
        }
        NodeName nodeName = (NodeName) obj;
        return nodeName.hasFingerprint() ? getFingerprint() == nodeName.getFingerprint() : nodeName.getLocalPart().equals(getLocalPart()) && nodeName.hasURI(getURI());
    }

    @Override // net.p110sf.saxon.om.NodeName
    public String getDisplayName() {
        if (this.f100772f.isEmpty()) {
            return getLocalPart();
        }
        return this.f100772f + ":" + getLocalPart();
    }

    @Override // net.p110sf.saxon.om.NodeName
    public int getFingerprint() {
        return this.f100771e;
    }

    @Override // net.p110sf.saxon.om.NodeName
    public String getLocalPart() {
        return this.f100773g.getLocalName(this.f100771e);
    }

    @Override // net.p110sf.saxon.om.NodeName
    public NamespaceBinding getNamespaceBinding() {
        return new NamespaceBinding(this.f100772f, this.f100773g.getURI(this.f100771e));
    }

    @Override // net.p110sf.saxon.om.NodeName
    public String getPrefix() {
        return this.f100772f;
    }

    @Override // net.p110sf.saxon.om.NodeName
    public StructuredQName getStructuredQName() {
        StructuredQName unprefixedQName = this.f100773g.getUnprefixedQName(this.f100771e);
        return this.f100772f.isEmpty() ? unprefixedQName : new StructuredQName(this.f100772f, unprefixedQName.getURI(), unprefixedQName.getLocalPart());
    }

    @Override // net.p110sf.saxon.om.NodeName
    public String getURI() {
        return this.f100773g.getURI(this.f100771e);
    }

    @Override // net.p110sf.saxon.om.NodeName
    public boolean hasFingerprint() {
        return true;
    }

    @Override // net.p110sf.saxon.om.NodeName
    public boolean hasURI(String str) {
        return getURI().equals(str);
    }

    public int hashCode() {
        return StructuredQName.computeHashCode(getURI(), getLocalPart());
    }

    @Override // net.p110sf.saxon.om.IdentityComparable
    public int identityHashCode() {
        return getPrefix().hashCode() ^ hashCode();
    }

    @Override // net.p110sf.saxon.om.IdentityComparable
    public boolean isIdentical(IdentityComparable identityComparable) {
        return (identityComparable instanceof NodeName) && equals(identityComparable) && getPrefix().equals(((NodeName) identityComparable).getPrefix());
    }

    @Override // net.p110sf.saxon.om.NodeName
    public int obtainFingerprint(NamePool namePool) {
        return this.f100771e;
    }

    public String toString() {
        return getDisplayName();
    }
}
