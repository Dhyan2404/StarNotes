package net.p110sf.saxon.lib;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.data.common.cloud.Constant;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class NamespaceConstant {
    public static final String ANONYMOUS = "http://ns.saxonica.com/anonymous-type";
    public static final String ARRAY_FUNCTIONS = "http://www.w3.org/2005/xpath-functions/array";
    public static final String CODEPOINT_COLLATION_URI = "http://www.w3.org/2005/xpath-functions/collation/codepoint";
    public static final String DOT_NET_TYPE = "http://saxon.sf.net/clitype";
    public static final String ERR = "http://www.w3.org/2005/xqt-errors";
    public static final String EXPATH_ZIP = "http://expath.org/ns/zip";
    public static final String EXSLT_COMMON = "http://exslt.org/common";
    public static final String EXSLT_DATES_AND_TIMES = "http://exslt.org/dates-and-times";
    public static final String EXSLT_MATH = "http://exslt.org/math";
    public static final String EXSLT_RANDOM = "http://exslt.org/random";
    public static final String EXSLT_SETS = "http://exslt.org/sets";

    /* renamed from: FN */
    public static final String f100508FN = "http://www.w3.org/2005/xpath-functions";
    public static final String GLOBAL_JS = "http://saxonica.com/ns/globalJS";
    public static final String HTML5_CASE_BLIND_COLLATION_URI = "http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive";
    public static final String IXSL = "http://saxonica.com/ns/interactiveXSLT";
    public static final String JAVA_TYPE = "http://saxon.sf.net/java-type";
    public static final String LOCAL = "http://www.w3.org/2005/xquery-local-functions";
    public static final String MAP_FUNCTIONS = "http://www.w3.org/2005/xpath-functions/map";
    public static final String MATH = "http://www.w3.org/2005/xpath-functions/math";
    public static final String MATHML = "http://www.w3.org/1998/Math/MathML";
    public static final String NULL = "";
    public static final String OBJECT_MODEL_AXIOM = "http://ws.apache.org/jaxp/xpath/axiom";
    public static final String OBJECT_MODEL_DOM4J = "http://www.dom4j.org/jaxp/xpath/dom4j";
    public static final String OBJECT_MODEL_DOMINO = "http://saxon.sf.net/object-model/domino";
    public static final String OBJECT_MODEL_DOT_NET_DOM = "http://saxon.sf.net/object-model/dotnet/dom";
    public static final String OBJECT_MODEL_JDOM = "http://jdom.org/jaxp/xpath/jdom";
    public static final String OBJECT_MODEL_SAXON = "http://saxon.sf.net/jaxp/xpath/om";
    public static final String OBJECT_MODEL_XOM = "http://www.xom.nu/jaxp/xpath/xom";
    public static final String OUTPUT = "http://www.w3.org/2010/xslt-xquery-serialization";
    public static final String PHP = "http://php.net/xsl";
    public static final String SAXON = "http://saxon.sf.net/";
    public static final String SAXON6 = "http://icl.com/saxon";
    public static final String SAXON_CONFIGURATION = "http://saxon.sf.net/ns/configuration";
    public static final String SAXON_GENERATED_VARIABLE = "http://saxon.sf.net/generated-variable";
    public static final String SAXON_XSLT_EXPORT = "http://ns.saxonica.com/xslt/export";
    public static final String SCHEMA = "http://www.w3.org/2001/XMLSchema";
    public static final String SCHEMA_INSTANCE = "http://www.w3.org/2001/XMLSchema-instance";
    public static final String SCHEMA_VERSIONING = "http://www.w3.org/2007/XMLSchema-versioning";
    public static final String SCM = "http://ns.saxonica.com/schema-component-model";
    public static final String SQL = "http://saxon.sf.net/sql";
    public static final String SVG = "http://www.w3.org/2000/svg";
    public static final String XHTML = "http://www.w3.org/1999/xhtml";
    public static final String XLINK = "http://www.w3.org/1999/xlink";
    public static final String XML = "http://www.w3.org/XML/1998/namespace";
    public static final String XMLNS = "http://www.w3.org/2000/xmlns/";
    public static final String XQUERY = "http://www.w3.org/2012/xquery";
    public static final String XSLT = "http://www.w3.org/1999/XSL/Transform";

    /* renamed from: a */
    public static boolean m63258a(String str, String str2) {
        int i;
        String removeAllWhitespace = Whitespace.removeAllWhitespace(str);
        String removeAllWhitespace2 = Whitespace.removeAllWhitespace(str2);
        if (removeAllWhitespace.equalsIgnoreCase(removeAllWhitespace2)) {
            return true;
        }
        if (removeAllWhitespace.startsWith(removeAllWhitespace2) && removeAllWhitespace.length() - removeAllWhitespace2.length() < 3) {
            return true;
        }
        if (removeAllWhitespace2.startsWith(removeAllWhitespace) && removeAllWhitespace2.length() - removeAllWhitespace.length() < 3) {
            return true;
        }
        if (removeAllWhitespace.length() <= 8 || Math.abs(removeAllWhitespace2.length() - removeAllWhitespace.length()) >= 3) {
            return false;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < removeAllWhitespace.length(); i3++) {
            char charAt = removeAllWhitespace.charAt(i3);
            if ((i3 >= removeAllWhitespace2.length() || charAt != removeAllWhitespace2.charAt(i3)) && ((i3 <= 0 || i3 >= removeAllWhitespace2.length() - 1 || charAt != removeAllWhitespace2.charAt(i3 - 1)) && ((i = i3 + 1) >= removeAllWhitespace2.length() || charAt != removeAllWhitespace2.charAt(i)))) {
                i2++;
            }
        }
        return i2 < 3;
    }

    public static String findSimilarNamespace(String str) {
        if (m63258a(str, "http://www.w3.org/XML/1998/namespace")) {
            return "http://www.w3.org/XML/1998/namespace";
        }
        if (m63258a(str, "http://www.w3.org/2001/XMLSchema")) {
            return "http://www.w3.org/2001/XMLSchema";
        }
        if (m63258a(str, "http://www.w3.org/1999/XSL/Transform")) {
            return "http://www.w3.org/1999/XSL/Transform";
        }
        if (m63258a(str, "http://www.w3.org/2001/XMLSchema-instance")) {
            return "http://www.w3.org/2001/XMLSchema-instance";
        }
        if (m63258a(str, "http://www.w3.org/2005/xpath-functions")) {
            return "http://www.w3.org/2005/xpath-functions";
        }
        if (m63258a(str, SAXON)) {
            return SAXON;
        }
        if (m63258a(str, "http://exslt.org/common")) {
            return "http://exslt.org/common";
        }
        if (m63258a(str, "http://exslt.org/math")) {
            return "http://exslt.org/math";
        }
        if (m63258a(str, "http://exslt.org/dates-and-times")) {
            return "http://exslt.org/dates-and-times";
        }
        if (m63258a(str, EXSLT_RANDOM)) {
            return EXSLT_RANDOM;
        }
        if (m63258a(str, "http://www.w3.org/1999/xhtml")) {
            return "http://www.w3.org/1999/xhtml";
        }
        if (m63258a(str, ERR)) {
            return ERR;
        }
        if (m63258a(str, JAVA_TYPE)) {
            return JAVA_TYPE;
        }
        if (m63258a(str, DOT_NET_TYPE)) {
            return DOT_NET_TYPE;
        }
        return null;
    }

    public static String getConventionalPrefix(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1704533081:
                if (str.equals(IXSL)) {
                    c = 0;
                    break;
                }
                break;
            case -1112523280:
                if (str.equals(SAXON_GENERATED_VARIABLE)) {
                    c = 1;
                    break;
                }
                break;
            case -998819222:
                if (str.equals(GLOBAL_JS)) {
                    c = 2;
                    break;
                }
                break;
            case -352164960:
                if (str.equals(MAP_FUNCTIONS)) {
                    c = 3;
                    break;
                }
                break;
            case -314554597:
                if (str.equals("http://www.w3.org/1999/XSL/Transform")) {
                    c = 4;
                    break;
                }
                break;
            case 227197523:
                if (str.equals("http://www.w3.org/2005/xpath-functions")) {
                    c = 5;
                    break;
                }
                break;
            case 861319069:
                if (str.equals(ARRAY_FUNCTIONS)) {
                    c = 6;
                    break;
                }
                break;
            case 1265374197:
                if (str.equals(ERR)) {
                    c = 7;
                    break;
                }
                break;
            case 1404543606:
                if (str.equals(SAXON)) {
                    c = '\b';
                    break;
                }
                break;
            case 1440052060:
                if (str.equals("http://www.w3.org/2001/XMLSchema")) {
                    c = '\t';
                    break;
                }
                break;
            case 1662954470:
                if (str.equals("http://www.w3.org/2001/XMLSchema-instance")) {
                    c = '\n';
                    break;
                }
                break;
            case 1952986079:
                if (str.equals("http://www.w3.org/XML/1998/namespace")) {
                    c = 11;
                    break;
                }
                break;
            case 1967788356:
                if (str.equals(MATH)) {
                    c = '\f';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return "ixsl";
            case 1:
                return "vv";
            case 2:
                return "js";
            case 3:
                return Constant.MAP_TAG;
            case 4:
                return "xsl";
            case 5:
                return "fn";
            case 6:
                return "array";
            case 7:
                return NotificationCompat.CATEGORY_ERROR;
            case '\b':
                return "saxon";
            case '\t':
                return "xs";
            case '\n':
                return "xsi";
            case 11:
                return "xml";
            case '\f':
                return "math";
            default:
                return null;
        }
    }

    public static String getUriForConventionalPrefix(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 3272:
                if (str.equals("fn")) {
                    c = 0;
                    break;
                }
                break;
            case 3401:
                if (str.equals("js")) {
                    c = 1;
                    break;
                }
                break;
            case 3776:
                if (str.equals("vv")) {
                    c = 2;
                    break;
                }
                break;
            case 3835:
                if (str.equals("xs")) {
                    c = 3;
                    break;
                }
                break;
            case 100709:
                if (str.equals(NotificationCompat.CATEGORY_ERROR)) {
                    c = 4;
                    break;
                }
                break;
            case 107868:
                if (str.equals(Constant.MAP_TAG)) {
                    c = 5;
                    break;
                }
                break;
            case 118807:
                if (str.equals("xml")) {
                    c = 6;
                    break;
                }
                break;
            case 118990:
                if (str.equals("xsi")) {
                    c = 7;
                    break;
                }
                break;
            case 118993:
                if (str.equals("xsl")) {
                    c = '\b';
                    break;
                }
                break;
            case 3247048:
                if (str.equals("ixsl")) {
                    c = '\t';
                    break;
                }
                break;
            case 3344136:
                if (str.equals("math")) {
                    c = '\n';
                    break;
                }
                break;
            case 93090393:
                if (str.equals("array")) {
                    c = 11;
                    break;
                }
                break;
            case 109213513:
                if (str.equals("saxon")) {
                    c = '\f';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return "http://www.w3.org/2005/xpath-functions";
            case 1:
                return GLOBAL_JS;
            case 2:
                return SAXON_GENERATED_VARIABLE;
            case 3:
                return "http://www.w3.org/2001/XMLSchema";
            case 4:
                return ERR;
            case 5:
                return MAP_FUNCTIONS;
            case 6:
                return "http://www.w3.org/XML/1998/namespace";
            case 7:
                return "http://www.w3.org/2001/XMLSchema-instance";
            case '\b':
                return "http://www.w3.org/1999/XSL/Transform";
            case '\t':
                return IXSL;
            case '\n':
                return MATH;
            case 11:
                return ARRAY_FUNCTIONS;
            case '\f':
                return SAXON;
            default:
                return null;
        }
    }

    public static boolean isReserved(String str) {
        return str != null && (str.equals("http://www.w3.org/1999/XSL/Transform") || str.equals("http://www.w3.org/2005/xpath-functions") || str.equals(MATH) || str.equals(MAP_FUNCTIONS) || str.equals(ARRAY_FUNCTIONS) || str.equals("http://www.w3.org/XML/1998/namespace") || str.equals("http://www.w3.org/2001/XMLSchema") || str.equals("http://www.w3.org/2001/XMLSchema-instance") || str.equals(ERR) || str.equals("http://www.w3.org/2000/xmlns/"));
    }

    public static boolean isReservedInQuery31(String str) {
        return str.equals("http://www.w3.org/2005/xpath-functions") || str.equals("http://www.w3.org/XML/1998/namespace") || str.equals("http://www.w3.org/2001/XMLSchema") || str.equals("http://www.w3.org/2001/XMLSchema-instance") || str.equals(MATH) || str.equals(XQUERY) || str.equals(MAP_FUNCTIONS) || str.equals(ARRAY_FUNCTIONS);
    }
}
