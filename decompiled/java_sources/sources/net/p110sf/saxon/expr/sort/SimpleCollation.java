package net.p110sf.saxon.expr.sort;

import java.text.RuleBasedCollator;
import java.util.Comparator;
import net.p110sf.saxon.Platform;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.lib.SubstringMatcher;
import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public class SimpleCollation implements StringCollator {

    /* renamed from: c */
    public static final Platform f100105c = Version.platform;

    /* renamed from: a */
    public Comparator<? super String> f100106a;

    /* renamed from: b */
    public final String f100107b;

    public SimpleCollation(String str, Comparator<? super String> comparator) {
        this.f100107b = str;
        this.f100106a = comparator;
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public int compareStrings(UnicodeString unicodeString, UnicodeString unicodeString2) {
        return this.f100106a.compare(unicodeString.toString(), unicodeString2.toString());
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public boolean comparesEqual(UnicodeString unicodeString, UnicodeString unicodeString2) {
        return this.f100106a.compare(unicodeString.toString(), unicodeString2.toString()) == 0;
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public AtomicMatchKey getCollationKey(UnicodeString unicodeString) {
        return f100105c.getCollationKey(this, unicodeString.toString());
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public String getCollationURI() {
        return this.f100107b;
    }

    public Comparator<? super String> getComparator() {
        return this.f100106a;
    }

    public SubstringMatcher getSubstringMatcher() {
        Comparator<? super String> comparator = this.f100106a;
        if (comparator instanceof SubstringMatcher) {
            return (SubstringMatcher) comparator;
        }
        if (comparator instanceof RuleBasedCollator) {
            return new RuleBasedSubstringMatcher(this.f100107b, (RuleBasedCollator) comparator);
        }
        return null;
    }

    public void setComparator(Comparator<? super String> comparator) {
        this.f100106a = comparator;
    }
}
