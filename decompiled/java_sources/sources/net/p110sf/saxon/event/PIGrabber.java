package net.p110sf.saxon.event;

import com.caverock.androidsvg.SVGParser;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.sax.SAXSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.lib.DirectResourceResolver;
import net.p110sf.saxon.lib.ResourceRequest;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.ProcInstParser;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class PIGrabber extends ProxyReceiver {

    /* renamed from: e */
    public Configuration f99041e;

    /* renamed from: f */
    public String f99042f;

    /* renamed from: g */
    public String f99043g;

    /* renamed from: h */
    public String f99044h;

    /* renamed from: i */
    public ResourceResolver f99045i;

    /* renamed from: j */
    public final List<String> f99046j;

    /* renamed from: k */
    public boolean f99047k;

    public PIGrabber(Receiver receiver) {
        super(receiver);
        this.f99041e = null;
        this.f99042f = null;
        this.f99043g = null;
        this.f99044h = null;
        this.f99045i = null;
        this.f99046j = new ArrayList();
        this.f99047k = false;
    }

    public Source[] getAssociatedStylesheets() throws TransformerException {
        if (this.f99046j.isEmpty()) {
            return null;
        }
        Source[] sourceArr = new Source[this.f99046j.size()];
        ResourceRequest resourceRequest = new ResourceRequest();
        resourceRequest.baseUri = this.f99044h;
        resourceRequest.nature = "http://www.w3.org/1999/XSL/Transform";
        resourceRequest.purpose = "transformation";
        for (int i = 0; i < this.f99046j.size(); i++) {
            String str = this.f99046j.get(i);
            resourceRequest.relativeUri = str;
            try {
                resourceRequest.uri = ResolveURI.makeAbsolute(str, this.f99044h).toString();
                Source resolve = resourceRequest.resolve(this.f99045i, this.f99041e.getResourceResolver(), new DirectResourceResolver(this.f99041e));
                if (resolve instanceof SAXSource) {
                    ((SAXSource) resolve).setXMLReader(this.f99041e.getStyleParser());
                }
                sourceArr[i] = resolve;
            } catch (URISyntaxException e) {
                throw XPathException.makeXPathException(e);
            }
        }
        return sourceArr;
    }

    public boolean isTerminated() {
        return this.f99047k;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        String str2;
        if (str.equals(SVGParser.f16042n)) {
            String obj = unicodeString.toString();
            String pseudoAttribute = ProcInstParser.getPseudoAttribute(obj, SVGParser.f16046r);
            String pseudoAttribute2 = ProcInstParser.getPseudoAttribute(obj, "title");
            String pseudoAttribute3 = ProcInstParser.getPseudoAttribute(obj, "type");
            String pseudoAttribute4 = ProcInstParser.getPseudoAttribute(obj, SVGParser.f16044p);
            if (pseudoAttribute3 == null) {
                return;
            }
            if (pseudoAttribute3.equals("text/xml") || pseudoAttribute3.equals("application/xml") || pseudoAttribute3.equals("text/xsl") || pseudoAttribute3.equals("applicaton/xsl") || pseudoAttribute3.equals("application/xml+xslt")) {
                if (this.f99042f == null || pseudoAttribute == null || getConfiguration().getMediaQueryEvaluator().compare(pseudoAttribute, this.f99042f) == 0) {
                    if ((pseudoAttribute2 == null && (pseudoAttribute4 == null || pseudoAttribute4.equals(SVGParser.f16048t))) || (str2 = this.f99043g) == null || (pseudoAttribute2 != null && pseudoAttribute2.equals(str2))) {
                        String pseudoAttribute5 = ProcInstParser.getPseudoAttribute(obj, "href");
                        if (pseudoAttribute5 == null) {
                            throw new XPathException("xml-stylesheet PI has no href attribute");
                        }
                        if (pseudoAttribute2 == null && (pseudoAttribute4 == null || pseudoAttribute4.equals(SVGParser.f16048t))) {
                            this.f99046j.add(0, pseudoAttribute5);
                        } else {
                            this.f99046j.add(pseudoAttribute5);
                        }
                    }
                }
            }
        }
    }

    public void setBaseURI(String str) {
        this.f99044h = str;
    }

    public void setCriteria(String str, String str2) {
        this.f99042f = str;
        this.f99043g = str2;
    }

    public void setFactory(Configuration configuration) {
        this.f99041e = configuration;
    }

    public void setResourceResolver(ResourceResolver resourceResolver) {
        this.f99045i = resourceResolver;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.f99047k = true;
        throw new XPathException("#start#");
    }
}
