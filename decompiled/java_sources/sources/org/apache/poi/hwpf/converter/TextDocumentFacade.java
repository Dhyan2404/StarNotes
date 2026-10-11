package org.apache.poi.hwpf.converter;

import com.sunia.HTREnginev2.gon;
import org.apache.commons.collections4.MapUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Text;

/* loaded from: classes12.dex */
public class TextDocumentFacade {
    protected final Element body;
    protected final Document document;
    protected final Element head;
    protected final Element root;
    protected Element title;
    protected Text titleText;

    public TextDocumentFacade(Document document) {
        this.document = document;
        Element createElement = document.createElement("html");
        this.root = createElement;
        document.appendChild(createElement);
        Element createElement2 = document.createElement("body");
        this.body = createElement2;
        Element createElement3 = document.createElement(gon.f71289o);
        this.head = createElement3;
        createElement.appendChild(createElement3);
        createElement.appendChild(createElement2);
        this.title = document.createElement("title");
        this.titleText = document.createTextNode("");
        createElement3.appendChild(this.title);
    }

    public void addAuthor(String str) {
        addMeta("Author", str);
    }

    public void addDescription(String str) {
        addMeta("Description", str);
    }

    public void addKeywords(String str) {
        addMeta("Keywords", str);
    }

    public void addMeta(String str, String str2) {
        Element createElement = this.document.createElement("meta");
        Element createElement2 = this.document.createElement("name");
        createElement2.appendChild(this.document.createTextNode(str + ": "));
        createElement.appendChild(createElement2);
        Element createElement3 = this.document.createElement("value");
        createElement3.appendChild(this.document.createTextNode(str2 + "\n"));
        createElement.appendChild(createElement3);
        this.head.appendChild(createElement);
    }

    public Element createBlock() {
        return this.document.createElement(gon.f71293q);
    }

    public Element createHeader1() {
        Element createElement = this.document.createElement("h1");
        createElement.appendChild(this.document.createTextNode("        "));
        return createElement;
    }

    public Element createHeader2() {
        Element createElement = this.document.createElement("h2");
        createElement.appendChild(this.document.createTextNode(MapUtils.f104930a));
        return createElement;
    }

    public Element createParagraph() {
        return this.document.createElement("p");
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
}
