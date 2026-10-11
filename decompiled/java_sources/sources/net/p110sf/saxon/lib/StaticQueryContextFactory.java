package net.p110sf.saxon.lib;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.query.StaticQueryContext;

/* loaded from: classes11.dex */
public class StaticQueryContextFactory {
    public StaticQueryContext newStaticQueryContext(Configuration configuration, boolean z) {
        return new StaticQueryContext(configuration, z);
    }
}
