package net.p110sf.saxon.resource;

import java.util.Map;
import net.p110sf.saxon.expr.CallableDelegate;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.CallableFunction;
import net.p110sf.saxon.lib.Resource;
import net.p110sf.saxon.ma.map.DictionaryMap;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.resource.MetadataResource;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class MetadataResource implements Resource {

    /* renamed from: a */
    public final Map<String, GroundedValue> f101304a;

    /* renamed from: b */
    public final String f101305b;

    /* renamed from: c */
    public final Resource f101306c;

    /* renamed from: d */
    public final XPathContext f101307d;

    public MetadataResource(String str, Resource resource, Map<String, GroundedValue> map, XPathContext xPathContext) {
        this.f101305b = str;
        this.f101306c = resource;
        this.f101304a = map;
        this.f101307d = xPathContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ Sequence m63640b(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return this.f101306c.getItem();
    }

    @Override // net.p110sf.saxon.lib.Resource
    public String getContentType() {
        return this.f101306c.getContentType();
    }

    @Override // net.p110sf.saxon.lib.Resource
    public Item getItem() {
        DictionaryMap dictionaryMap = new DictionaryMap();
        for (Map.Entry<String, GroundedValue> entry : this.f101304a.entrySet()) {
            dictionaryMap.initialPut(entry.getKey(), entry.getValue());
        }
        dictionaryMap.initialPut("name", StringValue.makeStringValue(this.f101305b));
        dictionaryMap.initialPut("fetch", new CallableFunction(0, new CallableDelegate(new CallableDelegate.Lambda() { // from class: com.sunia.HTREnginev2.onj
            @Override // net.sf.saxon.expr.CallableDelegate.Lambda
            public final Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) {
                Sequence m63640b;
                m63640b = MetadataResource.this.m63640b(xPathContext, sequenceArr);
                return m63640b;
            }
        }), new SpecificFunctionType(new SequenceType[0], SequenceType.SINGLE_ITEM)));
        return dictionaryMap;
    }

    @Override // net.p110sf.saxon.lib.Resource
    public String getResourceURI() {
        return this.f101305b;
    }
}
