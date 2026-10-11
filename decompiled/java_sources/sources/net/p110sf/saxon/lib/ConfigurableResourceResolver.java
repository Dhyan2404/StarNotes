package net.p110sf.saxon.lib;

import org.xmlresolver.ResolverFeature;

/* loaded from: classes11.dex */
public interface ConfigurableResourceResolver {
    <T> T getFeature(ResolverFeature<T> resolverFeature);

    <T> void setFeature(ResolverFeature<T> resolverFeature, T t);
}
