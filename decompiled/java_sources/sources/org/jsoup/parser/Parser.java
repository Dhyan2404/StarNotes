package org.jsoup.parser;

import java.io.Reader;
import java.io.StringReader;
import java.util.List;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.search.SearchHelper;

/* loaded from: classes13.dex */
public class Parser {

    /* renamed from: a */
    public AbstractC20358z f114163a;

    /* renamed from: c */
    public ParseSettings f114165c;

    /* renamed from: d */
    public SearchHelper f114166d;

    /* renamed from: e */
    public ParserListener f114167e;

    /* renamed from: f */
    public boolean f114168f = false;

    /* renamed from: b */
    public ParseErrorList f114164b = ParseErrorList.noTracking();

    public Parser(AbstractC20358z abstractC20358z) {
        this.f114163a = abstractC20358z;
        this.f114165c = abstractC20358z.mo71232d();
    }

    public static Parser htmlParser() {
        return new Parser(new HtmlTreeBuilder());
    }

    public static Document parse(String str, String str2) {
        HtmlTreeBuilder htmlTreeBuilder = new HtmlTreeBuilder();
        return htmlTreeBuilder.m71399e(new StringReader(str), str2, new Parser(htmlTreeBuilder));
    }

    public static Document parseBodyFragment(String str, String str2) {
        Document createShell = Document.createShell(str2);
        Element body = createShell.body();
        List<Node> parseFragment = parseFragment(str, body, str2);
        Node[] nodeArr = (Node[]) parseFragment.toArray(new Node[0]);
        for (int length = nodeArr.length - 1; length > 0; length--) {
            nodeArr[length].remove();
        }
        for (Node node : nodeArr) {
            body.appendChild(node);
        }
        return createShell;
    }

    public static List<Node> parseFragment(String str, Element element, String str2) {
        HtmlTreeBuilder htmlTreeBuilder = new HtmlTreeBuilder();
        return htmlTreeBuilder.mo71235f(str, element, str2, new Parser(htmlTreeBuilder));
    }

    public static List<Node> parseXmlFragment(String str, String str2) {
        XmlTreeBuilder xmlTreeBuilder = new XmlTreeBuilder();
        return xmlTreeBuilder.m71324o(str, str2, new Parser(xmlTreeBuilder));
    }

    public static String unescapeEntities(String str, boolean z) {
        return new C20350r(new CharacterReader(str), ParseErrorList.noTracking()).m71371j(z);
    }

    public static Parser xmlParser() {
        return new Parser(new XmlTreeBuilder());
    }

    /* renamed from: a */
    public void m71278a() {
        SearchHelper searchHelper = this.f114166d;
        if (searchHelper != null) {
            searchHelper.finishSearch();
            this.f114163a.abort();
            this.f114168f = false;
            this.f114166d = null;
        }
    }

    public void abortSearch() {
        SearchHelper searchHelper = this.f114166d;
        if (searchHelper != null) {
            searchHelper.abort();
            this.f114163a.abort();
            this.f114168f = false;
            this.f114166d = null;
        }
    }

    /* renamed from: b */
    public void m71279b() {
        if (this.f114166d != null) {
            this.f114168f = true;
        }
    }

    /* renamed from: c */
    public void m71280c() {
        ParserListener parserListener = this.f114167e;
        if (parserListener != null) {
            parserListener.parseCompleted();
        }
    }

    /* renamed from: d */
    public void m71281d(Token token, Element element) {
        if (this.f114167e != null) {
            if (token.isStartTag() || token.isEndTag()) {
                if (token.isStartTag()) {
                    this.f114167e.startTagAfter(token.asStartTag(), this.f114163a.currentElement());
                } else if (token.isEndTag()) {
                    this.f114167e.endTagAfter(token.asEndTag(), element);
                }
            }
        }
    }

    /* renamed from: e */
    public void m71282e(Token token, Element element) {
        if (this.f114167e != null) {
            if (token.isStartTag() || token.isEndTag()) {
                if (token.isStartTag()) {
                    this.f114167e.startTagBefore(token.asStartTag(), element);
                } else if (token.isEndTag()) {
                    this.f114167e.endTagBefore(token.asEndTag(), element);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0034, code lost:
    
        if (r4.f114166d.isAbort() != false) goto L9;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m71283f(org.jsoup.nodes.Node r5) {
        /*
            r4 = this;
            boolean r0 = r4.f114168f
            r1 = 1
            if (r0 == 0) goto L37
            org.jsoup.search.SearchHelper r0 = r4.f114166d
            if (r0 != 0) goto La
            goto L37
        La:
            boolean r0 = r0.isAbort()
            r2 = 0
            r3 = 0
            if (r0 == 0) goto L17
        L12:
            r4.f114168f = r3
            r4.f114166d = r2
            return r3
        L17:
            boolean r0 = r5 instanceof org.jsoup.nodes.TextNode
            if (r0 == 0) goto L23
            org.jsoup.search.SearchHelper r0 = r4.f114166d
            org.jsoup.nodes.TextNode r5 = (org.jsoup.nodes.TextNode) r5
            r0.addSearchText(r5)
            goto L2e
        L23:
            boolean r0 = r5 instanceof org.jsoup.nodes.Element
            if (r0 == 0) goto L2e
            org.jsoup.search.SearchHelper r0 = r4.f114166d
            org.jsoup.nodes.Element r5 = (org.jsoup.nodes.Element) r5
            r0.addElementSpace(r5)
        L2e:
            org.jsoup.search.SearchHelper r5 = r4.f114166d
            boolean r5 = r5.isAbort()
            if (r5 == 0) goto L37
            goto L12
        L37:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.Parser.m71283f(org.jsoup.nodes.Node):boolean");
    }

    public ParseErrorList getErrors() {
        return this.f114164b;
    }

    public ParserListener getListener() {
        return this.f114167e;
    }

    public SearchHelper getSearchHelper() {
        return this.f114166d;
    }

    public AbstractC20358z getTreeBuilder() {
        return this.f114163a;
    }

    public boolean isTrackErrors() {
        return this.f114164b.getMaxSize() > 0;
    }

    public List<Node> parseFragmentInput(String str, Element element, String str2) {
        return this.f114163a.mo71235f(str, element, str2, this);
    }

    public Document parseInput(Reader reader, String str) {
        return this.f114163a.m71399e(reader, str, this);
    }

    public void setListener(ParserListener parserListener) {
        this.f114167e = parserListener;
    }

    public void setSearchHelper(SearchHelper searchHelper) {
        if (this.f114168f) {
            throw new UnsupportedOperationException("Must call before search start");
        }
        this.f114166d = searchHelper;
    }

    public Parser setTrackErrors(int i) {
        this.f114164b = i > 0 ? ParseErrorList.tracking(i) : ParseErrorList.noTracking();
        return this;
    }

    public Parser setTreeBuilder(AbstractC20358z abstractC20358z) {
        this.f114163a = abstractC20358z;
        abstractC20358z.parser = this;
        return this;
    }

    public ParseSettings settings() {
        return this.f114165c;
    }

    public static List<Node> parseFragment(String str, Element element, String str2, ParseErrorList parseErrorList) {
        HtmlTreeBuilder htmlTreeBuilder = new HtmlTreeBuilder();
        Parser parser = new Parser(htmlTreeBuilder);
        parser.f114164b = parseErrorList;
        return htmlTreeBuilder.mo71235f(str, element, str2, parser);
    }

    public Document parseInput(String str, String str2) {
        return this.f114163a.m71399e(new StringReader(str), str2, this);
    }

    public Parser settings(ParseSettings parseSettings) {
        this.f114165c = parseSettings;
        return this;
    }
}
