package net.p110sf.saxon.event;

import net.p110sf.saxon.expr.instruct.WherePopulated;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.EmptyAttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;

/* loaded from: classes11.dex */
public class WherePopulatedOutputter extends ProxyOutputter {

    /* renamed from: f */
    public int f99150f;

    /* renamed from: g */
    public boolean f99151g;

    /* renamed from: h */
    public NodeName f99152h;

    /* renamed from: i */
    public SchemaType f99153i;

    /* renamed from: j */
    public Location f99154j;

    /* renamed from: k */
    public int f99155k;

    /* renamed from: l */
    public AttributeMap f99156l;

    /* renamed from: m */
    public NamespaceMap f99157m;

    public WherePopulatedOutputter(Outputter outputter) {
        super(outputter);
        this.f99150f = 0;
        this.f99151g = false;
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void append(Item item) throws XPathException {
        int i = this.f99150f;
        if (i == 0) {
            if (WherePopulated.isDeemedEmpty(item)) {
                return;
            }
            getNextOutputter().append(item);
            return;
        }
        if (i == 1 && this.f99151g) {
            if (item instanceof NodeInfo) {
                NodeInfo nodeInfo = (NodeInfo) item;
                int nodeKind = nodeInfo.getNodeKind();
                if (nodeKind == 2) {
                    attribute(NameOfNode.makeName(nodeInfo), (SimpleType) nodeInfo.getSchemaType(), nodeInfo.getStringValue(), Loc.NONE, 0);
                    return;
                }
                if (nodeKind != 3) {
                    if (nodeKind != 9) {
                        if (nodeKind == 13) {
                            namespace(nodeInfo.getLocalPart(), nodeInfo.getStringValue(), 0);
                            return;
                        }
                    } else if (nodeInfo.getNodeKind() == 9 && !nodeInfo.hasChildNodes()) {
                        return;
                    }
                } else if (nodeInfo.getNodeKind() == 3 && nodeInfo.getUnicodeStringValue().length() == 0) {
                    return;
                }
            }
            releaseStartTag();
            getNextOutputter().append(item);
            return;
        }
        super.append(item);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter
    public void attribute(NodeName nodeName, SimpleType simpleType, String str, Location location, int i) throws XPathException {
        int i2 = this.f99150f;
        if (i2 == 1) {
            this.f99156l = this.f99156l.put(new AttributeInfo(nodeName, simpleType, str.toString(), location, i));
        } else {
            if (i2 == 0 && str.length() == 0) {
                return;
            }
            super.attribute(nodeName, simpleType, str, location, i);
        }
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        int i2 = this.f99150f;
        if (i2 == 0) {
            if (unicodeString.isEmpty()) {
                return;
            }
            super.characters(unicodeString, location, i);
        } else if (i2 != 1) {
            super.characters(unicodeString, location, i);
        } else {
            if (unicodeString.isEmpty()) {
                return;
            }
            releaseStartTag();
            super.characters(unicodeString, location, i);
        }
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        int i2 = this.f99150f;
        if (i2 == 0) {
            if (unicodeString.isEmpty()) {
                return;
            }
            super.comment(unicodeString, location, i);
        } else if (i2 != 1) {
            super.comment(unicodeString, location, i);
        } else {
            if (unicodeString.isEmpty()) {
                return;
            }
            releaseStartTag();
            super.comment(unicodeString, location, i);
        }
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        int i = this.f99150f - 1;
        this.f99150f = i;
        if (i != 0) {
            super.endDocument();
        } else {
            if (this.f99151g) {
                return;
            }
            super.endDocument();
        }
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        int i = this.f99150f - 1;
        this.f99150f = i;
        if (i != 0) {
            super.endElement();
        } else if (!this.f99151g) {
            super.endElement();
        }
        this.f99151g = false;
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter
    public void namespace(String str, String str2, int i) throws XPathException {
        if (this.f99150f == 1) {
            this.f99157m = this.f99157m.put(str, str2);
        } else {
            super.namespace(str, str2, i);
        }
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        int i2 = this.f99150f;
        if (i2 == 0) {
            if (unicodeString.isEmpty()) {
                return;
            }
            super.processingInstruction(str, unicodeString, location, i);
        } else if (i2 != 1) {
            super.processingInstruction(str, unicodeString, location, i);
        } else {
            if (unicodeString.isEmpty()) {
                return;
            }
            releaseStartTag();
            super.processingInstruction(str, unicodeString, location, i);
        }
    }

    public void releaseStartTag() throws XPathException {
        if (this.f99150f < 1 || !this.f99151g) {
            return;
        }
        if (this.f99152h == null) {
            getNextOutputter().startDocument(this.f99155k);
        } else {
            getNextOutputter().startElement(this.f99152h, this.f99153i, this.f99156l, this.f99157m, this.f99154j, this.f99155k);
        }
        this.f99151g = false;
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        int i2 = this.f99150f;
        this.f99150f = i2 + 1;
        if (i2 != 0) {
            super.startDocument(i);
            return;
        }
        this.f99151g = true;
        this.f99152h = null;
        this.f99155k = i;
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter
    public void startElement(NodeName nodeName, SchemaType schemaType, Location location, int i) throws XPathException {
        releaseStartTag();
        int i2 = this.f99150f;
        this.f99150f = i2 + 1;
        if (i2 == 0) {
            this.f99151g = true;
            this.f99152h = nodeName;
            this.f99153i = schemaType;
            this.f99154j = location.saveLocation();
            this.f99155k = i;
            this.f99156l = EmptyAttributeMap.getInstance();
            this.f99157m = NamespaceMap.emptyMap();
            return;
        }
        super.startElement(nodeName, schemaType, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        releaseStartTag();
        int i2 = this.f99150f;
        this.f99150f = i2 + 1;
        if (i2 == 0) {
            this.f99151g = true;
            this.f99152h = nodeName;
            this.f99153i = schemaType;
            this.f99154j = location.saveLocation();
            this.f99155k = i;
            this.f99156l = attributeMap;
            this.f99157m = namespaceMap;
            return;
        }
        super.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        int i2 = this.f99150f;
        if (i2 == 0) {
            if (WherePopulated.isDeemedEmpty(item)) {
                return;
            }
            getNextOutputter().m62516b(item, location, i);
            return;
        }
        if (i2 == 1 && this.f99151g) {
            if (item instanceof NodeInfo) {
                NodeInfo nodeInfo = (NodeInfo) item;
                int nodeKind = nodeInfo.getNodeKind();
                if (nodeKind == 2) {
                    attribute(NameOfNode.makeName(nodeInfo), (SimpleType) nodeInfo.getSchemaType(), nodeInfo.getStringValue(), location, 0);
                    return;
                }
                if (nodeKind != 3) {
                    if (nodeKind != 9) {
                        if (nodeKind == 13) {
                            namespace(nodeInfo.getLocalPart(), nodeInfo.getStringValue(), 0);
                            return;
                        }
                    } else if (nodeInfo.getNodeKind() == 9 && !nodeInfo.hasChildNodes()) {
                        return;
                    }
                } else if (nodeInfo.getNodeKind() == 3 && nodeInfo.getUnicodeStringValue().length() == 0) {
                    return;
                }
            }
            releaseStartTag();
            getNextOutputter().m62516b(item, location, i);
            return;
        }
        super.m62516b(item, location, i);
    }
}
