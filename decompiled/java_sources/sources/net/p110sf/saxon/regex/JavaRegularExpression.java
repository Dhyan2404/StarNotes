package net.p110sf.saxon.regex;

import java.util.function.Function;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;

/* loaded from: classes11.dex */
public class JavaRegularExpression implements RegularExpression {

    /* renamed from: a */
    public Pattern f101159a;

    /* renamed from: b */
    public String f101160b;

    /* renamed from: c */
    public int f101161c;

    public JavaRegularExpression(UnicodeString unicodeString, String str) throws XPathException {
        this.f101161c = setFlags(str);
        String obj = unicodeString.toString();
        this.f101160b = obj;
        try {
            int i = this.f101161c & (-5);
            this.f101161c = i;
            this.f101159a = Pattern.compile(obj, i);
        } catch (PatternSyntaxException e) {
            throw new XPathException("Incorrect syntax for Java regular expression", e);
        }
    }

    public static int setFlags(CharSequence charSequence) throws XPathException {
        int i = 1;
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            char charAt = charSequence.charAt(i2);
            if (charAt == 'c') {
                i |= 128;
            } else if (charAt == 'd') {
                i |= 1;
            } else if (charAt == 'i') {
                i |= 2;
            } else if (charAt == 'm') {
                i |= 8;
            } else if (charAt == 'q') {
                i |= 16;
            } else if (charAt == 's') {
                i |= 32;
            } else if (charAt == 'u') {
                i |= 64;
            } else {
                if (charAt != 'x') {
                    XPathException xPathException = new XPathException("Invalid character '" + charAt + "' in regular expression flags");
                    xPathException.setErrorCode("FORX0001");
                    throw xPathException;
                }
                i |= 4;
            }
        }
        return i;
    }

    @Override // net.p110sf.saxon.regex.RegularExpression
    public RegexIterator analyze(UnicodeString unicodeString) {
        return new JRegexIterator(unicodeString.toString(), this.f101159a);
    }

    @Override // net.p110sf.saxon.regex.RegularExpression
    public boolean containsMatch(UnicodeString unicodeString) {
        return this.f101159a.matcher(unicodeString.toString()).find();
    }

    public int getFlagBits() {
        return this.f101161c;
    }

    @Override // net.p110sf.saxon.regex.RegularExpression
    public String getFlags() {
        String str = "";
        if ((this.f101161c & 1) != 0) {
            str = "d";
        }
        if ((this.f101161c & 8) != 0) {
            str = str + 'm';
        }
        if ((this.f101161c & 2) != 0) {
            str = str + 'i';
        }
        if ((this.f101161c & 32) != 0) {
            str = str + 's';
        }
        if ((this.f101161c & 4) != 0) {
            str = str + 'x';
        }
        if ((this.f101161c & 64) != 0) {
            str = str + 'u';
        }
        if ((this.f101161c & 16) != 0) {
            str = str + 'q';
        }
        if ((this.f101161c & 128) == 0) {
            return str;
        }
        return str + 'c';
    }

    public String getJavaRegularExpression() {
        return this.f101160b;
    }

    @Override // net.p110sf.saxon.regex.RegularExpression
    public boolean isPlatformNative() {
        return true;
    }

    @Override // net.p110sf.saxon.regex.RegularExpression
    public boolean matches(UnicodeString unicodeString) {
        return this.f101159a.matcher(unicodeString.toString()).matches();
    }

    @Override // net.p110sf.saxon.regex.RegularExpression
    public UnicodeString replace(UnicodeString unicodeString, UnicodeString unicodeString2) throws XPathException {
        try {
            return StringView.tidy(this.f101159a.matcher(unicodeString.toString()).replaceAll(unicodeString2.toString()));
        } catch (IndexOutOfBoundsException e) {
            throw new XPathException(e.getMessage(), "FORX0004");
        }
    }

    @Override // net.p110sf.saxon.regex.RegularExpression
    public UnicodeString replaceWith(UnicodeString unicodeString, Function<UnicodeString, UnicodeString> function) throws XPathException {
        throw new XPathException("saxon:replace-with() is not supported with the Java regex engine");
    }

    @Override // net.p110sf.saxon.regex.RegularExpression
    public AtomicIterator tokenize(UnicodeString unicodeString) {
        return unicodeString.isEmpty() ? EmptyIterator.ofAtomic() : new JTokenIterator(unicodeString.toString(), this.f101159a);
    }
}
