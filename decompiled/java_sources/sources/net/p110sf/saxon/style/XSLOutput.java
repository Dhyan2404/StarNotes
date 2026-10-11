package net.p110sf.saxon.style;

import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import net.p110sf.saxon.functions.ResolveQName;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.lib.SerializerFactory;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.QNameException;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLOutput extends StyleElement {

    /* renamed from: u */
    public StructuredQName f102073u;

    /* renamed from: v */
    public final String f102074v = null;

    /* renamed from: w */
    public final String f102075w = null;

    /* renamed from: x */
    public String f102076x = null;

    /* renamed from: y */
    public final Map<String, String> f102077y = new HashMap(10);

    /* renamed from: z */
    public HashMap<String, String> f102078z = null;

    /* renamed from: a0 */
    public static boolean m64052a0(String str) {
        return str.equals("cdata-section-elements") || str.equals(SaxonOutputKeys.SUPPRESS_INDENTATION) || str.equals(SaxonOutputKeys.ATTRIBUTE_ORDER) || str.equals(SaxonOutputKeys.DOUBLE_SPACE);
    }

    /* renamed from: b0 */
    public static boolean m64053b0(String str) {
        return str.equals("method") || str.equals(SaxonOutputKeys.JSON_NODE_OUTPUT_METHOD);
    }

    public static String prepareCharacterMaps(StyleElement styleElement, String str, Properties properties) {
        PrincipalStylesheetModule principalStylesheetModule = styleElement.getPrincipalStylesheetModule();
        String property = properties.getProperty(SaxonOutputKeys.USE_CHARACTER_MAPS);
        if (property == null) {
            property = "";
        }
        StringBuilder sb = new StringBuilder();
        StringTokenizer stringTokenizer = new StringTokenizer(str, " \t\n\r", false);
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            StructuredQName makeQName = styleElement.makeQName(nextToken, null, SaxonOutputKeys.USE_CHARACTER_MAPS);
            if (principalStylesheetModule.getCharacterMap(makeQName) == null) {
                styleElement.compileErrorInAttribute("No character-map named '" + nextToken + "' has been defined", "XTSE1590", SaxonOutputKeys.USE_CHARACTER_MAPS);
            }
            sb.append(" ");
            sb.append(makeQName.getClarkName());
        }
        return ((Object) sb) + property;
    }

    /* renamed from: Z */
    public final void m64054Z(SerializerFactory serializerFactory, String str, String str2, Properties properties, HashMap<String, Integer> hashMap, int i) {
        try {
            if (m64052a0(str)) {
                str2 = SaxonOutputKeys.parseListOfNodeNames(str2, this, !str.equals(SaxonOutputKeys.ATTRIBUTE_ORDER), false, str.equals(SaxonOutputKeys.ATTRIBUTE_ORDER), "XTSE0280");
            }
            if (m64053b0(str) && str2.contains(":")) {
                str2 = ResolveQName.resolveQName(str2, this).getEQName();
            }
            String checkOutputProperty = serializerFactory.checkOutputProperty(str, str2);
            String property = properties.getProperty(str);
            if (property == null) {
                properties.setProperty(str, checkOutputProperty);
                hashMap.put(str, Integer.valueOf(i));
                return;
            }
            if (property.equals(checkOutputProperty)) {
                return;
            }
            if (m64052a0(str)) {
                properties.setProperty(str, property + " " + checkOutputProperty);
                hashMap.put(str, Integer.valueOf(i));
                return;
            }
            int intValue = hashMap.getOrDefault(str, Integer.MIN_VALUE).intValue();
            if (intValue != Integer.MIN_VALUE && intValue <= i) {
                if (intValue != i) {
                    throw new IllegalStateException("Output properties must be processed in decreasing precedence order");
                }
                compileError("Conflicting values for output property " + str, "XTSE1560");
            }
        } catch (XPathException e) {
            String str3 = str.equals("method") ? "XTSE1570" : "XTSE0020";
            if (str.contains("{")) {
                compileError(e.getMessage(), str3);
            } else {
                compileErrorInAttribute(e.getMessage(), str3, str);
            }
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void compileDeclaration(Compilation compilation, ComponentDeclaration componentDeclaration) {
    }

    public void gatherOutputProperties(Properties properties, HashMap<String, Integer> hashMap, int i) throws XPathException {
        SerializerFactory serializerFactory = getConfiguration().getSerializerFactory();
        String str = this.f102074v;
        if (str != null) {
            if ("xml".equals(str) || "html".equals(this.f102074v) || "text".equals(this.f102074v) || "xhtml".equals(this.f102074v) || "json".equals(this.f102074v) || "adaptive".equals(this.f102074v)) {
                m64054Z(serializerFactory, "method", this.f102074v, properties, hashMap, i);
            } else {
                try {
                    String[] qNameParts = NameChecker.getQNameParts(this.f102074v);
                    String str2 = qNameParts[0];
                    if (str2.isEmpty()) {
                        compileError("method must be xml, html, xhtml, text, json, adaptive, or a prefixed name", "XTSE1570");
                    } else {
                        String uRIForPrefix = getURIForPrefix(str2, false);
                        if (uRIForPrefix == null) {
                            m63972X(str2, "XTSE0280", "method");
                        }
                        m64054Z(serializerFactory, "method", '{' + uRIForPrefix + '}' + qNameParts[1], properties, hashMap, i);
                    }
                } catch (QNameException e) {
                    compileError("Invalid method name. " + e.getMessage(), "XTSE1570");
                }
            }
        }
        for (Map.Entry<String, String> entry : this.f102077y.entrySet()) {
            m64054Z(serializerFactory, entry.getKey(), entry.getValue(), properties, hashMap, i);
        }
        if (this.f102077y.containsKey(SaxonOutputKeys.NEXT_IN_CHAIN)) {
            m64054Z(serializerFactory, SaxonOutputKeys.NEXT_IN_CHAIN_BASE_URI, getSystemId(), properties, hashMap, i);
        }
        String str3 = this.f102076x;
        if (str3 != null) {
            properties.setProperty(SaxonOutputKeys.USE_CHARACTER_MAPS, prepareCharacterMaps(this, str3, properties));
        }
        HashMap<String, String> hashMap2 = this.f102078z;
        if (hashMap2 != null) {
            for (Map.Entry<String, String> entry2 : hashMap2.entrySet()) {
                properties.setProperty(entry2.getKey(), entry2.getValue());
            }
        }
    }

    public StructuredQName getFormatQName() {
        return this.f102073u;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        String str = null;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String value = attributeInfo.getValue();
            String clarkName = nodeName.getStructuredQName().getClarkName();
            if (clarkName.equals("name")) {
                str = Whitespace.trim(value);
            } else if (clarkName.equals("version")) {
                this.f102077y.put(clarkName, Whitespace.trim(value));
            } else if (clarkName.equals(SaxonOutputKeys.USE_CHARACTER_MAPS)) {
                this.f102076x = value;
            } else if (clarkName.equals(SaxonOutputKeys.PARAMETER_DOCUMENT)) {
                String trim = Whitespace.trim(value);
                try {
                    trim = ResolveURI.makeAbsolute(trim, getBaseURI()).toASCIIString();
                } catch (URISyntaxException e) {
                    compileError(XPathException.makeXPathException(e));
                }
                this.f102077y.put(clarkName, trim);
            } else if (!XSLResultDocument.fans.contains(clarkName) || clarkName.equals("output-version")) {
                String uri = nodeName.getURI();
                if ("".equals(uri) || "http://www.w3.org/1999/XSL/Transform".equals(uri) || NamespaceConstant.SAXON.equals(uri)) {
                    checkUnknownAttribute(nodeName);
                } else {
                    String str2 = '{' + uri + '}' + nodeName.getLocalPart();
                    if (this.f102078z == null) {
                        this.f102078z = new HashMap<>(5);
                    }
                    this.f102078z.put(str2, value);
                }
            } else {
                if (!clarkName.equals(SaxonOutputKeys.ITEM_SEPARATOR) && !clarkName.equals(SaxonOutputKeys.NEWLINE)) {
                    value = Whitespace.trim(value);
                }
                this.f102077y.put(clarkName, value);
            }
        }
        if (str != null) {
            this.f102073u = makeQName(str, "XTSE1570", "name");
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void processVersionAttribute(String str) {
        this.version = ((StyleElement) getParent()).m63950A();
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        checkTopLevel("XTSE0010", false);
        checkEmpty();
    }
}
