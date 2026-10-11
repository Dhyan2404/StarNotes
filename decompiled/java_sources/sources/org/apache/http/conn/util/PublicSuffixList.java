package org.apache.http.conn.util;

import java.util.Collections;
import java.util.List;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public final class PublicSuffixList {

    /* renamed from: a */
    public final DomainType f110339a;

    /* renamed from: b */
    public final List<String> f110340b;

    /* renamed from: c */
    public final List<String> f110341c;

    public PublicSuffixList(DomainType domainType, List<String> list, List<String> list2) {
        this.f110339a = (DomainType) Args.notNull(domainType, "Domain type");
        this.f110340b = Collections.unmodifiableList((List) Args.notNull(list, "Domain suffix rules"));
        this.f110341c = Collections.unmodifiableList(list2 == null ? Collections.emptyList() : list2);
    }

    public List<String> getExceptions() {
        return this.f110341c;
    }

    public List<String> getRules() {
        return this.f110340b;
    }

    public DomainType getType() {
        return this.f110339a;
    }

    public PublicSuffixList(List<String> list, List<String> list2) {
        this(DomainType.UNKNOWN, list, list2);
    }
}
