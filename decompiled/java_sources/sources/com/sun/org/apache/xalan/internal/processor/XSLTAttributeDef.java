package com.sun.org.apache.xalan.internal.processor;

import com.caverock.androidsvg.SVGParser;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.templates.AVT;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xml.internal.utils.StringToIntTable;
import com.sun.org.apache.xml.internal.utils.StringVector;
import com.sun.org.apache.xml.internal.utils.XML11Char;
import com.sun.org.apache.xpath.internal.XPath;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.xml.transform.TransformerException;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class XSLTAttributeDef {
    static final int ERROR = 1;
    static final int FATAL = 0;
    static final String S_FOREIGNATTR_SETTER = "setForeignAttr";
    static final int T_AVT = 3;
    static final int T_AVT_QNAME = 18;
    static final int T_CDATA = 1;
    static final int T_CHAR = 6;
    static final int T_ENUM = 11;
    static final int T_ENUM_OR_PQNAME = 16;
    static final int T_EXPR = 5;
    static final int T_NCNAME = 17;
    static final int T_NMTOKEN = 13;
    static final int T_NUMBER = 7;
    static final int T_PATTERN = 4;
    static final int T_PREFIXLIST = 20;
    static final int T_PREFIX_URLLIST = 15;
    static final int T_QNAME = 9;
    static final int T_QNAMES = 10;
    static final int T_QNAMES_RESOLVE_NULL = 19;
    static final int T_SIMPLEPATTERNLIST = 12;
    static final int T_STRINGLIST = 14;
    static final int T_URL = 2;
    static final int T_YESNO = 8;
    static final int WARNING = 2;
    static final XSLTAttributeDef m_foreignAttr = new XSLTAttributeDef("*", "*", 1, false, false, 2);
    private String m_default;
    private StringToIntTable m_enums;
    int m_errorType;
    private String m_name;
    private String m_namespace;
    private boolean m_required;
    String m_setterString;
    private boolean m_supportsAVT;
    private int m_type;

    public XSLTAttributeDef(String str, String str2, int i, boolean z, boolean z2, int i2) {
        this.m_setterString = null;
        this.m_namespace = str;
        this.m_name = str2;
        this.m_type = i;
        this.m_required = z;
        this.m_supportsAVT = z2;
        this.m_errorType = i2;
    }

    private int getEnum(String str) {
        return this.m_enums.get(str);
    }

    private String[] getEnumNames() {
        return this.m_enums.keys();
    }

    private StringBuffer getListOfEnums() {
        StringBuffer stringBuffer = new StringBuffer();
        String[] enumNames = getEnumNames();
        for (int i = 0; i < enumNames.length; i++) {
            if (i > 0) {
                stringBuffer.append(' ');
            }
            stringBuffer.append(enumNames[i]);
        }
        return stringBuffer;
    }

    private Class getPrimativeClass(Object obj) {
        if (obj instanceof XPath) {
            return XPath.class;
        }
        Class<?> cls = obj.getClass();
        if (cls == Double.class) {
            cls = Double.TYPE;
        }
        return cls == Float.class ? Float.TYPE : cls == Boolean.class ? Boolean.TYPE : cls == Byte.class ? Byte.TYPE : cls == Character.class ? Character.TYPE : cls == Short.class ? Short.TYPE : cls == Integer.class ? Integer.TYPE : cls == Long.class ? Long.TYPE : cls;
    }

    private void handleError(StylesheetHandler stylesheetHandler, String str, Object[] objArr, Exception exc) throws SAXException {
        int errorType = getErrorType();
        if (errorType == 0 || errorType == 1) {
            stylesheetHandler.error(str, objArr, exc);
        } else {
            if (errorType != 2) {
                return;
            }
            stylesheetHandler.warn(str, objArr);
        }
    }

    private Boolean processYESNO(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4) throws SAXException {
        if (str4.equals("yes") || str4.equals(SVGParser.f16048t)) {
            return new Boolean(str4.equals("yes"));
        }
        handleError(stylesheetHandler, "INVALID_BOOLEAN", new Object[]{str2, str4}, null);
        return null;
    }

    public String getDefault() {
        return this.m_default;
    }

    public int getErrorType() {
        return this.m_errorType;
    }

    public String getName() {
        return this.m_name;
    }

    public String getNamespace() {
        return this.m_namespace;
    }

    public boolean getRequired() {
        return this.m_required;
    }

    public String getSetterMethodName() {
        if (this.m_setterString == null) {
            if (m_foreignAttr == this) {
                return S_FOREIGNATTR_SETTER;
            }
            if (this.m_name.equals("*")) {
                this.m_setterString = "addLiteralResultAttribute";
                return "addLiteralResultAttribute";
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(ExtensionNamespaceContext.EXSLT_SET_PREFIX);
            String str = this.m_namespace;
            if (str != null && str.equals("http://www.w3.org/XML/1998/namespace")) {
                stringBuffer.append("Xml");
            }
            int length = this.m_name.length();
            int i = 0;
            while (i < length) {
                char charAt = this.m_name.charAt(i);
                if ('-' == charAt) {
                    i++;
                    charAt = Character.toUpperCase(this.m_name.charAt(i));
                } else if (i == 0) {
                    charAt = Character.toUpperCase(charAt);
                }
                stringBuffer.append(charAt);
                i++;
            }
            this.m_setterString = stringBuffer.toString();
        }
        return this.m_setterString;
    }

    public boolean getSupportsAVT() {
        return this.m_supportsAVT;
    }

    public int getType() {
        return this.m_type;
    }

    public AVT processAVT(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4, ElemTemplateElement elemTemplateElement) throws SAXException {
        try {
            return new AVT(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
        } catch (TransformerException e) {
            throw new SAXException(e);
        }
    }

    public Object processAVT_QNAME(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4, ElemTemplateElement elemTemplateElement) throws SAXException {
        try {
            AVT avt = new AVT(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            if (avt.isSimple()) {
                int indexOf = str4.indexOf(58);
                if (indexOf >= 0 && !XML11Char.isXML11ValidNCName(str4.substring(0, indexOf))) {
                    handleError(stylesheetHandler, "INVALID_QNAME", new Object[]{str2, str4}, null);
                    return null;
                }
                String substring = indexOf < 0 ? str4 : str4.substring(indexOf + 1);
                if (substring == null || substring.length() == 0 || !XML11Char.isXML11ValidNCName(substring)) {
                    handleError(stylesheetHandler, "INVALID_QNAME", new Object[]{str2, str4}, null);
                    return null;
                }
            }
            return avt;
        } catch (TransformerException e) {
            throw new SAXException(e);
        }
    }

    public Object processCDATA(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4, ElemTemplateElement elemTemplateElement) throws SAXException {
        if (!getSupportsAVT()) {
            return str4;
        }
        try {
            return new AVT(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
        } catch (TransformerException e) {
            throw new SAXException(e);
        }
    }

    public Object processCHAR(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4, ElemTemplateElement elemTemplateElement) throws SAXException {
        if (!getSupportsAVT()) {
            if (str4.length() == 1) {
                return new Character(str4.charAt(0));
            }
            handleError(stylesheetHandler, "INVALID_TCHAR", new Object[]{str2, str4}, null);
            return null;
        }
        try {
            AVT avt = new AVT(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            if (!avt.isSimple() || str4.length() == 1) {
                return avt;
            }
            handleError(stylesheetHandler, "INVALID_TCHAR", new Object[]{str2, str4}, null);
            return null;
        } catch (TransformerException e) {
            throw new SAXException(e);
        }
    }

    public Object processENUM(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4, ElemTemplateElement elemTemplateElement) throws SAXException {
        AVT avt;
        if (getSupportsAVT()) {
            try {
                avt = new AVT(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
                if (!avt.isSimple()) {
                    return avt;
                }
            } catch (TransformerException e) {
                throw new SAXException(e);
            }
        } else {
            avt = null;
        }
        int i = getEnum(str4);
        if (i != -10000) {
            return getSupportsAVT() ? avt : new Integer(i);
        }
        handleError(stylesheetHandler, "INVALID_ENUM", new Object[]{str2, str4, getListOfEnums().toString()}, null);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object processENUM_OR_PQNAME(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4, ElemTemplateElement elemTemplateElement) throws SAXException {
        AVT avt;
        if (getSupportsAVT()) {
            try {
                avt = new AVT(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
                if (!avt.isSimple()) {
                    return avt;
                }
            } catch (TransformerException e) {
                throw new SAXException(e);
            }
        } else {
            avt = null;
        }
        int i = getEnum(str4);
        if (i != -10000) {
            return avt == null ? new Integer(i) : avt;
        }
        try {
            QName qName = new QName(str4, (PrefixResolver) stylesheetHandler, true);
            if (avt == null) {
                avt = qName;
            }
            if (qName.getPrefix() != null) {
                return avt;
            }
            StringBuffer listOfEnums = getListOfEnums();
            listOfEnums.append(" <qname-but-not-ncname>");
            handleError(stylesheetHandler, "INVALID_ENUM", new Object[]{str2, str4, listOfEnums.toString()}, null);
            return null;
        } catch (IllegalArgumentException e2) {
            StringBuffer listOfEnums2 = getListOfEnums();
            listOfEnums2.append(" <qname-but-not-ncname>");
            handleError(stylesheetHandler, "INVALID_ENUM", new Object[]{str2, str4, listOfEnums2.toString()}, e2);
            return null;
        } catch (RuntimeException e3) {
            StringBuffer listOfEnums3 = getListOfEnums();
            listOfEnums3.append(" <qname-but-not-ncname>");
            handleError(stylesheetHandler, "INVALID_ENUM", new Object[]{str2, str4, listOfEnums3.toString()}, e3);
            return null;
        }
    }

    public Object processEXPR(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4, ElemTemplateElement elemTemplateElement) throws SAXException {
        try {
            return stylesheetHandler.createXPath(str4, elemTemplateElement);
        } catch (TransformerException e) {
            new SAXException(e);
            throw new SAXException(e);
        }
    }

    public Object processNCNAME(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4, ElemTemplateElement elemTemplateElement) throws SAXException {
        if (!getSupportsAVT()) {
            if (XML11Char.isXML11ValidNCName(str4)) {
                return str4;
            }
            handleError(stylesheetHandler, "INVALID_NCNAME", new Object[]{str2, str4}, null);
            return null;
        }
        try {
            AVT avt = new AVT(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            if (!avt.isSimple() || XML11Char.isXML11ValidNCName(str4)) {
                return avt;
            }
            handleError(stylesheetHandler, "INVALID_NCNAME", new Object[]{str2, str4}, null);
            return null;
        } catch (TransformerException e) {
            throw new SAXException(e);
        }
    }

    public Object processNMTOKEN(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4, ElemTemplateElement elemTemplateElement) throws SAXException {
        if (!getSupportsAVT()) {
            if (XML11Char.isXML11ValidNmtoken(str4)) {
                return str4;
            }
            handleError(stylesheetHandler, "INVALID_NMTOKEN", new Object[]{str2, str4}, null);
            return null;
        }
        try {
            AVT avt = new AVT(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            if (!avt.isSimple() || XML11Char.isXML11ValidNmtoken(str4)) {
                return avt;
            }
            handleError(stylesheetHandler, "INVALID_NMTOKEN", new Object[]{str2, str4}, null);
            return null;
        } catch (TransformerException e) {
            throw new SAXException(e);
        }
    }

    public Object processNUMBER(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4, ElemTemplateElement elemTemplateElement) throws SAXException {
        if (!getSupportsAVT()) {
            try {
                return Double.valueOf(str4);
            } catch (NumberFormatException e) {
                handleError(stylesheetHandler, "INVALID_NUMBER", new Object[]{str2, str4}, e);
                return null;
            }
        }
        try {
            AVT avt = new AVT(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            if (avt.isSimple()) {
                Double.valueOf(str4);
            }
            return avt;
        } catch (NumberFormatException e2) {
            handleError(stylesheetHandler, "INVALID_NUMBER", new Object[]{str2, str4}, e2);
            return null;
        } catch (TransformerException e3) {
            throw new SAXException(e3);
        }
    }

    public Object processPATTERN(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4, ElemTemplateElement elemTemplateElement) throws SAXException {
        try {
            return stylesheetHandler.createMatchPatternXPath(str4, elemTemplateElement);
        } catch (TransformerException e) {
            throw new SAXException(e);
        }
    }

    public StringVector processPREFIX_LIST(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4) throws SAXException {
        StringTokenizer stringTokenizer = new StringTokenizer(str4, " \t\n\r\f");
        int countTokens = stringTokenizer.countTokens();
        StringVector stringVector = new StringVector(countTokens);
        for (int i = 0; i < countTokens; i++) {
            String nextToken = stringTokenizer.nextToken();
            String namespaceForPrefix = stylesheetHandler.getNamespaceForPrefix(nextToken);
            if (!nextToken.equals("#default") && namespaceForPrefix == null) {
                throw new SAXException(XSLMessages.createMessage("ER_CANT_RESOLVE_NSPREFIX", new Object[]{nextToken}));
            }
            stringVector.addElement(nextToken);
        }
        return stringVector;
    }

    public StringVector processPREFIX_URLLIST(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4) throws SAXException {
        StringTokenizer stringTokenizer = new StringTokenizer(str4, " \t\n\r\f");
        int countTokens = stringTokenizer.countTokens();
        StringVector stringVector = new StringVector(countTokens);
        for (int i = 0; i < countTokens; i++) {
            String nextToken = stringTokenizer.nextToken();
            String namespaceForPrefix = stylesheetHandler.getNamespaceForPrefix(nextToken);
            if (namespaceForPrefix == null) {
                throw new SAXException(XSLMessages.createMessage("ER_CANT_RESOLVE_NSPREFIX", new Object[]{nextToken}));
            }
            stringVector.addElement(namespaceForPrefix);
        }
        return stringVector;
    }

    public Object processQNAME(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4, ElemTemplateElement elemTemplateElement) throws SAXException {
        try {
            return new QName(str4, (PrefixResolver) stylesheetHandler, true);
        } catch (IllegalArgumentException e) {
            handleError(stylesheetHandler, "INVALID_QNAME", new Object[]{str2, str4}, e);
            return null;
        } catch (RuntimeException e2) {
            handleError(stylesheetHandler, "INVALID_QNAME", new Object[]{str2, str4}, e2);
            return null;
        }
    }

    public Vector processQNAMES(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4) throws SAXException {
        StringTokenizer stringTokenizer = new StringTokenizer(str4, " \t\n\r\f");
        int countTokens = stringTokenizer.countTokens();
        Vector vector = new Vector(countTokens);
        for (int i = 0; i < countTokens; i++) {
            vector.addElement(new QName(stringTokenizer.nextToken(), stylesheetHandler));
        }
        return vector;
    }

    public final Vector processQNAMESRNU(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4) throws SAXException {
        StringTokenizer stringTokenizer = new StringTokenizer(str4, " \t\n\r\f");
        int countTokens = stringTokenizer.countTokens();
        Vector vector = new Vector(countTokens);
        String namespaceForPrefix = stylesheetHandler.getNamespaceForPrefix("");
        for (int i = 0; i < countTokens; i++) {
            String nextToken = stringTokenizer.nextToken();
            if (nextToken.indexOf(58) == -1) {
                vector.addElement(new QName(namespaceForPrefix, nextToken));
            } else {
                vector.addElement(new QName(nextToken, stylesheetHandler));
            }
        }
        return vector;
    }

    public Vector processSIMPLEPATTERNLIST(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4, ElemTemplateElement elemTemplateElement) throws SAXException {
        try {
            StringTokenizer stringTokenizer = new StringTokenizer(str4, " \t\n\r\f");
            int countTokens = stringTokenizer.countTokens();
            Vector vector = new Vector(countTokens);
            for (int i = 0; i < countTokens; i++) {
                vector.addElement(stylesheetHandler.createMatchPatternXPath(stringTokenizer.nextToken(), elemTemplateElement));
            }
            return vector;
        } catch (TransformerException e) {
            throw new SAXException(e);
        }
    }

    public StringVector processSTRINGLIST(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4) {
        StringTokenizer stringTokenizer = new StringTokenizer(str4, " \t\n\r\f");
        int countTokens = stringTokenizer.countTokens();
        StringVector stringVector = new StringVector(countTokens);
        for (int i = 0; i < countTokens; i++) {
            stringVector.addElement(stringTokenizer.nextToken());
        }
        return stringVector;
    }

    public Object processURL(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4, ElemTemplateElement elemTemplateElement) throws SAXException {
        if (!getSupportsAVT()) {
            return str4;
        }
        try {
            return new AVT(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
        } catch (TransformerException e) {
            throw new SAXException(e);
        }
    }

    public Object processValue(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4, ElemTemplateElement elemTemplateElement) throws SAXException {
        switch (getType()) {
            case 1:
                return processCDATA(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            case 2:
                return processURL(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            case 3:
                return processAVT(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            case 4:
                return processPATTERN(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            case 5:
                return processEXPR(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            case 6:
                return processCHAR(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            case 7:
                return processNUMBER(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            case 8:
                return processYESNO(stylesheetHandler, str, str2, str3, str4);
            case 9:
                return processQNAME(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            case 10:
                return processQNAMES(stylesheetHandler, str, str2, str3, str4);
            case 11:
                return processENUM(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            case 12:
                return processSIMPLEPATTERNLIST(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            case 13:
                return processNMTOKEN(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            case 14:
                return processSTRINGLIST(stylesheetHandler, str, str2, str3, str4);
            case 15:
                return processPREFIX_URLLIST(stylesheetHandler, str, str2, str3, str4);
            case 16:
                return processENUM_OR_PQNAME(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            case 17:
                return processNCNAME(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            case 18:
                return processAVT_QNAME(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
            case 19:
                return processQNAMESRNU(stylesheetHandler, str, str2, str3, str4);
            case 20:
                return processPREFIX_LIST(stylesheetHandler, str, str2, str3, str4);
            default:
                return null;
        }
    }

    public boolean setAttrValue(StylesheetHandler stylesheetHandler, String str, String str2, String str3, String str4, ElemTemplateElement elemTemplateElement) throws SAXException {
        String setterMethodName;
        Method method;
        Method method2;
        Object[] objArr;
        if (!str3.equals("xmlns") && !str3.startsWith("xmlns:") && (setterMethodName = getSetterMethodName()) != null) {
            try {
                try {
                    if (setterMethodName.equals(S_FOREIGNATTR_SETTER)) {
                        if (str == null) {
                            str = "";
                        }
                        Class<?> cls = str.getClass();
                        method2 = elemTemplateElement.getClass().getMethod(setterMethodName, cls, cls, cls, cls);
                        objArr = new Object[]{str, str2, str3, str4};
                    } else {
                        Object processValue = processValue(stylesheetHandler, str, str2, str3, str4, elemTemplateElement);
                        if (processValue == null) {
                            return false;
                        }
                        Class<?>[] clsArr = {getPrimativeClass(processValue)};
                        try {
                            method = elemTemplateElement.getClass().getMethod(setterMethodName, clsArr);
                        } catch (NoSuchMethodException unused) {
                            clsArr[0] = processValue.getClass();
                            method = elemTemplateElement.getClass().getMethod(setterMethodName, clsArr);
                        }
                        method2 = method;
                        objArr = new Object[]{processValue};
                    }
                    method2.invoke(elemTemplateElement, objArr);
                } catch (NoSuchMethodException e) {
                    if (!setterMethodName.equals(S_FOREIGNATTR_SETTER)) {
                        stylesheetHandler.error("ER_FAILED_CALLING_METHOD", new Object[]{setterMethodName}, e);
                        return false;
                    }
                }
            } catch (IllegalAccessException e2) {
                stylesheetHandler.error("ER_FAILED_CALLING_METHOD", new Object[]{setterMethodName}, e2);
                return false;
            } catch (InvocationTargetException e3) {
                handleError(stylesheetHandler, "WG_ILLEGAL_ATTRIBUTE_VALUE", new Object[]{"name", getName()}, e3);
                return false;
            }
        }
        return true;
    }

    public void setDefAttrValue(StylesheetHandler stylesheetHandler, ElemTemplateElement elemTemplateElement) throws SAXException {
        setAttrValue(stylesheetHandler, getNamespace(), getName(), getName(), getDefault(), elemTemplateElement);
    }

    public void setDefault(String str) {
        this.m_default = str;
    }

    public XSLTAttributeDef(String str, String str2, int i, boolean z, int i2, String str3) {
        this.m_setterString = null;
        this.m_namespace = str;
        this.m_name = str2;
        this.m_type = i;
        this.m_required = false;
        this.m_supportsAVT = z;
        this.m_errorType = i2;
        this.m_default = str3;
    }

    public XSLTAttributeDef(String str, String str2, boolean z, boolean z2, boolean z3, int i, String str3, int i2, String str4, int i3) {
        this.m_errorType = 2;
        this.m_setterString = null;
        this.m_namespace = str;
        this.m_name = str2;
        this.m_type = z3 ? 16 : 11;
        this.m_required = z;
        this.m_supportsAVT = z2;
        this.m_errorType = i;
        StringToIntTable stringToIntTable = new StringToIntTable(2);
        this.m_enums = stringToIntTable;
        stringToIntTable.put(str3, i2);
        this.m_enums.put(str4, i3);
    }

    public XSLTAttributeDef(String str, String str2, boolean z, boolean z2, boolean z3, int i, String str3, int i2, String str4, int i3, String str5, int i4) {
        this.m_errorType = 2;
        this.m_setterString = null;
        this.m_namespace = str;
        this.m_name = str2;
        this.m_type = z3 ? 16 : 11;
        this.m_required = z;
        this.m_supportsAVT = z2;
        this.m_errorType = i;
        StringToIntTable stringToIntTable = new StringToIntTable(3);
        this.m_enums = stringToIntTable;
        stringToIntTable.put(str3, i2);
        this.m_enums.put(str4, i3);
        this.m_enums.put(str5, i4);
    }

    public XSLTAttributeDef(String str, String str2, boolean z, boolean z2, boolean z3, int i, String str3, int i2, String str4, int i3, String str5, int i4, String str6, int i5) {
        this.m_errorType = 2;
        this.m_setterString = null;
        this.m_namespace = str;
        this.m_name = str2;
        this.m_type = z3 ? 16 : 11;
        this.m_required = z;
        this.m_supportsAVT = z2;
        this.m_errorType = i;
        StringToIntTable stringToIntTable = new StringToIntTable(4);
        this.m_enums = stringToIntTable;
        stringToIntTable.put(str3, i2);
        this.m_enums.put(str4, i3);
        this.m_enums.put(str5, i4);
        this.m_enums.put(str6, i5);
    }
}
