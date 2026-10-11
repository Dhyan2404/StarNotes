package com.sun.org.apache.xalan.internal.lib;

import com.sun.org.apache.xalan.internal.extensions.ExpressionContext;
import com.sun.org.apache.xalan.internal.xslt.EnvironmentCheck;
import com.sun.org.apache.xml.internal.utils.Hashtree2Node;
import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import com.sun.org.apache.xpath.internal.NodeSet;
import com.sun.org.apache.xpath.internal.objects.XBoolean;
import com.sun.org.apache.xpath.internal.objects.XNumber;
import com.sun.org.apache.xpath.internal.objects.XObject;
import java.lang.reflect.Method;
import java.util.Hashtable;
import java.util.StringTokenizer;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;
import org.w3c.dom.traversal.NodeIterator;
import org.xml.sax.SAXNotSupportedException;

/* loaded from: classes10.dex */
public class Extensions {

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

    private Extensions() {
    }

    public static Node checkEnvironment(ExpressionContext expressionContext) {
        try {
            Document newDocument = DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();
            try {
                Node checkEnvironmentUsingWhich = checkEnvironmentUsingWhich(expressionContext, newDocument);
                if (checkEnvironmentUsingWhich != null) {
                    return checkEnvironmentUsingWhich;
                }
                EnvironmentCheck environmentCheck = new EnvironmentCheck();
                Hashtable environmentHash = environmentCheck.getEnvironmentHash();
                Element createElement = newDocument.createElement("checkEnvironmentExtension");
                environmentCheck.appendEnvironmentReport(createElement, newDocument, environmentHash);
                return createElement;
            } catch (Exception e) {
                throw new WrappedRuntimeException(e);
            }
        } catch (ParserConfigurationException e2) {
            throw new WrappedRuntimeException(e2);
        }
    }

    private static Node checkEnvironmentUsingWhich(ExpressionContext expressionContext, Document document) {
        Class<?>[] clsArr = {Hashtable.class, String.class, String.class};
        try {
            Class findProviderClass = ObjectFactory.findProviderClass("org.apache.env.Which", ObjectFactory.findClassLoader(), true);
            if (findProviderClass == null) {
                return null;
            }
            Method method = findProviderClass.getMethod("which", clsArr);
            Hashtable hashtable = new Hashtable();
            method.invoke(null, hashtable, "XmlCommons;Xalan;Xerces;Crimson;Ant", "");
            Element createElement = document.createElement("checkEnvironmentExtension");
            Hashtree2Node.appendHashToNode(hashtable, "whichReport", createElement, document);
            return createElement;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static NodeList difference(NodeList nodeList, NodeList nodeList2) {
        return ExsltSets.difference(nodeList, nodeList2);
    }

    public static NodeList distinct(NodeList nodeList) {
        return ExsltSets.distinct(nodeList);
    }

    public static XObject evaluate(ExpressionContext expressionContext, String str) throws SAXNotSupportedException {
        return ExsltDynamic.evaluate(expressionContext, str);
    }

    public static boolean hasSameNodes(NodeList nodeList, NodeList nodeList2) {
        NodeSet nodeSet = new NodeSet(nodeList);
        NodeSet nodeSet2 = new NodeSet(nodeList2);
        if (nodeSet.getLength() != nodeSet2.getLength()) {
            return false;
        }
        for (int i = 0; i < nodeSet.getLength(); i++) {
            if (!nodeSet2.contains(nodeSet.elementAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static NodeList intersection(NodeList nodeList, NodeList nodeList2) {
        return ExsltSets.intersection(nodeList, nodeList2);
    }

    public static NodeSet nodeset(ExpressionContext expressionContext, Object obj) {
        if (obj instanceof NodeIterator) {
            return new NodeSet((NodeIterator) obj);
        }
        String str = obj instanceof String ? (String) obj : obj instanceof Boolean ? new XBoolean(((Boolean) obj).booleanValue()).str() : obj instanceof Double ? new XNumber(((Double) obj).doubleValue()).str() : obj.toString();
        try {
            Document newDocument = DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();
            Text createTextNode = newDocument.createTextNode(str);
            DocumentFragment createDocumentFragment = newDocument.createDocumentFragment();
            createDocumentFragment.appendChild(createTextNode);
            return new NodeSet(createDocumentFragment);
        } catch (ParserConfigurationException e) {
            throw new WrappedRuntimeException(e);
        }
    }

    public static NodeList tokenize(String str, String str2) {
        Document document = DocumentHolder.m_doc;
        StringTokenizer stringTokenizer = new StringTokenizer(str, str2);
        NodeSet nodeSet = new NodeSet();
        synchronized (document) {
            while (stringTokenizer.hasMoreTokens()) {
                nodeSet.addNode(document.createTextNode(stringTokenizer.nextToken()));
            }
        }
        return nodeSet;
    }

    public static NodeList tokenize(String str) {
        return tokenize(str, " \t\n\r");
    }
}
