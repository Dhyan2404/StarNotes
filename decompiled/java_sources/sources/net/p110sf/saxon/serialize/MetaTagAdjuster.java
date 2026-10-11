package net.p110sf.saxon.serialize;

import com.sunia.HTREnginev2.gon;
import java.util.Iterator;
import java.util.Properties;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.EmptyAttributeMap;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class MetaTagAdjuster extends ProxyReceiver {

    /* renamed from: e */
    public boolean f101575e;

    /* renamed from: f */
    public int f101576f;

    /* renamed from: g */
    public boolean f101577g;

    /* renamed from: h */
    public String f101578h;

    /* renamed from: i */
    public String f101579i;

    /* renamed from: j */
    public int f101580j;

    /* renamed from: k */
    public boolean f101581k;

    /* renamed from: l */
    public int f101582l;

    public MetaTagAdjuster(Receiver receiver) {
        super(receiver);
        this.f101575e = true;
        this.f101576f = -1;
        this.f101577g = false;
        this.f101580j = 0;
        this.f101581k = false;
        this.f101582l = 4;
    }

    /* renamed from: c */
    public final boolean m63844c(String str, String str2) {
        return this.f101581k ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    /* renamed from: d */
    public final boolean m63845d(NodeName nodeName, String str) {
        if (!this.f101581k) {
            return nodeName.getLocalPart().equalsIgnoreCase(str);
        }
        if (nodeName.getLocalPart().equals(str)) {
            return this.f101582l == 5 ? nodeName.hasURI("") || nodeName.hasURI("http://www.w3.org/1999/xhtml") : nodeName.hasURI("http://www.w3.org/1999/xhtml");
        }
        return false;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        if (this.f101577g) {
            this.f101577g = false;
            return;
        }
        int i = this.f101580j - 1;
        this.f101580j = i;
        if (this.f101576f == i + 1) {
            this.f101576f = -1;
        }
        this.nextReceiver.endElement();
    }

    public void setIsXHTML(boolean z) {
        this.f101581k = z;
    }

    public void setOutputProperties(Properties properties) {
        String property = properties.getProperty("encoding");
        this.f101578h = property;
        if (property == null) {
            this.f101578h = "UTF-8";
        }
        String property2 = properties.getProperty("media-type");
        this.f101579i = property2;
        if (property2 == null) {
            this.f101579i = "text/html";
        }
        String property3 = properties.getProperty(SaxonOutputKeys.HTML_VERSION);
        if (property3 == null && !this.f101581k) {
            property3 = properties.getProperty("version");
        }
        if (property3 == null || !property3.startsWith("5")) {
            return;
        }
        this.f101582l = 5;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        boolean z;
        if (this.f101576f == this.f101580j && m63845d(nodeName, "meta")) {
            Iterator<AttributeInfo> it2 = attributeMap.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = false;
                    break;
                }
                AttributeInfo next = it2.next();
                if (m63844c(next.getNodeName().getLocalPart(), "http-equiv") && Whitespace.trim(next.getValue()).equalsIgnoreCase("Content-Type")) {
                    z = true;
                    break;
                }
            }
            this.f101577g = z;
            if (z) {
                return;
            }
        }
        this.f101580j++;
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
        if (this.f101575e && m63845d(nodeName, gon.f71289o)) {
            FingerprintedQName fingerprintedQName = new FingerprintedQName(nodeName.getPrefix(), nodeName.getURI(), "meta");
            EmptyAttributeMap emptyAttributeMap = EmptyAttributeMap.getInstance();
            NoNamespaceName noNamespaceName = new NoNamespaceName("http-equiv");
            BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.UNTYPED_ATOMIC;
            this.nextReceiver.startElement(fingerprintedQName, Untyped.getInstance(), emptyAttributeMap.put(new AttributeInfo(noNamespaceName, builtInAtomicType, "Content-Type", Loc.NONE, 0)).put(new AttributeInfo(new NoNamespaceName("content"), builtInAtomicType, this.f101579i + "; charset=" + this.f101578h, Loc.NONE, 0)), namespaceMap, location, 0);
            this.f101576f = this.f101580j;
            this.f101575e = false;
            this.nextReceiver.endElement();
        }
    }
}
