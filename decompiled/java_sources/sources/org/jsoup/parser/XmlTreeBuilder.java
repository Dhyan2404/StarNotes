package org.jsoup.parser;

import java.io.Reader;
import java.io.StringReader;
import java.util.List;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.CDataNode;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.nodes.XmlDeclaration;
import org.jsoup.parser.Token;

/* loaded from: classes13.dex */
public class XmlTreeBuilder extends AbstractC20358z {
    @Override // org.jsoup.parser.AbstractC20358z
    public /* bridge */ /* synthetic */ void abort() {
        super.abort();
    }

    @Override // org.jsoup.parser.AbstractC20358z
    /* renamed from: d */
    public ParseSettings mo71232d() {
        return ParseSettings.preserveCase;
    }

    @Override // org.jsoup.parser.AbstractC20358z
    /* renamed from: f */
    public List<Node> mo71235f(String str, Element element, String str2, Parser parser) {
        return m71324o(str, str2, parser);
    }

    /* renamed from: g */
    public final void m71316g(Node node) {
        currentElement().appendChild(node);
    }

    /* renamed from: h */
    public final void m71317h(Token.EndTag endTag) {
        Element element;
        String normalizeTag = this.settings.normalizeTag(endTag.tagName);
        int size = this.stack.size() - 1;
        while (true) {
            if (size < 0) {
                element = null;
                break;
            }
            element = this.stack.get(size);
            if (element.nodeName().equals(normalizeTag)) {
                break;
            } else {
                size--;
            }
        }
        if (element == null) {
            return;
        }
        for (int size2 = this.stack.size() - 1; size2 >= 0; size2--) {
            Element element2 = this.stack.get(size2);
            this.stack.remove(size2);
            if (element2 == element) {
                return;
            }
        }
    }

    /* renamed from: i */
    public Element m71318i(Token.StartTag startTag) {
        Tag valueOf = Tag.valueOf(startTag.name(), this.settings);
        Attributes attributes = startTag.f114195j;
        if (attributes != null) {
            attributes.deduplicate(this.settings);
        }
        Element element = new Element(valueOf, null, this.settings.m71277a(startTag.f114195j));
        m71316g(element);
        if (!startTag.m71301n()) {
            this.stack.add(element);
        } else if (!valueOf.isKnownTag()) {
            valueOf.m71285b();
        }
        return element;
    }

    @Override // org.jsoup.parser.AbstractC20358z
    public void initialiseParse(Reader reader, String str, Parser parser) {
        super.initialiseParse(reader, str, parser);
        this.stack.add(this.doc);
        this.doc.outputSettings().syntax(Document.OutputSettings.Syntax.xml);
    }

    @Override // org.jsoup.parser.AbstractC20358z
    public /* bridge */ /* synthetic */ boolean isAbort() {
        return super.isAbort();
    }

    /* renamed from: j */
    public void m71319j(Token.C20258b c20258b) {
        String m71304d = c20258b.m71304d();
        m71316g(c20258b.isCData() ? new CDataNode(m71304d) : new TextNode(m71304d));
    }

    /* renamed from: k */
    public void m71320k(Token.C20259c c20259c) {
        XmlDeclaration asXmlDeclaration;
        Comment comment = new Comment(c20259c.m71306d());
        if (c20259c.f114200f && comment.isXmlDeclaration() && (asXmlDeclaration = comment.asXmlDeclaration()) != null) {
            comment = asXmlDeclaration;
        }
        m71316g(comment);
    }

    /* renamed from: l */
    public void m71321l(Token.C20260d c20260d) {
        DocumentType documentType = new DocumentType(this.settings.normalizeTag(c20260d.m71310d()), c20260d.m71312f(), c20260d.m71313g());
        documentType.setPubSysKey(c20260d.m71311e());
        m71316g(documentType);
    }

    /* renamed from: m */
    public Document m71322m(Reader reader, String str) {
        return m71399e(reader, str, new Parser(this));
    }

    /* renamed from: n */
    public Document m71323n(String str, String str2) {
        return m71399e(new StringReader(str), str2, new Parser(this));
    }

    /* renamed from: o */
    public List<Node> m71324o(String str, String str2, Parser parser) {
        initialiseParse(new StringReader(str), str2, parser);
        runParser();
        return this.doc.childNodes();
    }

    @Override // org.jsoup.parser.AbstractC20358z
    public boolean process(Token token) {
        switch (C20263a0.f114272a[token.f114186a.ordinal()]) {
            case 1:
                m71318i(token.asStartTag());
                return true;
            case 2:
                m71317h(token.asEndTag());
                return true;
            case 3:
                m71320k(token.asComment());
                return true;
            case 4:
                m71319j(token.asCharacter());
                return true;
            case 5:
                m71321l(token.asDoctype());
                return true;
            case 6:
                return true;
            default:
                Validate.fail("Unexpected token type: " + token.f114186a);
                return true;
        }
    }

    @Override // org.jsoup.parser.AbstractC20358z
    public /* bridge */ /* synthetic */ boolean processStartTag(String str, Attributes attributes) {
        return super.processStartTag(str, attributes);
    }
}
