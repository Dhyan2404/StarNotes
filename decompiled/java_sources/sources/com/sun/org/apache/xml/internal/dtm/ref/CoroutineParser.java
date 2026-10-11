package com.sun.org.apache.xml.internal.dtm.ref;

import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes10.dex */
public interface CoroutineParser {
    Object doMore(boolean z, int i);

    Object doParse(InputSource inputSource, int i);

    void doTerminate(int i);

    CoroutineManager getCoroutineManager();

    int getParserCoroutineID();

    void init(CoroutineManager coroutineManager, int i, XMLReader xMLReader);

    void setContentHandler(ContentHandler contentHandler);

    void setLexHandler(LexicalHandler lexicalHandler);
}
