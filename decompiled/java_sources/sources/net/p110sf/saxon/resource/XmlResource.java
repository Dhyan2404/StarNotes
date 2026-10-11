package net.p110sf.saxon.resource;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.Resource;
import net.p110sf.saxon.lib.ResourceFactory;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.resource.AbstractResourceCollection;
import net.p110sf.saxon.resource.XmlResource;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XmlResource implements Resource {
    public static final ResourceFactory FACTORY = new ResourceFactory() { // from class: com.sunia.HTREnginev2.two
        @Override // net.p110sf.saxon.lib.ResourceFactory
        public final Resource makeResource(XPathContext xPathContext, AbstractResourceCollection.InputDetails inputDetails) {
            Resource m63647b;
            m63647b = XmlResource.m63647b(xPathContext, inputDetails);
            return m63647b;
        }
    };

    /* renamed from: a */
    public NodeInfo f101315a;

    /* renamed from: b */
    public final XPathContext f101316b;

    /* renamed from: c */
    public final Configuration f101317c;

    /* renamed from: d */
    public AbstractResourceCollection.InputDetails f101318d;

    public XmlResource(NodeInfo nodeInfo) {
        Configuration configuration = nodeInfo.getConfiguration();
        this.f101317c = configuration;
        this.f101316b = configuration.getConversionContext();
        this.f101315a = nodeInfo;
    }

    /* renamed from: b */
    public static /* synthetic */ Resource m63647b(XPathContext xPathContext, AbstractResourceCollection.InputDetails inputDetails) throws XPathException {
        return new XmlResource(xPathContext, inputDetails);
    }

    @Override // net.p110sf.saxon.lib.Resource
    public String getContentType() {
        return "application/xml";
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0059, code lost:
    
        if (r2.getInputStream() != null) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005b, code lost:
    
        r2.getInputStream().close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a1, code lost:
    
        if (r2.getInputStream() != null) goto L55;
     */
    @Override // net.p110sf.saxon.lib.Resource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.om.Item getItem() throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.resource.XmlResource.getItem():net.sf.saxon.om.Item");
    }

    @Override // net.p110sf.saxon.lib.Resource
    public String getResourceURI() {
        NodeInfo nodeInfo = this.f101315a;
        return nodeInfo == null ? this.f101318d.resourceUri : nodeInfo.getSystemId();
    }

    public XmlResource(XPathContext xPathContext, NodeInfo nodeInfo) {
        this.f101316b = xPathContext;
        Configuration configuration = xPathContext.getConfiguration();
        this.f101317c = configuration;
        this.f101315a = nodeInfo;
        if (configuration != nodeInfo.getConfiguration()) {
            throw new IllegalArgumentException("Supplied node belongs to wrong configuration");
        }
    }

    public XmlResource(XPathContext xPathContext, AbstractResourceCollection.InputDetails inputDetails) {
        this.f101317c = xPathContext.getConfiguration();
        this.f101316b = xPathContext;
        this.f101318d = inputDetails;
    }
}
