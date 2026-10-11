package net.p110sf.saxon.om;

import java.util.concurrent.ConcurrentHashMap;
import net.p110sf.saxon.lib.NamespaceConstant;

/* loaded from: classes11.dex */
public final class NamePool {
    public static final int FP_MASK = 1048575;
    public static final int USER_DEFINED_MASK = 1047552;

    /* renamed from: e */
    public static final int f100823e = 1048575;

    /* renamed from: a */
    public final ConcurrentHashMap<StructuredQName, Integer> f100824a = new ConcurrentHashMap<>(1000);

    /* renamed from: b */
    public final ConcurrentHashMap<Integer, StructuredQName> f100825b = new ConcurrentHashMap<>(1000);

    /* renamed from: c */
    public final AtomicCounter f100826c = new AtomicCounter(1024);

    /* renamed from: d */
    public final ConcurrentHashMap<String, String> f100827d = new ConcurrentHashMap<>();

    /* loaded from: classes11.dex */
    public static class NamePoolLimitException extends RuntimeException {
        public NamePoolLimitException(String str) {
            super(str);
        }
    }

    /* renamed from: a */
    public static boolean m63390a(Integer num) {
        return num == null;
    }

    public static boolean isPrefixed(int i) {
        return (i & 1072693248) != 0;
    }

    public int allocateClarkName(String str) {
        String str2;
        if (str.charAt(0) == '{') {
            int indexOf = str.indexOf(125);
            if (indexOf < 0) {
                throw new IllegalArgumentException("No closing '}' in Clark name");
            }
            str2 = str.substring(1, indexOf);
            if (indexOf == str.length()) {
                throw new IllegalArgumentException("Missing local part in Clark name");
            }
            str = str.substring(indexOf + 1);
        } else {
            str2 = "";
        }
        return allocateFingerprint(str2, str);
    }

    public synchronized int allocateFingerprint(String str, String str2) {
        int fingerprint;
        if ((NamespaceConstant.isReserved(str) || NamespaceConstant.SAXON.equals(str)) && (fingerprint = StandardNames.getFingerprint(str, str2)) != -1) {
            return fingerprint;
        }
        StructuredQName structuredQName = new StructuredQName("", str, str2);
        int intValue = this.f100824a.getOrDefault(structuredQName, -1).intValue();
        if (intValue >= 0) {
            return intValue;
        }
        long andIncrement = this.f100826c.getAndIncrement();
        if (andIncrement > 1048575) {
            throw new NamePoolLimitException("Too many distinct names in NamePool");
        }
        int i = (int) andIncrement;
        if (!m63390a(this.f100824a.putIfAbsent(structuredQName, Integer.valueOf(i)))) {
            return intValue;
        }
        this.f100825b.put(Integer.valueOf(i), structuredQName);
        return i;
    }

    public String getClarkName(int i) {
        return getUnprefixedQName(i).getClarkName();
    }

    public String getDisplayName(int i) {
        return getStructuredQName(i).getDisplayName();
    }

    public String getEQName(int i) {
        return getUnprefixedQName(i).getEQName();
    }

    public int getFingerprint(String str, String str2) {
        int fingerprint;
        return ((NamespaceConstant.isReserved(str) || str.equals(NamespaceConstant.SAXON)) && (fingerprint = StandardNames.getFingerprint(str, str2)) != -1) ? fingerprint : this.f100824a.getOrDefault(new StructuredQName("", str, str2), -1).intValue();
    }

    public String getLocalName(int i) {
        return getUnprefixedQName(i).getLocalPart();
    }

    public StructuredQName getStructuredQName(int i) {
        return getUnprefixedQName(i);
    }

    public String getURI(int i) {
        int i2 = i & 1048575;
        return (1047552 & i2) == 0 ? StandardNames.getURI(i2) : getUnprefixedQName(i2).getURI();
    }

    public StructuredQName getUnprefixedQName(int i) {
        int i2 = i & 1048575;
        return (1047552 & i2) == 0 ? StandardNames.getUnprefixedQName(i2) : this.f100825b.get(Integer.valueOf(i2));
    }

    public void suggestPrefix(String str, String str2) {
        this.f100827d.put(str2, str);
    }

    public String suggestPrefixForURI(String str) {
        return str.equals("http://www.w3.org/XML/1998/namespace") ? "xml" : this.f100827d.get(str);
    }
}
