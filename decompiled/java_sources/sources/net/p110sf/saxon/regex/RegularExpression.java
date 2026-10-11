package net.p110sf.saxon.regex;

import java.util.function.Function;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AtomicIterator;

/* loaded from: classes11.dex */
public interface RegularExpression {
    RegexIterator analyze(UnicodeString unicodeString);

    boolean containsMatch(UnicodeString unicodeString);

    String getFlags();

    boolean isPlatformNative();

    boolean matches(UnicodeString unicodeString);

    UnicodeString replace(UnicodeString unicodeString, UnicodeString unicodeString2) throws XPathException;

    UnicodeString replaceWith(UnicodeString unicodeString, Function<UnicodeString, UnicodeString> function) throws XPathException;

    AtomicIterator tokenize(UnicodeString unicodeString);
}
