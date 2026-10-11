package org.apache.poi.convert;

import androidx.core.app.NotificationCompat;
import androidx.core.text.util.LocalePreferences;
import com.caverock.androidsvg.CSSParser;
import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.apache.poi.util.StringUtils;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.Evaluator;

/* loaded from: classes12.dex */
public class HtmlDocumentFacade {
    private Element body;
    private Document document;
    private Element head;
    private Element html;
    private Map<String, Map<String, String>> stylesheet = new LinkedHashMap();
    private Element stylesheetElement;
    private Element title;

    public HtmlDocumentFacade() {
        createDocument();
    }

    public void addAuthor(String str) {
        addMeta(NotificationCompat.CarExtender.f4973i, str);
    }

    public void addDescription(String str) {
        addMeta("description", str);
    }

    public void addKeywords(String str) {
        addMeta("keywords", str);
    }

    public void addMathJaxScript() {
        Element createElement = this.document.createElement(Constants.ELEMNAME_SCRIPT_STRING);
        this.head.appendChild(createElement);
        createElement.text("MathJax = { loader: { load: [ 'input/tex-base', '[tex]/newcommand', '[tex]/action', 'output/chtml', 'a11y/explorer' ] }, tex: { inlineMath: [['$', '$'], ['\\\\(', '\\\\)']], packages: ['base', 'newcommand', 'action'] } };");
        Element createElement2 = this.document.createElement(Constants.ELEMNAME_SCRIPT_STRING);
        this.head.appendChild(createElement2);
        createElement2.attr("id", "MathJax-script");
        createElement2.attr("async", (String) null);
        createElement2.attr(Constant.SRC_TAG, "https://cdn.bootcss.com/mathjax/3.0.5/es5/tex-mml-chtml.js");
    }

    public void addMeta(String str, String str2) {
        Element createElement = this.document.createElement("meta");
        createElement.attr("name", str);
        createElement.attr("content", str2);
        this.head.appendChild(createElement);
    }

    public void addScript(String str) {
        Element createElement = this.document.createElement(Constants.ELEMNAME_SCRIPT_STRING);
        this.head.appendChild(createElement);
        createElement.text(str);
    }

    public void addShowOrHideHeaderFooterFunction() {
        addScript("let hidden = true;function showOrHideHeaderFooter() {const headers = document.getElementsByName(\"header-container\");for (let header of headers) {if (hidden) {header.style.display=\"none\";} else {header.style.display=\"\";}}const footers = document.getElementsByName(\"footer-container\");for (let footer of footers) {if (hidden) {footer.style.display=\"none\";} else {footer.style.display=\"\";}}const dividers = document.getElementsByName(\"divider\");for (let divider of dividers) {if (hidden) {divider.style.height=\"8px\";} else {divider.style.height=\"16px\";}}hidden = !hidden;}");
    }

    public void addStyle(String str) {
        Element selectFirst = this.head.selectFirst(new Evaluator.Tag("style"));
        if (selectFirst == null) {
            this.document.createElement("style").text(str);
            return;
        }
        selectFirst.appendText('\n' + str);
    }

    public String addStyleClass(Element element, String str, String str2) {
        if (StringUtils.isNullOrEmpty(str2)) {
            return null;
        }
        String attr = element.attr("class");
        String orCreateCssClass = getOrCreateCssClass(str, str2);
        if (!StringUtils.isNullOrEmpty(attr)) {
            orCreateCssClass = attr + " " + orCreateCssClass;
        }
        element.attr("class", orCreateCssClass);
        return orCreateCssClass;
    }

    public String buildStylesheet() {
        return buildStylesheet(this.stylesheet);
    }

    public Element createBlock() {
        return this.document.createElement(gon.f71293q).attr("class", "cdiv");
    }

    public Element createBookmark(String str) {
        Element attr = this.document.createElement(gon.f71297s).attr("class", "cspan");
        attr.attr("id", str);
        return attr;
    }

    public Comment createComment(String str) {
        return new Comment(str);
    }

    public Document createDocument() {
        Document document = new Document("");
        this.document = document;
        document.appendChild(new DocumentType("html", "", ""));
        Element createElement = this.document.createElement("html");
        this.html = createElement;
        this.document.appendChild(createElement);
        this.body = this.document.createElement("body");
        this.head = this.document.createElement(gon.f71289o);
        Element createElement2 = this.document.createElement("link");
        this.stylesheetElement = createElement2;
        createElement2.attr("rel", Constants.ELEMNAME_STYLESHEET_STRING);
        this.stylesheetElement.attr("type", CSSParser.f15748e);
        this.stylesheetElement.attr("href", "style.css");
        this.html.appendChild(this.head);
        this.html.appendChild(this.body);
        Element createElement3 = this.document.createElement("meta");
        createElement3.attr("charset", "utf-8");
        this.head.appendChild(createElement3);
        this.head.appendChild(this.document.createElement("style").appendText("html{background-color:#F5F7F9;}\nbody{background-color:white;}\ndiv{font-size:0;}\np{margin:0;}"));
        this.head.appendChild(this.stylesheetElement);
        return this.document;
    }

    public Element createHeader1() {
        return this.document.createElement("h1").attr("class", "ch1");
    }

    public Element createHeader2() {
        return this.document.createElement("h2").attr("class", "ch2");
    }

    public Element createHyperlink(String str) {
        Element attr = this.document.createElement("a").attr("class", LocalePreferences.CalendarType.f5703a);
        attr.attr("href", str);
        return attr;
    }

    public Element createImage(String str) {
        Element attr = this.document.createElement("img").attr("class", "cimg");
        attr.attr(Constant.SRC_TAG, str);
        return attr;
    }

    public Element createLineBreak() {
        return this.document.createElement("br");
    }

    public Element createListItem() {
        return this.document.createElement("li").attr("class", "cli");
    }

    public Element createOption(String str, boolean z) {
        Element attr = this.document.createElement("option").attr("class", "coption");
        attr.appendChild(createText(str));
        if (z) {
            attr.attr("selected", "selected");
        }
        return attr;
    }

    public Element createOrderedList() {
        return this.document.createElement("ol").attr("class", "col");
    }

    public Element createParagraph() {
        Element attr = this.document.createElement("p").attr("class", "cp");
        addStyleClass(attr, "p", "white-space:pre-wrap;");
        return attr;
    }

    public Element createRt() {
        return this.document.createElement(WebvttCueParser.f27242v).attr("class", "crt");
    }

    public Element createRuby() {
        return this.document.createElement("ruby").attr("class", "cruby");
    }

    public Element createSelect() {
        return this.document.createElement("select").attr("class", "cselect");
    }

    public Element createSpan() {
        return this.document.createElement(gon.f71297s).attr("class", "cspan");
    }

    public Element createTable() {
        return this.document.createElement("table").attr("class", "ctable");
    }

    public Element createTableBody() {
        return this.document.createElement("tbody").attr("class", "ctbody");
    }

    public Element createTableCell() {
        return this.document.createElement("td").attr("class", "ctd");
    }

    public Element createTableColumn() {
        return this.document.createElement("col").attr("class", "ccol");
    }

    public Element createTableColumnGroup() {
        return this.document.createElement("colgroup").attr("class", "ccolgroup");
    }

    public Element createTableHeader() {
        return this.document.createElement("thead").attr("class", "cthead");
    }

    public Element createTableHeaderCell() {
        return this.document.createElement("th").attr("class", "cth");
    }

    public Element createTableRow() {
        return this.document.createElement("tr").attr("class", "ctr");
    }

    public TextNode createText(String str) {
        return new TextNode(str);
    }

    public Element createUnorderedList() {
        return this.document.createElement("ul").attr("class", "cul");
    }

    public Element getBody() {
        return this.body;
    }

    public Document getDocument() {
        return this.document;
    }

    public Element getHead() {
        return this.head;
    }

    public String getOrCreateCssClass(String str, String str2) {
        if (!this.stylesheet.containsKey(str)) {
            this.stylesheet.put(str, new LinkedHashMap(1));
        }
        Map<String, String> map = this.stylesheet.get(str);
        String str3 = map.get(str2);
        if (str3 != null) {
            return str3;
        }
        String str4 = str + (map.size() + 1);
        map.put(str2, str4);
        return str4;
    }

    public String getTitle() {
        Element element = this.title;
        if (element == null) {
            return null;
        }
        return element.text();
    }

    public void setTitle(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            Element element = this.title;
            if (element != null) {
                element.remove();
                this.title = null;
                return;
            }
            return;
        }
        if (this.title == null) {
            Element createElement = this.document.createElement("title");
            this.title = createElement;
            createElement.text(str);
            this.head.appendChild(this.title);
        }
    }

    public String buildStylesheet(Map<String, Map<String, String>> map) {
        StringBuilder sb = new StringBuilder();
        Iterator<Map<String, String>> it2 = map.values().iterator();
        while (it2.hasNext()) {
            for (Map.Entry<String, String> entry : it2.next().entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                sb.append(".");
                sb.append(value);
                sb.append("{");
                sb.append(key);
                sb.append("}\n");
            }
        }
        return sb.toString();
    }
}
