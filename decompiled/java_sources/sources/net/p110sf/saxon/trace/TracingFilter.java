package net.p110sf.saxon.trace;

import com.bumptech.glide.load.engine.GlideException;
import java.io.PrintStream;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.SequenceReceiver;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class TracingFilter extends ProxyReceiver {

    /* renamed from: i */
    public static int f102209i;

    /* renamed from: e */
    public final int f102210e;

    /* renamed from: f */
    public String f102211f;

    /* renamed from: g */
    public PrintStream f102212g;

    /* renamed from: h */
    public final boolean f102213h;

    public TracingFilter(Receiver receiver) {
        super(receiver);
        this.f102211f = "";
        this.f102212g = System.err;
        this.f102213h = false;
        int i = f102209i;
        f102209i = i + 1;
        this.f102210e = i;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        this.f102212g.println("RCVR " + this.f102210e + this.f102211f + " APPEND " + item.getClass().getName());
        Receiver receiver = this.nextReceiver;
        if (receiver instanceof SequenceReceiver) {
            receiver.m62516b(item, location, i);
        } else {
            super.m62516b(item, location, i);
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        PrintStream printStream = this.f102212g;
        StringBuilder sb = new StringBuilder();
        sb.append("RCVR ");
        sb.append(this.f102210e);
        sb.append(this.f102211f);
        sb.append(" CHARACTERS ");
        sb.append(Whitespace.isAllWhite(unicodeString) ? "(whitespace)" : "");
        printStream.println(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        String obj = unicodeString.toString();
        sb2.append(obj);
        sb2.append(":");
        for (int i2 = 0; i2 < obj.length(); i2++) {
            sb2.append(obj.charAt(i2));
        }
        this.f102212g.println("    \"" + ((Object) sb2) + '\"');
        this.nextReceiver.characters(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        this.f102212g.println("RCVR " + this.f102210e + this.f102211f + " CLOSE");
        this.nextReceiver.close();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f102212g.println("RCVR " + this.f102210e + this.f102211f + " COMMENT");
        this.nextReceiver.comment(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        this.f102212g.println("RCVR " + this.f102210e + this.f102211f + " END DOCUMENT");
        this.nextReceiver.endDocument();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        if (this.f102211f.isEmpty()) {
            throw new XPathException("RCVR " + this.f102210e + " Unmatched end tag");
        }
        this.f102211f = this.f102211f.substring(2);
        this.f102212g.println("RCVR " + this.f102210e + this.f102211f + " END ELEMENT");
        this.nextReceiver.endElement();
    }

    public int getId() {
        return this.f102210e;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        this.f102212g.println("RCVR " + this.f102210e + this.f102211f + " OPEN");
        this.nextReceiver.open();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f102212g.println("RCVR " + this.f102210e + this.f102211f + " PROCESSING INSTRUCTION");
        this.nextReceiver.processingInstruction(str, unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        this.f102212g.println("RCVR " + this.f102210e + this.f102211f + " START DOCUMENT");
        this.nextReceiver.startDocument(i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.f102212g.println("RCVR " + this.f102210e + this.f102211f + " START ELEMENT " + nodeName.getDisplayName());
        StringBuilder sb = new StringBuilder();
        sb.append(this.f102211f);
        sb.append(GlideException.C1935a.f14609h);
        this.f102211f = sb.toString();
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }

    public TracingFilter(Receiver receiver, PrintStream printStream) {
        super(receiver);
        this.f102211f = "";
        this.f102213h = false;
        int i = f102209i;
        f102209i = i + 1;
        this.f102210e = i;
        this.f102212g = printStream;
    }
}
