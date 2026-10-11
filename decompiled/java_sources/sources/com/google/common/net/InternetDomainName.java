package com.google.common.net;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Joiner;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.Immutable;
import com.google.thirdparty.publicsuffix.PublicSuffixPatterns;
import com.google.thirdparty.publicsuffix.PublicSuffixType;
import com.sunia.HTREnginev2.mnf;
import java.util.List;
import javax.annotation.CheckForNull;

@Immutable
@mnf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class InternetDomainName {

    /* renamed from: e */
    public static final CharMatcher f35014e = CharMatcher.anyOf(".。．｡");

    /* renamed from: f */
    public static final Splitter f35015f = Splitter.m25826on('.');

    /* renamed from: g */
    public static final Joiner f35016g = Joiner.m25798on('.');

    /* renamed from: h */
    public static final int f35017h = -1;

    /* renamed from: i */
    public static final int f35018i = 127;

    /* renamed from: j */
    public static final int f35019j = 253;

    /* renamed from: k */
    public static final int f35020k = 63;

    /* renamed from: l */
    public static final CharMatcher f35021l;

    /* renamed from: m */
    public static final CharMatcher f35022m;

    /* renamed from: n */
    public static final CharMatcher f35023n;

    /* renamed from: o */
    public static final CharMatcher f35024o;

    /* renamed from: a */
    public final String f35025a;

    /* renamed from: b */
    public final ImmutableList<String> f35026b;

    /* renamed from: c */
    public final int f35027c;

    /* renamed from: d */
    public final int f35028d;

    static {
        CharMatcher anyOf = CharMatcher.anyOf("-_");
        f35021l = anyOf;
        CharMatcher inRange = CharMatcher.inRange('0', '9');
        f35022m = inRange;
        CharMatcher mo25776or = CharMatcher.inRange('a', 'z').mo25776or(CharMatcher.inRange('A', 'Z'));
        f35023n = mo25776or;
        f35024o = inRange.mo25776or(mo25776or).mo25776or(anyOf);
    }

    public InternetDomainName(String str) {
        String lowerCase = Ascii.toLowerCase(f35014e.replaceFrom((CharSequence) str, '.'));
        lowerCase = lowerCase.endsWith(".") ? lowerCase.substring(0, lowerCase.length() - 1) : lowerCase;
        Preconditions.checkArgument(lowerCase.length() <= 253, "Domain name too long: '%s':", lowerCase);
        this.f35025a = lowerCase;
        ImmutableList<String> copyOf = ImmutableList.copyOf(f35015f.split(lowerCase));
        this.f35026b = copyOf;
        Preconditions.checkArgument(copyOf.size() <= 127, "Domain has too many parts: '%s'", lowerCase);
        Preconditions.checkArgument(m27325f(copyOf), "Not a valid domain name: '%s'", lowerCase);
        this.f35027c = m27327b(Optional.absent());
        this.f35028d = m27327b(Optional.m25808of(PublicSuffixType.REGISTRY));
    }

    /* renamed from: c */
    public static boolean m27322c(Optional<PublicSuffixType> optional, Optional<PublicSuffixType> optional2) {
        return optional.isPresent() ? optional.equals(optional2) : optional2.isPresent();
    }

    /* renamed from: d */
    public static boolean m27323d(Optional<PublicSuffixType> optional, String str) {
        List<String> splitToList = f35015f.limit(2).splitToList(str);
        return splitToList.size() == 2 && m27322c(optional, Optional.fromNullable(PublicSuffixPatterns.UNDER.get(splitToList.get(1))));
    }

    /* renamed from: e */
    public static boolean m27324e(String str, boolean z) {
        if (str.length() >= 1 && str.length() <= 63) {
            if (!f35024o.matchesAllOf(CharMatcher.ascii().retainFrom(str))) {
                return false;
            }
            CharMatcher charMatcher = f35021l;
            if (!charMatcher.matches(str.charAt(0)) && !charMatcher.matches(str.charAt(str.length() - 1))) {
                return (z && f35022m.matches(str.charAt(0))) ? false : true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public static boolean m27325f(List<String> list) {
        int size = list.size() - 1;
        if (!m27324e(list.get(size), true)) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!m27324e(list.get(i), false)) {
                return false;
            }
        }
        return true;
    }

    @CanIgnoreReturnValue
    public static InternetDomainName from(String str) {
        return new InternetDomainName((String) Preconditions.checkNotNull(str));
    }

    public static boolean isValid(String str) {
        try {
            from(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    /* renamed from: a */
    public final InternetDomainName m27326a(int i) {
        Joiner joiner = f35016g;
        ImmutableList<String> immutableList = this.f35026b;
        return from(joiner.join(immutableList.subList(i, immutableList.size())));
    }

    /* renamed from: b */
    public final int m27327b(Optional<PublicSuffixType> optional) {
        int size = this.f35026b.size();
        for (int i = 0; i < size; i++) {
            String join = f35016g.join(this.f35026b.subList(i, size));
            if (m27322c(optional, Optional.fromNullable(PublicSuffixPatterns.EXACT.get(join)))) {
                return i;
            }
            if (PublicSuffixPatterns.EXCLUDED.containsKey(join)) {
                return i + 1;
            }
            if (m27323d(optional, join)) {
                return i;
            }
        }
        return -1;
    }

    public InternetDomainName child(String str) {
        String str2 = (String) Preconditions.checkNotNull(str);
        String str3 = this.f35025a;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str3).length());
        sb.append(str2);
        sb.append(".");
        sb.append(str3);
        return from(sb.toString());
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof InternetDomainName) {
            return this.f35025a.equals(((InternetDomainName) obj).f35025a);
        }
        return false;
    }

    public boolean hasParent() {
        return this.f35026b.size() > 1;
    }

    public boolean hasPublicSuffix() {
        return this.f35027c != -1;
    }

    public boolean hasRegistrySuffix() {
        return this.f35028d != -1;
    }

    public int hashCode() {
        return this.f35025a.hashCode();
    }

    public boolean isPublicSuffix() {
        return this.f35027c == 0;
    }

    public boolean isRegistrySuffix() {
        return this.f35028d == 0;
    }

    public boolean isTopDomainUnderRegistrySuffix() {
        return this.f35028d == 1;
    }

    public boolean isTopPrivateDomain() {
        return this.f35027c == 1;
    }

    public boolean isUnderPublicSuffix() {
        return this.f35027c > 0;
    }

    public boolean isUnderRegistrySuffix() {
        return this.f35028d > 0;
    }

    public InternetDomainName parent() {
        Preconditions.checkState(hasParent(), "Domain '%s' has no parent", this.f35025a);
        return m27326a(1);
    }

    public ImmutableList<String> parts() {
        return this.f35026b;
    }

    @CheckForNull
    public InternetDomainName publicSuffix() {
        if (hasPublicSuffix()) {
            return m27326a(this.f35027c);
        }
        return null;
    }

    @CheckForNull
    public InternetDomainName registrySuffix() {
        if (hasRegistrySuffix()) {
            return m27326a(this.f35028d);
        }
        return null;
    }

    public String toString() {
        return this.f35025a;
    }

    public InternetDomainName topDomainUnderRegistrySuffix() {
        if (isTopDomainUnderRegistrySuffix()) {
            return this;
        }
        Preconditions.checkState(isUnderRegistrySuffix(), "Not under a registry suffix: %s", this.f35025a);
        return m27326a(this.f35028d - 1);
    }

    public InternetDomainName topPrivateDomain() {
        if (isTopPrivateDomain()) {
            return this;
        }
        Preconditions.checkState(isUnderPublicSuffix(), "Not under a public suffix: %s", this.f35025a);
        return m27326a(this.f35027c - 1);
    }
}
