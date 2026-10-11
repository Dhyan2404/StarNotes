package org.jsoup.parser;

import org.jsoup.nodes.Element;
import org.jsoup.parser.Token;

/* loaded from: classes13.dex */
public interface ParserListener {
    void endTagAfter(Token.EndTag endTag, Element element);

    void endTagBefore(Token.EndTag endTag, Element element);

    void parseCompleted();

    void startTagAfter(Token.StartTag startTag, Element element);

    void startTagBefore(Token.StartTag startTag, Element element);
}
