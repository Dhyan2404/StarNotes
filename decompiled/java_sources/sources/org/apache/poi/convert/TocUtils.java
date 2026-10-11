package org.apache.poi.convert;

import com.sunia.HTREnginev2.gon;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.apache.poi.util.StringUtils;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.Evaluator;

/* loaded from: classes12.dex */
public class TocUtils {
    public static final String ATTR_ID = "id";
    public static final String ATTR_TOC_LEVEL = "toc_level";
    public static final int OUTLINE_LEVEL_MAX = 8;
    public static final int OUTLINE_LEVEL_MIN = 0;
    public static final int TITLE_MAX_LENGTH = 20;
    public static final int TITLE_MIN_LENGTH = 10;
    public static final String TOC_PREFIX = "toc_";

    private static void buildDocument(HtmlDocumentFacade htmlDocumentFacade, WPToc wPToc, Element element) {
        if (wPToc.hasChild()) {
            Element appendTo = htmlDocumentFacade.createUnorderedList().appendTo(element);
            for (WPToc wPToc2 : wPToc.getChildren()) {
                Element appendTo2 = new Element("li").appendTo(appendTo);
                appendTo2.attr("id", String.valueOf(wPToc2.getPosition()));
                appendTo2.attr("level", String.valueOf(wPToc2.getLevel()));
                Element element2 = new Element("a");
                element2.attr("href", wPToc2.getPoint());
                element2.text(wPToc2.getTitle());
                appendTo2.appendChild(element2);
                if (wPToc2.hasChild()) {
                    buildDocument(htmlDocumentFacade, wPToc2, appendTo2);
                }
            }
        }
    }

    public static Document buildHtml(WPToc wPToc) {
        HtmlDocumentFacade htmlDocumentFacade = new HtmlDocumentFacade();
        Document document = htmlDocumentFacade.getDocument();
        buildDocument(htmlDocumentFacade, wPToc, document.body());
        Element selectFirst = document.selectFirst(new Evaluator.Tag(gon.f71289o));
        selectFirst.select(new Evaluator.Tag("link")).remove();
        Element createElement = document.createElement("style");
        createElement.text(htmlDocumentFacade.buildStylesheet());
        selectFirst.appendChild(createElement);
        return document;
    }

    public static WPToc findParent(WPToc wPToc, int i) {
        if (i == wPToc.getLevel()) {
            return wPToc.getParent() == null ? wPToc : wPToc.getParent();
        }
        if (i < wPToc.getLevel()) {
            return wPToc.getParent() == null ? wPToc : findParent(wPToc.getParent(), i);
        }
        if (!wPToc.hasChild()) {
            return wPToc;
        }
        WPToc lastChild = wPToc.lastChild();
        return i < lastChild.getLevel() ? wPToc.getParent() == null ? wPToc : wPToc.getParent() : findParent(lastChild, i);
    }

    private static String getTocTitle(Element element) {
        StringBuilder sb = new StringBuilder();
        for (Node node : element.childNodes()) {
            if (!(node instanceof TextNode)) {
                if (node instanceof Element) {
                    Element element2 = (Element) node;
                    if (element2.tag().getName().equals("br")) {
                        if (sb.length() >= 10) {
                            break;
                        }
                    } else {
                        sb.append(element2.text());
                        sb.append(" ");
                    }
                }
            } else {
                sb.append(((TextNode) node).text());
                sb.append(" ");
            }
            if (sb.length() >= 20) {
                break;
            }
        }
        return StringUtils.normalSpace(sb.toString()).trim();
    }

    public static boolean isOutlineLevel(Integer num) {
        return num != null && num.intValue() >= 0 && num.intValue() <= 8;
    }

    public static int parseInt(String str) {
        try {
            return Integer.parseInt(str);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static boolean parseWPToc(WPToc wPToc, LinkedHashMap<String, Document> linkedHashMap) {
        Evaluator.Attribute attribute = new Evaluator.Attribute(ATTR_TOC_LEVEL);
        int i = 0;
        WPToc wPToc2 = wPToc;
        for (Map.Entry<String, Document> entry : linkedHashMap.entrySet()) {
            Document value = entry.getValue();
            Iterator<Element> it2 = value.select(attribute).iterator();
            while (it2.hasNext()) {
                Element next = it2.next();
                String attr = next.attr(ATTR_TOC_LEVEL);
                String attr2 = next.attr("id");
                int parseInt = parseInt(attr);
                wPToc2 = findParent(wPToc2, parseInt);
                wPToc2.addChild(new WPToc(getTocTitle(next), entry.getKey() + "#" + attr2, next.byteStartPos() + i, parseInt));
            }
            i += value.getTagEndPos();
        }
        return wPToc.hasChild();
    }

    public static boolean setPElementTocAttr(Element element, Integer num, int i) {
        if (!isOutlineLevel(num)) {
            return false;
        }
        element.attr(ATTR_TOC_LEVEL, String.valueOf(num));
        element.attr("id", TOC_PREFIX + i);
        return true;
    }
}
