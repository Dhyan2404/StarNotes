package net.p110sf.saxon.lib;

import java.math.BigDecimal;
import java.util.Properties;
import java.util.StringTokenizer;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.QNameException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ValidationException;
import net.p110sf.saxon.value.BigDecimalValue;

/* loaded from: classes11.dex */
public class SaxonOutputKeys {
    public static final String ALLOW_DUPLICATE_NAMES = "allow-duplicate-names";
    public static final String ATTRIBUTE_ORDER = "{http://saxon.sf.net/}attribute-order";
    public static final String BUILD_TREE = "build-tree";
    public static final String BYTE_ORDER_MARK = "byte-order-mark";
    public static final String CANONICAL = "{http://saxon.sf.net/}canonical";
    public static final String CHARACTER_REPRESENTATION = "{http://saxon.sf.net/}character-representation";
    public static final String DOUBLE_SPACE = "{http://saxon.sf.net/}double-space";
    public static final String ESCAPE_URI_ATTRIBUTES = "escape-uri-attributes";
    public static final String HTML_VERSION = "html-version";
    public static final String INCLUDE_CONTENT_TYPE = "include-content-type";
    public static final String INDENT_SPACES = "{http://saxon.sf.net/}indent-spaces";
    public static final String INTERNAL_DTD_SUBSET = "{http://saxon.sf.net/}internal-dtd-subset";
    public static final String ITEM_SEPARATOR = "item-separator";
    public static final String JSON_NODE_OUTPUT_METHOD = "json-node-output-method";
    public static final String LINE_LENGTH = "{http://saxon.sf.net/}line-length";
    public static final String NEWLINE = "{http://saxon.sf.net/}newline";
    public static final String NEXT_IN_CHAIN = "{http://saxon.sf.net/}next-in-chain";
    public static final String NEXT_IN_CHAIN_BASE_URI = "{http://saxon.sf.net/}next-in-chain-base-uri";
    public static final String NORMALIZATION_FORM = "normalization-form";
    public static final String PARAMETER_DOCUMENT = "parameter-document";
    public static final String PARAMETER_DOCUMENT_BASE_URI = "{http://saxon.sf.net/}parameter-document-base-uri";
    public static final String PROPERTY_ORDER = "{http://saxon.sf.net/}property-order";
    public static final String RECOGNIZE_BINARY = "{http://saxon.sf.net/}recognize-binary";
    public static final String REQUIRE_WELL_FORMED = "{http://saxon.sf.net/}require-well-formed";
    public static final String SAXON_BASE64_BINARY_METHOD = "Q{http://saxon.sf.net/}base64Binary";
    public static final String SAXON_HEX_BINARY_METHOD = "Q{http://saxon.sf.net/}hexBinary";
    public static final String SAXON_XML_TO_JSON_METHOD = "Q{http://saxon.sf.net/}xml-to-json";
    public static final String SAXON_XQUERY_METHOD = "Q{http://saxon.sf.net/}xquery";
    public static final String SINGLE_QUOTES = "{http://saxon.sf.net/}single-quotes";
    public static final String STYLESHEET_VERSION = "{http://saxon.sf.net/}stylesheet-version";
    public static final String SUPPLY_SOURCE_LOCATOR = "{http://saxon.sf.net/}supply-source-locator";
    public static final String SUPPRESS_INDENTATION = "suppress-indentation";
    public static final String UNDECLARE_PREFIXES = "undeclare-prefixes";
    public static final String UNFAILING = "{http://saxon.sf.net/}unfailing";
    public static final String USE_CHARACTER_MAPS = "use-character-maps";
    public static final String WRAP = "{http://saxon.sf.net/}wrap-result-sequence";

    public static boolean isBuildTree(Properties properties) {
        String property = properties.getProperty(BUILD_TREE);
        if (property != null) {
            return "yes".equals(property);
        }
        String property2 = properties.getProperty("method");
        return ("json".equals(property2) || "adaptive".equals(property2)) ? false : true;
    }

    public static boolean isHtmlVersion5(Properties properties) {
        String property = properties.getProperty(HTML_VERSION);
        if (property == null) {
            property = properties.getProperty("version");
        }
        if (property == null) {
            return true;
        }
        try {
            return ((BigDecimalValue) BigDecimalValue.makeDecimalValue(property, false).asAtomic()).getDecimalValue().equals(BigDecimal.valueOf(5L));
        } catch (ValidationException unused) {
            return false;
        }
    }

    public static boolean isUnstrippedProperty(String str) {
        return ITEM_SEPARATOR.equals(str) || NEWLINE.equals(str);
    }

    public static boolean isXhtmlHtmlVersion5(Properties properties) {
        String property = properties.getProperty(HTML_VERSION);
        if (property == null) {
            return false;
        }
        try {
            return ((BigDecimalValue) BigDecimalValue.makeDecimalValue(property, false).asAtomic()).getDecimalValue().equals(BigDecimal.valueOf(5L));
        } catch (ValidationException unused) {
            return false;
        }
    }

    public static String parseListOfNodeNames(String str, NamespaceResolver namespaceResolver, boolean z, boolean z2, boolean z3, String str2) throws XPathException {
        StringBuilder sb = new StringBuilder();
        StringTokenizer stringTokenizer = new StringTokenizer(str, " \t\n\r", false);
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (z3 && "*".equals(nextToken)) {
                sb.append(' ');
                sb.append(nextToken);
            } else if (z2 || namespaceResolver == null) {
                sb.append(' ');
                sb.append(nextToken);
            } else if (nextToken.startsWith("Q{")) {
                sb.append(' ');
                sb.append(nextToken);
            } else {
                try {
                    String[] qNameParts = NameChecker.getQNameParts(nextToken);
                    String uRIForPrefix = namespaceResolver.getURIForPrefix(qNameParts[0], z);
                    if (uRIForPrefix == null) {
                        throw new XPathException("Namespace prefix '" + qNameParts[0] + "' has not been declared", str2);
                    }
                    sb.append(" Q{");
                    sb.append(uRIForPrefix);
                    sb.append('}');
                    sb.append(qNameParts[1]);
                } catch (QNameException e) {
                    throw new XPathException("Invalid QName. " + e.getMessage(), str2);
                }
            }
        }
        return sb.toString();
    }
}
