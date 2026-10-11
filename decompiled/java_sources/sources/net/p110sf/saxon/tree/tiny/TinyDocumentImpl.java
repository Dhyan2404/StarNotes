package net.p110sf.saxon.tree.tiny;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.CopyOptions;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.NodeListIterator;
import net.p110sf.saxon.type.AnyType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public final class TinyDocumentImpl extends TinyParentNodeImpl {

    /* renamed from: e */
    public IntHashMap<List<NodeInfo>> f102573e;

    /* renamed from: f */
    public String f102574f;

    public TinyDocumentImpl(TinyTree tinyTree) {
        this.tree = tinyTree;
        this.nodeNr = 0;
    }

    /* renamed from: a */
    public AxisIterator m64544a(int i) {
        if (this.f102573e == null) {
            this.f102573e = new IntHashMap<>(20);
        }
        List<NodeInfo> list = this.f102573e.get(i);
        if (list == null) {
            list = m64545b(i);
            this.f102573e.put(i, list);
        }
        return new NodeListIterator(list);
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() {
        return StringValue.makeUntypedAtomic(getUnicodeStringValue());
    }

    /* renamed from: b */
    public List<NodeInfo> m64545b(int i) {
        int numberOfNodes = this.tree.getNumberOfNodes() / 20;
        if (numberOfNodes > 100) {
            numberOfNodes = 100;
        }
        ArrayList arrayList = new ArrayList(numberOfNodes >= 20 ? numberOfNodes : 20);
        int i2 = this.nodeNr + 1;
        while (true) {
            try {
                TinyTree tinyTree = this.tree;
                if (tinyTree.f102594m[i2] == 0) {
                    break;
                }
                if ((tinyTree.nodeKind[i2] & 15) == 1 && (tinyTree.f102598q[i2] & 1048575) == i) {
                    arrayList.add(tinyTree.getNode(i2));
                }
                i2++;
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
        }
        arrayList.trimToSize();
        return arrayList;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        receiver.startDocument(CopyOptions.getStartDocumentProperties(i));
        HashMap<String, String[]> hashMap = this.tree.f102582D0;
        if (hashMap != null) {
            for (Map.Entry<String, String[]> entry : hashMap.entrySet()) {
                String key = entry.getKey();
                String[] value = entry.getValue();
                receiver.setUnparsedEntity(key, value[0], value[1]);
            }
        }
        Iterator<? extends NodeInfo> it2 = children().iterator();
        while (it2.hasNext()) {
            it2.next().copy(receiver, i, location);
        }
        receiver.endDocument();
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public void generateId(StringBuilder sb) {
        sb.append('d');
        sb.append(getTreeInfo().getDocumentNumber());
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public String getBaseURI() {
        String str = this.f102574f;
        return str != null ? str : getSystemId();
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public Configuration getConfiguration() {
        return this.tree.getConfiguration();
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return 0;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public final int getNodeKind() {
        return 9;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.tree.util.SteppingNode
    public TinyNodeImpl getParent() {
        return null;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public NodeInfo getRoot() {
        return this;
    }

    public NodeInfo getRootNode() {
        return this;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public SchemaType getSchemaType() {
        NodeInfo next = iterateAxis(3, NodeKindTest.ELEMENT).next();
        return (next == null || next.getSchemaType() == Untyped.getInstance()) ? Untyped.getInstance() : AnyType.getInstance();
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.tree.getSystemId(this.nodeNr);
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl
    public TinyTree getTree() {
        return this.tree;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public int hashCode() {
        return (int) this.tree.getDocumentNumber();
    }

    public boolean isTyped() {
        return this.tree.getTypeArray() != null;
    }

    public void setBaseURI(String str) {
        this.f102574f = str;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo, javax.xml.transform.Source
    public void setSystemId(String str) {
        this.tree.m64572v(this.nodeNr, str);
    }

    public void showSize() {
        this.tree.showSize();
    }
}
