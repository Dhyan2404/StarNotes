package net.p110sf.saxon.serialize;

import java.util.HashSet;
import java.util.Properties;
import java.util.Set;
import java.util.Stack;
import java.util.StringTokenizer;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.serialize.charcode.CharacterSet;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class CDATAFilter extends ProxyReceiver {

    /* renamed from: e */
    public UnicodeBuilder f101489e;

    /* renamed from: f */
    public final Stack<NodeName> f101490f;

    /* renamed from: g */
    public Set<NodeName> f101491g;

    /* renamed from: h */
    public CharacterSet f101492h;

    public CDATAFilter(Receiver receiver) {
        super(receiver);
        this.f101489e = new UnicodeBuilder();
        this.f101490f = new Stack<>();
    }

    /* renamed from: c */
    public final void m63815c() throws XPathException {
        int i;
        long j;
        int length = (int) this.f101489e.length();
        if (length == 0) {
            return;
        }
        int i2 = 0;
        if (this.f101490f.isEmpty() ? false : isCDATA(this.f101490f.peek())) {
            if (getNextReceiver() instanceof UnicodeNormalizer) {
                UnicodeString normalize = ((UnicodeNormalizer) getNextReceiver()).normalize(this.f101489e.toUnicodeString(), true);
                UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
                this.f101489e = unicodeBuilder;
                unicodeBuilder.accept(normalize);
                length = (int) this.f101489e.length();
            }
            UnicodeString unicodeString = this.f101489e.toUnicodeString();
            loop0: while (true) {
                i = i2;
                while (i2 < length) {
                    long j2 = i2;
                    int codePointAt = unicodeString.codePointAt(j2);
                    if (codePointAt == 0 || !this.f101492h.inCharset(codePointAt)) {
                        m63816d(unicodeString.substring(i, j2));
                        do {
                            long j3 = i2;
                            i2++;
                            j = i2;
                            this.nextReceiver.characters(unicodeString.substring(j3, j), Loc.NONE, 2);
                            if (i2 >= length) {
                                break;
                            }
                        } while (!this.f101492h.inCharset(unicodeString.codePointAt(j)));
                    } else {
                        i2++;
                    }
                }
                break loop0;
            }
            m63816d(unicodeString.substring(i, length));
        } else {
            this.nextReceiver.characters(this.f101489e.toUnicodeString(), Loc.NONE, 0);
        }
        this.f101489e.clear();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (!ReceiverOption.contains(i, 1)) {
            this.f101489e.append(unicodeString.toString());
        } else {
            m63815c();
            this.nextReceiver.characters(unicodeString, location, i);
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        m63815c();
        this.nextReceiver.comment(unicodeString, location, i);
    }

    /* renamed from: d */
    public final void m63816d(UnicodeString unicodeString) throws XPathException {
        int i;
        UnicodeString tidy = unicodeString.tidy();
        if (tidy.isEmpty()) {
            return;
        }
        long length = tidy.length();
        Loc loc = Loc.NONE;
        int i2 = 3;
        this.nextReceiver.characters(BMPString.m63877of("<![CDATA["), loc, 3);
        long j = 0;
        long j2 = 0;
        while (j < length - 2) {
            if (tidy.codePointAt(j) == 93) {
                long j3 = j2;
                if (tidy.codePointAt(j + 1) == 93) {
                    long j4 = 2 + j;
                    if (tidy.codePointAt(j4) == 62) {
                        i = 3;
                        this.nextReceiver.characters(tidy.substring(j3, j4), loc, 3);
                        this.nextReceiver.characters(BMPString.m63877of("]]><![CDATA["), loc, 3);
                        j2 = j4;
                        j++;
                        i2 = i;
                    }
                }
                j2 = j3;
                i = 3;
            } else {
                i = i2;
            }
            if (tidy.codePointAt(j) == 0) {
                this.nextReceiver.characters(tidy.substring(j2, j), loc, i);
                j2 = j + 1;
            }
            j++;
            i2 = i;
        }
        int i3 = i2;
        this.nextReceiver.characters(tidy.substring(j2, length), loc, i3);
        this.nextReceiver.characters(BMPString.m63877of("]]>"), loc, i3);
    }

    /* renamed from: e */
    public final void m63817e(Properties properties) {
        boolean equals = "html".equals(properties.getProperty("method"));
        boolean z = equals && "5.0".equals(properties.getProperty("version"));
        boolean z2 = equals && !z;
        String property = properties.getProperty("cdata-section-elements");
        if (property == null) {
            this.f101491g = new HashSet(0);
            return;
        }
        this.f101491g = new HashSet(10);
        StringTokenizer stringTokenizer = new StringTokenizer(property, " \t\n\r", false);
        while (stringTokenizer.hasMoreTokens()) {
            StructuredQName fromClarkName = StructuredQName.fromClarkName(stringTokenizer.nextToken());
            String uri = fromClarkName.getURI();
            if (!equals || ((z2 && !uri.equals("")) || (z && !uri.equals("") && !uri.equals("http://www.w3.org/1999/xhtml")))) {
                this.f101491g.add(new FingerprintedQName("", fromClarkName.getURI(), fromClarkName.getLocalPart()));
            }
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        m63815c();
        this.f101490f.pop();
        this.nextReceiver.endElement();
    }

    public boolean isCDATA(NodeName nodeName) {
        return this.f101491g.contains(nodeName);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        m63815c();
        this.nextReceiver.processingInstruction(str, unicodeString, location, i);
    }

    public void setOutputProperties(Properties properties) throws XPathException {
        m63817e(properties);
        this.f101492h = getConfiguration().getCharacterSetFactory().getCharacterSet(properties);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        m63815c();
        this.f101490f.push(nodeName);
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }
}
