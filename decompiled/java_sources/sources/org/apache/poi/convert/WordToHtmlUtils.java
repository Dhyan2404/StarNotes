package org.apache.poi.convert;

import com.sun.org.apache.xpath.internal.compiler.PsuedoNames;
import com.sunia.HTREnginev2.gon;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.util.StringUtils;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;

/* loaded from: classes12.dex */
public class WordToHtmlUtils {
    protected static final Logger LOG = LogManager.getLogger((Class<?>) WordToHtmlUtils.class);

    public static Element addClass(Element element, String... strArr) {
        Set<String> classNames = element.classNames();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (strArr != null) {
            linkedHashSet.addAll(Arrays.asList(strArr));
        }
        linkedHashSet.addAll(classNames);
        element.classNames(linkedHashSet);
        return element;
    }

    public static boolean addStyle(Element element, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return false;
        }
        element.attr("style", element.attr("style") + str);
        return true;
    }

    public static boolean canBeMerged(Node node, Node node2, String str) {
        if (node.getClass() != node2.getClass() || !Objects.equals(str, node.nodeName()) || !Objects.equals(str, node2.nodeName())) {
            return false;
        }
        if (TextNode.class.isInstance(node)) {
            return true;
        }
        Attributes attributes = node.attributes();
        Attributes attributes2 = node2.attributes();
        if (attributes.size() != attributes2.size()) {
            return false;
        }
        return attributes.equals(attributes2);
    }

    public static void compactChildNodesR(Element element, String str) {
        List<Node> childNodes = element.childNodes();
        if (childNodes.size() > 0) {
            Node node = childNodes.get(0);
            int i = 1;
            while (childNodes.size() > 1 && i < childNodes.size()) {
                Node node2 = childNodes.get(i);
                if (canBeMerged(node, node2, str)) {
                    ((Element) node).insertChildren(node.childNodeSize(), node2.childNodes());
                    node2.remove();
                } else {
                    i++;
                    node = node2;
                }
            }
        }
        List<Node> childNodes2 = element.childNodes();
        for (int i2 = 0; i2 < childNodes2.size(); i2++) {
            Node node3 = childNodes2.get(i2);
            if (node3 instanceof Element) {
                compactChildNodesR((Element) node3, str);
            }
        }
    }

    public static boolean compactDocument(List<Document> list, int i, int i2) {
        if (i > 0 && i2 <= i / 4 && list.size() > 1) {
            Document document = list.get(list.size() - 1);
            Document document2 = list.get(list.size() - 2);
            Element body = document.body();
            Element body2 = document2.body();
            if (body.attributes().equals(body2.attributes())) {
                body.insertChildren(0, body2.children());
                list.remove(list.size() - 2);
                return true;
            }
            LOG.atWarn().log("Body attributes not equals");
        }
        return false;
    }

    public static void compactSpans(Element element) {
        compactChildNodesR(element, gon.f71297s);
    }

    public static void compactTextNode(Element element) {
        List<Node> childNodes = element.childNodes();
        if (childNodes.size() > 0) {
            Node node = childNodes.get(0);
            int i = 1;
            while (childNodes.size() > 1 && i < childNodes.size()) {
                Node node2 = childNodes.get(i);
                if (canBeMerged(node, node2, PsuedoNames.PSEUDONAME_TEXT)) {
                    StringBuilder sb = new StringBuilder();
                    TextNode textNode = (TextNode) node;
                    sb.append(textNode.getWholeText());
                    sb.append(((TextNode) node2).getWholeText());
                    textNode.text(sb.toString());
                    node2.remove();
                } else {
                    i++;
                    node = node2;
                }
            }
        }
        List<Node> childNodes2 = element.childNodes();
        for (int i2 = 0; i2 < childNodes2.size(); i2++) {
            Node node3 = childNodes2.get(i2);
            if (node3 instanceof Element) {
                compactTextNode((Element) node3);
            }
        }
    }

    public static void insertAfterAbsoluteImage(Element element, Element element2) {
        Iterator<Node> it2 = element2.childNodes().iterator();
        int i = 0;
        while (it2.hasNext() && Constants.NAME_IMAGE_ABSOLUTE.equals(it2.next().attr("name"))) {
            i++;
        }
        element.insertChildren(i, element2);
    }

    public static boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean isNotEmpty(String str) {
        return !isEmpty(str);
    }

    public static boolean isNull(Object obj) {
        return obj == null;
    }

    public static boolean parseBool(Boolean bool) {
        return bool != null && bool.booleanValue();
    }

    public static boolean setStyle(Element element, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return false;
        }
        element.attr("style", str);
        return true;
    }
}
