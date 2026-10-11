package net.p110sf.saxon.lib;

import java.util.function.Function;
import javax.xml.transform.Source;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class ResourceResolverDelegate implements ResourceResolver {

    /* renamed from: e */
    public final Function<ResourceRequest, Source> f100542e;

    public ResourceResolverDelegate(Function<ResourceRequest, Source> function) {
        this.f100542e = function;
    }

    @Override // net.p110sf.saxon.lib.ResourceResolver
    public Source resolve(ResourceRequest resourceRequest) throws XPathException {
        try {
            return this.f100542e.apply(resourceRequest);
        } catch (UncheckedXPathException e) {
            throw e.getXPathException();
        }
    }
}
