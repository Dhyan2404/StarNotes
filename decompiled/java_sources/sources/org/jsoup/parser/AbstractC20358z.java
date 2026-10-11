package org.jsoup.parser;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.parser.Token;

/* renamed from: org.jsoup.parser.z */
/* loaded from: classes13.dex */
public abstract class AbstractC20358z {

    /* renamed from: a */
    public CharacterReader f114371a;

    /* renamed from: b */
    public C20350r f114372b;
    protected String baseUri;
    protected Token currentToken;
    protected Document doc;

    /* renamed from: e */
    public boolean f114375e;
    protected Parser parser;
    protected ParseSettings settings;
    protected ArrayList<Element> stack;

    /* renamed from: c */
    public Token.StartTag f114373c = new Token.StartTag();

    /* renamed from: d */
    public Token.EndTag f114374d = new Token.EndTag();

    /* renamed from: a */
    public final Token m71396a(Token token) {
        Token token2 = this.currentToken;
        token.f114187b = token2.f114187b;
        token.f114188c = token2.f114187b;
        return token;
    }

    public void abort() {
        this.f114375e = true;
    }

    /* renamed from: b */
    public final boolean m71397b(Token token, String str) {
        return token.isStartTag() && token.asStartTag().tagName.equals(str);
    }

    /* renamed from: c */
    public final boolean m71398c(Token token, String str, String str2) {
        return token.isEndTag() && token.asEndTag().tagName.equals(str) && str2.equals(str);
    }

    public Element currentElement() {
        int size = this.stack.size();
        if (size > 0) {
            return this.stack.get(size - 1);
        }
        return null;
    }

    /* renamed from: d */
    public abstract ParseSettings mo71232d();

    /* renamed from: e */
    public Document m71399e(Reader reader, String str, Parser parser) {
        initialiseParse(reader, str, parser);
        runParser();
        this.f114371a.close();
        this.f114371a = null;
        this.f114372b = null;
        this.stack = null;
        return this.doc;
    }

    public void error(String str) {
        ParseErrorList errors = this.parser.getErrors();
        if (errors.canAddError()) {
            errors.add(new ParseError(this.f114371a.pos(), str));
        }
    }

    /* renamed from: f */
    public abstract List<Node> mo71235f(String str, Element element, String str2, Parser parser);

    public void initialiseParse(Reader reader, String str, Parser parser) {
        Validate.notNull(reader, "String input must not be null");
        Validate.notNull(str, "BaseURI must not be null");
        Document document = new Document(str);
        this.doc = document;
        document.parser(parser);
        this.parser = parser;
        this.settings = parser.settings();
        this.f114371a = new CharacterReader(reader);
        this.currentToken = null;
        this.f114372b = new C20350r(this.f114371a, parser.getErrors());
        this.stack = new ArrayList<>(32);
        this.baseUri = str;
    }

    public boolean isAbort() {
        return this.f114375e;
    }

    public void parseCompleted() {
        this.parser.m71280c();
    }

    public abstract boolean process(Token token);

    public void processAfter(Token token, Element element) {
        this.parser.m71281d(token, element);
    }

    public void processBefore(Token token, Element element) {
        this.parser.m71282e(token, element);
    }

    public boolean processEndTag(String str) {
        Token name;
        Token token = this.currentToken;
        if (token == this.f114374d) {
            name = updateToken(new Token.EndTag().name(str));
        } else {
            if (token.isEndTag() && token.asEndTag().tagName.equals(str)) {
                updateToken(this.f114374d);
            } else {
                m71396a(this.f114374d);
            }
            name = this.f114374d.mo71287a().name(str);
        }
        boolean process = process(name);
        this.currentToken = token;
        return process;
    }

    public boolean processStartTag(String str) {
        Token name;
        Token token = this.currentToken;
        Token.StartTag startTag = this.f114373c;
        if (token == startTag) {
            name = updateToken(new Token.StartTag().name(str));
        } else {
            if (m71398c(token, str, "br") || m71397b(token, str)) {
                updateToken(startTag);
            } else {
                m71396a(startTag);
            }
            name = startTag.mo71287a().name(str);
        }
        boolean process = process(name);
        this.currentToken = token;
        return process;
    }

    public void runParser() {
        C20350r c20350r = this.f114372b;
        Token.TokenType tokenType = Token.TokenType.EOF;
        while (!this.f114375e) {
            Token m71363b = c20350r.m71363b();
            Element currentElement = currentElement();
            processBefore(m71363b, currentElement);
            process(m71363b);
            processAfter(m71363b, currentElement);
            m71363b.mo71287a();
            if (m71363b.f114186a == tokenType) {
                break;
            }
        }
        parseCompleted();
    }

    public Token updateToken(Token token) {
        Token token2 = this.currentToken;
        token.f114187b = token2.f114187b;
        token.f114188c = token2.f114188c;
        return token;
    }

    public boolean processStartTag(String str, Attributes attributes) {
        boolean process;
        Token token = this.currentToken;
        Token.StartTag startTag = this.f114373c;
        if (token == startTag) {
            process = process(updateToken(new Token.StartTag().m71290r(str, attributes)));
        } else {
            startTag.mo71287a();
            startTag.m71290r(str, attributes);
            if (m71397b(token, str)) {
                updateToken(startTag);
            } else {
                m71396a(startTag);
            }
            process = process(startTag);
        }
        this.currentToken = token;
        return process;
    }
}
