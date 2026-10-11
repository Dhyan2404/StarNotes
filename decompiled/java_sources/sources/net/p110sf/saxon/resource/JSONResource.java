package net.p110sf.saxon.resource;

import java.util.HashMap;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.Resource;
import net.p110sf.saxon.lib.ResourceFactory;
import net.p110sf.saxon.ma.json.ParseJsonFn;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.resource.AbstractResourceCollection;
import net.p110sf.saxon.resource.JSONResource;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class JSONResource implements Resource {
    public static final ResourceFactory FACTORY = new ResourceFactory() { // from class: com.sunia.HTREnginev2.fri
        @Override // net.p110sf.saxon.lib.ResourceFactory
        public final Resource makeResource(XPathContext xPathContext, AbstractResourceCollection.InputDetails inputDetails) {
            Resource m63632b;
            m63632b = JSONResource.m63632b(xPathContext, inputDetails);
            return m63632b;
        }
    };

    /* renamed from: a */
    public final String f101288a;

    /* renamed from: b */
    public String f101289b;

    /* renamed from: c */
    public Item f101290c;

    /* renamed from: d */
    public final XPathContext f101291d;

    /* renamed from: e */
    public AbstractResourceCollection.InputDetails f101292e;

    public JSONResource(XPathContext xPathContext, AbstractResourceCollection.InputDetails inputDetails) {
        this.f101288a = inputDetails.resourceUri;
        this.f101291d = xPathContext;
        if (inputDetails.encoding == null) {
            inputDetails.encoding = "UTF-8";
        }
        this.f101292e = inputDetails;
    }

    /* renamed from: b */
    public static /* synthetic */ Resource m63632b(XPathContext xPathContext, AbstractResourceCollection.InputDetails inputDetails) throws XPathException {
        return new JSONResource(xPathContext, inputDetails);
    }

    @Override // net.p110sf.saxon.lib.Resource
    public String getContentType() {
        return "application/json";
    }

    @Override // net.p110sf.saxon.lib.Resource
    public Item getItem() throws XPathException {
        Item item = this.f101290c;
        if (item != null) {
            return item;
        }
        if (this.f101289b == null) {
            String obtainCharacterContent = this.f101292e.obtainCharacterContent();
            this.f101289b = obtainCharacterContent;
            if (obtainCharacterContent == null) {
                return null;
            }
        }
        HashMap hashMap = new HashMap();
        BooleanValue booleanValue = BooleanValue.FALSE;
        hashMap.put("liberal", booleanValue);
        hashMap.put("duplicates", StringValue.bmp("use-first"));
        hashMap.put("escape", booleanValue);
        Item parse = ParseJsonFn.parse(this.f101289b, hashMap, this.f101291d);
        this.f101290c = parse;
        return parse;
    }

    @Override // net.p110sf.saxon.lib.Resource
    public String getResourceURI() {
        return this.f101288a;
    }
}
