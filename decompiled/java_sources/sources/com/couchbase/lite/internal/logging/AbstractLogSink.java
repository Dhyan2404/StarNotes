package com.couchbase.lite.internal.logging;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.LogLevel;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes4.dex */
public abstract class AbstractLogSink {
    private final Set<LogDomain> domains;
    private final LogLevel level;

    public AbstractLogSink(@NonNull LogLevel logLevel, @NonNull Set<LogDomain> set) {
        this.level = (LogLevel) Preconditions.assertNotNull(logLevel, "level");
        this.domains = (Set) Preconditions.assertNotNull(set, "domains");
    }

    @NonNull
    public static Set<LogDomain> aggregateDomains(@NonNull LogDomain logDomain, @Nullable LogDomain[] logDomainArr) {
        HashSet hashSet = new HashSet();
        hashSet.add((LogDomain) Preconditions.assertNotNull(logDomain, ClientCookie.DOMAIN_ATTR));
        if (logDomainArr != null) {
            hashSet.addAll(Arrays.asList(logDomainArr));
        }
        return hashSet;
    }

    @NonNull
    public static Set<LogDomain> defaultDomains(@Nullable Collection<LogDomain> collection) {
        return collection == null ? LogDomain.ALL : Collections.unmodifiableSet(new HashSet(collection));
    }

    @NonNull
    public static String listDomains(@NonNull Set<LogDomain> set) {
        StringBuilder sb = new StringBuilder(IteratorUtils.f104923a);
        boolean z = true;
        for (LogDomain logDomain : set) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(logDomain);
            z = false;
        }
        sb.append(']');
        return sb.toString();
    }

    @NonNull
    public final Set<LogDomain> getDomains() {
        return new HashSet(this.domains);
    }

    @NonNull
    public final LogLevel getLevel() {
        return this.level;
    }

    public boolean isLegacy() {
        return false;
    }

    public final void log(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull String str) {
        if (this.level.compareTo(logLevel) > 0 || !this.domains.contains(logDomain)) {
            return;
        }
        writeLog(logLevel, logDomain, str);
    }

    public final boolean similarDomains(@NonNull AbstractLogSink abstractLogSink) {
        return this.domains.size() == abstractLogSink.domains.size() && this.domains.containsAll(abstractLogSink.domains);
    }

    public final boolean similarLevels(@NonNull AbstractLogSink abstractLogSink) {
        return this.level == abstractLogSink.level;
    }

    public abstract void writeLog(@NonNull LogLevel logLevel, @NonNull LogDomain logDomain, @NonNull String str);
}
