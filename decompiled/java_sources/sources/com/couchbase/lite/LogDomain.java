package com.couchbase.lite;

import java.util.Collections;
import java.util.EnumSet;
import java.util.Set;

/* loaded from: classes4.dex */
public enum LogDomain {
    DATABASE,
    QUERY,
    REPLICATOR,
    NETWORK,
    LISTENER;

    public static final Set<LogDomain> ALL = Collections.unmodifiableSet(EnumSet.allOf(LogDomain.class));

    @Deprecated
    public static final EnumSet<LogDomain> ALL_DOMAINS = EnumSet.allOf(LogDomain.class);
}
