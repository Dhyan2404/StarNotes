package net.p110sf.saxon.tree.tiny;

import com.onyx.engine.sdk.archive.ArchiveFormatCode;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes11.dex */
public final class TinyAttributeImpl extends TinyNodeImpl {
    public TinyAttributeImpl(TinyTree tinyTree, int i) {
        this.tree = tinyTree;
        this.nodeNr = i;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        return this.tree.getTypedValueOfAttribute(this, this.nodeNr);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) {
        throw new UnsupportedOperationException("copy() applied to attribute node");
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public void generateId(StringBuilder sb) {
        getParent().generateId(sb);
        sb.append("a");
        sb.append(this.tree.f102589Z[this.nodeNr]);
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        return getParent().getColumnNumber();
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public String getDisplayName() {
        int i = this.tree.f102589Z[this.nodeNr];
        if (i < 0) {
            return "";
        }
        if (!NamePool.isPrefixed(i)) {
            return getLocalPart();
        }
        return getPrefix() + ":" + getLocalPart();
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public int getFingerprint() {
        return this.tree.f102589Z[this.nodeNr] & 1048575;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return getParent().getLineNumber();
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public String getLocalPart() {
        return this.tree.getNamePool().getLocalName(this.tree.f102589Z[this.nodeNr]);
    }

    public int getNameCode() {
        return this.tree.f102589Z[this.nodeNr];
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int getNodeKind() {
        return 2;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public String getPrefix() {
        int i = this.tree.f102589Z[this.nodeNr];
        return !NamePool.isPrefixed(i) ? "" : this.tree.f102579A0.getPrefix(i >> 20);
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public NodeInfo getRoot() {
        TinyNodeImpl parent = getParent();
        return parent == null ? this : parent.getRoot();
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public SchemaType getSchemaType() {
        TinyTree tinyTree = this.tree;
        return tinyTree.f102603t0 == null ? BuiltInAtomicType.UNTYPED_ATOMIC : tinyTree.m64565n(this.nodeNr);
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl
    public long getSequenceNumber() {
        long sequenceNumber = getParent().getSequenceNumber() + 32768;
        int i = this.nodeNr;
        TinyTree tinyTree = this.tree;
        return sequenceNumber + (i - tinyTree.f102596o[tinyTree.f102588Q[i]]);
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        if (getParent() == null) {
            return null;
        }
        return getParent().getSystemId();
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public String getURI() {
        int i = this.tree.f102589Z[this.nodeNr];
        return !NamePool.isPrefixed(i) ? "" : this.tree.getNamePool().getURI(i);
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return StringView.m63901of(this.tree.f102592k0[this.nodeNr]).tidy();
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public int hashCode() {
        return (this.nodeNr ^ (((int) (this.tree.getDocumentNumber() & Precision.f109931a)) << 20)) ^ ArchiveFormatCode.ARCHIVE_FORMAT_7ZIP;
    }

    public boolean isDefaultedAttribute() {
        return this.tree.isDefaultedAttribute(this.nodeNr);
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public boolean isId() {
        return this.tree.isIdAttribute(this.nodeNr);
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public boolean isIdref() {
        return this.tree.isIdrefAttribute(this.nodeNr);
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public boolean isNilled() {
        return false;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo, javax.xml.transform.Source
    public void setSystemId(String str) {
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.tree.util.SteppingNode
    public TinyNodeImpl getParent() {
        TinyTree tinyTree = this.tree;
        return tinyTree.getNode(tinyTree.f102588Q[this.nodeNr]);
    }
}
