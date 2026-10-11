package com.sun.org.apache.xalan.internal.xsltc.compiler;

import androidx.constraintlayout.motion.widget.MotionScene;
import com.bumptech.glide.load.engine.GlideException;
import com.caverock.androidsvg.SVGParser;
import com.google.android.exoplayer2.source.dash.manifest.UrlTemplate;
import com.onyx.android.sdk.base.data.Operators;
import com.sun.java_cup.internal.runtime.Symbol;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.runtime.AttributeList;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Properties;
import java.util.Stack;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.apache.http.HttpHeaders;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLReader;

/* loaded from: classes10.dex */
public class Parser implements Constants, ContentHandler {
    private static final String TRANSLET = "translet";
    private static final String XSL = "xsl";
    private int _currentImportPrecedence;
    private Stylesheet _currentStylesheet;
    private Vector _errors;
    private QName _excludeResultPrefixes;
    private QName _extensionElementPrefixes;
    private Hashtable _instructionAttrs;
    private Hashtable _instructionClasses;
    private Hashtable _namespaces;
    private Output _output;
    private Hashtable _qNames;
    private SyntaxTreeNode _root;
    private boolean _rootNamespaceDef;
    private SymbolTable _symbolTable;
    private String _target;
    private Template _template;
    private QName _useAttributeSets;
    private Hashtable _variableScope;
    private Vector _warnings;
    private XPathParser _xpathParser;
    private XSLTC _xsltc;
    private Locator _locator = null;
    private String _PImedia = null;
    private String _PItitle = null;
    private String _PIcharset = null;
    private int _templateIndex = 0;
    private boolean versionIsOne = true;
    private Stack _parentStack = null;
    private Hashtable _prefixMapping = null;

    public Parser(XSLTC xsltc) {
        this._xsltc = xsltc;
    }

    private void addVariableOrParam(VariableBase variableBase) {
        Object obj = this._variableScope.get(variableBase.getName());
        if (obj == null) {
            this._variableScope.put(variableBase.getName(), variableBase);
            return;
        }
        if (obj instanceof Stack) {
            ((Stack) obj).push(variableBase);
        } else if (obj instanceof VariableBase) {
            Stack stack = new Stack();
            stack.push(obj);
            stack.push(variableBase);
            this._variableScope.put(variableBase.getName(), stack);
        }
    }

    private void checkForSuperfluousAttributes(SyntaxTreeNode syntaxTreeNode, Attributes attributes) {
        boolean z = syntaxTreeNode instanceof Stylesheet;
        String[] strArr = (String[]) this._instructionAttrs.get(syntaxTreeNode.getQName());
        if (!this.versionIsOne || strArr == null) {
            return;
        }
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            String qName = attributes.getQName(i);
            if (z && qName.equals("version")) {
                this.versionIsOne = attributes.getValue(i).equals("1.0");
            }
            if (!qName.startsWith("xml") && qName.indexOf(58) <= 0) {
                int i2 = 0;
                while (i2 < strArr.length && !qName.equalsIgnoreCase(strArr[i2])) {
                    i2++;
                }
                if (i2 == strArr.length) {
                    ErrorMsg errorMsg = new ErrorMsg(ErrorMsg.ILLEGAL_ATTRIBUTE_ERR, (Object) qName, syntaxTreeNode);
                    errorMsg.setWarningError(true);
                    reportError(4, errorMsg);
                }
            }
        }
    }

    private SyntaxTreeNode findStylesheet(SyntaxTreeNode syntaxTreeNode, String str) {
        if (syntaxTreeNode == null) {
            return null;
        }
        if ((syntaxTreeNode instanceof Stylesheet) && syntaxTreeNode.getAttribute("id").equals(str)) {
            return syntaxTreeNode;
        }
        Vector contents = syntaxTreeNode.getContents();
        if (contents != null) {
            int size = contents.size();
            for (int i = 0; i < size; i++) {
                SyntaxTreeNode findStylesheet = findStylesheet((SyntaxTreeNode) contents.elementAt(i), str);
                if (findStylesheet != null) {
                    return findStylesheet;
                }
            }
        }
        return null;
    }

    private int getLineNumber() {
        Locator locator = this._locator;
        if (locator != null) {
            return locator.getLineNumber();
        }
        return 0;
    }

    private SyntaxTreeNode getStylesheet(SyntaxTreeNode syntaxTreeNode) throws CompilerException {
        String str = this._target;
        if (str == null) {
            if (this._rootNamespaceDef) {
                return syntaxTreeNode;
            }
            throw new CompilerException(new ErrorMsg(ErrorMsg.MISSING_XSLT_URI_ERR).toString());
        }
        if (str.charAt(0) != '#') {
            return loadExternalStylesheet(this._target);
        }
        SyntaxTreeNode findStylesheet = findStylesheet(syntaxTreeNode, this._target.substring(1));
        if (findStylesheet != null) {
            return findStylesheet;
        }
        throw new CompilerException(new ErrorMsg(ErrorMsg.MISSING_XSLT_TARGET_ERR, (Object) this._target, syntaxTreeNode).toString());
    }

    private String getTokenValue(String str) {
        return str.substring(str.indexOf(34) + 1, str.lastIndexOf(34));
    }

    private void initAttrTable(String str, String[] strArr) {
        this._instructionAttrs.put(getQName("http://www.w3.org/1999/XSL/Transform", XSL, str), strArr);
    }

    private void initExtClass(String str, String str2) {
        this._instructionClasses.put(getQName(Constants.TRANSLET_URI, "translet", str), "com.sun.org.apache.xalan.internal.xsltc.compiler." + str2);
    }

    private void initExtClasses() {
        initExtClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_OUTPUT_STRING, "TransletOutput");
        initExtClass("http://xml.apache.org/xalan/redirect", "write", "TransletOutput");
    }

    private void initInstructionAttrs() {
        initAttrTable("template", new String[]{com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MATCH, "name", "priority", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_STYLESHEET_STRING, new String[]{"id", "version", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_EXTENSIONELEMENTPREFIXES, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_EXCLUDE_RESULT_PREFIXES});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_TRANSFORM_STRING, new String[]{"id", "version", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_EXTENSIONELEMENTPREFIXES, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_EXCLUDE_RESULT_PREFIXES});
        initAttrTable("text", new String[]{com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_DISABLE_OUTPUT_ESCAPING});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_IF_STRING, new String[]{com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_TEST});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_CHOOSE_STRING, new String[0]);
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_WHEN_STRING, new String[]{com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_TEST});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_OTHERWISE_STRING, new String[0]);
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_FOREACH_STRING, new String[]{"select"});
        initAttrTable("message", new String[]{com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_TERMINATE});
        initAttrTable("number", new String[]{"level", "count", "from", "value", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_FORMAT, "lang", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_LETTERVALUE, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_GROUPINGSEPARATOR, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_GROUPINGSIZE});
        initAttrTable("comment", new String[0]);
        initAttrTable("copy", new String[]{com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_USEATTRIBUTESETS});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_COPY_OF_STRING, new String[]{"select"});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_PARAMVARIABLE_STRING, new String[]{"name", "select"});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_WITHPARAM_STRING, new String[]{"name", "select"});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_VARIABLE_STRING, new String[]{"name", "select"});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_OUTPUT_STRING, new String[]{"method", "version", "encoding", "omit-xml-declaration", "standalone", "doctype-public", "doctype-system", "cdata-section-elements", "indent", "media-type"});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_SORT_STRING, new String[]{"select", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_ORDER, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_CASEORDER, "lang", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_DATATYPE});
        initAttrTable("key", new String[]{"name", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MATCH, "use"});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_FALLBACK_STRING, new String[0]);
        initAttrTable("attribute", new String[]{"name", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_NAMESPACE});
        initAttrTable("attribute-set", new String[]{"name", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_USEATTRIBUTESETS});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_VALUEOF_STRING, new String[]{"select", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_DISABLE_OUTPUT_ESCAPING});
        initAttrTable("element", new String[]{"name", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_NAMESPACE, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_USEATTRIBUTESETS});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_CALLTEMPLATE_STRING, new String[]{"name"});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_APPLY_TEMPLATES_STRING, new String[]{"select", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_APPLY_IMPORTS_STRING, new String[0]);
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_DECIMALFORMAT_STRING, new String[]{"name", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_DECIMALSEPARATOR, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_GROUPINGSEPARATOR, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_INFINITY, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MINUSSIGN, "NaN", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERCENT, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PERMILLE, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_ZERODIGIT, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_DIGIT, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_PATTERNSEPARATOR});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_IMPORT_STRING, new String[]{"href"});
        initAttrTable("include", new String[]{"href"});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_STRIPSPACE_STRING, new String[]{com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_ELEMENTS});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_PRESERVESPACE_STRING, new String[]{com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_ELEMENTS});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_PI_STRING, new String[]{"name"});
        initAttrTable(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_NSALIAS_STRING, new String[]{com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_STYLESHEET_PREFIX, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_RESULT_PREFIX});
    }

    private void initStdClass(String str, String str2) {
        this._instructionClasses.put(getQName("http://www.w3.org/1999/XSL/Transform", XSL, str), "com.sun.org.apache.xalan.internal.xsltc.compiler." + str2);
    }

    private void initStdClasses() {
        initStdClass("template", "Template");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_STYLESHEET_STRING, "Stylesheet");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_TRANSFORM_STRING, "Stylesheet");
        initStdClass("text", "Text");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_IF_STRING, HttpHeaders.f110097IF);
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_CHOOSE_STRING, "Choose");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_WHEN_STRING, "When");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_OTHERWISE_STRING, "Otherwise");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_FOREACH_STRING, "ForEach");
        initStdClass("message", "Message");
        initStdClass("number", UrlTemplate.f25861f);
        initStdClass("comment", "Comment");
        initStdClass("copy", "Copy");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_COPY_OF_STRING, "CopyOf");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_PARAMVARIABLE_STRING, "Param");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_WITHPARAM_STRING, "WithParam");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_VARIABLE_STRING, "Variable");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_OUTPUT_STRING, "Output");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_SORT_STRING, "Sort");
        initStdClass("key", "Key");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_FALLBACK_STRING, "Fallback");
        initStdClass("attribute", "XslAttribute");
        initStdClass("attribute-set", "AttributeSet");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_VALUEOF_STRING, "ValueOf");
        initStdClass("element", "XslElement");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_CALLTEMPLATE_STRING, "CallTemplate");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_APPLY_TEMPLATES_STRING, "ApplyTemplates");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_APPLY_IMPORTS_STRING, "ApplyImports");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_DECIMALFORMAT_STRING, "DecimalFormatting");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_IMPORT_STRING, "Import");
        initStdClass("include", MotionScene.f3919H);
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_STRIPSPACE_STRING, "Whitespace");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_PRESERVESPACE_STRING, "Whitespace");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_PI_STRING, "ProcessingInstruction");
        initStdClass(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_NSALIAS_STRING, "NamespaceAlias");
    }

    private void initSymbolTable() {
        Type type = Type.Int;
        Type type2 = Type.Void;
        MethodType methodType = new MethodType(type, type2);
        Type type3 = Type.Real;
        new MethodType(type, type3);
        Type type4 = Type.String;
        MethodType methodType2 = new MethodType(type, type4);
        Type type5 = Type.NodeSet;
        MethodType methodType3 = new MethodType(type, type5);
        new MethodType(type3, type);
        MethodType methodType4 = new MethodType(type3, type2);
        MethodType methodType5 = new MethodType(type3, type3);
        MethodType methodType6 = new MethodType(type3, type5);
        Type type6 = Type.Reference;
        MethodType methodType7 = new MethodType(type3, type6);
        MethodType methodType8 = new MethodType(type, type);
        MethodType methodType9 = new MethodType(type5, type6);
        MethodType methodType10 = new MethodType(type5, type2);
        MethodType methodType11 = new MethodType(type5, type4);
        MethodType methodType12 = new MethodType(type5, type5);
        Type type7 = Type.Node;
        MethodType methodType13 = new MethodType(type7, type2);
        MethodType methodType14 = new MethodType(type4, type2);
        MethodType methodType15 = new MethodType(type4, type4);
        MethodType methodType16 = new MethodType(type4, type7);
        MethodType methodType17 = new MethodType(type4, type5);
        MethodType methodType18 = new MethodType(type4, type6);
        Type type8 = Type.Boolean;
        MethodType methodType19 = new MethodType(type8, type6);
        MethodType methodType20 = new MethodType(type8, type2);
        MethodType methodType21 = new MethodType(type8, type8);
        MethodType methodType22 = new MethodType(type8, type4);
        new MethodType(type5, Type.Object);
        MethodType methodType23 = new MethodType(type3, type3, type3);
        MethodType methodType24 = new MethodType(type, type, type);
        MethodType methodType25 = new MethodType(type8, type3, type3);
        MethodType methodType26 = new MethodType(type8, type, type);
        MethodType methodType27 = new MethodType(type4, type4, type4);
        MethodType methodType28 = new MethodType(type4, type3, type4);
        MethodType methodType29 = new MethodType(type4, type4, type3);
        MethodType methodType30 = new MethodType(type6, type4, type6);
        MethodType methodType31 = new MethodType(type5, type4, type4);
        MethodType methodType32 = new MethodType(type5, type4, type5);
        MethodType methodType33 = new MethodType(type8, type8, type8);
        MethodType methodType34 = new MethodType(type8, type4, type4);
        new MethodType(type4, type4, type5);
        MethodType methodType35 = new MethodType(type4, type3, type4, type4);
        MethodType methodType36 = new MethodType(type4, type4, type3, type3);
        MethodType methodType37 = new MethodType(type4, type4, type4, type4);
        this._symbolTable.addPrimop(Keywords.FUNC_CURRENT_STRING, methodType13);
        this._symbolTable.addPrimop(Keywords.FUNC_LAST_STRING, methodType);
        this._symbolTable.addPrimop("position", methodType);
        this._symbolTable.addPrimop("true", methodType20);
        this._symbolTable.addPrimop("false", methodType20);
        this._symbolTable.addPrimop(Keywords.FUNC_NOT_STRING, methodType21);
        this._symbolTable.addPrimop("name", methodType14);
        this._symbolTable.addPrimop("name", methodType16);
        this._symbolTable.addPrimop(Keywords.FUNC_GENERATE_ID_STRING, methodType14);
        this._symbolTable.addPrimop(Keywords.FUNC_GENERATE_ID_STRING, methodType16);
        this._symbolTable.addPrimop(Keywords.FUNC_CEILING_STRING, methodType5);
        this._symbolTable.addPrimop(Keywords.FUNC_FLOOR_STRING, methodType5);
        this._symbolTable.addPrimop(Keywords.FUNC_ROUND_STRING, methodType5);
        this._symbolTable.addPrimop(Keywords.FUNC_CONTAINS_STRING, methodType34);
        this._symbolTable.addPrimop("number", methodType7);
        this._symbolTable.addPrimop("number", methodType4);
        this._symbolTable.addPrimop("boolean", methodType19);
        this._symbolTable.addPrimop("string", methodType18);
        this._symbolTable.addPrimop("string", methodType14);
        this._symbolTable.addPrimop("translate", methodType37);
        this._symbolTable.addPrimop(Keywords.FUNC_STRING_LENGTH_STRING, methodType);
        this._symbolTable.addPrimop(Keywords.FUNC_STRING_LENGTH_STRING, methodType2);
        this._symbolTable.addPrimop(Keywords.FUNC_STARTS_WITH_STRING, methodType34);
        this._symbolTable.addPrimop("format-number", methodType28);
        this._symbolTable.addPrimop("format-number", methodType35);
        this._symbolTable.addPrimop(Keywords.FUNC_UNPARSED_ENTITY_URI_STRING, methodType15);
        this._symbolTable.addPrimop("key", methodType31);
        this._symbolTable.addPrimop("key", methodType32);
        this._symbolTable.addPrimop("id", methodType11);
        this._symbolTable.addPrimop("id", methodType12);
        this._symbolTable.addPrimop(Keywords.FUNC_NAMESPACE_STRING, methodType14);
        this._symbolTable.addPrimop(Keywords.FUNC_EXT_FUNCTION_AVAILABLE_STRING, methodType22);
        this._symbolTable.addPrimop(Keywords.FUNC_EXT_ELEM_AVAILABLE_STRING, methodType22);
        this._symbolTable.addPrimop("document", methodType11);
        this._symbolTable.addPrimop("document", methodType10);
        this._symbolTable.addPrimop("count", methodType3);
        this._symbolTable.addPrimop(Keywords.FUNC_SUM_STRING, methodType6);
        this._symbolTable.addPrimop(Keywords.FUNC_LOCAL_PART_STRING, methodType14);
        this._symbolTable.addPrimop(Keywords.FUNC_LOCAL_PART_STRING, methodType17);
        this._symbolTable.addPrimop(Keywords.FUNC_NAMESPACE_STRING, methodType14);
        this._symbolTable.addPrimop(Keywords.FUNC_NAMESPACE_STRING, methodType17);
        this._symbolTable.addPrimop(Keywords.FUNC_SUBSTRING_STRING, methodType29);
        this._symbolTable.addPrimop(Keywords.FUNC_SUBSTRING_STRING, methodType36);
        this._symbolTable.addPrimop(Keywords.FUNC_SUBSTRING_AFTER_STRING, methodType27);
        this._symbolTable.addPrimop(Keywords.FUNC_SUBSTRING_BEFORE_STRING, methodType27);
        this._symbolTable.addPrimop(Keywords.FUNC_NORMALIZE_SPACE_STRING, methodType14);
        this._symbolTable.addPrimop(Keywords.FUNC_NORMALIZE_SPACE_STRING, methodType15);
        this._symbolTable.addPrimop(Keywords.FUNC_SYSTEM_PROPERTY_STRING, methodType15);
        this._symbolTable.addPrimop("nodeset", methodType9);
        this._symbolTable.addPrimop("objectType", methodType18);
        this._symbolTable.addPrimop("cast", methodType30);
        this._symbolTable.addPrimop("+", methodType23);
        this._symbolTable.addPrimop("-", methodType23);
        this._symbolTable.addPrimop("*", methodType23);
        this._symbolTable.addPrimop("/", methodType23);
        this._symbolTable.addPrimop("%", methodType23);
        this._symbolTable.addPrimop("+", methodType24);
        this._symbolTable.addPrimop("-", methodType24);
        this._symbolTable.addPrimop("*", methodType24);
        this._symbolTable.addPrimop("<", methodType25);
        this._symbolTable.addPrimop("<=", methodType25);
        this._symbolTable.addPrimop(">", methodType25);
        this._symbolTable.addPrimop(">=", methodType25);
        this._symbolTable.addPrimop("<", methodType26);
        this._symbolTable.addPrimop("<=", methodType26);
        this._symbolTable.addPrimop(">", methodType26);
        this._symbolTable.addPrimop(">=", methodType26);
        this._symbolTable.addPrimop("<", methodType33);
        this._symbolTable.addPrimop("<=", methodType33);
        this._symbolTable.addPrimop(">", methodType33);
        this._symbolTable.addPrimop(">=", methodType33);
        this._symbolTable.addPrimop(Operators.OR, methodType33);
        this._symbolTable.addPrimop(Operators.AND, methodType33);
        this._symbolTable.addPrimop("u-", methodType5);
        this._symbolTable.addPrimop("u-", methodType8);
    }

    private SyntaxTreeNode loadExternalStylesheet(String str) throws CompilerException {
        InputSource inputSource;
        if (new File(str).exists()) {
            inputSource = new InputSource("file:" + str);
        } else {
            inputSource = new InputSource(str);
        }
        return parse(inputSource);
    }

    private SyntaxTreeNode parseTopLevel(SyntaxTreeNode syntaxTreeNode, String str, String str2) {
        Symbol parse;
        SyntaxTreeNode syntaxTreeNode2;
        int lineNumber = getLineNumber();
        try {
            this._xpathParser.setScanner(new XPathLexer(new StringReader(str)));
            parse = this._xpathParser.parse(str2, lineNumber);
        } catch (Exception e) {
            if (this._xsltc.debug()) {
                e.printStackTrace();
            }
            reportError(3, new ErrorMsg(ErrorMsg.XPATH_PARSER_ERR, (Object) str2, syntaxTreeNode));
        }
        if (parse == null || (syntaxTreeNode2 = (SyntaxTreeNode) parse.value) == null) {
            reportError(3, new ErrorMsg(ErrorMsg.XPATH_PARSER_ERR, (Object) str2, syntaxTreeNode));
            SyntaxTreeNode syntaxTreeNode3 = SyntaxTreeNode.Dummy;
            syntaxTreeNode3.setParser(this);
            return syntaxTreeNode3;
        }
        syntaxTreeNode2.setParser(this);
        syntaxTreeNode2.setParent(syntaxTreeNode);
        syntaxTreeNode2.setLineNumber(lineNumber);
        return syntaxTreeNode2;
    }

    public void addParameter(Param param) {
        addVariableOrParam(param);
    }

    public void addVariable(Variable variable) {
        addVariableOrParam(variable);
    }

    @Override // org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) {
        String str = new String(cArr, i, i2);
        SyntaxTreeNode syntaxTreeNode = (SyntaxTreeNode) this._parentStack.peek();
        if (str.length() == 0) {
            return;
        }
        if (syntaxTreeNode instanceof Text) {
            ((Text) syntaxTreeNode).setText(str);
            return;
        }
        if (syntaxTreeNode instanceof Stylesheet) {
            return;
        }
        SyntaxTreeNode lastChild = syntaxTreeNode.lastChild();
        if (lastChild != null && (lastChild instanceof Text)) {
            Text text = (Text) lastChild;
            if (!text.isTextElement() && (i2 > 1 || cArr[0] < 256)) {
                text.setText(str);
                return;
            }
        }
        syntaxTreeNode.addElement(new Text(str));
    }

    public void createAST(Stylesheet stylesheet) {
        if (stylesheet != null) {
            try {
                stylesheet.parseContents(this);
                stylesheet.getImportPrecedence();
                Enumeration elements = stylesheet.elements();
                while (elements.hasMoreElements()) {
                    if (elements.nextElement() instanceof Text) {
                        reportError(3, new ErrorMsg(ErrorMsg.ILLEGAL_TEXT_NODE_ERR, getLineNumber(), (Object) null));
                    }
                }
                if (errorsFound()) {
                    return;
                }
                stylesheet.typeCheck(this._symbolTable);
            } catch (TypeCheckError e) {
                reportError(3, new ErrorMsg(e));
            }
        }
    }

    public boolean elementSupported(String str, String str2) {
        return this._instructionClasses.get(getQName(str, XSL, str2)) != null;
    }

    @Override // org.xml.sax.ContentHandler
    public void endDocument() {
    }

    @Override // org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        this._parentStack.pop();
    }

    @Override // org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) {
    }

    public boolean errorsFound() {
        return this._errors.size() > 0;
    }

    public boolean functionSupported(String str) {
        return this._symbolTable.lookupPrimop(str) != null;
    }

    public int getCurrentImportPrecedence() {
        return this._currentImportPrecedence;
    }

    public Stylesheet getCurrentStylesheet() {
        return this._currentStylesheet;
    }

    public SyntaxTreeNode getDocumentRoot() {
        return this._root;
    }

    public Vector getErrors() {
        return this._errors;
    }

    public QName getExcludeResultPrefixes() {
        return this._excludeResultPrefixes;
    }

    public QName getExtensionElementPrefixes() {
        return this._extensionElementPrefixes;
    }

    public int getNextImportPrecedence() {
        int i = this._currentImportPrecedence + 1;
        this._currentImportPrecedence = i;
        return i;
    }

    public Output getOutput() {
        return this._output;
    }

    public Properties getOutputProperties() {
        return getTopLevelStylesheet().getOutputProperties();
    }

    public QName getQName(String str) {
        return getQName(str, true, false);
    }

    public QName getQNameIgnoreDefaultNs(String str) {
        return getQName(str, true, true);
    }

    public QName getQNameSafe(String str) {
        int lastIndexOf = str.lastIndexOf(58);
        String str2 = "";
        if (lastIndexOf == -1) {
            return getQName(str.equals("xmlns") ? null : this._symbolTable.lookupNamespace(""), (String) null, str);
        }
        String substring = str.substring(0, lastIndexOf);
        String substring2 = str.substring(lastIndexOf + 1);
        if (substring.equals("xmlns")) {
            str2 = null;
        } else {
            String lookupNamespace = this._symbolTable.lookupNamespace(substring);
            if (lookupNamespace != null) {
                str2 = lookupNamespace;
            }
        }
        return getQName(str2, substring, substring2);
    }

    public SymbolTable getSymbolTable() {
        return this._symbolTable;
    }

    public Template getTemplate() {
        return this._template;
    }

    public int getTemplateIndex() {
        int i = this._templateIndex;
        this._templateIndex = i + 1;
        return i;
    }

    public Stylesheet getTopLevelStylesheet() {
        return this._xsltc.getStylesheet();
    }

    public QName getUseAttributeSets() {
        return this._useAttributeSets;
    }

    public Vector getWarnings() {
        return this._warnings;
    }

    public XSLTC getXSLTC() {
        return this._xsltc;
    }

    @Override // org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) {
    }

    public void init() {
        this._qNames = new Hashtable(512);
        this._namespaces = new Hashtable();
        this._instructionClasses = new Hashtable();
        this._instructionAttrs = new Hashtable();
        this._variableScope = new Hashtable();
        this._template = null;
        this._errors = new Vector();
        this._warnings = new Vector();
        this._symbolTable = new SymbolTable();
        this._xpathParser = new XPathParser(this);
        this._currentStylesheet = null;
        this._output = null;
        this._root = null;
        this._rootNamespaceDef = false;
        this._currentImportPrecedence = 1;
        initStdClasses();
        initInstructionAttrs();
        initExtClasses();
        initSymbolTable();
        this._useAttributeSets = getQName("http://www.w3.org/1999/XSL/Transform", XSL, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_USEATTRIBUTESETS);
        this._excludeResultPrefixes = getQName("http://www.w3.org/1999/XSL/Transform", XSL, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_EXCLUDE_RESULT_PREFIXES);
        this._extensionElementPrefixes = getQName("http://www.w3.org/1999/XSL/Transform", XSL, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_EXTENSIONELEMENTPREFIXES);
    }

    public VariableBase lookupVariable(QName qName) {
        Object obj = this._variableScope.get(qName);
        if (obj instanceof VariableBase) {
            return (VariableBase) obj;
        }
        if (obj instanceof Stack) {
            return (VariableBase) ((Stack) obj).peek();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode makeInstance(java.lang.String r6, java.lang.String r7, java.lang.String r8, org.xml.sax.Attributes r9) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.xsltc.compiler.Parser.makeInstance(java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes):com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode");
    }

    public Stylesheet makeStylesheet(SyntaxTreeNode syntaxTreeNode) throws CompilerException {
        Stylesheet stylesheet;
        try {
            if (syntaxTreeNode instanceof Stylesheet) {
                stylesheet = (Stylesheet) syntaxTreeNode;
            } else {
                Stylesheet stylesheet2 = new Stylesheet();
                stylesheet2.setSimplified();
                stylesheet2.addElement(syntaxTreeNode);
                stylesheet2.setAttributes((AttributeList) syntaxTreeNode.getAttributes());
                if (syntaxTreeNode.lookupNamespace("") == null) {
                    syntaxTreeNode.addPrefixMapping("", "");
                }
                stylesheet = stylesheet2;
            }
            stylesheet.setParser(this);
            return stylesheet;
        } catch (ClassCastException unused) {
            throw new CompilerException(new ErrorMsg(ErrorMsg.NOT_STYLESHEET_ERR, syntaxTreeNode).toString());
        }
    }

    public SyntaxTreeNode parse(XMLReader xMLReader, InputSource inputSource) {
        try {
            xMLReader.setContentHandler(this);
            xMLReader.parse(inputSource);
            return getStylesheet(this._root);
        } catch (CompilerException e) {
            if (this._xsltc.debug()) {
                e.printStackTrace();
            }
            this.reportError(3, new ErrorMsg(e));
            return null;
        } catch (IOException e2) {
            if (this._xsltc.debug()) {
                e2.printStackTrace();
            }
            this.reportError(3, new ErrorMsg(e2));
            return null;
        } catch (SAXException e3) {
            Exception exception = e3.getException();
            if (this._xsltc.debug()) {
                e3.printStackTrace();
                if (exception != null) {
                    exception.printStackTrace();
                }
            }
            this.reportError(3, new ErrorMsg(e3));
            return null;
        } catch (Exception e4) {
            if (this._xsltc.debug()) {
                e4.printStackTrace();
            }
            this.reportError(3, new ErrorMsg(e4));
            return null;
        }
    }

    public Expression parseExpression(SyntaxTreeNode syntaxTreeNode, String str) {
        return (Expression) parseTopLevel(syntaxTreeNode, "<EXPRESSION>" + str, null);
    }

    public Pattern parsePattern(SyntaxTreeNode syntaxTreeNode, String str) {
        return (Pattern) parseTopLevel(syntaxTreeNode, "<PATTERN>" + str, str);
    }

    public void printErrors() {
        int size = this._errors.size();
        if (size > 0) {
            System.err.println(new ErrorMsg(ErrorMsg.COMPILER_ERROR_KEY));
            for (int i = 0; i < size; i++) {
                System.err.println(GlideException.C1935a.f14609h + this._errors.elementAt(i));
            }
        }
    }

    public void printWarnings() {
        int size = this._warnings.size();
        if (size > 0) {
            System.err.println(new ErrorMsg(ErrorMsg.COMPILER_WARNING_KEY));
            for (int i = 0; i < size; i++) {
                System.err.println(GlideException.C1935a.f14609h + this._warnings.elementAt(i));
            }
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) {
        if (this._target == null && str.equals(SVGParser.f16042n)) {
            StringTokenizer stringTokenizer = new StringTokenizer(str2);
            String str3 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            while (stringTokenizer.hasMoreElements()) {
                String str7 = (String) stringTokenizer.nextElement();
                if (str7.startsWith("href")) {
                    str6 = getTokenValue(str7);
                } else if (str7.startsWith(SVGParser.f16046r)) {
                    str3 = getTokenValue(str7);
                } else if (str7.startsWith("title")) {
                    str4 = getTokenValue(str7);
                } else if (str7.startsWith("charset")) {
                    str5 = getTokenValue(str7);
                }
            }
            String str8 = this._PImedia;
            if (str8 == null || str8.equals(str3)) {
                if (this._PItitle == null || this._PImedia.equals(str4)) {
                    if (this._PIcharset == null || this._PImedia.equals(str5)) {
                        this._target = str6;
                    }
                }
            }
        }
    }

    public void removeVariable(QName qName) {
        Object obj = this._variableScope.get(qName);
        if (obj instanceof Stack) {
            Stack stack = (Stack) obj;
            if (!stack.isEmpty()) {
                stack.pop();
            }
            if (!stack.isEmpty()) {
                return;
            }
        }
        this._variableScope.remove(qName);
    }

    public void reportError(int i, ErrorMsg errorMsg) {
        if (i == 0) {
            this._errors.addElement(errorMsg);
            return;
        }
        if (i == 1) {
            this._errors.addElement(errorMsg);
            return;
        }
        if (i == 2) {
            this._errors.addElement(errorMsg);
        } else if (i == 3) {
            this._errors.addElement(errorMsg);
        } else {
            if (i != 4) {
                return;
            }
            this._warnings.addElement(errorMsg);
        }
    }

    public void setCurrentStylesheet(Stylesheet stylesheet) {
        this._currentStylesheet = stylesheet;
    }

    @Override // org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        this._locator = locator;
    }

    public void setOutput(Output output) {
        Output output2 = this._output;
        if (output2 == null) {
            this._output = output;
            return;
        }
        if (output2.getImportPrecedence() > output.getImportPrecedence()) {
            output.disable();
            return;
        }
        this._output.getCdata();
        output.mergeOutput(this._output);
        this._output.disable();
        this._output = output;
    }

    public void setPIParameters(String str, String str2, String str3) {
        this._PImedia = str;
        this._PItitle = str2;
        this._PIcharset = str3;
    }

    public void setTemplate(Template template) {
        this._template = template;
    }

    public void setXSLTC(XSLTC xsltc) {
        this._xsltc = xsltc;
    }

    @Override // org.xml.sax.ContentHandler
    public void skippedEntity(String str) {
    }

    @Override // org.xml.sax.ContentHandler
    public void startDocument() {
        this._root = null;
        this._target = null;
        this._prefixMapping = null;
        this._parentStack = new Stack();
    }

    @Override // org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        int lastIndexOf = str3.lastIndexOf(58);
        String substring = lastIndexOf == -1 ? null : str3.substring(0, lastIndexOf);
        SyntaxTreeNode makeInstance = makeInstance(str, substring, str2, attributes);
        if (makeInstance == null) {
            throw new SAXException(new ErrorMsg(ErrorMsg.ELEMENT_PARSE_ERR, substring + ':' + str2).toString());
        }
        if (this._root == null) {
            Hashtable hashtable = this._prefixMapping;
            if (hashtable == null || !hashtable.containsValue("http://www.w3.org/1999/XSL/Transform")) {
                this._rootNamespaceDef = false;
            } else {
                this._rootNamespaceDef = true;
            }
            this._root = makeInstance;
        } else {
            SyntaxTreeNode syntaxTreeNode = (SyntaxTreeNode) this._parentStack.peek();
            syntaxTreeNode.addElement(makeInstance);
            makeInstance.setParent(syntaxTreeNode);
        }
        makeInstance.setAttributes(new AttributeList(attributes));
        makeInstance.setPrefixMapping(this._prefixMapping);
        if (makeInstance instanceof Stylesheet) {
            getSymbolTable().setCurrentNode(makeInstance);
            ((Stylesheet) makeInstance).excludeExtensionPrefixes(this);
        }
        this._prefixMapping = null;
        this._parentStack.push(makeInstance);
    }

    @Override // org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) {
        if (this._prefixMapping == null) {
            this._prefixMapping = new Hashtable();
        }
        this._prefixMapping.put(str, str2);
    }

    private void initExtClass(String str, String str2, String str3) {
        this._instructionClasses.put(getQName(str, "translet", str2), "com.sun.org.apache.xalan.internal.xsltc.compiler." + str3);
    }

    public QName getQName(String str, boolean z) {
        return getQName(str, z, false);
    }

    public Expression parseExpression(SyntaxTreeNode syntaxTreeNode, String str, String str2) {
        String attribute = syntaxTreeNode.getAttribute(str);
        if (attribute.length() != 0 || str2 == null) {
            str2 = attribute;
        }
        return (Expression) parseTopLevel(syntaxTreeNode, "<EXPRESSION>" + str2, str2);
    }

    public Pattern parsePattern(SyntaxTreeNode syntaxTreeNode, String str, String str2) {
        String attribute = syntaxTreeNode.getAttribute(str);
        if (attribute.length() != 0 || str2 == null) {
            str2 = attribute;
        }
        return (Pattern) parseTopLevel(syntaxTreeNode, "<PATTERN>" + str2, str2);
    }

    private QName getQName(String str, boolean z, boolean z2) {
        int lastIndexOf = str.lastIndexOf(58);
        String str2 = null;
        if (lastIndexOf != -1) {
            String substring = str.substring(0, lastIndexOf);
            String substring2 = str.substring(lastIndexOf + 1);
            if (!substring.equals("xmlns") && (str2 = this._symbolTable.lookupNamespace(substring)) == null && z) {
                reportError(3, new ErrorMsg(ErrorMsg.NAMESPACE_UNDEF_ERR, getLineNumber(), substring));
            }
            return getQName(str2, substring, substring2);
        }
        if (str.equals("xmlns")) {
            z2 = true;
        }
        return getQName(z2 ? null : this._symbolTable.lookupNamespace(""), (String) null, str);
    }

    public QName getQName(String str, String str2, String str3) {
        if (str != null && !str.equals("")) {
            Dictionary dictionary = (Dictionary) this._namespaces.get(str);
            if (dictionary == null) {
                QName qName = new QName(str, str2, str3);
                Hashtable hashtable = this._namespaces;
                Hashtable hashtable2 = new Hashtable();
                hashtable.put(str, hashtable2);
                hashtable2.put(str3, qName);
                return qName;
            }
            QName qName2 = (QName) dictionary.get(str3);
            if (qName2 != null) {
                return qName2;
            }
            QName qName3 = new QName(str, str2, str3);
            dictionary.put(str3, qName3);
            return qName3;
        }
        QName qName4 = (QName) this._qNames.get(str3);
        if (qName4 != null) {
            return qName4;
        }
        QName qName5 = new QName(null, str2, str3);
        this._qNames.put(str3, qName5);
        return qName5;
    }

    public SyntaxTreeNode parse(InputSource inputSource) {
        try {
            try {
                SAXParserFactory newInstance = SAXParserFactory.newInstance();
                if (this._xsltc.isSecureProcessing()) {
                    try {
                        newInstance.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
                    } catch (SAXException unused) {
                    }
                }
                try {
                    newInstance.setFeature("http://xml.org/sax/features/namespaces", true);
                } catch (Exception unused2) {
                    newInstance.setNamespaceAware(true);
                }
                return parse(newInstance.newSAXParser().getXMLReader(), inputSource);
            } catch (ParserConfigurationException unused3) {
                this.reportError(3, new ErrorMsg(ErrorMsg.SAX_PARSER_CONFIG_ERR));
                return null;
            }
        } catch (SAXParseException e) {
            this.reportError(3, new ErrorMsg(e.getMessage(), e.getLineNumber()));
            return null;
        } catch (SAXException e2) {
            this.reportError(3, new ErrorMsg(e2.getMessage()));
            return null;
        }
    }

    public QName getQName(String str, String str2) {
        return getQName(str + str2);
    }

    public QName getQName(QName qName, QName qName2) {
        return getQName(qName.toString() + qName2.toString());
    }
}
