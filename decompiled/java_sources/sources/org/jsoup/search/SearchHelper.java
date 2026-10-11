package org.jsoup.search;

import com.sunia.HTREnginev2.yxo;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.SearchResult;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.Tag;

/* loaded from: classes13.dex */
public class SearchHelper implements Closeable {

    /* renamed from: p */
    public static final int f114389p = 50;

    /* renamed from: q */
    public static final int f114390q = 40000;

    /* renamed from: r */
    public static final int f114391r = 2000;

    /* renamed from: s */
    public static final String f114392s = "\uffff";

    /* renamed from: i */
    public SearchOptions f114397i;

    /* renamed from: j */
    public Pattern f114398j;

    /* renamed from: k */
    public int f114399k;

    /* renamed from: l */
    public int f114400l;

    /* renamed from: n */
    public boolean f114402n;

    /* renamed from: o */
    public boolean f114403o;

    /* renamed from: e */
    public List<yxo> f114393e = new ArrayList();

    /* renamed from: f */
    public List<SearchResult> f114394f = new ArrayList();

    /* renamed from: g */
    public List<SearchResult> f114395g = new ArrayList();

    /* renamed from: h */
    public StringBuilder f114396h = new StringBuilder();

    /* renamed from: m */
    public int f114401m = 0;

    public SearchHelper(SearchOptions searchOptions) {
        this.f114397i = searchOptions;
        this.f114398j = Pattern.compile(StringUtil.removeMultipleSpace(searchOptions.f114404a).trim(), searchOptions.f114409f ? 0 : 2);
        this.f114400l = (searchOptions.f114405b - searchOptions.f114404a.length()) / 2;
        m71416f();
        int i = this.f114400l;
        if (i > 50) {
            this.f114400l = 50;
        } else if (i < 0) {
            this.f114400l = 0;
            System.err.println("Search text to long");
        }
    }

    /* renamed from: H */
    public static void m71412H(Node node, SearchHelper searchHelper) {
        if (searchHelper.isAbort()) {
            return;
        }
        if (node instanceof TextNode) {
            searchHelper.addSearchText((TextNode) node);
            return;
        }
        if (node instanceof Element) {
            Element element = (Element) node;
            searchHelper.addElementSpace(element);
            Iterator<Node> it2 = element.childNodes().iterator();
            while (it2.hasNext()) {
                m71412H(it2.next(), searchHelper);
                if (searchHelper.isAbort()) {
                    return;
                }
            }
        }
    }

    public static List<SearchResult> search(Document document, SearchOptions searchOptions) {
        Element body = document.body();
        if (body == null) {
            return Collections.emptyList();
        }
        SearchHelper searchHelper = new SearchHelper(searchOptions);
        m71412H(body, searchHelper);
        List<SearchResult> searchResult = searchHelper.getSearchResult();
        searchHelper.close();
        return searchResult;
    }

    /* renamed from: I */
    public final void m71413I(SearchResult searchResult) {
        int i = searchResult.startOffset;
        if (i <= 0 || i > this.f114396h.length()) {
            return;
        }
        searchResult.leftText = this.f114396h.substring(Math.max(i - this.f114400l, 0), i).replaceAll(f114392s, "");
    }

    /* renamed from: M */
    public final void m71414M(TextNode textNode) {
        String wholeText = textNode.getWholeText();
        if (StringUtil.isBlank(wholeText)) {
            return;
        }
        this.f114402n = false;
        int length = this.f114396h.length();
        this.f114396h.append(wholeText);
        this.f114393e.add(new yxo(textNode, length, this.f114396h.length()));
    }

    public void abort() {
        this.f114403o = true;
        m71418g0();
    }

    public void addElementSpace(Element element) {
        if (this.f114402n || this.f114396h.length() == 0) {
            return;
        }
        Tag tag = element.tag();
        if (tag.isBlock() || tag.formatAsBlock()) {
            this.f114396h.append(f114392s);
            this.f114402n = true;
        }
    }

    public void addSearchText(TextNode textNode) {
        if (this.f114403o || textNode.byteEndPos() < this.f114397i.f114406c) {
            return;
        }
        m71414M(textNode);
        m71415e0(false);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        abort();
        this.f114394f.clear();
        this.f114398j = null;
        this.f114396h = null;
        this.f114397i = null;
        this.f114393e = null;
        this.f114395g = null;
        this.f114394f = null;
    }

    /* renamed from: e0 */
    public final void m71415e0(boolean z) {
        if (z || this.f114396h.length() >= this.f114399k + this.f114401m) {
            String substring = this.f114396h.substring(this.f114401m);
            Matcher matcher = this.f114398j.matcher(StringUtil.removeMultipleSpace(substring));
            int[] iArr = new int[2];
            while (matcher.find()) {
                String group = matcher.group();
                int start = matcher.start();
                int i = iArr[1];
                if (start < i) {
                    iArr[0] = i;
                    iArr[1] = (i + matcher.end()) - start;
                } else {
                    iArr[0] = start;
                    iArr[1] = matcher.end();
                }
                if (!m71417f0(substring, group, iArr)) {
                    System.err.println("Find search content position failed");
                    abort();
                    return;
                } else {
                    String substring2 = substring.substring(iArr[0], iArr[1]);
                    int i2 = iArr[0];
                    int i3 = this.f114401m;
                    m71423w(substring2, i2 + i3, iArr[1] + i3);
                }
            }
            m71422j0(z);
            if (this.f114403o || z) {
                return;
            }
            this.f114401m = Math.max(this.f114401m, this.f114396h.length() - this.f114397i.f114404a.length()) + 1;
        }
    }

    /* renamed from: f */
    public final void m71416f() {
        int i = this.f114397i.f114407d;
        if (i > 0) {
            int size = (i - this.f114394f.size()) * 100;
            if (size < 2000) {
                this.f114399k = 2000;
                return;
            } else if (size <= 40000) {
                this.f114399k = size;
                return;
            }
        }
        this.f114399k = 40000;
    }

    /* renamed from: f0 */
    public final boolean m71417f0(String str, String str2, int[] iArr) {
        char[] charArray = str.toCharArray();
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = 0;
        int i4 = i;
        while (true) {
            if (i >= charArray.length) {
                break;
            }
            char c = charArray[i];
            if (c == str2.charAt(i3)) {
                if (i3 == 0) {
                    i4 = i;
                }
                i3++;
            } else if (!Character.isSpaceChar(c)) {
                i4 = iArr[0];
                if (i3 > 0) {
                    i--;
                    i3 = 0;
                    i++;
                }
            }
            if (i3 >= str2.length()) {
                i2 = i + 1;
                break;
            }
            i++;
        }
        iArr[0] = i4;
        iArr[1] = i2;
        return i3 >= str2.length();
    }

    public void finishSearch() {
        if (this.f114403o) {
            return;
        }
        m71415e0(true);
        abort();
    }

    /* renamed from: g0 */
    public final void m71418g0() {
        this.f114393e.clear();
        this.f114395g.clear();
    }

    public List<SearchResult> getSearchResult() {
        finishSearch();
        return new ArrayList(this.f114394f);
    }

    /* renamed from: h0 */
    public final void m71419h0(yxo yxoVar, int i, SearchResult searchResult) {
        int length = yxoVar.f91166a.getWholeText().substring(0, (i - yxoVar.f91167b) - 1).getBytes().length;
        searchResult.endXPath = yxoVar.f91166a.getXPath();
        searchResult.endPosition = yxoVar.f91166a.byteStartPos() + length;
        searchResult.endOffset = i;
    }

    /* renamed from: i0 */
    public final void m71420i0(SearchResult searchResult) {
        int i = searchResult.endOffset;
        if (i < 0 || i >= this.f114396h.length()) {
            return;
        }
        searchResult.rightText = this.f114396h.substring(i, Math.min(this.f114400l + i, this.f114396h.length())).replaceAll(f114392s, "");
    }

    public boolean isAbort() {
        if (this.f114397i.f114410g && !this.f114403o) {
            abort();
        }
        return this.f114403o;
    }

    /* renamed from: j */
    public final void m71421j(yxo yxoVar, int i, SearchResult searchResult) {
        int length = yxoVar.f91166a.getWholeText().substring(0, i - yxoVar.f91167b).getBytes().length;
        searchResult.startXPath = yxoVar.f91166a.getXPath();
        searchResult.startPosition = yxoVar.f91166a.byteStartPos() + length;
        searchResult.startOffset = i;
    }

    /* renamed from: j0 */
    public final void m71422j0(boolean z) {
        if (this.f114395g.isEmpty()) {
            return;
        }
        if (this.f114400l == 0) {
            if (this.f114397i.f114407d > 0) {
                int size = this.f114394f.size() + this.f114395g.size();
                int i = this.f114397i.f114407d;
                if (size >= i) {
                    List<SearchResult> list = this.f114394f;
                    list.addAll(this.f114395g.subList(0, i - list.size()));
                    abort();
                    return;
                }
            }
            this.f114394f.addAll(this.f114395g);
            this.f114395g.clear();
            m71416f();
            return;
        }
        Iterator<SearchResult> it2 = this.f114395g.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            SearchResult next = it2.next();
            if (!z && next.endOffset + this.f114400l > this.f114396h.length()) {
                break;
            }
            m71413I(next);
            m71420i0(next);
            it2.remove();
            this.f114394f.add(next);
            if (this.f114397i.f114407d > 0 && this.f114394f.size() >= this.f114397i.f114407d) {
                abort();
                break;
            }
        }
        if (this.f114403o || z) {
            return;
        }
        m71416f();
    }

    /* renamed from: w */
    public final void m71423w(String str, int i, int i2) {
        SearchResult searchResult = new SearchResult(str);
        Iterator<yxo> it2 = this.f114393e.iterator();
        boolean z = false;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            yxo next = it2.next();
            if (next.m58496a(i, true)) {
                m71421j(next, i, searchResult);
                z = true;
            }
            if (z && next.m58496a(i2, false)) {
                m71419h0(next, i2, searchResult);
                break;
            }
            it2.remove();
        }
        if (searchResult.isInvalid()) {
            System.err.println("Find search result position failed");
        } else {
            this.f114395g.add(searchResult);
        }
    }
}
