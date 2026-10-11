package net.p110sf.saxon.om;

/* loaded from: classes11.dex */
public class NamespaceDeltaMap extends NamespaceMap implements NamespaceBindingSet, NamespaceResolver {

    /* renamed from: g */
    public static final NamespaceDeltaMap f100830g = new NamespaceDeltaMap();

    public NamespaceDeltaMap() {
        this.prefixes = new String[0];
        this.uris = new String[0];
    }

    public static NamespaceDeltaMap emptyMap() {
        return f100830g;
    }

    @Override // net.p110sf.saxon.om.NamespaceMap
    public boolean allowsNamespaceUndeclarations() {
        return true;
    }

    @Override // net.p110sf.saxon.om.NamespaceMap
    public NamespaceMap makeNamespaceMap() {
        return new NamespaceDeltaMap();
    }

    @Override // net.p110sf.saxon.om.NamespaceMap
    public NamespaceDeltaMap put(String str, String str2) {
        return (NamespaceDeltaMap) super.put(str, str2);
    }

    @Override // net.p110sf.saxon.om.NamespaceMap
    public NamespaceDeltaMap remove(String str) {
        return (NamespaceDeltaMap) super.remove(str);
    }
}
