package net.p110sf.saxon.resource;

import net.p110sf.saxon.lib.Resource;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class FailedResource implements Resource {

    /* renamed from: a */
    public final String f101286a;

    /* renamed from: b */
    public final XPathException f101287b;

    public FailedResource(String str, XPathException xPathException) {
        this.f101286a = str;
        this.f101287b = xPathException;
    }

    @Override // net.p110sf.saxon.lib.Resource
    public String getContentType() {
        return null;
    }

    public XPathException getError() {
        return this.f101287b;
    }

    @Override // net.p110sf.saxon.lib.Resource
    public Item getItem() throws XPathException {
        throw this.f101287b;
    }

    @Override // net.p110sf.saxon.lib.Resource
    public String getResourceURI() {
        return this.f101286a;
    }
}
