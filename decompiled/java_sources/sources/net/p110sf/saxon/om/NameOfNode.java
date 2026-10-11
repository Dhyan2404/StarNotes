package net.p110sf.saxon.om;

import net.p110sf.saxon.tree.wrapper.AbstractVirtualNode;

/* loaded from: classes11.dex */
public class NameOfNode implements NodeName {

    /* renamed from: e */
    public final NodeInfo f100822e;

    public NameOfNode(NodeInfo nodeInfo) {
        this.f100822e = nodeInfo;
    }

    public static NodeName makeName(NodeInfo nodeInfo) {
        return nodeInfo instanceof MutableNodeInfo ? new FingerprintedQName(nodeInfo.getPrefix(), nodeInfo.getURI(), nodeInfo.getLocalPart()) : nodeInfo instanceof AbstractVirtualNode ? new NameOfNode(((AbstractVirtualNode) nodeInfo).getUnderlyingNode()) : new NameOfNode(nodeInfo);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof NodeName)) {
            return false;
        }
        NodeName nodeName = (NodeName) obj;
        return (this.f100822e.hasFingerprint() && nodeName.hasFingerprint()) ? this.f100822e.getFingerprint() == nodeName.getFingerprint() : nodeName.getLocalPart().equals(this.f100822e.getLocalPart()) && nodeName.hasURI(this.f100822e.getURI());
    }

    @Override // net.p110sf.saxon.om.NodeName
    public String getDisplayName() {
        return this.f100822e.getDisplayName();
    }

    @Override // net.p110sf.saxon.om.NodeName
    public int getFingerprint() {
        if (hasFingerprint()) {
            return this.f100822e.getFingerprint();
        }
        return -1;
    }

    @Override // net.p110sf.saxon.om.NodeName
    public String getLocalPart() {
        return this.f100822e.getLocalPart();
    }

    @Override // net.p110sf.saxon.om.NodeName
    public NamespaceBinding getNamespaceBinding() {
        return NamespaceBinding.makeNamespaceBinding(getPrefix(), getURI());
    }

    @Override // net.p110sf.saxon.om.NodeName
    public String getPrefix() {
        return this.f100822e.getPrefix();
    }

    @Override // net.p110sf.saxon.om.NodeName
    public StructuredQName getStructuredQName() {
        return new StructuredQName(getPrefix(), getURI(), getLocalPart());
    }

    @Override // net.p110sf.saxon.om.NodeName
    public String getURI() {
        return this.f100822e.getURI();
    }

    @Override // net.p110sf.saxon.om.NodeName
    public boolean hasFingerprint() {
        return this.f100822e.hasFingerprint();
    }

    @Override // net.p110sf.saxon.om.NodeName
    public boolean hasURI(String str) {
        return this.f100822e.getURI().equals(str);
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
        return this.f100822e.hasFingerprint() ? this.f100822e.getFingerprint() : namePool.allocateFingerprint(this.f100822e.getURI(), this.f100822e.getLocalPart());
    }
}
