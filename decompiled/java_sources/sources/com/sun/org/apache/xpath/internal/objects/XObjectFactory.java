package com.sun.org.apache.xpath.internal.objects;

import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.axes.OneStepIterator;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.traversal.NodeIterator;

/* loaded from: classes10.dex */
public class XObjectFactory {
    public static XObject create(Object obj) {
        XObject xObject;
        if (obj instanceof XObject) {
            return (XObject) obj;
        }
        if (obj instanceof String) {
            xObject = new XString((String) obj);
        } else if (obj instanceof Boolean) {
            xObject = new XBoolean((Boolean) obj);
        } else if (obj instanceof Double) {
            xObject = new XNumber((Double) obj);
        } else {
            xObject = new XObject(obj);
        }
        return xObject;
    }

    public static XObject create(Object obj, XPathContext xPathContext) {
        XObject xObject;
        XNodeSetForDOM xNodeSetForDOM;
        if (obj instanceof XObject) {
            return (XObject) obj;
        }
        if (obj instanceof String) {
            xObject = new XString((String) obj);
        } else if (obj instanceof Boolean) {
            xObject = new XBoolean((Boolean) obj);
        } else if (obj instanceof Number) {
            xObject = new XNumber((Number) obj);
        } else {
            if (obj instanceof DTM) {
                DTM dtm = (DTM) obj;
                try {
                    int document = dtm.getDocument();
                    DTMAxisIterator axisIterator = dtm.getAxisIterator(13);
                    axisIterator.setStartNode(document);
                    OneStepIterator oneStepIterator = new OneStepIterator(axisIterator, 13);
                    oneStepIterator.setRoot(document, xPathContext);
                    return new XNodeSet(oneStepIterator);
                } catch (Exception e) {
                    throw new WrappedRuntimeException(e);
                }
            }
            if (obj instanceof DTMAxisIterator) {
                DTMAxisIterator dTMAxisIterator = (DTMAxisIterator) obj;
                try {
                    OneStepIterator oneStepIterator2 = new OneStepIterator(dTMAxisIterator, 13);
                    oneStepIterator2.setRoot(dTMAxisIterator.getStartNode(), xPathContext);
                    return new XNodeSet(oneStepIterator2);
                } catch (Exception e2) {
                    throw new WrappedRuntimeException(e2);
                }
            }
            if (obj instanceof DTMIterator) {
                xObject = new XNodeSet((DTMIterator) obj);
            } else {
                if (obj instanceof Node) {
                    xNodeSetForDOM = new XNodeSetForDOM((Node) obj, xPathContext);
                } else if (obj instanceof NodeList) {
                    xNodeSetForDOM = new XNodeSetForDOM((NodeList) obj, xPathContext);
                } else if (obj instanceof NodeIterator) {
                    xNodeSetForDOM = new XNodeSetForDOM((NodeIterator) obj, xPathContext);
                } else {
                    xObject = new XObject(obj);
                }
                return xNodeSetForDOM;
            }
        }
        return xObject;
    }
}
