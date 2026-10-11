package net.p110sf.saxon.om;

/* loaded from: classes11.dex */
public class FingerprintedQName implements NodeName {

    /* renamed from: e */
    public final StructuredQName f100782e;

    /* renamed from: f */
    public int f100783f;

    public FingerprintedQName(String str, String str2, String str3) {
        this.f100783f = -1;
        this.f100782e = new StructuredQName(str, str2, str3);
    }

    public static FingerprintedQName fromClarkName(String str) {
        String str2;
        if (str.charAt(0) == '{') {
            int indexOf = str.indexOf(125);
            if (indexOf < 0) {
                throw new IllegalArgumentException("No closing '}' in Clark name");
            }
            str2 = str.substring(1, indexOf);
            if (indexOf == str.length()) {
                throw new IllegalArgumentException("Missing local part in Clark name");
            }
            str = str.substring(indexOf + 1);
        } else {
            str2 = "";
        }
        return new FingerprintedQName("", str2, str);
    }

    public static FingerprintedQName fromEQName(String str) {
        String str2;
        if (str.startsWith("Q{")) {
            int indexOf = str.indexOf(125, 2);
            if (indexOf < 0) {
                throw new IllegalArgumentException("No closing '}' in EQName");
            }
            str2 = str.substring(2, indexOf);
            if (indexOf == str.length()) {
                throw new IllegalArgumentException("Missing local part in EQName");
            }
            str = str.substring(indexOf + 1);
        } else {
            str2 = "";
        }
        return new FingerprintedQName("", str2, str);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof NodeName)) {
            return false;
        }
        if (this.f100783f != -1) {
            NodeName nodeName = (NodeName) obj;
            if (nodeName.hasFingerprint()) {
                return getFingerprint() == nodeName.getFingerprint();
            }
        }
        NodeName nodeName2 = (NodeName) obj;
        return getLocalPart().equals(nodeName2.getLocalPart()) && hasURI(nodeName2.getURI());
    }

    @Override // net.p110sf.saxon.om.NodeName
    public String getDisplayName() {
        return this.f100782e.getDisplayName();
    }

    @Override // net.p110sf.saxon.om.NodeName
    public int getFingerprint() {
        return this.f100783f;
    }

    @Override // net.p110sf.saxon.om.NodeName
    public String getLocalPart() {
        return this.f100782e.getLocalPart();
    }

    @Override // net.p110sf.saxon.om.NodeName
    public NamespaceBinding getNamespaceBinding() {
        return this.f100782e.getNamespaceBinding();
    }

    @Override // net.p110sf.saxon.om.NodeName
    public String getPrefix() {
        return this.f100782e.getPrefix();
    }

    @Override // net.p110sf.saxon.om.NodeName
    public StructuredQName getStructuredQName() {
        return this.f100782e;
    }

    @Override // net.p110sf.saxon.om.NodeName
    public String getURI() {
        return this.f100782e.getURI();
    }

    @Override // net.p110sf.saxon.om.NodeName
    public boolean hasFingerprint() {
        return this.f100783f != -1;
    }

    @Override // net.p110sf.saxon.om.NodeName
    public boolean hasURI(String str) {
        return this.f100782e.hasURI(str);
    }

    public int hashCode() {
        return this.f100782e.hashCode();
    }

    @Override // net.p110sf.saxon.om.IdentityComparable
    public int identityHashCode() {
        return 0;
    }

    @Override // net.p110sf.saxon.om.IdentityComparable
    public boolean isIdentical(IdentityComparable identityComparable) {
        return (identityComparable instanceof NodeName) && equals(identityComparable) && getPrefix().equals(((NodeName) identityComparable).getPrefix());
    }

    @Override // net.p110sf.saxon.om.NodeName
    public int obtainFingerprint(NamePool namePool) {
        if (this.f100783f == -1) {
            this.f100783f = namePool.allocateFingerprint(getURI(), getLocalPart());
        }
        return this.f100783f;
    }

    public String toString() {
        return this.f100782e.getDisplayName();
    }

    public FingerprintedQName(String str, String str2, String str3, int i) {
        this.f100783f = -1;
        this.f100782e = new StructuredQName(str, str2, str3);
        this.f100783f = i;
    }

    public FingerprintedQName(String str, String str2, String str3, NamePool namePool) {
        this.f100783f = -1;
        this.f100782e = new StructuredQName(str, str2, str3);
        this.f100783f = namePool.allocateFingerprint(str2, str3);
    }

    public FingerprintedQName(StructuredQName structuredQName, int i) {
        this.f100782e = structuredQName;
        this.f100783f = i;
    }

    public FingerprintedQName(StructuredQName structuredQName, NamePool namePool) {
        this.f100783f = -1;
        this.f100782e = structuredQName;
        this.f100783f = namePool.allocateFingerprint(structuredQName.getURI(), structuredQName.getLocalPart());
    }
}
