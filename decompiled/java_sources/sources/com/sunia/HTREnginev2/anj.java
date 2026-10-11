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
import net.p110sf.saxon.om.TreeModel;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.MessageListener;
import net.p110sf.saxon.s9api.XdmNode;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class anj extends SequenceWriter {

    /* renamed from: h */
    public final MessageListener f64885h;

    /* renamed from: i */
    public boolean f64886i;

    /* renamed from: j */
    public Location f64887j;

    /* renamed from: k */
    public String f64888k;

    public anj(MessageListener messageListener, PipelineConfiguration pipelineConfiguration) {
        super(pipelineConfiguration);
        setTreeModel(TreeModel.LINKED_TREE);
        this.f64885h = messageListener;
    }

    @Override // net.p110sf.saxon.event.SequenceWriter, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        if (this.f64887j == null) {
            this.f64887j = location;
        }
        super.m62516b(item, location, i);
    }

    @Override // net.p110sf.saxon.event.SequenceWriter, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f64887j == null) {
            this.f64887j = location;
        }
        super.characters(unicodeString, location, i);
    }

    /* renamed from: d */
    public MessageListener m53054d() {
        return this.f64885h;
    }

    @Override // net.p110sf.saxon.event.SequenceWriter, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (str.equals("error-code") && this.f64888k == null) {
            this.f64888k = unicodeString.toString();
        } else {
            super.processingInstruction(str, unicodeString, location, i);
        }
    }

    @Override // net.p110sf.saxon.event.SequenceWriter, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        this.f64886i = ReceiverOption.contains(i, 16384);
        this.f64887j = null;
        this.f64888k = null;
        super.startDocument(i);
    }

    @Override // net.p110sf.saxon.event.SequenceWriter, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        if (this.f64887j == null) {
            this.f64887j = location;
        }
        super.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }

    @Override // net.p110sf.saxon.event.SequenceWriter
    public void write(Item item) throws XPathException {
        Location location = this.f64887j;
        this.f64885h.message(new XdmNode((NodeInfo) item), this.f64886i, location == null ? Loc.NONE : location.saveLocation());
    }
}
