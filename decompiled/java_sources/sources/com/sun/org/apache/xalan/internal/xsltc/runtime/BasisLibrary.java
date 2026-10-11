package com.sun.org.apache.xalan.internal.xsltc.runtime;

import com.sun.org.apache.xalan.internal.xsltc.DOM;
import com.sun.org.apache.xalan.internal.xsltc.Translet;
import com.sun.org.apache.xalan.internal.xsltc.dom.AbsoluteIterator;
import com.sun.org.apache.xalan.internal.xsltc.dom.DOMAdapter;
import com.sun.org.apache.xalan.internal.xsltc.dom.MultiDOM;
import com.sun.org.apache.xalan.internal.xsltc.dom.SingletonIterator;
import com.sun.org.apache.xalan.internal.xsltc.dom.StepIterator;
import com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
import com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBase;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.org.apache.xml.internal.utils.XML11Char;
import java.text.DecimalFormat;
import java.text.FieldPosition;
import java.text.MessageFormat;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.ResourceBundle;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.dom.DOMSource;
import org.simpleframework.xml.strategy.Name;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public final class BasisLibrary {
    public static final String AXIS_SUPPORT_ERR = "AXIS_SUPPORT_ERR";
    public static final String CANT_RESOLVE_RELATIVE_URI_ERR = "CANT_RESOLVE_RELATIVE_URI_ERR";
    public static final String DATA_CONVERSION_ERR = "DATA_CONVERSION_ERR";
    public static final String DOM_ADAPTER_INIT_ERR = "DOM_ADAPTER_INIT_ERR";
    private static final int DOUBLE_FRACTION_DIGITS = 340;
    private static final String EMPTYSTRING = "";
    public static final String EQUALITY_EXPR_ERR = "EQUALITY_EXPR_ERR";
    public static final String ERROR_MESSAGES_KEY = "error-messages";
    public static final String EXTERNAL_FUNC_ERR = "EXTERNAL_FUNC_ERR";
    public static final String FORMAT_NUMBER_ERR = "FORMAT_NUMBER_ERR";
    public static final String INVALID_ARGUMENT_ERR = "INVALID_ARGUMENT_ERR";
    public static final String INVALID_NCNAME_ERR = "INVALID_NCNAME_ERR";
    public static final String INVALID_QNAME_ERR = "INVALID_QNAME_ERR";
    public static final String ITERATOR_CLONE_ERR = "ITERATOR_CLONE_ERR";
    public static final String NAMESPACES_SUPPORT_ERR = "NAMESPACES_SUPPORT_ERR";
    public static final String NAMESPACE_PREFIX_ERR = "NAMESPACE_PREFIX_ERR";
    public static final String PARSER_DTD_SUPPORT_ERR = "PARSER_DTD_SUPPORT_ERR";
    public static final String RUN_TIME_COPY_ERR = "RUN_TIME_COPY_ERR";
    public static final String RUN_TIME_INTERNAL_ERR = "RUN_TIME_INTERNAL_ERR";
    public static final String STRAY_ATTRIBUTE_ERR = "STRAY_ATTRIBUTE_ERR";
    public static final String STRAY_NAMESPACE_ERR = "STRAY_NAMESPACE_ERR";
    public static final String TYPED_AXIS_SUPPORT_ERR = "TYPED_AXIS_SUPPORT_ERR";
    public static final String UNALLOWED_EXTENSION_ELEMENT_ERR = "UNALLOWED_EXTENSION_ELEMENT_ERR";
    public static final String UNALLOWED_EXTENSION_FUNCTION_ERR = "UNALLOWED_EXTENSION_FUNCTION_ERR";
    public static final String UNKNOWN_TRANSLET_VERSION_ERR = "UNKNOWN_TRANSLET_VERSION_ERR";
    public static final String UNSUPPORTED_EXT_ERR = "UNSUPPORTED_EXT_ERR";
    public static final String UNSUPPORTED_XSL_ERR = "UNSUPPORTED_XSL_ERR";
    private static char[] _characterArray = null;
    private static FieldPosition _fieldPosition = null;
    private static DecimalFormat defaultFormatter = null;
    private static String defaultPattern = "";
    private static final double lowerBounds = 0.001d;
    private static ResourceBundle m_bundle = null;
    private static int prefixIndex = 0;
    private static final double upperBounds = 1.0E7d;

    static {
        NumberFormat numberFormat = NumberFormat.getInstance(Locale.getDefault());
        DecimalFormat decimalFormat = numberFormat instanceof DecimalFormat ? (DecimalFormat) numberFormat : new DecimalFormat();
        defaultFormatter = decimalFormat;
        decimalFormat.setMaximumFractionDigits(340);
        defaultFormatter.setMinimumFractionDigits(0);
        defaultFormatter.setMinimumIntegerDigits(1);
        defaultFormatter.setGroupingUsed(false);
        _fieldPosition = new FieldPosition(0);
        _characterArray = new char[32];
        prefixIndex = 0;
        m_bundle = ResourceBundle.getBundle("com.sun.org.apache.xalan.internal.xsltc.runtime.ErrorMessages");
    }

    public static boolean booleanF(Object obj) {
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            return (doubleValue == 0.0d || Double.isNaN(doubleValue)) ? false : true;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).doubleValue() != 0.0d;
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        if (obj instanceof String) {
            return !((String) obj).equals("");
        }
        if (obj instanceof DTMAxisIterator) {
            return ((DTMAxisIterator) obj).reset().next() != -1;
        }
        if (obj instanceof Node) {
            return true;
        }
        if (obj instanceof DOM) {
            return !((DOM) obj).getStringValue().equals("");
        }
        runTimeError(INVALID_ARGUMENT_ERR, obj.getClass().getName(), "boolean()");
        return false;
    }

    public static void checkAttribQName(String str) {
        int indexOf = str.indexOf(":");
        int lastIndexOf = str.lastIndexOf(":");
        String substring = str.substring(lastIndexOf + 1);
        if (indexOf > 0) {
            String substring2 = str.substring(0, indexOf);
            if (indexOf != lastIndexOf) {
                String substring3 = str.substring(indexOf + 1, lastIndexOf);
                if (!XML11Char.isXML11ValidNCName(substring3)) {
                    runTimeError("INVALID_QNAME_ERR", substring3 + ":" + substring);
                }
            }
            if (!XML11Char.isXML11ValidNCName(substring2)) {
                runTimeError("INVALID_QNAME_ERR", substring2 + ":" + substring);
            }
        }
        if (!XML11Char.isXML11ValidNCName(substring) || substring.equals("xmlns")) {
            runTimeError("INVALID_QNAME_ERR", substring);
        }
    }

    public static void checkNCName(String str) {
        if (XML11Char.isXML11ValidNCName(str)) {
            return;
        }
        runTimeError("INVALID_NCNAME_ERR", str);
    }

    public static void checkQName(String str) {
        if (XML11Char.isXML11ValidQName(str)) {
            return;
        }
        runTimeError("INVALID_QNAME_ERR", str);
    }

    public static boolean compare(DTMAxisIterator dTMAxisIterator, DTMAxisIterator dTMAxisIterator2, int i, DOM dom) {
        dTMAxisIterator.reset();
        while (true) {
            int next = dTMAxisIterator.next();
            if (next == -1) {
                return false;
            }
            String stringValueX = dom.getStringValueX(next);
            dTMAxisIterator2.reset();
            while (true) {
                int next2 = dTMAxisIterator2.next();
                if (next2 != -1) {
                    if (next == next2) {
                        if (i == 0) {
                            return true;
                        }
                        if (i == 1) {
                            continue;
                        }
                    }
                    if (compareStrings(stringValueX, dom.getStringValueX(next2), i, dom)) {
                        return true;
                    }
                }
            }
        }
    }

    private static boolean compareStrings(String str, String str2, int i, DOM dom) {
        if (i == 0) {
            return str.equals(str2);
        }
        if (i == 1) {
            return !str.equals(str2);
        }
        if (i == 2) {
            return numberF(str, dom) > numberF(str2, dom);
        }
        if (i == 3) {
            return numberF(str, dom) < numberF(str2, dom);
        }
        if (i == 4) {
            return numberF(str, dom) >= numberF(str2, dom);
        }
        if (i == 5) {
            return numberF(str, dom) <= numberF(str2, dom);
        }
        runTimeError(RUN_TIME_INTERNAL_ERR, "compare()");
        return false;
    }

    public static void consoleOutput(String str) {
        System.out.println(str);
    }

    public static void copy(Object obj, SerializationHandler serializationHandler, int i, DOM dom) {
        try {
            if (obj instanceof DTMAxisIterator) {
                dom.copy(((DTMAxisIterator) obj).reset(), serializationHandler);
                return;
            }
            if (obj instanceof Node) {
                dom.copy(((Node) obj).node, serializationHandler);
                return;
            }
            if (obj instanceof DOM) {
                DOM dom2 = (DOM) obj;
                dom2.copy(dom2.getDocument(), serializationHandler);
                return;
            }
            String obj2 = obj.toString();
            int length = obj2.length();
            if (length > _characterArray.length) {
                _characterArray = new char[length];
            }
            obj2.getChars(0, length, _characterArray, 0);
            serializationHandler.characters(_characterArray, 0, length);
        } catch (SAXException unused) {
            runTimeError(RUN_TIME_COPY_ERR);
        }
    }

    private static void copyNodes(NodeList nodeList, Document document, org.w3c.dom.Node node) {
        int length = nodeList.getLength();
        for (int i = 0; i < length; i++) {
            org.w3c.dom.Node item = nodeList.item(i);
            short nodeType = item.getNodeType();
            try {
                String nodeValue = item.getNodeValue();
                String nodeName = item.getNodeName();
                org.w3c.dom.Node node2 = null;
                switch (nodeType) {
                    case 1:
                        Element createElementNS = document.createElementNS(item.getNamespaceURI(), nodeName);
                        if (item.hasAttributes()) {
                            NamedNodeMap attributes = item.getAttributes();
                            for (int i2 = 0; i2 < attributes.getLength(); i2++) {
                                org.w3c.dom.Node item2 = attributes.item(i2);
                                createElementNS.setAttributeNS(item2.getNamespaceURI(), item2.getNodeName(), item2.getNodeValue());
                            }
                        }
                        copyNodes(item.getChildNodes(), document, createElementNS);
                        node2 = createElementNS;
                        try {
                            node.appendChild(node2);
                        } catch (DOMException e) {
                            runTimeError(RUN_TIME_INTERNAL_ERR, e.getMessage());
                            return;
                        }
                    case 2:
                        node2 = document.createAttributeNS(item.getNamespaceURI(), nodeName);
                        node.appendChild(node2);
                    case 3:
                        node2 = document.createTextNode(nodeValue);
                        node.appendChild(node2);
                    case 4:
                        node2 = document.createCDATASection(nodeValue);
                        node.appendChild(node2);
                    case 5:
                        node2 = document.createEntityReference(nodeName);
                        node.appendChild(node2);
                    case 6:
                    case 10:
                    default:
                        node.appendChild(node2);
                    case 7:
                        node2 = document.createProcessingInstruction(nodeName, nodeValue);
                        node.appendChild(node2);
                    case 8:
                        node2 = document.createComment(nodeValue);
                        node.appendChild(node2);
                    case 9:
                        Element createElementNS2 = document.createElementNS(null, "__document__");
                        copyNodes(item.getChildNodes(), document, createElementNS2);
                        node2 = createElementNS2;
                        node.appendChild(node2);
                    case 11:
                        node2 = document.createDocumentFragment();
                        node.appendChild(node2);
                }
            } catch (DOMException e2) {
                runTimeError(RUN_TIME_INTERNAL_ERR, e2.getMessage());
                return;
            }
        }
    }

    public static int countF(DTMAxisIterator dTMAxisIterator) {
        return dTMAxisIterator.getLast();
    }

    public static String formatNumber(double d, String str, DecimalFormat decimalFormat) {
        if (decimalFormat == null) {
            decimalFormat = defaultFormatter;
        }
        try {
            StringBuffer stringBuffer = new StringBuffer();
            if (str != defaultPattern) {
                decimalFormat.applyLocalizedPattern(str);
            }
            decimalFormat.format(d, stringBuffer, _fieldPosition);
            return stringBuffer.toString();
        } catch (IllegalArgumentException unused) {
            runTimeError(FORMAT_NUMBER_ERR, Double.toString(d), str);
            return "";
        }
    }

    public static String generatePrefix() {
        StringBuilder sb = new StringBuilder();
        sb.append(com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_NS);
        int i = prefixIndex;
        prefixIndex = i + 1;
        sb.append(i);
        return sb.toString();
    }

    public static String generate_idF(int i) {
        if (i <= 0) {
            return "";
        }
        return "N" + i;
    }

    public static String getLocalName(String str) {
        int lastIndexOf = str.lastIndexOf(58);
        if (lastIndexOf >= 0) {
            str = str.substring(lastIndexOf + 1);
        }
        int lastIndexOf2 = str.lastIndexOf(64);
        return lastIndexOf2 >= 0 ? str.substring(lastIndexOf2 + 1) : str;
    }

    public static String getPrefix(String str) {
        int indexOf = str.indexOf(58);
        if (indexOf > 0) {
            return str.substring(0, indexOf);
        }
        return null;
    }

    public static DTMAxisIterator getSingleNode(DTMAxisIterator dTMAxisIterator) {
        return new SingletonIterator(dTMAxisIterator.next());
    }

    private static boolean hasSimpleType(Object obj) {
        return (obj instanceof Boolean) || (obj instanceof Double) || (obj instanceof Integer) || (obj instanceof String) || (obj instanceof Node) || (obj instanceof DOM);
    }

    private static boolean isWhiteSpace(char c) {
        return c == ' ' || c == '\t' || c == '\n' || c == '\r';
    }

    public static String mapQNameToJavaName(String str) {
        return replace(str, ".-:/{}?#%*", new String[]{"$dot$", "$dash$", "$colon$", "$slash$", "", "$colon$", "$ques$", "$hash$", "$per$", "$aster$"});
    }

    public static String namespace_uriF(DTMAxisIterator dTMAxisIterator, DOM dom) {
        return namespace_uriF(dTMAxisIterator.next(), dom);
    }

    public static DTMAxisIterator node2Iterator(final org.w3c.dom.Node node, Translet translet, DOM dom) {
        return nodeList2Iterator(new NodeList() { // from class: com.sun.org.apache.xalan.internal.xsltc.runtime.BasisLibrary.1
            @Override // org.w3c.dom.NodeList
            public int getLength() {
                return 1;
            }

            @Override // org.w3c.dom.NodeList
            public org.w3c.dom.Node item(int i) {
                if (i == 0) {
                    return org.w3c.dom.Node.this;
                }
                return null;
            }
        }, translet, dom);
    }

    public static DTMAxisIterator nodeList2Iterator(NodeList nodeList, Translet translet, DOM dom) {
        try {
            Document newDocument = ((AbstractTranslet) translet).newDocument("", "__top__");
            copyNodes(nodeList, newDocument, newDocument.getDocumentElement());
            if (!(dom instanceof MultiDOM)) {
                runTimeError(RUN_TIME_INTERNAL_ERR, "nodeList2Iterator()");
                return null;
            }
            MultiDOM multiDOM = (MultiDOM) dom;
            DOM dom2 = (DOM) ((DTMDefaultBase) ((DOMAdapter) multiDOM.getMain()).getDOMImpl()).getManager().getDTM(new DOMSource(newDocument), false, null, true, false);
            multiDOM.addDOMAdapter(new DOMAdapter(dom2, translet.getNamesArray(), translet.getUrisArray(), translet.getTypesArray(), translet.getNamespaceArray()));
            AbsoluteIterator absoluteIterator = new AbsoluteIterator(new StepIterator(dom2.getAxisIterator(3), dom2.getAxisIterator(3)));
            absoluteIterator.setStartNode(0);
            return absoluteIterator;
        } catch (ParserConfigurationException e) {
            runTimeError(RUN_TIME_INTERNAL_ERR, e.getMessage());
            return null;
        }
    }

    public static DTMAxisIterator nodesetF(Object obj) {
        if (obj instanceof DOM) {
            return new SingletonIterator(((DOM) obj).getDocument(), true);
        }
        if (obj instanceof DTMAxisIterator) {
            return (DTMAxisIterator) obj;
        }
        runTimeError("DATA_CONVERSION_ERR", "node-set", obj.getClass().getName());
        return null;
    }

    public static String normalize_spaceF(int i, DOM dom) {
        return normalize_spaceF(dom.getStringValueX(i));
    }

    public static double numberF(int i, DOM dom) {
        return stringToReal(dom.getStringValueX(i));
    }

    public static String objectTypeF(Object obj) {
        return obj instanceof String ? "string" : obj instanceof Boolean ? "boolean" : obj instanceof Number ? "number" : obj instanceof DOM ? "RTF" : obj instanceof DTMAxisIterator ? "node-set" : "unknown";
    }

    public static int positionF(DTMAxisIterator dTMAxisIterator) {
        return dTMAxisIterator.isReverse() ? (dTMAxisIterator.getLast() - dTMAxisIterator.getPosition()) + 1 : dTMAxisIterator.getPosition();
    }

    public static int realToInt(double d) {
        return (int) d;
    }

    public static String realToString(double d) {
        double abs = Math.abs(d);
        if (abs < 0.001d || abs >= upperBounds) {
            return (Double.isNaN(d) || Double.isInfinite(d)) ? Double.toString(d) : formatNumber(d, defaultPattern, defaultFormatter);
        }
        String d2 = Double.toString(d);
        int length = d2.length();
        int i = length - 2;
        return (d2.charAt(i) == '.' && d2.charAt(length + (-1)) == '0') ? d2.substring(0, i) : d2;
    }

    public static boolean referenceToBoolean(Object obj) {
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        runTimeError("DATA_CONVERSION_ERR", obj.getClass().getName(), Boolean.TYPE);
        return false;
    }

    public static double referenceToDouble(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        runTimeError("DATA_CONVERSION_ERR", obj.getClass().getName(), Double.TYPE);
        return 0.0d;
    }

    public static long referenceToLong(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        runTimeError("DATA_CONVERSION_ERR", obj.getClass().getName(), Long.TYPE);
        return 0L;
    }

    public static org.w3c.dom.Node referenceToNode(Object obj, DOM dom) {
        if ((obj instanceof Node) || (obj instanceof DTMAxisIterator)) {
            return dom.makeNode(referenceToNodeSet(obj));
        }
        if (obj instanceof DOM) {
            DOM dom2 = (DOM) obj;
            return dom2.makeNode(dom2.getChildren(0));
        }
        runTimeError("DATA_CONVERSION_ERR", obj.getClass().getName(), "org.w3c.dom.Node");
        return null;
    }

    public static NodeList referenceToNodeList(Object obj, DOM dom) {
        if ((obj instanceof Node) || (obj instanceof DTMAxisIterator)) {
            return dom.makeNodeList(referenceToNodeSet(obj));
        }
        if (obj instanceof DOM) {
            return ((DOM) obj).makeNodeList(0);
        }
        runTimeError("DATA_CONVERSION_ERR", obj.getClass().getName(), "org.w3c.dom.NodeList");
        return null;
    }

    public static DTMAxisIterator referenceToNodeSet(Object obj) {
        if (obj instanceof Node) {
            return new SingletonIterator(((Node) obj).node);
        }
        if (obj instanceof DTMAxisIterator) {
            return ((DTMAxisIterator) obj).cloneIterator();
        }
        runTimeError("DATA_CONVERSION_ERR", obj.getClass().getName(), "node-set");
        return null;
    }

    public static DOM referenceToResultTree(Object obj) {
        try {
            return (DOM) obj;
        } catch (IllegalArgumentException unused) {
            runTimeError("DATA_CONVERSION_ERR", Name.REFER, obj.getClass().getName());
            return null;
        }
    }

    public static String referenceToString(Object obj, DOM dom) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof DTMAxisIterator) {
            return dom.getStringValueX(((DTMAxisIterator) obj).reset().next());
        }
        if (obj instanceof Node) {
            return dom.getStringValueX(((Node) obj).node);
        }
        if (obj instanceof DOM) {
            return ((DOM) obj).getStringValue();
        }
        runTimeError("DATA_CONVERSION_ERR", obj.getClass().getName(), String.class);
        return null;
    }

    public static String replace(String str, char c, String str2) {
        return str.indexOf(c) < 0 ? str : replace(str, String.valueOf(c), new String[]{str2});
    }

    public static double roundF(double d) {
        return (d < -0.5d || d > 0.0d) ? Math.floor(d + 0.5d) : d == 0.0d ? d : Double.isNaN(d) ? Double.NaN : -0.0d;
    }

    public static void runTimeError(String str) {
        throw new RuntimeException(m_bundle.getString(str));
    }

    public static String startXslElement(String str, String str2, SerializationHandler serializationHandler, DOM dom, int i) {
        try {
            int indexOf = str.indexOf(58);
            if (indexOf > 0) {
                String substring = str.substring(0, indexOf);
                if (str2 == null || str2.length() == 0) {
                    try {
                        str2 = dom.lookupNamespace(i, substring);
                    } catch (RuntimeException unused) {
                        serializationHandler.flushPending();
                        str2 = serializationHandler.getNamespaceMappings().lookupNamespace(substring);
                        if (str2 == null) {
                            runTimeError(NAMESPACE_PREFIX_ERR, substring);
                        }
                    }
                }
                serializationHandler.startElement(str2, str.substring(indexOf + 1), str);
                serializationHandler.namespaceAfterStartElement(substring, str2);
                return str;
            }
            if (str2 == null || str2.length() <= 0) {
                serializationHandler.startElement(null, null, str);
                return str;
            }
            String generatePrefix = generatePrefix();
            String str3 = generatePrefix + ':' + str;
            serializationHandler.startElement(str2, str3, str3);
            serializationHandler.namespaceAfterStartElement(generatePrefix, str2);
            return str3;
        } catch (SAXException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public static String stringF(int i, DOM dom) {
        return dom.getStringValueX(i);
    }

    public static int stringToInt(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static double stringToReal(String str) {
        try {
            return Double.valueOf(str).doubleValue();
        } catch (NumberFormatException unused) {
            return Double.NaN;
        }
    }

    public static String substringF(String str, double d) {
        try {
            int length = str.length();
            int round = ((int) Math.round(d)) - 1;
            if (Double.isNaN(d) || round > length) {
                return "";
            }
            if (round < 1) {
                round = 0;
            }
            return str.substring(round);
        } catch (IndexOutOfBoundsException unused) {
            runTimeError(RUN_TIME_INTERNAL_ERR, "substring()");
            return null;
        }
    }

    public static String substring_afterF(String str, String str2) {
        int indexOf = str.indexOf(str2);
        return indexOf >= 0 ? str.substring(indexOf + str2.length()) : "";
    }

    public static String substring_beforeF(String str, String str2) {
        int indexOf = str.indexOf(str2);
        return indexOf >= 0 ? str.substring(0, indexOf) : "";
    }

    public static double sumF(DTMAxisIterator dTMAxisIterator, DOM dom) {
        double d = 0.0d;
        while (true) {
            try {
                int next = dTMAxisIterator.next();
                if (next == -1) {
                    return d;
                }
                d += Double.parseDouble(dom.getStringValueX(next));
            } catch (NumberFormatException unused) {
                return Double.NaN;
            }
        }
    }

    public static String system_propertyF(String str) {
        if (str.equals("xsl:version")) {
            return "1.0";
        }
        if (str.equals("xsl:vendor")) {
            return "Apache Software Foundation (Xalan XSLTC)";
        }
        if (str.equals("xsl:vendor-url")) {
            return "http://xml.apache.org/xalan-j";
        }
        runTimeError(INVALID_ARGUMENT_ERR, str, "system-property()");
        return "";
    }

    public static boolean testLanguage(String str, DOM dom, int i) {
        String language = dom.getLanguage(i);
        if (language == null) {
            return false;
        }
        String lowerCase = language.toLowerCase();
        String lowerCase2 = str.toLowerCase();
        return lowerCase2.length() == 2 ? lowerCase.startsWith(lowerCase2) : lowerCase.equals(lowerCase2);
    }

    public static String translateF(String str, String str2, String str3) {
        int length = str3.length();
        int length2 = str2.length();
        int length3 = str.length();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < length3; i++) {
            char charAt = str.charAt(i);
            int i2 = 0;
            while (true) {
                if (i2 >= length2) {
                    break;
                }
                if (charAt != str2.charAt(i2)) {
                    i2++;
                } else if (i2 < length) {
                    stringBuffer.append(str3.charAt(i2));
                }
            }
            if (i2 == length2) {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    public static void unallowed_extension_elementF(String str) {
        runTimeError(UNALLOWED_EXTENSION_ELEMENT_ERR, str);
    }

    public static void unallowed_extension_functionF(String str) {
        runTimeError(UNALLOWED_EXTENSION_FUNCTION_ERR, str);
    }

    public static void unresolved_externalF(String str) {
        runTimeError(EXTERNAL_FUNC_ERR, str);
    }

    public static void unsupported_ElementF(String str, boolean z) {
        if (z) {
            runTimeError("UNSUPPORTED_EXT_ERR", str);
        } else {
            runTimeError("UNSUPPORTED_XSL_ERR", str);
        }
    }

    public static String namespace_uriF(int i, DOM dom) {
        String nodeName = dom.getNodeName(i);
        int lastIndexOf = nodeName.lastIndexOf(58);
        return lastIndexOf >= 0 ? nodeName.substring(0, lastIndexOf) : "";
    }

    public static String normalize_spaceF(String str) {
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (i < length && isWhiteSpace(str.charAt(i))) {
            i++;
        }
        while (true) {
            if (i < length && !isWhiteSpace(str.charAt(i))) {
                stringBuffer.append(str.charAt(i));
                i++;
            } else {
                if (i == length) {
                    return stringBuffer.toString();
                }
                while (i < length && isWhiteSpace(str.charAt(i))) {
                    i++;
                }
                if (i < length) {
                    stringBuffer.append(' ');
                }
            }
        }
    }

    public static double numberF(Object obj, DOM dom) {
        if (obj instanceof Double) {
            return ((Double) obj).doubleValue();
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).doubleValue();
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue() ? 1.0d : 0.0d;
        }
        if (obj instanceof String) {
            return stringToReal((String) obj);
        }
        if (obj instanceof DTMAxisIterator) {
            return stringToReal(dom.getStringValueX(((DTMAxisIterator) obj).reset().next()));
        }
        if (obj instanceof Node) {
            return stringToReal(dom.getStringValueX(((Node) obj).node));
        }
        if (obj instanceof DOM) {
            return stringToReal(((DOM) obj).getStringValue());
        }
        runTimeError(INVALID_ARGUMENT_ERR, obj.getClass().getName(), "number()");
        return 0.0d;
    }

    public static String replace(String str, String str2, String[] strArr) {
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            int indexOf = str2.indexOf(charAt);
            if (indexOf >= 0) {
                stringBuffer.append(strArr[indexOf]);
            } else {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    public static void runTimeError(String str, Object[] objArr) {
        throw new RuntimeException(MessageFormat.format(m_bundle.getString(str), objArr));
    }

    public static String stringF(Object obj, DOM dom) {
        if (obj instanceof DTMAxisIterator) {
            return dom.getStringValueX(((DTMAxisIterator) obj).reset().next());
        }
        if (obj instanceof Node) {
            return dom.getStringValueX(((Node) obj).node);
        }
        if (obj instanceof DOM) {
            return ((DOM) obj).getStringValue();
        }
        return obj.toString();
    }

    public static void runTimeError(String str, Object obj) {
        runTimeError(str, new Object[]{obj});
    }

    public static void runTimeError(String str, Object obj, Object obj2) {
        runTimeError(str, new Object[]{obj, obj2});
    }

    public static String substringF(String str, double d, double d2) {
        try {
            int length = str.length();
            int round = ((int) Math.round(d)) - 1;
            int round2 = ((int) Math.round(d2)) + round;
            if (Double.isInfinite(d2)) {
                round2 = Integer.MAX_VALUE;
            }
            if (Double.isNaN(d) || Double.isNaN(d2) || Double.isInfinite(d) || round > length || round2 < 0) {
                return "";
            }
            if (round < 0) {
                round = 0;
            }
            if (round2 > length) {
                return str.substring(round);
            }
            return str.substring(round, round2);
        } catch (IndexOutOfBoundsException unused) {
            runTimeError(RUN_TIME_INTERNAL_ERR, "substring()");
            return null;
        }
    }

    public static boolean compare(int i, DTMAxisIterator dTMAxisIterator, int i2, DOM dom) {
        int next;
        int next2;
        if (i2 == 0) {
            int next3 = dTMAxisIterator.next();
            if (next3 == -1) {
                return false;
            }
            String stringValueX = dom.getStringValueX(i);
            while (i != next3 && !stringValueX.equals(dom.getStringValueX(next3))) {
                next3 = dTMAxisIterator.next();
                if (next3 == -1) {
                    return false;
                }
            }
            return true;
        }
        if (i2 == 1) {
            int next4 = dTMAxisIterator.next();
            if (next4 == -1) {
                return false;
            }
            String stringValueX2 = dom.getStringValueX(i);
            do {
                if (i != next4 && !stringValueX2.equals(dom.getStringValueX(next4))) {
                    return true;
                }
                next4 = dTMAxisIterator.next();
            } while (next4 != -1);
            return false;
        }
        if (i2 != 2) {
            if (i2 != 3) {
                return false;
            }
            do {
                next2 = dTMAxisIterator.next();
                if (next2 == -1) {
                    return false;
                }
            } while (next2 <= i);
            return true;
        }
        do {
            next = dTMAxisIterator.next();
            if (next == -1) {
                return false;
            }
        } while (next >= i);
        return true;
    }

    public static String stringF(Object obj, int i, DOM dom) {
        if (obj instanceof DTMAxisIterator) {
            return dom.getStringValueX(((DTMAxisIterator) obj).reset().next());
        }
        if (obj instanceof Node) {
            return dom.getStringValueX(((Node) obj).node);
        }
        if (obj instanceof DOM) {
            return ((DOM) obj).getStringValue();
        }
        if (!(obj instanceof Double)) {
            if (obj != null) {
                return obj.toString();
            }
            return stringF(i, dom);
        }
        String d = ((Double) obj).toString();
        int length = d.length();
        int i2 = length - 2;
        return (d.charAt(i2) == '.' && d.charAt(length + (-1)) == '0') ? d.substring(0, i2) : d;
    }

    public static boolean compare(DTMAxisIterator dTMAxisIterator, double d, int i, DOM dom) {
        int next;
        int next2;
        int next3;
        int next4;
        int next5;
        int next6;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                runTimeError(RUN_TIME_INTERNAL_ERR, "compare()");
                                return false;
                            }
                            do {
                                next6 = dTMAxisIterator.next();
                                if (next6 == -1) {
                                    return false;
                                }
                            } while (numberF(dom.getStringValueX(next6), dom) > d);
                            return true;
                        }
                        do {
                            next5 = dTMAxisIterator.next();
                            if (next5 == -1) {
                                return false;
                            }
                        } while (numberF(dom.getStringValueX(next5), dom) < d);
                        return true;
                    }
                    do {
                        next4 = dTMAxisIterator.next();
                        if (next4 == -1) {
                            return false;
                        }
                    } while (numberF(dom.getStringValueX(next4), dom) >= d);
                    return true;
                }
                do {
                    next3 = dTMAxisIterator.next();
                    if (next3 == -1) {
                        return false;
                    }
                } while (numberF(dom.getStringValueX(next3), dom) <= d);
                return true;
            }
            do {
                next2 = dTMAxisIterator.next();
                if (next2 == -1) {
                    return false;
                }
            } while (numberF(dom.getStringValueX(next2), dom) == d);
            return true;
        }
        do {
            next = dTMAxisIterator.next();
            if (next == -1) {
                return false;
            }
        } while (numberF(dom.getStringValueX(next), dom) != d);
        return true;
    }

    public static boolean compare(DTMAxisIterator dTMAxisIterator, String str, int i, DOM dom) {
        int next;
        do {
            next = dTMAxisIterator.next();
            if (next == -1) {
                return false;
            }
        } while (!compareStrings(dom.getStringValueX(next), str, i, dom));
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x00c1, code lost:
    
        if (numberF(r6, r9) == numberF(r7, r9)) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00c3, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00cd, code lost:
    
        if (booleanF(r6) == booleanF(r7)) goto L69;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean compare(java.lang.Object r6, java.lang.Object r7, int r8, com.sun.org.apache.xalan.internal.xsltc.DOM r9) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.xsltc.runtime.BasisLibrary.compare(java.lang.Object, java.lang.Object, int, com.sun.org.apache.xalan.internal.xsltc.DOM):boolean");
    }
}
