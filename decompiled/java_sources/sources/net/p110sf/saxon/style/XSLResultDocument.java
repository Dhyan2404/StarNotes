package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import net.p110sf.saxon.expr.ErrorExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.ResultDocument;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLResultDocument extends StyleElement {
    public static StructuredQName BUILD_TREE;
    public static StructuredQName METHOD;
    public static final HashSet<String> fans;

    /* renamed from: u */
    public Expression f102090u;

    /* renamed from: v */
    public StructuredQName f102091v;

    /* renamed from: w */
    public Expression f102092w;

    /* renamed from: x */
    public int f102093x = 4;

    /* renamed from: y */
    public SchemaType f102094y = null;

    /* renamed from: z */
    public final Map<StructuredQName, Expression> f102095z = new HashMap(10);

    /* renamed from: J */
    public boolean f102089J = true;

    static {
        HashSet<String> hashSet = new HashSet<>(40);
        fans = hashSet;
        hashSet.add(SaxonOutputKeys.ALLOW_DUPLICATE_NAMES);
        hashSet.add(SaxonOutputKeys.BUILD_TREE);
        hashSet.add(SaxonOutputKeys.BYTE_ORDER_MARK);
        hashSet.add("cdata-section-elements");
        hashSet.add("doctype-public");
        hashSet.add("doctype-system");
        hashSet.add("encoding");
        hashSet.add(SaxonOutputKeys.ESCAPE_URI_ATTRIBUTES);
        hashSet.add(SaxonOutputKeys.HTML_VERSION);
        hashSet.add(SaxonOutputKeys.INCLUDE_CONTENT_TYPE);
        hashSet.add("indent");
        hashSet.add(SaxonOutputKeys.ITEM_SEPARATOR);
        hashSet.add(SaxonOutputKeys.JSON_NODE_OUTPUT_METHOD);
        hashSet.add("media-type");
        hashSet.add("method");
        hashSet.add(SaxonOutputKeys.NORMALIZATION_FORM);
        hashSet.add("omit-xml-declaration");
        hashSet.add("output-version");
        hashSet.add(SaxonOutputKeys.PARAMETER_DOCUMENT);
        hashSet.add("standalone");
        hashSet.add(SaxonOutputKeys.SUPPRESS_INDENTATION);
        hashSet.add(SaxonOutputKeys.UNDECLARE_PREFIXES);
        hashSet.add(SaxonOutputKeys.ATTRIBUTE_ORDER);
        hashSet.add(SaxonOutputKeys.CANONICAL);
        hashSet.add(SaxonOutputKeys.CHARACTER_REPRESENTATION);
        hashSet.add(SaxonOutputKeys.DOUBLE_SPACE);
        hashSet.add(SaxonOutputKeys.INDENT_SPACES);
        hashSet.add(SaxonOutputKeys.INTERNAL_DTD_SUBSET);
        hashSet.add(SaxonOutputKeys.LINE_LENGTH);
        hashSet.add(SaxonOutputKeys.NEWLINE);
        hashSet.add(SaxonOutputKeys.NEXT_IN_CHAIN);
        hashSet.add(SaxonOutputKeys.RECOGNIZE_BINARY);
        hashSet.add(SaxonOutputKeys.REQUIRE_WELL_FORMED);
        hashSet.add(SaxonOutputKeys.PROPERTY_ORDER);
        hashSet.add(SaxonOutputKeys.SINGLE_QUOTES);
        hashSet.add(SaxonOutputKeys.SUPPLY_SOURCE_LOCATOR);
        METHOD = new StructuredQName("", "", "method");
        BUILD_TREE = new StructuredQName("", "", SaxonOutputKeys.BUILD_TREE);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        NodeInfo next;
        Properties gatherOutputProperties;
        AxisIterator iterateAxis = iterateAxis(0);
        do {
            next = iterateAxis.next();
            if (next == null) {
                if (this.f102092w == null) {
                    try {
                        gatherOutputProperties = getPrincipalStylesheetModule().gatherOutputProperties(this.f102091v);
                    } catch (XPathException unused) {
                        compileError("Named output format has not been defined", "XTDE1460");
                        return null;
                    }
                } else {
                    gatherOutputProperties = new Properties();
                    getPrincipalStylesheetModule().setNeedsDynamicOutputProperties(true);
                }
                Properties properties = gatherOutputProperties;
                if (this.f102092w == null && properties.getProperty("method") == null && this.f102095z.get(METHOD) == null) {
                    NodeInfo next2 = iterateAxis(3).next();
                    if (next2 instanceof LiteralResultElement) {
                        String str = "html";
                        if (next2.getURI().equals("http://www.w3.org/1999/xhtml") && next2.getLocalPart().equals("html")) {
                            str = "xhtml";
                        } else if (!next2.getLocalPart().equalsIgnoreCase("html") || !next2.getURI().isEmpty()) {
                            str = "xml";
                        }
                        properties.setProperty("method", str);
                    }
                }
                Properties properties2 = new Properties();
                HashSet hashSet = new HashSet(10);
                NamespaceResolver namespaceResolver = getStaticContext().getNamespaceResolver();
                for (StructuredQName structuredQName : this.f102095z.keySet()) {
                    Expression expression = this.f102095z.get(structuredQName);
                    if (expression instanceof StringLiteral) {
                        String stringify = ((StringLiteral) expression).stringify();
                        try {
                            ResultDocument.setSerializationProperty(properties2, structuredQName.getURI(), structuredQName.getLocalPart(), stringify, namespaceResolver, false, compilation.getConfiguration());
                            hashSet.add(structuredQName);
                            structuredQName.equals(METHOD);
                        } catch (XPathException e) {
                            if (NamespaceConstant.SAXON.equals(e.getErrorCodeNamespace())) {
                                compileWarning(e.getMessage(), e.getErrorCodeQName());
                            } else {
                                e.setErrorCode("XTSE0020");
                                compileError(e);
                            }
                        }
                    }
                }
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    this.f102095z.remove((StructuredQName) it2.next());
                }
                ResultDocument resultDocument = new ResultDocument(properties, properties2, this.f102090u, this.f102092w, this.f102093x, this.f102094y, this.f102095z, getContainingPackage().getCharacterMapIndex());
                Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, true);
                if (compileSequenceConstructor == null) {
                    compileSequenceConstructor = Literal.makeLiteral(EmptySequence.getInstance());
                }
                resultDocument.setContentExpression(compileSequenceConstructor);
                resultDocument.setAsynchronous(this.f102089J);
                return resultDocument;
            }
            if (next instanceof XSLGeneralVariable) {
                break;
            }
        } while (!(next instanceof XSLFunction));
        issueWarning("An xsl:result-document instruction inside " + next.getDisplayName() + " will always fail at run-time", this);
        return new ErrorExpression("Call to xsl:result-document while in temporary output state", "XTDE1480", false);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            StructuredQName structuredQName = nodeName.getStructuredQName();
            String value = attributeInfo.getValue();
            String clarkName = structuredQName.getClarkName();
            if (clarkName.equals(Constants.ATTRNAME_FORMAT)) {
                str = Whitespace.trim(value);
                this.f102092w = makeAttributeValueTemplate(str, attributeInfo);
            } else if (clarkName.equals("href")) {
                this.f102090u = makeAttributeValueTemplate(Whitespace.trim(value), attributeInfo);
            } else if (clarkName.equals("validation")) {
                str2 = Whitespace.trim(value);
            } else if (clarkName.equals("type")) {
                str3 = Whitespace.trim(value);
            } else if (clarkName.equals(SaxonOutputKeys.USE_CHARACTER_MAPS)) {
                str4 = Whitespace.trim(value);
            } else if (fans.contains(clarkName) || (clarkName.startsWith("{") && !StandardNames.SAXON_ASYCHRONOUS.equals(clarkName))) {
                if (!clarkName.equals(SaxonOutputKeys.ITEM_SEPARATOR) && !clarkName.equals(SaxonOutputKeys.NEWLINE)) {
                    value = Whitespace.trim(value);
                }
                this.f102095z.put(structuredQName, makeAttributeValueTemplate(value, attributeInfo));
            } else if (structuredQName.getLocalPart().equals("asynchronous") && structuredQName.hasURI(NamespaceConstant.SAXON)) {
                this.f102089J = processBooleanAttribute("saxon:asynchronous", value);
                if (getCompilation().getCompilerInfo().isCompileWithTracing()) {
                    this.f102089J = false;
                } else if (!"EE".equals(getConfiguration().getEditionCode())) {
                    compileWarning("saxon:asynchronous - ignored when not running Saxon-EE", SaxonErrorCode.SXWN9013);
                    this.f102089J = false;
                }
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (str != null) {
            Expression expression = this.f102092w;
            if (expression instanceof StringLiteral) {
                this.f102091v = makeQName(((StringLiteral) expression).stringify(), "XTDE1460", Constants.ATTRNAME_FORMAT);
                this.f102092w = null;
            } else {
                getPrincipalStylesheetModule().setNeedsDynamicOutputProperties(true);
            }
        }
        if (str2 == null) {
            this.f102093x = m63987z();
        } else {
            this.f102093x = validateValidationAttribute(str2);
        }
        if (str3 != null) {
            if (!isSchemaAware()) {
                compileError("The @type attribute is available only with a schema-aware XSLT processor", "XTSE1660");
            }
            this.f102094y = getSchemaType(str3);
            this.f102093x = 8;
        }
        if (str3 != null && str2 != null) {
            compileError("The @validation and @type attributes are mutually exclusive", "XTSE1505");
        }
        if (str4 != null) {
            this.f102095z.put(new StructuredQName("", "", SaxonOutputKeys.USE_CHARACTER_MAPS), new StringLiteral(XSLOutput.prepareCharacterMaps(this, str4, new Properties())));
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        if (this.f102090u != null && !getConfiguration().getBooleanProperty(Feature.ALLOW_EXTERNAL_FUNCTIONS)) {
            compileError("xsl:result-document is disabled when extension functions are disabled");
        }
        this.f102090u = typeCheck("href", this.f102090u);
        this.f102092w = typeCheck(Constants.ATTRNAME_FORMAT, this.f102092w);
        for (StructuredQName structuredQName : this.f102095z.keySet()) {
            Expression expression = this.f102095z.get(structuredQName);
            Expression typeCheck = typeCheck(structuredQName.getDisplayName(), expression);
            if (expression != typeCheck) {
                this.f102095z.put(structuredQName, typeCheck);
            }
        }
        getContainingPackage().setCreatesSecondaryResultDocuments(true);
    }
}
