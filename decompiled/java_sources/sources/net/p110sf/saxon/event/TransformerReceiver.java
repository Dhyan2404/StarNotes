package net.p110sf.saxon.event;

import javax.xml.transform.TransformerException;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;

/* loaded from: classes11.dex */
public class TransformerReceiver extends ProxyReceiver {

    /* renamed from: e */
    public final XsltController f99133e;

    /* renamed from: f */
    public Builder f99134f;

    /* renamed from: g */
    public Receiver f99135g;

    public TransformerReceiver(XsltController xsltController) {
        super(xsltController.makeBuilder());
        this.f99133e = xsltController;
        Builder builder = (Builder) getNextReceiver();
        this.f99134f = builder;
        builder.setUseEventLocation(false);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        if (this.f99134f == null) {
            return;
        }
        this.nextReceiver.close();
        NodeInfo currentRoot = this.f99134f.getCurrentRoot();
        this.f99134f.reset();
        this.f99134f = null;
        if (currentRoot == null) {
            throw new XPathException("No source document has been built");
        }
        currentRoot.getTreeInfo().setSpaceStrippingRule(this.f99133e.getSpaceStrippingRule());
        if (this.f99135g == null) {
            throw new XPathException("No output destination has been supplied");
        }
        try {
            this.f99133e.setGlobalContextItem(currentRoot);
            this.f99133e.applyTemplates(currentRoot, this.f99135g);
        } catch (TransformerException e) {
            throw XPathException.makeXPathException(e);
        }
    }

    public Controller getController() {
        return this.f99133e;
    }

    public Receiver getDestination() {
        return this.f99135g;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        this.f99134f.setSystemId(this.systemId);
        Receiver makeStripper = this.f99133e.makeStripper(this.f99134f);
        if (this.f99133e.isStylesheetStrippingTypeAnnotations()) {
            makeStripper = this.f99133e.getConfiguration().getAnnotationStripper(makeStripper);
        }
        setUnderlyingReceiver(makeStripper);
        this.nextReceiver.open();
    }

    public void setDestination(Receiver receiver) {
        this.f99135g = receiver;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, javax.xml.transform.Result
    public void setSystemId(String str) {
        super.setSystemId(str);
        this.f99133e.setBaseOutputURI(str);
    }
}
