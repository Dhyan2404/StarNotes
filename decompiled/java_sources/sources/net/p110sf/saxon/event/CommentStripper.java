package net.p110sf.saxon.event;

import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.CompressedWhitespace;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class CommentStripper extends ProxyReceiver {

    /* renamed from: e */
    public CompressedWhitespace f98930e;

    /* renamed from: f */
    public final UnicodeBuilder f98931f;

    public CommentStripper(Receiver receiver) {
        super(receiver);
        this.f98930e = null;
        this.f98931f = new UnicodeBuilder();
    }

    /* renamed from: c */
    public final void m62483c() throws XPathException {
        if (this.f98931f.isEmpty()) {
            CompressedWhitespace compressedWhitespace = this.f98930e;
            if (compressedWhitespace != null) {
                this.nextReceiver.characters(compressedWhitespace, Loc.NONE, 0);
            }
        } else {
            this.nextReceiver.characters(this.f98931f.toUnicodeString(), Loc.NONE, 0);
        }
        this.f98930e = null;
        this.f98931f.clear();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (unicodeString instanceof CompressedWhitespace) {
            if (this.f98931f.isEmpty() && this.f98930e == null) {
                this.f98930e = (CompressedWhitespace) unicodeString;
                return;
            } else {
                this.f98931f.accept(((CompressedWhitespace) unicodeString).uncompress());
                return;
            }
        }
        CompressedWhitespace compressedWhitespace = this.f98930e;
        if (compressedWhitespace != null) {
            this.f98931f.accept(compressedWhitespace.uncompress());
            this.f98930e = null;
        }
        this.f98931f.accept(unicodeString);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) {
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        m62483c();
        this.nextReceiver.endElement();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) {
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        m62483c();
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }
}
