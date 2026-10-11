package net.p110sf.saxon.event;

import net.p110sf.saxon.om.AttributeInfo;
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
public class CheckSumFilter extends ProxyReceiver {
    public static final String SIGMA = "Σ";

    /* renamed from: j */
    public static final boolean f98923j = false;

    /* renamed from: e */
    public int f98924e;

    /* renamed from: f */
    public int f98925f;

    /* renamed from: g */
    public boolean f98926g;

    /* renamed from: h */
    public boolean f98927h;

    /* renamed from: i */
    public boolean f98928i;

    public CheckSumFilter(Receiver receiver) {
        super(receiver);
        this.f98924e = 0;
        this.f98925f = 0;
        this.f98926g = false;
        this.f98927h = false;
        this.f98928i = false;
    }

    /* renamed from: e */
    public static void m62480e(String str) {
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        int i2 = this.f98924e;
        String obj = item.toString();
        int i3 = this.f98925f;
        this.f98925f = i3 + 1;
        this.f98924e = i2 ^ m62481c(obj, i3);
        m62480e("After append: " + Integer.toHexString(this.f98924e));
        super.m62516b(item, location, i);
    }

    /* renamed from: c */
    public final int m62481c(String str, int i) {
        int i2 = i << 8;
        for (int i3 = 0; i3 < str.length(); i3++) {
            i2 = (i2 << 1) + str.charAt(i3);
        }
        return i2;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (!Whitespace.isAllWhite(unicodeString)) {
            int i2 = this.f98924e;
            String obj = unicodeString.toString();
            int i3 = this.f98925f;
            this.f98925f = i3 + 1;
            this.f98924e = i2 ^ m62481c(obj, i3);
            m62480e("After characters " + unicodeString + ": " + Integer.toHexString(this.f98924e));
        }
        super.characters(unicodeString, location, i);
    }

    /* renamed from: d */
    public final int m62482d(NodeName nodeName, int i) {
        return m62481c(nodeName.getURI(), i) ^ m62481c(nodeName.getLocalPart(), i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f98924e ^= 1;
        m62480e("After endElement: " + this.f98924e);
        super.endElement();
    }

    public int getChecksum() {
        return this.f98924e;
    }

    public boolean isChecksumCorrect() {
        return this.f98927h || "skip".equals(System.getProperty("saxon-checksum"));
    }

    public boolean isChecksumFound() {
        return this.f98928i;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (str.equals(SIGMA)) {
            boolean z = true;
            this.f98928i = true;
            if (this.f98926g) {
                try {
                    if (((int) Long.parseLong("0" + unicodeString, 16)) != this.f98924e) {
                        z = false;
                    }
                    this.f98927h = z;
                } catch (NumberFormatException unused) {
                    this.f98927h = false;
                }
            }
        }
        super.processingInstruction(str, unicodeString, location, i);
    }

    public void setCheckExistingChecksum(boolean z) {
        this.f98926g = z;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        m62480e("CHECKSUM - START DOC");
        super.startDocument(i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        int i2 = this.f98924e;
        int i3 = this.f98925f;
        this.f98925f = i3 + 1;
        this.f98924e = i2 ^ m62482d(nodeName, i3);
        m62480e("After startElement " + nodeName.getDisplayName() + ": " + this.f98924e);
        this.f98927h = false;
        for (AttributeInfo attributeInfo : attributeMap) {
            int m62482d = this.f98924e ^ m62482d(attributeInfo.getNodeName(), this.f98925f);
            this.f98924e = m62482d;
            this.f98924e = m62481c(attributeInfo.getValue(), this.f98925f) ^ m62482d;
        }
        super.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }
}
