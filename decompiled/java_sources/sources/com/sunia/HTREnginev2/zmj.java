package com.sunia.HTREnginev2;

import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.event.SequenceWriter;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.om.TreeModel;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.MessageListener2;
import net.p110sf.saxon.s9api.QName;
import net.p110sf.saxon.s9api.XdmNode;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class zmj extends SequenceWriter {

    /* renamed from: h */
    public final MessageListener2 f91961h;

    /* renamed from: i */
    public boolean f91962i;

    /* renamed from: j */
    public Location f91963j;

    /* renamed from: k */
    public StructuredQName f91964k;

    public zmj(MessageListener2 messageListener2, PipelineConfiguration pipelineConfiguration) {
        super(pipelineConfiguration);
        setTreeModel(TreeModel.LINKED_TREE);
        this.f91961h = messageListener2;
    }

    @Override // net.p110sf.saxon.event.SequenceWriter, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        if (this.f91963j == null) {
            this.f91963j = location;
        }
        super.m62516b(item, location, i);
    }

    @Override // net.p110sf.saxon.event.SequenceWriter, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f91963j == null) {
            this.f91963j = location;
        }
        super.characters(unicodeString, location, i);
    }

    /* renamed from: d */
    public MessageListener2 m58731d() {
        return this.f91961h;
    }

    @Override // net.p110sf.saxon.event.SequenceWriter, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (str.equals("error-code") && this.f91964k == null) {
            this.f91964k = StructuredQName.fromEQName(unicodeString.toString());
        } else {
            super.processingInstruction(str, unicodeString, location, i);
        }
    }

    @Override // net.p110sf.saxon.event.SequenceWriter, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        this.f91962i = ReceiverOption.contains(i, 16384);
        this.f91963j = null;
        this.f91964k = null;
        super.startDocument(i);
    }

    @Override // net.p110sf.saxon.event.SequenceWriter, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        if (this.f91963j == null) {
            this.f91963j = location;
        }
        super.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }

    @Override // net.p110sf.saxon.event.SequenceWriter
    public void write(Item item) throws XPathException {
        Location location = this.f91963j;
        this.f91961h.message(new XdmNode((NodeInfo) item), new QName(this.f91964k), this.f91962i, location == null ? Loc.NONE : location.saveLocation());
    }
}
