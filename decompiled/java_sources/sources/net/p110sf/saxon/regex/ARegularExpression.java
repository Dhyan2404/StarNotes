package net.p110sf.saxon.regex;

import java.util.List;
import java.util.function.Function;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AtomicIterator;

/* loaded from: classes11.dex */
public class ARegularExpression implements RegularExpression {

    /* renamed from: a */
    public UnicodeString f101137a;

    /* renamed from: b */
    public String f101138b;

    /* renamed from: c */
    public REProgram f101139c;

    public ARegularExpression(UnicodeString unicodeString, String str, String str2, List<String> list, Configuration configuration) throws XPathException {
        this.f101138b = str;
        try {
            REFlags rEFlags = new REFlags(str, str2);
            try {
                this.f101137a = unicodeString;
                RECompiler rECompiler = new RECompiler();
                rECompiler.setFlags(rEFlags);
                this.f101139c = rECompiler.compile(this.f101137a);
                if (list != null) {
                    list.addAll(rECompiler.getWarnings());
                }
                if (configuration != null) {
                    this.f101139c.setBacktrackingLimit(((Integer) configuration.getConfigurationProperty(Feature.REGEX_BACKTRACKING_LIMIT)).intValue());
                }
            } catch (RESyntaxException e) {
                throw new XPathException(e.getMessage(), "FORX0002");
            }
        } catch (RESyntaxException e2) {
            throw new XPathException(e2.getMessage(), "FORX0001");
        }
    }

    public static ARegularExpression compile(String str, String str2) {
        try {
            return new ARegularExpression(BMPString.m63877of(str), str2, "XP31", null, null);
        } catch (XPathException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override // net.p110sf.saxon.regex.RegularExpression
    public RegexIterator analyze(UnicodeString unicodeString) {
        return new ARegexIterator(unicodeString.tidy(), this.f101137a, new REMatcher(this.f101139c));
    }

    @Override // net.p110sf.saxon.regex.RegularExpression
    public boolean containsMatch(UnicodeString unicodeString) {
        return new REMatcher(this.f101139c).match(unicodeString.tidy(), 0);
    }

    @Override // net.p110sf.saxon.regex.RegularExpression
    public String getFlags() {
        return this.f101138b;
    }

    @Override // net.p110sf.saxon.regex.RegularExpression
    public boolean isPlatformNative() {
        return false;
    }

    @Override // net.p110sf.saxon.regex.RegularExpression
    public boolean matches(UnicodeString unicodeString) {
        if (unicodeString.isEmpty() && this.f101139c.isNullable()) {
            return true;
        }
        return new REMatcher(this.f101139c).isAnchoredMatch(unicodeString.tidy());
    }

    @Override // net.p110sf.saxon.regex.RegularExpression
    public UnicodeString replace(UnicodeString unicodeString, UnicodeString unicodeString2) throws XPathException {
        try {
            return new REMatcher(this.f101139c).replace(unicodeString.tidy(), unicodeString2);
        } catch (RESyntaxException e) {
            throw new XPathException(e.getMessage(), "FORX0004");
        }
    }

    @Override // net.p110sf.saxon.regex.RegularExpression
    public UnicodeString replaceWith(UnicodeString unicodeString, Function<UnicodeString, UnicodeString> function) throws XPathException {
        try {
            return new REMatcher(this.f101139c).replaceWith(unicodeString.tidy(), function);
        } catch (RESyntaxException e) {
            throw new XPathException(e.getMessage(), "FORX0004");
        }
    }

    @Override // net.p110sf.saxon.regex.RegularExpression
    public AtomicIterator tokenize(UnicodeString unicodeString) {
        return new ATokenIterator(unicodeString.tidy(), new REMatcher(this.f101139c));
    }

    public static ARegularExpression compile(UnicodeString unicodeString, String str) {
        try {
            return new ARegularExpression(unicodeString, str, "XP31", null, null);
        } catch (XPathException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
