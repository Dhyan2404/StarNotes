package net.p110sf.saxon.serialize;

import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.serialize.charcode.XMLCharacterData;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class XML10ContentChecker extends ProxyReceiver {
    public XML10ContentChecker(Receiver receiver) {
        super(receiver);
    }

    /* renamed from: c */
    public final void m63864c(UnicodeString unicodeString, Location location) throws XPathException {
        IntIterator codePoints = unicodeString.codePoints();
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            if (!XMLCharacterData.isValid10(next)) {
                XPathException xPathException = new XPathException("The result tree contains a character not allowed by XML 1.0 (hex " + Integer.toHexString(next) + ')');
                xPathException.setErrorCode("SERE0006");
                xPathException.setLocator(location);
                throw xPathException;
            }
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        m63864c(unicodeString, location);
        this.nextReceiver.characters(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        m63864c(unicodeString, location);
        this.nextReceiver.comment(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        m63864c(unicodeString, location);
        this.nextReceiver.processingInstruction(str, unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        for (AttributeInfo attributeInfo : attributeMap) {
            m63864c(StringView.m63901of(attributeInfo.getValue()), attributeInfo.getLocation());
        }
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }
}
