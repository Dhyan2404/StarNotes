package org.xmlresolver;

import java.util.Iterator;

/* loaded from: classes16.dex */
public interface ResolverConfiguration {
    <T> T getFeature(ResolverFeature<T> resolverFeature);

    Iterator<ResolverFeature<?>> getFeatures();

    <T> void setFeature(ResolverFeature<T> resolverFeature, T t);
}
