package net.p110sf.saxon.resource;

import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.Resource;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.tree.jiter.MappingJavaIterator;

/* loaded from: classes11.dex */
public class ExplicitCollection extends AbstractResourceCollection {

    /* renamed from: a */
    public List<Resource> f101284a;

    /* renamed from: b */
    public SpaceStrippingRule f101285b;

    public ExplicitCollection(Configuration configuration, String str, List<Resource> list) {
        super(configuration);
        str.getClass();
        this.f101284a = list;
        this.collectionURI = str;
    }

    @Override // net.p110sf.saxon.lib.ResourceCollection
    public Iterator<String> getResourceURIs(XPathContext xPathContext) {
        return new MappingJavaIterator(this.f101284a.iterator(), new Function() { // from class: com.sunia.HTREnginev2.b2g
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String resourceURI;
                resourceURI = ((Resource) obj).getResourceURI();
                return resourceURI;
            }
        });
    }

    @Override // net.p110sf.saxon.lib.ResourceCollection
    public Iterator<? extends Resource> getResources(XPathContext xPathContext) {
        return this.f101284a.iterator();
    }

    @Override // net.p110sf.saxon.resource.AbstractResourceCollection
    public boolean stripWhitespace(SpaceStrippingRule spaceStrippingRule) {
        this.f101285b = spaceStrippingRule;
        return false;
    }
}
