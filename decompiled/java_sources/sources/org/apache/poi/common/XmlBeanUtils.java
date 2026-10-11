package org.apache.poi.common;

import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Field;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.util.SuppressForbidden;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.values.XmlObjectBase;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

@SuppressForbidden
/* loaded from: classes12.dex */
public class XmlBeanUtils {
    private static Field TEXTSOURCE;
    private static final Logger LOG = LogManager.getLogger((Class<?>) XmlBeanUtils.class);
    private static ThreadLocal<Boolean> parseDocumentTLB = new ThreadLocal<>();

    static {
        TEXTSOURCE = null;
        try {
            Field declaredField = XmlObjectBase.class.getDeclaredField("_textsource");
            TEXTSOURCE = declaredField;
            declaredField.setAccessible(true);
        } catch (Exception e) {
            LOG.atWarn().withThrowable(e).log();
        }
    }

    private static void clearChildNodes(Node node) {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            clearChildNodes(item);
            node.removeChild(item);
        }
    }

    public static void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static void freeMemory(XmlObject xmlObject) {
        Object value;
        if (!(xmlObject instanceof XmlObjectBase) || (value = getValue(TEXTSOURCE, xmlObject)) == null) {
            return;
        }
        setValue(TEXTSOURCE, xmlObject, null);
        if (value instanceof Node) {
            Node node = (Node) value;
            clearChildNodes(node);
            Node parentNode = node.getParentNode();
            if (parentNode != null) {
                parentNode.removeChild(node);
            }
        }
    }

    private static Object getValue(Field field, Object obj) {
        if (field == null) {
            return null;
        }
        try {
            return field.get(obj);
        } catch (Exception e) {
            LOG.atWarn().withThrowable(e).log();
            return null;
        }
    }

    public static void parseDocument(boolean z) {
        if (z) {
            parseDocumentTLB.remove();
        } else {
            parseDocumentTLB.set(Boolean.FALSE);
        }
    }

    private static void setValue(Field field, Object obj, Object obj2) {
        if (field != null) {
            try {
                field.set(obj, obj2);
            } catch (Exception e) {
                LOG.atWarn().withThrowable(e).log();
            }
        }
    }

    public static boolean parseDocument() {
        Boolean bool = parseDocumentTLB.get();
        return bool == null || bool.booleanValue();
    }
}
