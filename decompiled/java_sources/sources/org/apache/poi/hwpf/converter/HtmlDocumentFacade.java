package org.apache.poi.hwpf.converter;

import androidx.core.app.NotificationCompat;
import com.caverock.androidsvg.CSSParser;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sunia.HTREnginev2.gon;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Text;

/* loaded from: classes12.dex */
public class HtmlDocumentFacade {
    protected final Element body;
    protected final Document document;
    protected final Element head;
    protected final Element html;
    private Map<String, Map<String, String>> stylesheet = new LinkedHashMap();
    private Element stylesheetElement;
    protected Element title;
    protected Text titleText;

    public HtmlDocumentFacade(Document document) {
        this.document = document;
        Element createElement = document.createElement("html");
        this.html = createElement;
        document.appendChild(createElement);
        Element createElement2 = document.createElement("body");
        this.body = createElement2;
        Element createElement3 = document.createElement(gon.f71289o);
        this.head = createElement3;
        Element createElement4 = document.createElement("style");
        this.stylesheetElement = createElement4;
        createElement4.setAttribute("type", CSSParser.f15748e);
        createElement.appendChild(createElement3);
        createElement.appendChild(createElement2);
        createElement3.appendChild(this.stylesheetElement);
        addStyleClass(createElement2, "b", "white-space-collapsing:preserve;");
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

    public void addMeta(String str, String str2) {
        Element createElement = this.document.createElement("meta");
        createElement.setAttribute("name", str);
        createElement.setAttribute("content", str2);
        this.head.appendChild(createElement);
    }

    public void addStyleClass(Element element, String str, String str2) {
        String attribute = element.getAttribute("class");
        String orCreateCssClass = getOrCreateCssClass(str, str2);
        if (!AbstractWordUtils.isEmpty(attribute)) {
            orCreateCssClass = attribute + " " + orCreateCssClass;
        }
        element.setAttribute("class", orCreateCssClass);
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

    public Element createBlock() {
        return this.document.createElement(gon.f71293q);
    }

    public Element createBookmark(String str) {
        Element createElement = this.document.createElement("a");
        createElement.setAttribute("name", str);
        return createElement;
    }

    public Element createHeader1() {
        return this.document.createElement("h1");
    }

    public Element createHeader2() {
        return this.document.createElement("h2");
    }

    public Element createHyperlink(String str) {
        Element createElement = this.document.createElement("a");
        createElement.setAttribute("href", str);
        return createElement;
    }

    public Element createImage(String str) {
        Element createElement = this.document.createElement("img");
        createElement.setAttribute(Constant.SRC_TAG, str);
        return createElement;
    }

    public Element createLineBreak() {
        return this.document.createElement("br");
    }

    public Element createListItem() {
        return this.document.createElement("li");
    }

    public Element createOption(String str, boolean z) {
        Element createElement = this.document.createElement("option");
        createElement.appendChild(createText(str));
        if (z) {
            createElement.setAttribute("selected", "selected");
        }
        return createElement;
    }

    public Element createParagraph() {
        return this.document.createElement("p");
    }

    public Element createSelect() {
        return this.document.createElement("select");
    }

    public Element createTable() {
        return this.document.createElement("table");
    }

    public Element createTableBody() {
        return this.document.createElement("tbody");
    }

    public Element createTableCell() {
        return this.document.createElement("td");
    }

    public Element createTableColumn() {
        return this.document.createElement("col");
    }

    public Element createTableColumnGroup() {
        return this.document.createElement("colgroup");
    }

    public Element createTableHeader() {
        return this.document.createElement("thead");
    }

    public Element createTableHeaderCell() {
        return this.document.createElement("th");
    }

    public Element createTableRow() {
        return this.document.createElement("tr");
    }

    public Text createText(String str) {
        return this.document.createTextNode(str);
    }

    public Element createUnorderedList() {
        return this.document.createElement("ul");
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
        if (this.title == null) {
            return null;
        }
        return this.titleText.getTextContent();
    }

    public void setTitle(String str) {
        Element element;
        if (AbstractWordUtils.isEmpty(str) && (element = this.title) != null) {
            this.head.removeChild(element);
            this.title = null;
            this.titleText = null;
        }
        if (this.title == null) {
            this.title = this.document.createElement("title");
            Text createTextNode = this.document.createTextNode(str);
            this.titleText = createTextNode;
            this.title.appendChild(createTextNode);
            this.head.appendChild(this.title);
        }
        this.titleText.setData(str);
    }

    public void updateStylesheet() {
        this.stylesheetElement.setTextContent(buildStylesheet(this.stylesheet));
    }
}
