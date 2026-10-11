package net.p110sf.saxon.event;

import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;

/* loaded from: classes11.dex */
public class SinkOutputter extends Outputter {
    @Override // net.p110sf.saxon.event.Outputter
    public void attribute(NodeName nodeName, SimpleType simpleType, String str, Location location, int i) throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void namespace(String str, String str2, int i) throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void startElement(NodeName nodeName, SchemaType schemaType, Location location, int i) throws XPathException {
    }
}
