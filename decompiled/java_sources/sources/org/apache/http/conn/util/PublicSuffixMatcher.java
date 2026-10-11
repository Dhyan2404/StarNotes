package org.apache.http.conn.util;

import java.net.IDN;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.SAFE)
/* loaded from: classes12.dex */
public final class PublicSuffixMatcher {

    /* renamed from: a */
    public final Map<String, DomainType> f110342a;

    /* renamed from: b */
    public final Map<String, DomainType> f110343b;

    public PublicSuffixMatcher(Collection<String> collection, Collection<String> collection2) {
        this(DomainType.UNKNOWN, collection, collection2);
    }

    /* renamed from: a */
    public static DomainType m68357a(Map<String, DomainType> map, String str) {
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    /* renamed from: b */
    public static boolean m68358b(DomainType domainType, DomainType domainType2) {
        return domainType != null && (domainType2 == null || domainType.equals(domainType2));
    }

    public String getDomainRoot(String str) {
        return getDomainRoot(str, null);
    }

    public boolean matches(String str) {
        return matches(str, null);
    }

    public PublicSuffixMatcher(DomainType domainType, Collection<String> collection, Collection<String> collection2) {
        Args.notNull(domainType, "Domain type");
        Args.notNull(collection, "Domain suffix rules");
        this.f110342a = new ConcurrentHashMap(collection.size());
        Iterator<String> it2 = collection.iterator();
        while (it2.hasNext()) {
            this.f110342a.put(it2.next(), domainType);
        }
        this.f110343b = new ConcurrentHashMap();
        if (collection2 != null) {
            Iterator<String> it3 = collection2.iterator();
            while (it3.hasNext()) {
                this.f110343b.put(it3.next(), domainType);
            }
        }
    }

    public String getDomainRoot(String str, DomainType domainType) {
        if (str == null || str.startsWith(".")) {
            return null;
        }
        String normalize = DnsUtils.normalize(str);
        String str2 = null;
        while (normalize != null) {
            String unicode = IDN.toUnicode(normalize);
            if (m68358b(m68357a(this.f110343b, unicode), domainType)) {
                return normalize;
            }
            DomainType m68357a = m68357a(this.f110342a, unicode);
            if (m68358b(m68357a, domainType)) {
                return m68357a == DomainType.PRIVATE ? normalize : str2;
            }
            int indexOf = normalize.indexOf(46);
            String substring = indexOf != -1 ? normalize.substring(indexOf + 1) : null;
            if (substring != null) {
                DomainType m68357a2 = m68357a(this.f110342a, "*." + IDN.toUnicode(substring));
                if (m68358b(m68357a2, domainType)) {
                    return m68357a2 == DomainType.PRIVATE ? normalize : str2;
                }
            }
            str2 = normalize;
            normalize = substring;
        }
        if (domainType == null || domainType == DomainType.UNKNOWN) {
            return str2;
        }
        return null;
    }

    public boolean matches(String str, DomainType domainType) {
        if (str == null) {
            return false;
        }
        if (str.startsWith(".")) {
            str = str.substring(1);
        }
        return getDomainRoot(str, domainType) == null;
    }

    public PublicSuffixMatcher(Collection<PublicSuffixList> collection) {
        Args.notNull(collection, "Domain suffix lists");
        this.f110342a = new ConcurrentHashMap();
        this.f110343b = new ConcurrentHashMap();
        for (PublicSuffixList publicSuffixList : collection) {
            DomainType type = publicSuffixList.getType();
            Iterator<String> it2 = publicSuffixList.getRules().iterator();
            while (it2.hasNext()) {
                this.f110342a.put(it2.next(), type);
            }
            List<String> exceptions = publicSuffixList.getExceptions();
            if (exceptions != null) {
                Iterator<String> it3 = exceptions.iterator();
                while (it3.hasNext()) {
                    this.f110343b.put(it3.next(), type);
                }
            }
        }
    }
}
