package net.p110sf.saxon.lib;

import java.util.Objects;
import javax.xml.transform.Source;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class ChainedResourceResolver implements ResourceResolver {

    /* renamed from: e */
    public final ResourceResolver f100485e;

    /* renamed from: f */
    public final ResourceResolver f100486f;

    public ChainedResourceResolver(ResourceResolver resourceResolver, ResourceResolver resourceResolver2) {
        Objects.requireNonNull(resourceResolver);
        Objects.requireNonNull(resourceResolver2);
        this.f100485e = resourceResolver;
        this.f100486f = resourceResolver2;
    }

    @Override // net.p110sf.saxon.lib.ResourceResolver
    public Source resolve(ResourceRequest resourceRequest) throws XPathException {
        Source resolve = this.f100485e.resolve(resourceRequest);
        return resolve == null ? this.f100486f.resolve(resourceRequest) : resolve;
    }
}
