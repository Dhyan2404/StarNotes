package net.p110sf.saxon.str;

import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface UniStringConsumer {
    UniStringConsumer accept(UnicodeString unicodeString) throws XPathException;

    default void close() throws XPathException {
    }

    default void open() throws XPathException {
    }
}
