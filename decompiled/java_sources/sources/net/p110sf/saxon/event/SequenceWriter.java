package net.p110sf.saxon.event;

import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.TreeModel;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.linked.LinkedTreeBuilder;
import net.p110sf.saxon.tree.util.Orphan;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public abstract class SequenceWriter extends SequenceReceiver {

    /* renamed from: e */
    public TreeModel f99102e;

    /* renamed from: f */
    public Builder f99103f;

    /* renamed from: g */
    public int f99104g;

    public SequenceWriter(PipelineConfiguration pipelineConfiguration) {
        super(pipelineConfiguration);
        this.f99102e = null;
        this.f99103f = null;
        this.f99104g = 0;
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        if (item != null) {
            if (this.f99104g != 0) {
                decompose(item, location, i);
            } else {
                write(item);
                this.previousAtomic = false;
            }
        }
    }

    /* renamed from: c */
    public final void m62517c(boolean z) throws XPathException {
        PipelineConfiguration pipelineConfiguration = getPipelineConfiguration();
        TreeModel treeModel = this.f99102e;
        if (treeModel != null) {
            this.f99103f = treeModel.makeBuilder(pipelineConfiguration);
        } else if (pipelineConfiguration.getController() == null) {
            this.f99103f = getConfiguration().getParseOptions().getModel().makeBuilder(pipelineConfiguration);
        } else if (!z) {
            this.f99103f = pipelineConfiguration.getController().makeBuilder();
        } else if (pipelineConfiguration.getController().getModel().isMutable()) {
            this.f99103f = pipelineConfiguration.getController().makeBuilder();
        } else {
            this.f99103f = new LinkedTreeBuilder(pipelineConfiguration);
        }
        this.f99103f.setPipelineConfiguration(pipelineConfiguration);
        this.f99103f.setSystemId(this.systemId);
        this.f99103f.setBaseURI(this.systemId);
        this.f99103f.setTiming(false);
        this.f99103f.setUseEventLocation(false);
        this.f99103f.open();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f99104g == 0) {
            Orphan orphan = new Orphan(getConfiguration());
            orphan.setNodeKind((short) 3);
            orphan.setStringValue(unicodeString.tidy());
            write(orphan);
        } else if (!unicodeString.isEmpty()) {
            this.f99103f.characters(unicodeString, location, i);
        }
        this.previousAtomic = false;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        this.previousAtomic = false;
        Builder builder = this.f99103f;
        if (builder != null) {
            builder.close();
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f99104g == 0) {
            Orphan orphan = new Orphan(getConfiguration());
            orphan.setNodeKind((short) 8);
            orphan.setStringValue(unicodeString.tidy());
            write(orphan);
        } else {
            this.f99103f.comment(unicodeString, location, i);
        }
        this.previousAtomic = false;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        int i = this.f99104g - 1;
        this.f99104g = i;
        if (i == 0) {
            this.f99103f.endDocument();
            m62516b(this.f99103f.getCurrentRoot(), Loc.NONE, 524288);
            this.f99103f = null;
            this.systemId = null;
        }
        this.previousAtomic = false;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f99103f.endElement();
        int i = this.f99104g - 1;
        this.f99104g = i;
        if (i == 0) {
            this.f99103f.close();
            m62516b(this.f99103f.getCurrentRoot(), Loc.NONE, 524288);
            this.f99103f = null;
            this.systemId = null;
        }
        this.previousAtomic = false;
    }

    public TreeModel getTreeModel() {
        return this.f99102e;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f99104g == 0) {
            Orphan orphan = new Orphan(getConfiguration());
            orphan.setNodeName(new NoNamespaceName(str));
            orphan.setNodeKind((short) 7);
            orphan.setStringValue(unicodeString.tidy());
            write(orphan);
        } else {
            this.f99103f.processingInstruction(str, unicodeString, location, i);
        }
        this.previousAtomic = false;
    }

    public void setTreeModel(TreeModel treeModel) {
        this.f99102e = treeModel;
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) throws XPathException {
        Builder builder = this.f99103f;
        if (builder != null) {
            builder.setUnparsedEntity(str, str2, str3);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        if (this.f99103f == null) {
            m62517c(ReceiverOption.contains(i, 32768));
        }
        int i2 = this.f99104g;
        this.f99104g = i2 + 1;
        if (i2 == 0) {
            this.f99103f.startDocument(i);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        if (this.f99103f == null) {
            m62517c(ReceiverOption.contains(i, 32768));
        }
        this.f99103f.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
        this.f99104g++;
        this.previousAtomic = false;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        Builder builder = this.f99103f;
        return builder == null || builder.usesTypeAnnotations();
    }

    public abstract void write(Item item) throws XPathException;
}
