package com.sun.org.apache.xml.internal.serializer;

import org.xml.sax.SAXException;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes10.dex */
interface ExtendedLexicalHandler extends LexicalHandler {
    void comment(String str) throws SAXException;
}
