package net.p110sf.saxon.tree.tiny;

import java.util.Iterator;
import java.util.function.Predicate;
import net.p110sf.saxon.event.CopyNamespaceSensitiveException;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.tiny.TinyElementImpl;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class TinyElementImpl extends TinyParentNodeImpl {
    public TinyElementImpl(TinyTree tinyTree, int i) {
        this.tree = tinyTree;
        this.nodeNr = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ boolean m64547d(NodeInfo nodeInfo) {
        return this.tree.isTopWithinEntity(((TinyElementImpl) nodeInfo).getNodeNumber());
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        return this.tree.getTypedValueOfElement(this);
    }

    /* renamed from: b */
    public final void m64548b(SimpleType simpleType, int i) throws XPathException {
        if (simpleType.isNamespaceSensitive()) {
            if (simpleType.isAtomicType()) {
                throw new CopyNamespaceSensitiveException("Cannot copy QName or NOTATION values without copying namespaces");
            }
            Iterator<AtomicValue> it2 = this.tree.getTypedValueOfAttribute(null, i).iterator();
            while (it2.hasNext()) {
                if (it2.next().getPrimitiveType().isNamespaceSensitive()) {
                    throw new CopyNamespaceSensitiveException("Cannot copy QName or NOTATION values without copying namespaces");
                }
            }
        }
    }

    /* renamed from: c */
    public final boolean m64549c(Receiver receiver) {
        return false;
    }

    public void checkNotNamespaceSensitiveElement(SchemaType schemaType, int i) throws XPathException {
        if ((schemaType instanceof SimpleType) && ((SimpleType) schemaType).isNamespaceSensitive()) {
            if (schemaType.isAtomicType()) {
                throw new CopyNamespaceSensitiveException("Cannot copy QName or NOTATION values without copying namespaces");
            }
            Iterator<AtomicValue> it2 = this.tree.getTypedValueOfElement(i).iterator();
            while (it2.hasNext()) {
                if (it2.next().getPrimitiveType().isNamespaceSensitive()) {
                    throw new CopyNamespaceSensitiveException("Cannot copy QName or NOTATION values without copying namespaces");
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x02e4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x02d4 A[ADDED_TO_REGION, EDGE_INSN: B:44:0x02d4->B:36:0x02d4 BREAK  A[LOOP:0: B:7:0x003e->B:34:0x02c3], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01f1  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x02de -> B:34:0x02d8). Please report as a decompilation issue!!! */
    @Override // net.p110sf.saxon.om.NodeInfo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void copy(net.p110sf.saxon.event.Receiver r31, int r32, net.p110sf.saxon.s9api.Location r33) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 741
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.tree.tiny.TinyElementImpl.copy(net.sf.saxon.event.Receiver, int, net.sf.saxon.s9api.Location):void");
    }

    /* renamed from: e */
    public final int m64550e() {
        int i = this.tree.f102595n[this.nodeNr];
        while (true) {
            int i2 = this.nodeNr;
            if (i >= i2) {
                return i2 - i;
            }
            if (i < 0) {
                return this.tree.f102593l - i2;
            }
            i = this.tree.f102595n[i];
        }
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public NamespaceMap getAllNamespaces() {
        TinyTree tinyTree = this.tree;
        return tinyTree.f102607v0[tinyTree.f102597p[this.nodeNr]];
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public String getAttributeValue(String str, String str2) {
        int i = this.tree.f102596o[this.nodeNr];
        if (i < 0) {
            return null;
        }
        NamePool namePool = getNamePool();
        while (true) {
            TinyTree tinyTree = this.tree;
            if (i >= tinyTree.f102587O || tinyTree.f102588Q[i] != this.nodeNr) {
                break;
            }
            StructuredQName unprefixedQName = namePool.getUnprefixedQName(tinyTree.f102589Z[i]);
            if (unprefixedQName.getLocalPart().equals(str2) && unprefixedQName.hasURI(str)) {
                return this.tree.f102592k0[i].toString();
            }
            i++;
        }
        return null;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public String getBaseURI() {
        String str;
        if (this.tree.m64566o() != null) {
            return this.tree.m64566o();
        }
        synchronized (this.tree) {
            TinyTree tinyTree = this.tree;
            if (tinyTree.f102584F0 == null) {
                tinyTree.f102584F0 = new IntHashMap<>();
            }
            str = this.tree.f102584F0.get(this.nodeNr);
            if (str == null) {
                str = Navigator.getBaseURI(this, new Predicate() { // from class: com.sunia.HTREnginev2.sin
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean m64547d;
                        m64547d = TinyElementImpl.this.m64547d((NodeInfo) obj);
                        return m64547d;
                    }
                });
                this.tree.f102584F0.put(this.nodeNr, str);
            }
        }
        return str;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public NamespaceBinding[] getDeclaredNamespaces(NamespaceBinding[] namespaceBindingArr) {
        TinyNodeImpl parent = getParent();
        return (parent == null || parent.getNodeKind() != 1) ? getAllNamespaces().getNamespaceBindings() : getAllNamespaces().getDifferences(parent.getAllNamespaces(), false);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public final int getNodeKind() {
        return 1;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public SchemaType getSchemaType() {
        return this.tree.getSchemaType(this.nodeNr);
    }

    public String getURIForPrefix(String str, boolean z) {
        if (!z && (str == null || str.isEmpty())) {
            return "";
        }
        TinyTree tinyTree = this.tree;
        return tinyTree.f102607v0[tinyTree.f102597p[this.nodeNr]].getURIForPrefix(str, z);
    }

    public boolean hasUniformNamespaces() {
        return false;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public boolean isId() {
        return this.tree.isIdElement(this.nodeNr);
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public boolean isIdref() {
        return this.tree.isIdrefElement(this.nodeNr);
    }

    public String getAttributeValue(int i) {
        int i2 = this.tree.f102596o[this.nodeNr];
        if (i2 < 0) {
            return null;
        }
        while (true) {
            TinyTree tinyTree = this.tree;
            if (i2 >= tinyTree.f102587O || tinyTree.f102588Q[i2] != this.nodeNr) {
                break;
            }
            if (i == (tinyTree.f102589Z[i2] & 1048575)) {
                return tinyTree.f102592k0[i2].toString();
            }
            i2++;
        }
        return null;
    }
}
