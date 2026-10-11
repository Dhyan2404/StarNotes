package org.apache.poi.util;

import com.sunia.HTREnginev2.gon;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.Elements;
import org.jsoup.select.Evaluator;

/* loaded from: classes13.dex */
public class DocumentUtils {
    public static String getAnchor(String str) {
        int indexOf;
        return (str == null || str.length() <= 1 || (indexOf = str.indexOf("#")) < 0) ? str : str.substring(indexOf + 1);
    }

    public static Element getLinkByAnchor(Document document, final String str) {
        return document.selectFirst(new Evaluator() { // from class: org.apache.poi.util.DocumentUtils.2
            @Override // org.jsoup.select.Evaluator
            public boolean matches(Element element, Element element2) {
                Attributes attributes = element2.attributes();
                if (attributes.isEmpty()) {
                    return false;
                }
                return attributes.get("name").equalsIgnoreCase(str) || element2.m71134id().equalsIgnoreCase(str);
            }
        });
    }

    public static Element getLinkByHref(Map<String, Document> map, String str, String str2) {
        int indexOf;
        Element element = null;
        if (str2 == null || str2.length() <= 1 || (indexOf = str2.indexOf("#")) < 0) {
            return null;
        }
        int i = 0;
        if (indexOf != 0) {
            str = str2.substring(0, indexOf);
        }
        String substring = str2.substring(indexOf + 1);
        for (Map.Entry<String, Document> entry : map.entrySet()) {
            Document value = entry.getValue();
            if (entry.getKey().equals(str) && (element = getLinkByAnchor(value, substring)) != null) {
                Element mo74371clone = element.mo74371clone();
                mo74371clone.setByteStartPos(i + mo74371clone.byteStartPos());
                return mo74371clone;
            }
            i += value.getTagEndPos();
        }
        return element;
    }

    public static Map<String, Elements> getLocalLinkElements(Map<String, Document> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, Document> entry : map.entrySet()) {
            Elements localLinkElements = getLocalLinkElements(entry.getValue());
            if (!localLinkElements.isEmpty()) {
                linkedHashMap.put(entry.getKey(), localLinkElements);
            }
        }
        return linkedHashMap;
    }

    private static boolean isEmpty(Element element) {
        return element.childNodeSize() == 0 && element.tag().isSelfClosing();
    }

    private static int nodeByteEndLength(Node node) {
        if (node instanceof Document) {
            return 0;
        }
        return node instanceof Element ? node.nodeName().length() + node.attributes().html().getBytes().length + 2 : node.outerHtml().getBytes().length;
    }

    private static int nodeTagEndLength(Node node) {
        if ((node instanceof Document) || !(node instanceof Element) || isEmpty((Element) node)) {
            return 0;
        }
        return node.nodeName().length() + 3;
    }

    public static void reconstructDocumentLink(Map<String, Document> map) {
        for (Map.Entry<String, Elements> entry : getLocalLinkElements(map).entrySet()) {
            Iterator<Element> it2 = entry.getValue().iterator();
            while (it2.hasNext()) {
                updateLinkHref(map, it2.next(), entry.getKey());
            }
        }
    }

    public static boolean saveContentToFile(String str, File file) {
        return saveContentToFile(str, file, StandardCharsets.UTF_8);
    }

    public static boolean saveDocument(Document document, File file) {
        return saveContentToFile(document.outerHtml(), file);
    }

    public static List<Document> splitDocument(Document document, int i) {
        ArrayList arrayList = new ArrayList();
        float f = i;
        if (document.getTagEndPos() <= 1.5f * f) {
            arrayList.add(document);
            return arrayList;
        }
        int tagEndPos = document.getTagEndPos();
        int i2 = tagEndPos / ((tagEndPos / i) + 1);
        Element body = document.body();
        Elements children = body.children();
        body.replaceWith(body.shallowClone());
        Document mo74371clone = document.mo74371clone();
        Element body2 = mo74371clone.body();
        arrayList.add(mo74371clone);
        int i3 = 0;
        for (Element element : children) {
            if (element.childNodeSize() > 0) {
                if (element.tagName().equals(gon.f71293q)) {
                    ArrayList<Node> arrayList2 = new ArrayList(element.childNodes());
                    Element shallowClone = element.shallowClone();
                    body2.appendChild(shallowClone);
                    for (Node node : arrayList2) {
                        shallowClone.appendChild(node);
                        if (node.getTagEndPos() >= i3 + i2) {
                            i3 = node.getTagEndPos();
                            if (tagEndPos - i3 > f * 0.5f) {
                                Element shallowClone2 = element.shallowClone();
                                Document mo74371clone2 = document.mo74371clone();
                                Element body3 = mo74371clone2.body();
                                body3.appendChild(shallowClone2);
                                arrayList.add(mo74371clone2);
                                shallowClone = shallowClone2;
                                body2 = body3;
                            }
                        }
                    }
                } else {
                    body2.appendChild(element);
                    if (element.getTagEndPos() >= i3 + i2) {
                        i3 = element.getTagEndPos();
                        if (tagEndPos - i3 > 0.5f * f) {
                            Document mo74371clone3 = document.mo74371clone();
                            Element body4 = mo74371clone3.body();
                            arrayList.add(mo74371clone3);
                            body2 = body4;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public static int updateDocumentPosition(Document document) {
        return updatePosition(document, 0);
    }

    public static void updateLinkHref(Map<String, Document> map, Element element, String str) {
        String attr = element.attr("href");
        String substring = attr.substring(1);
        for (Map.Entry<String, Document> entry : map.entrySet()) {
            if (getLinkByAnchor(entry.getValue(), substring) != null) {
                if (str.equals(entry.getKey())) {
                    return;
                }
                element.attr("href", entry.getKey() + attr);
                return;
            }
        }
    }

    public static int updatePosition(Node node, int i) {
        node.setByteStartPos(i);
        int nodeByteEndLength = i + nodeByteEndLength(node);
        node.setByteEndPos(nodeByteEndLength);
        Iterator<Node> it2 = node.childNodes().iterator();
        while (it2.hasNext()) {
            nodeByteEndLength = updatePosition(it2.next(), nodeByteEndLength);
        }
        int nodeTagEndLength = nodeByteEndLength + nodeTagEndLength(node);
        node.setTagEndPos(nodeTagEndLength);
        return nodeTagEndLength;
    }

    public static Element getLinkByAnchor(List<Document> list, String str) {
        Element element = null;
        int i = 0;
        for (Document document : list) {
            Element linkByAnchor = getLinkByAnchor(document, str);
            if (linkByAnchor != null) {
                Element mo74371clone = linkByAnchor.mo74371clone();
                mo74371clone.setByteStartPos(i + mo74371clone.byteStartPos());
                return mo74371clone;
            }
            i += document.getTagEndPos();
            element = linkByAnchor;
        }
        return element;
    }

    public static boolean saveContentToFile(String str, File file, Charset charset) {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset));
            try {
                bufferedWriter.write(str);
                bufferedWriter.flush();
                bufferedWriter.close();
                return true;
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static Elements getLocalLinkElements(Document document) {
        return document.select(new Evaluator() { // from class: org.apache.poi.util.DocumentUtils.1
            @Override // org.jsoup.select.Evaluator
            public boolean matches(Element element, Element element2) {
                if (!element2.tagName().equals("a")) {
                    return false;
                }
                String attr = element2.attr("href");
                return attr.length() > 2 && attr.startsWith("#");
            }
        });
    }
}
