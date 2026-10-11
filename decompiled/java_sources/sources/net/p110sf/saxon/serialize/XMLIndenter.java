package net.p110sf.saxon.serialize;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;
import net.p110sf.saxon.event.Event;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.IndentWhitespace;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyType;
import net.p110sf.saxon.type.ComplexType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XMLIndenter extends ProxyReceiver {

    /* renamed from: e */
    public int f101635e;

    /* renamed from: f */
    public boolean f101636f;

    /* renamed from: g */
    public boolean f101637g;

    /* renamed from: h */
    public boolean f101638h;

    /* renamed from: i */
    public Event.Text f101639i;

    /* renamed from: j */
    public int f101640j;

    /* renamed from: k */
    public int f101641k;

    /* renamed from: l */
    public int f101642l;

    /* renamed from: m */
    public Set<NodeName> f101643m;

    /* renamed from: n */
    public final XMLEmitter f101644n;

    public XMLIndenter(XMLEmitter xMLEmitter) {
        super(xMLEmitter);
        this.f101635e = 0;
        this.f101636f = false;
        this.f101637g = false;
        this.f101638h = true;
        this.f101639i = null;
        this.f101640j = 0;
        this.f101641k = 0;
        this.f101642l = -1;
        this.f101643m = null;
        this.f101644n = xMLEmitter;
    }

    /* renamed from: c */
    public final void m63874c() throws XPathException {
        Event.Text text = this.f101639i;
        if (text != null) {
            text.replay(this.nextReceiver);
            this.f101639i = null;
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f101642l < 0 && Whitespace.isAllWhite(unicodeString)) {
            this.f101639i = new Event.Text(unicodeString, location, i);
            return;
        }
        m63874c();
        IntIterator codePoints = unicodeString.codePoints();
        while (codePoints.hasNext()) {
            if (codePoints.next() == 10) {
                this.f101636f = false;
                this.f101640j++;
                this.f101641k = 0;
            }
            this.f101641k++;
        }
        this.f101644n.characters(unicodeString, location, i);
        this.f101637g = false;
        this.f101638h = false;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f101638h) {
            m63875d(false);
        } else {
            m63874c();
        }
        this.f101644n.comment(unicodeString, location, i);
    }

    /* renamed from: d */
    public final void m63875d(boolean z) throws XPathException {
        if (this.f101642l >= 0) {
            m63874c();
            return;
        }
        this.f101639i = null;
        int indentation = this.f101635e * getIndentation();
        int i = this.f101640j;
        if (i <= 0 || (indentation = indentation - this.f101641k) > 0) {
            this.f101644n.characters(IndentWhitespace.m63883of(i == 0 ? z ? 2 : 1 : 0, indentation), Loc.NONE, 4);
            this.f101636f = false;
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        if (this.f101638h) {
            this.f101644n.characters(BMPString.m63877of("\n"), Loc.NONE, 0);
        }
        super.endDocument();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f101635e--;
        if (!this.f101638h || this.f101636f) {
            m63874c();
        } else {
            m63875d(false);
        }
        this.f101644n.endElement();
        this.f101636f = false;
        this.f101638h = true;
        this.f101637g = false;
        this.f101640j = 0;
        if (this.f101635e == this.f101642l - 1) {
            this.f101642l = -1;
        }
    }

    public int getIndentation() {
        return 3;
    }

    public int getLineLength() {
        return 80;
    }

    public boolean isDoubleSpaced(NodeName nodeName) {
        return false;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        this.f101644n.open();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f101638h) {
            m63875d(false);
        } else {
            m63874c();
        }
        this.f101644n.processingInstruction(str, unicodeString, location, i);
    }

    public void setOutputProperties(Properties properties) {
        String property = properties.getProperty("omit-xml-declaration");
        this.f101638h = (property != null && "yes".equals(Whitespace.trim(property)) && properties.getProperty("doctype-system") == null) ? false : true;
        String property2 = properties.getProperty(SaxonOutputKeys.SUPPRESS_INDENTATION);
        if (property2 == null) {
            property2 = properties.getProperty("{http://saxon.sf.net/}suppress-indentation");
        }
        if (property2 != null) {
            this.f101643m = new HashSet(8);
            StringTokenizer stringTokenizer = new StringTokenizer(property2, " \t\r\n");
            while (stringTokenizer.hasMoreTokens()) {
                this.f101643m.add(FingerprintedQName.fromEQName(stringTokenizer.nextToken()));
            }
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        String value;
        if (this.f101637g || this.f101638h) {
            m63875d(isDoubleSpaced(nodeName));
        } else {
            m63874c();
        }
        this.f101635e++;
        if (this.f101642l < 0 && (value = attributeMap.getValue("http://www.w3.org/XML/1998/namespace", "space")) != null && value.trim().equals("preserve")) {
            this.f101642l = this.f101635e;
        }
        this.f101636f = true;
        this.f101637g = true;
        int i2 = 0;
        this.f101638h = false;
        this.f101640j = 0;
        Set<NodeName> set = this.f101643m;
        if (set != null && this.f101642l == -1 && set.contains(nodeName)) {
            this.f101642l = this.f101635e;
        }
        if (schemaType != AnyType.getInstance() && schemaType != Untyped.getInstance() && this.f101642l < 0 && schemaType.isComplexType() && ((ComplexType) schemaType).isMixedContent()) {
            this.f101642l = this.f101635e;
        }
        if (this.f101642l < 0) {
            Iterator<NamespaceBinding> it2 = namespaceMap.iterator();
            while (it2.hasNext()) {
                for (NamespaceBinding namespaceBinding : it2.next()) {
                    String prefix = namespaceBinding.getPrefix();
                    i2 = prefix.isEmpty() ? i2 + namespaceBinding.getURI().length() + 9 : i2 + prefix.length() + 10 + namespaceBinding.getURI().length();
                }
            }
            for (AttributeInfo attributeInfo : attributeMap) {
                NodeName nodeName2 = attributeInfo.getNodeName();
                String prefix2 = nodeName2.getPrefix();
                int length = nodeName2.getLocalPart().length() + attributeInfo.getValue().length();
                int i3 = 4;
                int i4 = length + 4;
                if (!prefix2.isEmpty()) {
                    i3 = prefix2.length() + 5;
                }
                i2 += i4 + i3;
            }
            if (i2 > getLineLength()) {
                this.f101644n.setIndentForNextAttribute(((this.f101635e - 1) * getIndentation()) + 3);
            }
        }
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return true;
    }
}
