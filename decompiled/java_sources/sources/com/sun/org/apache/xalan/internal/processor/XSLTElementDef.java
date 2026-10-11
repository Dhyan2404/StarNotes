package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xml.internal.utils.Constants;
import com.sun.org.apache.xml.internal.utils.QName;
import java.util.Enumeration;
import java.util.Hashtable;

/* loaded from: classes10.dex */
public class XSLTElementDef {
    static final int T_ANY = 3;
    static final int T_ELEMENT = 1;
    static final int T_PCDATA = 2;
    private XSLTAttributeDef[] m_attributes;
    private Class m_classObject;
    private XSLTElementProcessor m_elementProcessor;
    private XSLTElementDef[] m_elements;
    private boolean m_has_required;
    boolean m_isOrdered;
    private int m_lastOrder;
    private boolean m_multiAllowed;
    private String m_name;
    private String m_nameAlias;
    private String m_namespace;
    private int m_order;
    private boolean m_required;
    Hashtable m_requiredFound;
    private int m_type;

    public XSLTElementDef() {
        this.m_type = 1;
        this.m_has_required = false;
        this.m_required = false;
        this.m_isOrdered = false;
        this.m_order = -1;
        this.m_lastOrder = -1;
        this.m_multiAllowed = true;
    }

    private boolean QNameEquals(String str, String str2) {
        return equalsMayBeNullOrZeroLen(this.m_namespace, str) && (equalsMayBeNullOrZeroLen(this.m_name, str2) || equalsMayBeNullOrZeroLen(this.m_nameAlias, str2));
    }

    private static boolean equalsMayBeNull(Object obj, Object obj2) {
        return obj2 == obj || !(obj == null || obj2 == null || !obj2.equals(obj));
    }

    private static boolean equalsMayBeNullOrZeroLen(String str, String str2) {
        int length = str == null ? 0 : str.length();
        if (length != (str2 == null ? 0 : str2.length())) {
            return false;
        }
        if (length == 0) {
            return true;
        }
        return str.equals(str2);
    }

    public void build(String str, String str2, String str3, XSLTElementDef[] xSLTElementDefArr, XSLTAttributeDef[] xSLTAttributeDefArr, XSLTElementProcessor xSLTElementProcessor, Class cls) {
        XSLTElementDef[] xSLTElementDefArr2;
        this.m_namespace = str;
        this.m_name = str2;
        this.m_nameAlias = str3;
        this.m_elements = xSLTElementDefArr;
        this.m_attributes = xSLTAttributeDefArr;
        setElementProcessor(xSLTElementProcessor);
        this.m_classObject = cls;
        if (!hasRequired() || (xSLTElementDefArr2 = this.m_elements) == null) {
            return;
        }
        int length = xSLTElementDefArr2.length;
        for (int i = 0; i < length; i++) {
            XSLTElementDef xSLTElementDef = this.m_elements[i];
            if (xSLTElementDef != null && xSLTElementDef.getRequired()) {
                if (this.m_requiredFound == null) {
                    this.m_requiredFound = new Hashtable();
                }
                this.m_requiredFound.put(xSLTElementDef.getName(), "xsl:" + xSLTElementDef.getName());
            }
        }
    }

    public XSLTAttributeDef getAttributeDef(String str, String str2) {
        XSLTAttributeDef xSLTAttributeDef = null;
        for (XSLTAttributeDef xSLTAttributeDef2 : getAttributes()) {
            String namespace = xSLTAttributeDef2.getNamespace();
            String name = xSLTAttributeDef2.getName();
            if (name.equals("*") && (equalsMayBeNullOrZeroLen(str, namespace) || (namespace != null && namespace.equals("*") && str != null && str.length() > 0))) {
                return xSLTAttributeDef2;
            }
            if (name.equals("*") && namespace == null) {
                xSLTAttributeDef = xSLTAttributeDef2;
            } else if (equalsMayBeNullOrZeroLen(str, namespace) && str2.equals(name)) {
                return xSLTAttributeDef2;
            }
        }
        return (xSLTAttributeDef != null || str.length() <= 0 || equalsMayBeNullOrZeroLen(str, "http://www.w3.org/1999/XSL/Transform")) ? xSLTAttributeDef : XSLTAttributeDef.m_foreignAttr;
    }

    public XSLTAttributeDef[] getAttributes() {
        return this.m_attributes;
    }

    public Class getClassObject() {
        return this.m_classObject;
    }

    public XSLTElementProcessor getElementProcessor() {
        return this.m_elementProcessor;
    }

    public XSLTElementDef[] getElements() {
        return this.m_elements;
    }

    public int getLastOrder() {
        return this.m_lastOrder;
    }

    public boolean getMultiAllowed() {
        return this.m_multiAllowed;
    }

    public String getName() {
        return this.m_name;
    }

    public String getNameAlias() {
        return this.m_nameAlias;
    }

    public String getNamespace() {
        return this.m_namespace;
    }

    public int getOrder() {
        return this.m_order;
    }

    public XSLTElementProcessor getProcessorFor(String str, String str2) {
        XSLTElementDef[] xSLTElementDefArr = this.m_elements;
        if (xSLTElementDefArr == null) {
            return null;
        }
        int length = xSLTElementDefArr.length;
        int i = -1;
        int i2 = 0;
        XSLTElementProcessor xSLTElementProcessor = null;
        boolean z = true;
        while (true) {
            if (i2 >= length) {
                break;
            }
            XSLTElementDef xSLTElementDef = this.m_elements[i2];
            if (xSLTElementDef.m_name.equals("*")) {
                if (!equalsMayBeNullOrZeroLen(str, "http://www.w3.org/1999/XSL/Transform")) {
                    xSLTElementProcessor = xSLTElementDef.m_elementProcessor;
                    i = xSLTElementDef.getOrder();
                    z = xSLTElementDef.getMultiAllowed();
                }
            } else if (xSLTElementDef.QNameEquals(str, str2)) {
                if (xSLTElementDef.getRequired()) {
                    setRequiredFound(xSLTElementDef.getName(), true);
                }
                i = xSLTElementDef.getOrder();
                z = xSLTElementDef.getMultiAllowed();
                xSLTElementProcessor = xSLTElementDef.m_elementProcessor;
            }
            i2++;
        }
        if (xSLTElementProcessor != null && isOrdered()) {
            int lastOrder = getLastOrder();
            if (i > lastOrder) {
                setLastOrder(i);
            } else {
                if (i == lastOrder && !z) {
                    return null;
                }
                if (i < lastOrder && i > 0) {
                    return null;
                }
            }
        }
        return xSLTElementProcessor;
    }

    public XSLTElementProcessor getProcessorForUnknown(String str, String str2) {
        XSLTElementDef[] xSLTElementDefArr = this.m_elements;
        if (xSLTElementDefArr == null) {
            return null;
        }
        int length = xSLTElementDefArr.length;
        for (int i = 0; i < length; i++) {
            XSLTElementDef xSLTElementDef = this.m_elements[i];
            if (xSLTElementDef.m_name.equals("unknown") && str.length() > 0) {
                return xSLTElementDef.m_elementProcessor;
            }
        }
        return null;
    }

    public boolean getRequired() {
        return this.m_required;
    }

    public String getRequiredElem() {
        Hashtable hashtable = this.m_requiredFound;
        if (hashtable == null) {
            return null;
        }
        Enumeration elements = hashtable.elements();
        String str = "";
        boolean z = true;
        while (elements.hasMoreElements()) {
            if (z) {
                z = false;
            } else {
                str = str + ", ";
            }
            str = str + ((String) elements.nextElement());
        }
        return str;
    }

    public boolean getRequiredFound() {
        Hashtable hashtable = this.m_requiredFound;
        if (hashtable == null) {
            return true;
        }
        return hashtable.isEmpty();
    }

    public int getType() {
        return this.m_type;
    }

    public boolean hasRequired() {
        return this.m_has_required;
    }

    public boolean isOrdered() {
        return this.m_isOrdered;
    }

    public void setElementProcessor(XSLTElementProcessor xSLTElementProcessor) {
        if (xSLTElementProcessor != null) {
            this.m_elementProcessor = xSLTElementProcessor;
            xSLTElementProcessor.setElemDef(this);
        }
    }

    public void setElements(XSLTElementDef[] xSLTElementDefArr) {
        this.m_elements = xSLTElementDefArr;
    }

    public void setLastOrder(int i) {
        this.m_lastOrder = i;
    }

    public void setRequiredFound(String str, boolean z) {
        if (this.m_requiredFound.get(str) != null) {
            this.m_requiredFound.remove(str);
        }
    }

    public void setType(int i) {
        this.m_type = i;
    }

    public XSLTElementDef(XSLTSchema xSLTSchema, String str, String str2, String str3, XSLTElementDef[] xSLTElementDefArr, XSLTAttributeDef[] xSLTAttributeDefArr, XSLTElementProcessor xSLTElementProcessor, Class cls) {
        this.m_type = 1;
        this.m_has_required = false;
        this.m_required = false;
        this.m_isOrdered = false;
        this.m_order = -1;
        this.m_lastOrder = -1;
        this.m_multiAllowed = true;
        build(str, str2, str3, xSLTElementDefArr, xSLTAttributeDefArr, xSLTElementProcessor, cls);
        if (str != null) {
            if (str.equals("http://www.w3.org/1999/XSL/Transform") || str.equals("http://xml.apache.org/xalan") || str.equals(Constants.S_BUILTIN_OLD_EXTENSIONS_URL)) {
                xSLTSchema.addAvailableElement(new QName(str, str2));
                if (str3 != null) {
                    xSLTSchema.addAvailableElement(new QName(str, str3));
                }
            }
        }
    }

    public XSLTElementDef(XSLTSchema xSLTSchema, String str, String str2, String str3, XSLTElementDef[] xSLTElementDefArr, XSLTAttributeDef[] xSLTAttributeDefArr, XSLTElementProcessor xSLTElementProcessor, Class cls, boolean z) {
        this.m_type = 1;
        this.m_required = false;
        this.m_isOrdered = false;
        this.m_order = -1;
        this.m_lastOrder = -1;
        this.m_multiAllowed = true;
        this.m_has_required = z;
        build(str, str2, str3, xSLTElementDefArr, xSLTAttributeDefArr, xSLTElementProcessor, cls);
        if (str != null) {
            if (str.equals("http://www.w3.org/1999/XSL/Transform") || str.equals("http://xml.apache.org/xalan") || str.equals(Constants.S_BUILTIN_OLD_EXTENSIONS_URL)) {
                xSLTSchema.addAvailableElement(new QName(str, str2));
                if (str3 != null) {
                    xSLTSchema.addAvailableElement(new QName(str, str3));
                }
            }
        }
    }

    public XSLTElementDef(XSLTSchema xSLTSchema, String str, String str2, String str3, XSLTElementDef[] xSLTElementDefArr, XSLTAttributeDef[] xSLTAttributeDefArr, XSLTElementProcessor xSLTElementProcessor, Class cls, boolean z, boolean z2) {
        this(xSLTSchema, str, str2, str3, xSLTElementDefArr, xSLTAttributeDefArr, xSLTElementProcessor, cls, z);
        this.m_required = z2;
    }

    public XSLTElementDef(XSLTSchema xSLTSchema, String str, String str2, String str3, XSLTElementDef[] xSLTElementDefArr, XSLTAttributeDef[] xSLTAttributeDefArr, XSLTElementProcessor xSLTElementProcessor, Class cls, boolean z, boolean z2, int i, boolean z3) {
        this(xSLTSchema, str, str2, str3, xSLTElementDefArr, xSLTAttributeDefArr, xSLTElementProcessor, cls, z, z2);
        this.m_order = i;
        this.m_multiAllowed = z3;
    }

    public XSLTElementDef(XSLTSchema xSLTSchema, String str, String str2, String str3, XSLTElementDef[] xSLTElementDefArr, XSLTAttributeDef[] xSLTAttributeDefArr, XSLTElementProcessor xSLTElementProcessor, Class cls, boolean z, boolean z2, boolean z3, int i, boolean z4) {
        this(xSLTSchema, str, str2, str3, xSLTElementDefArr, xSLTAttributeDefArr, xSLTElementProcessor, cls, z, z2);
        this.m_order = i;
        this.m_multiAllowed = z4;
        this.m_isOrdered = z3;
    }

    public XSLTElementDef(XSLTSchema xSLTSchema, String str, String str2, String str3, XSLTElementDef[] xSLTElementDefArr, XSLTAttributeDef[] xSLTAttributeDefArr, XSLTElementProcessor xSLTElementProcessor, Class cls, boolean z, int i, boolean z2) {
        this(xSLTSchema, str, str2, str3, xSLTElementDefArr, xSLTAttributeDefArr, xSLTElementProcessor, cls, i, z2);
        this.m_isOrdered = z;
    }

    public XSLTElementDef(XSLTSchema xSLTSchema, String str, String str2, String str3, XSLTElementDef[] xSLTElementDefArr, XSLTAttributeDef[] xSLTAttributeDefArr, XSLTElementProcessor xSLTElementProcessor, Class cls, int i, boolean z) {
        this(xSLTSchema, str, str2, str3, xSLTElementDefArr, xSLTAttributeDefArr, xSLTElementProcessor, cls);
        this.m_order = i;
        this.m_multiAllowed = z;
    }

    public XSLTElementDef(Class cls, XSLTElementProcessor xSLTElementProcessor, int i) {
        this.m_has_required = false;
        this.m_required = false;
        this.m_isOrdered = false;
        this.m_order = -1;
        this.m_lastOrder = -1;
        this.m_multiAllowed = true;
        this.m_classObject = cls;
        this.m_type = i;
        setElementProcessor(xSLTElementProcessor);
    }
}
