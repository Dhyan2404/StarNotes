package com.sun.org.apache.xalan.internal.lib;

import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import com.sun.org.apache.xpath.internal.NodeSet;
import com.sunia.HTREnginev2.gon;
import java.util.StringTokenizer;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* loaded from: classes10.dex */
public class ExsltStrings extends ExsltBase {

    /* loaded from: classes10.dex */
    public static class DocumentHolder {
        private static final Document m_doc;

        static {
            try {
                m_doc = DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();
            } catch (ParserConfigurationException e) {
                throw new WrappedRuntimeException(e);
            }
        }

        private DocumentHolder() {
        }
    }

    public static String align(String str, String str2, String str3) {
        if (str.length() >= str2.length()) {
            return str.substring(0, str2.length());
        }
        if (str3.equals(gon.f71288n0)) {
            return str2.substring(0, str2.length() - str.length()) + str;
        }
        if (str3.equals("center")) {
            int length = (str2.length() - str.length()) / 2;
            return str2.substring(0, length) + str + str2.substring(length + str.length());
        }
        return str + str2.substring(str.length());
    }

    public static String concat(NodeList nodeList) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < nodeList.getLength(); i++) {
            String exsltBase = ExsltBase.toString(nodeList.item(i));
            if (exsltBase != null && exsltBase.length() > 0) {
                stringBuffer.append(exsltBase);
            }
        }
        return stringBuffer.toString();
    }

    public static String padding(double d, String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i = (int) d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (i2 == str.length()) {
                i2 = 0;
            }
            stringBuffer.append(str.charAt(i2));
            i2++;
        }
        return stringBuffer.toString();
    }

    public static NodeList split(String str, String str2) {
        int i;
        String substring;
        NodeSet nodeSet = new NodeSet();
        nodeSet.setShouldCacheNodes(true);
        boolean z = false;
        int i2 = 0;
        while (!z && i2 < str.length()) {
            int indexOf = str.indexOf(str2, i2);
            if (indexOf >= 0) {
                substring = str.substring(i2, indexOf);
                i = indexOf + str2.length();
            } else {
                i = i2;
                substring = str.substring(i2);
                z = true;
            }
            Document document = DocumentHolder.m_doc;
            synchronized (document) {
                Element createElement = document.createElement("token");
                createElement.appendChild(document.createTextNode(substring));
                nodeSet.addNode(createElement);
            }
            i2 = i;
        }
        return nodeSet;
    }

    public static NodeList tokenize(String str, String str2) {
        NodeSet nodeSet = new NodeSet();
        if (str2 != null && str2.length() > 0) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, str2);
            Document document = DocumentHolder.m_doc;
            synchronized (document) {
                while (stringTokenizer.hasMoreTokens()) {
                    Element createElement = document.createElement("token");
                    createElement.appendChild(document.createTextNode(stringTokenizer.nextToken()));
                    nodeSet.addNode(createElement);
                }
            }
        } else {
            Document document2 = DocumentHolder.m_doc;
            synchronized (document2) {
                int i = 0;
                while (i < str.length()) {
                    Element createElement2 = document2.createElement("token");
                    int i2 = i + 1;
                    createElement2.appendChild(document2.createTextNode(str.substring(i, i2)));
                    nodeSet.addNode(createElement2);
                    i = i2;
                }
            }
        }
        return nodeSet;
    }

    public static String padding(double d) {
        return padding(d, " ");
    }

    public static String align(String str, String str2) {
        return align(str, str2, "left");
    }

    public static NodeList split(String str) {
        return split(str, " ");
    }

    public static NodeList tokenize(String str) {
        return tokenize(str, " \t\n\r");
    }
}
