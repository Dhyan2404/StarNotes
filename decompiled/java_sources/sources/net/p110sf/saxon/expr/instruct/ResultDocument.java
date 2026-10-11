package net.p110sf.saxon.expr.instruct;

import com.google.android.gms.common.internal.ImagesContract;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import javax.xml.transform.Result;
import javax.xml.transform.TransformerException;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamResult;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.FilterFactory;
import net.p110sf.saxon.event.NamespaceReducer;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LetExpression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.ResultDocument;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.functions.IriToUri;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.ResultDocumentResolver;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.lib.SerializerFactory;
import net.p110sf.saxon.lib.StandardResultDocumentResolver;
import net.p110sf.saxon.lib.Validation;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.DocumentKey;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.QNameException;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.serialize.CharacterMapIndex;
import net.p110sf.saxon.serialize.PrincipalOutputGatekeeper;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.style.XSLResultDocument;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class ResultDocument extends Instruction implements ValidatingInstruction, InstructionWithComplexContent, ContextOriginator {

    /* renamed from: x */
    public static final /* synthetic */ boolean f99807x = false;

    /* renamed from: n */
    public Operand f99808n;

    /* renamed from: o */
    public Operand f99809o;

    /* renamed from: p */
    public Operand f99810p;

    /* renamed from: r */
    public final Properties f99812r;

    /* renamed from: s */
    public final Properties f99813s;

    /* renamed from: t */
    public ParseOptions f99814t;

    /* renamed from: u */
    public final Map<StructuredQName, Operand> f99815u;

    /* renamed from: w */
    public final CharacterMapIndex f99817w;

    /* renamed from: q */
    public boolean f99811q = false;

    /* renamed from: v */
    public boolean f99816v = false;

    public ResultDocument(Properties properties, Properties properties2, Expression expression, Expression expression2, int i, SchemaType schemaType, Map<StructuredQName, Expression> map, CharacterMapIndex characterMapIndex) {
        this.f99812r = properties;
        this.f99813s = properties2;
        if (expression != null) {
            this.f99808n = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        }
        if (expression2 != null) {
            this.f99809o = new Operand(this, expression2, OperandRole.SINGLE_ATOMIC);
        }
        setValidationAction(i, schemaType);
        this.f99815u = new HashMap(map.size());
        for (Map.Entry<StructuredQName, Expression> entry : map.entrySet()) {
            this.f99815u.put(entry.getKey(), new Operand(this, entry.getValue(), OperandRole.SINGLE_ATOMIC));
        }
        this.f99817w = characterMapIndex;
        Iterator<Expression> it2 = map.values().iterator();
        while (it2.hasNext()) {
            adoptChildExpression(it2.next());
        }
    }

    public static void checkAcceptableUri(XPathContext xPathContext, String str) throws XPathException {
        XsltController xsltController = (XsltController) xPathContext.getController();
        if (str != null) {
            if (xsltController.getDocumentPool().find(str) != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Cannot write to a URI that has already been read: ");
                if (str.equals(Controller.ANONYMOUS_PRINCIPAL_OUTPUT_URI)) {
                    str = "(implicit output URI)";
                }
                sb.append(str);
                XPathException xPathException = new XPathException(sb.toString());
                xPathException.setXPathContext(xPathContext);
                xPathException.setErrorCode("XTDE1500");
                throw xPathException;
            }
            DocumentKey documentKey = new DocumentKey(str);
            synchronized (xsltController) {
                if (!xsltController.checkUniqueOutputDestination(documentKey)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Cannot write more than one result document to the same URI: ");
                    if (str.equals(Controller.ANONYMOUS_PRINCIPAL_OUTPUT_URI)) {
                        str = "(implicit output URI)";
                    }
                    sb2.append(str);
                    XPathException xPathException2 = new XPathException(sb2.toString());
                    xPathException2.setXPathContext(xPathContext);
                    xPathException2.setErrorCode("XTDE1490");
                    throw xPathException2;
                }
                xsltController.addUnavailableOutputDestination(documentKey);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ Receiver m62789h(Configuration configuration, Receiver receiver) {
        return configuration.getDocumentValidator(new NamespaceReducer(receiver), receiver.getSystemId(), this.f99814t, getLocation());
    }

    /* renamed from: i */
    public static void m62790i(Properties properties, String str, String str2, NamespaceResolver namespaceResolver, boolean z, boolean z2, boolean z3) throws XPathException {
        String property = properties.getProperty(str);
        if (property == null) {
            property = "";
        }
        properties.setProperty(str, property + SaxonOutputKeys.parseListOfNodeNames(str2, namespaceResolver, z, z2, z3, "SEPM0016"));
    }

    public static Receiver makeReceiver(String str, String str2, XPathContext xPathContext, ResultDocumentResolver resultDocumentResolver, SerializationProperties serializationProperties, boolean z) throws XPathException {
        Controller controller = xPathContext.getController();
        if (!z) {
            try {
                str2 = controller.getBaseOutputURI();
            } catch (TransformerException e) {
                throw XPathException.makeXPathException(e);
            }
        }
        try {
            try {
                Receiver resolve = resultDocumentResolver.resolve(xPathContext, str, str2, serializationProperties);
                String systemId = resolve.getSystemId();
                if (systemId == null) {
                    systemId = ResolveURI.makeAbsolute(str, str2).toASCIIString();
                    resolve.setSystemId(systemId);
                }
                checkAcceptableUri(xPathContext, systemId);
                return resolve;
            } catch (XPathException e2) {
                throw e2;
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            throw new XPathException("Exception thrown by output resolver", e3);
        }
    }

    public static void processXslOutputElement(NodeInfo nodeInfo, Properties properties, XPathContext xPathContext) throws XPathException {
        NamespaceMap allNamespaces = nodeInfo.getAllNamespaces();
        for (AttributeInfo attributeInfo : nodeInfo.attributes()) {
            setSerializationProperty(properties, attributeInfo.getNodeName().getURI(), attributeInfo.getNodeName().getLocalPart(), Whitespace.trim(attributeInfo.getValue()), allNamespaces, false, xPathContext.getConfiguration());
        }
    }

    public static void setSerializationProperty(Properties properties, String str, String str2, String str3, NamespaceResolver namespaceResolver, boolean z, Configuration configuration) throws XPathException {
        String str4;
        SerializerFactory serializerFactory = configuration.getSerializerFactory();
        if (str.isEmpty()) {
            str4 = str2;
        } else {
            str4 = "{" + str + "}" + str2;
        }
        if (!str.isEmpty() && !NamespaceConstant.SAXON.equals(str)) {
            properties.setProperty('{' + str + '}' + str2, str3);
            return;
        }
        str4.hashCode();
        char c = 65535;
        switch (str4.hashCode()) {
            case -2105998817:
                if (str4.equals("cdata-section-elements")) {
                    c = 0;
                    break;
                }
                break;
            case -1454496079:
                if (str4.equals(SaxonOutputKeys.SUPPRESS_INDENTATION)) {
                    c = 1;
                    break;
                }
                break;
            case -1176301049:
                if (str4.equals(SaxonOutputKeys.NEXT_IN_CHAIN)) {
                    c = 2;
                    break;
                }
                break;
            case -1077554975:
                if (str4.equals("method")) {
                    c = 3;
                    break;
                }
                break;
            case -895235023:
                if (str4.equals(SaxonOutputKeys.ATTRIBUTE_ORDER)) {
                    c = 4;
                    break;
                }
                break;
            case -274839615:
                if (str4.equals(SaxonOutputKeys.USE_CHARACTER_MAPS)) {
                    c = 5;
                    break;
                }
                break;
            case -181365450:
                if (str4.equals(SaxonOutputKeys.DOUBLE_SPACE)) {
                    c = 6;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                m62790i(properties, str4, str3, namespaceResolver, true, z, false);
                return;
            case 1:
                m62790i(properties, str4, str3, namespaceResolver, true, z, false);
                return;
            case 2:
                return;
            case 3:
                String trim = Whitespace.trim(str3);
                if (trim.startsWith("Q{}") && trim.length() > 3) {
                    trim = trim.substring(3);
                }
                if (trim.equals("xml") || trim.equals("html") || trim.equals("text") || trim.equals("xhtml") || trim.equals("json") || trim.equals("adaptive") || z || trim.startsWith("{")) {
                    properties.setProperty("method", trim);
                    return;
                }
                if (trim.startsWith("Q{")) {
                    properties.setProperty("method", trim.substring(1));
                    return;
                }
                try {
                    String[] qNameParts = NameChecker.getQNameParts(trim);
                    String str5 = qNameParts[0];
                    if (str5.isEmpty()) {
                        XPathException xPathException = new XPathException("method must be xml, html, xhtml, text, json, adaptive, or a prefixed name");
                        xPathException.setErrorCode("SEPM0016");
                        xPathException.setIsStaticError(true);
                        throw xPathException;
                    }
                    if (namespaceResolver == null) {
                        properties.setProperty("method", trim);
                        return;
                    }
                    String uRIForPrefix = namespaceResolver.getURIForPrefix(str5, false);
                    if (uRIForPrefix != null) {
                        properties.setProperty("method", '{' + uRIForPrefix + '}' + qNameParts[1]);
                        return;
                    }
                    XPathException xPathException2 = new XPathException("Namespace prefix '" + str5 + "' has not been declared");
                    xPathException2.setErrorCode("SEPM0016");
                    xPathException2.setIsStaticError(true);
                    throw xPathException2;
                } catch (QNameException e) {
                    XPathException xPathException3 = new XPathException("Invalid method name. " + e.getMessage());
                    xPathException3.setErrorCode("SEPM0016");
                    xPathException3.setIsStaticError(true);
                    throw xPathException3;
                }
            case 4:
                m62790i(properties, str4, str3, namespaceResolver, false, z, true);
                return;
            case 5:
                String property = properties.getProperty(SaxonOutputKeys.USE_CHARACTER_MAPS);
                if (property == null) {
                    property = "";
                }
                properties.setProperty(SaxonOutputKeys.USE_CHARACTER_MAPS, property + str3);
                return;
            case 6:
                m62790i(properties, str4, str3, namespaceResolver, true, z, false);
                return;
            default:
                if (str4.equals("output-version")) {
                    str4 = "version";
                }
                if (!z) {
                    try {
                        if (!SaxonOutputKeys.isUnstrippedProperty(str4)) {
                            str3 = Whitespace.trim(str3);
                        }
                        str3 = serializerFactory.checkOutputProperty(str4, str3);
                    } catch (XPathException e2) {
                        e2.maybeSetErrorCode("SEPM0016");
                        throw e2;
                    }
                }
                properties.setProperty(str4, str3);
                return;
        }
    }

    public static void traceDestination(XPathContext xPathContext, Result result) {
        Configuration configuration = xPathContext.getConfiguration();
        if (configuration.isTiming()) {
            String systemId = result.getSystemId();
            if (systemId == null) {
                systemId = result instanceof StreamResult ? "anonymous output stream" : result instanceof SAXResult ? "SAX2 ContentHandler" : result instanceof DOMResult ? "DOM tree" : result.getClass().getName();
            }
            configuration.getLogger().info("Writing to " + systemId);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        super.addToPathMap(pathMap, pathMapNodeSet).setReturnable(false);
        return new PathMap.PathMapNodeSet(pathMap.makeNewRoot(this));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<StructuredQName, Operand> entry : this.f99815u.entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue().getChildExpression().copy(rebindingMap));
        }
        ResultDocument resultDocument = new ResultDocument(this.f99812r, this.f99813s, getHref() == null ? null : getHref().copy(rebindingMap), getFormatExpression() == null ? null : getFormatExpression().copy(rebindingMap), getValidationAction(), getSchemaType(), hashMap, this.f99817w);
        ExpressionTool.copyLocationInfo(this, resultDocument);
        resultDocument.setContentExpression(getContentExpression().copy(rebindingMap));
        resultDocument.f99816v = this.f99816v;
        resultDocument.f99811q = this.f99811q;
        return resultDocument;
    }

    /* renamed from: e */
    public final void m62791e(XPathContext xPathContext) throws XPathException {
        if (xPathContext.getTemporaryOutputState() == 0) {
            return;
        }
        XPathException xPathException = new XPathException("Cannot execute xsl:result-document while evaluating xsl:" + xPathContext.getNamePool().getLocalName(xPathContext.getTemporaryOutputState()));
        xPathException.setErrorCode("XTDE1480");
        xPathException.setLocation(getLocation());
        throw xPathException;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("resultDoc", this);
        expressionPresenter.emitAttribute("global", m62792g(this.f99812r));
        expressionPresenter.emitAttribute(ImagesContract.LOCAL, m62792g(this.f99813s));
        if (getValidationAction() != 4 && getValidationAction() != 8) {
            expressionPresenter.emitAttribute("validation", Validation.describe(getValidationAction()));
        }
        SchemaType schemaType = getSchemaType();
        if (schemaType != null) {
            expressionPresenter.emitAttribute("type", schemaType.getStructuredQName());
        }
        if (this.f99811q) {
            expressionPresenter.emitAttribute("flags", "a");
        }
        if (getHref() != null) {
            expressionPresenter.setChildRole("href");
            getHref().export(expressionPresenter);
        }
        if (getFormatExpression() != null) {
            expressionPresenter.setChildRole(Constants.ATTRNAME_FORMAT);
            getFormatExpression().export(expressionPresenter);
        }
        for (Map.Entry<StructuredQName, Operand> entry : this.f99815u.entrySet()) {
            StructuredQName key = entry.getKey();
            Expression childExpression = entry.getValue().getChildExpression();
            expressionPresenter.setChildRole(key.getEQName());
            childExpression.export(expressionPresenter);
        }
        expressionPresenter.setChildRole("content");
        getContentExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    /* renamed from: g */
    public final String m62792g(Properties properties) {
        StringBuilder sb = new StringBuilder();
        for (String str : properties.stringPropertyNames()) {
            String property = properties.getProperty(str);
            if (str.equals(SaxonOutputKeys.ITEM_SEPARATOR) || str.equals(SaxonOutputKeys.NEWLINE)) {
                property = ExpressionPresenter.jsEscape(property);
            }
            if (str.equals(SaxonOutputKeys.USE_CHARACTER_MAPS) || str.equals("method")) {
                property = property.replace("{", "Q{");
            }
            if (str.startsWith("{")) {
                str = "Q" + str;
            }
            sb.append(str);
            sb.append("=");
            sb.append(property);
            sb.append("\n");
        }
        return sb.toString();
    }

    public Properties gatherOutputProperties(XPathContext xPathContext) throws XPathException {
        String str;
        StructuredQName structuredQName;
        Controller controller = xPathContext.getController();
        Configuration configuration = xPathContext.getConfiguration();
        Properties properties = this.f99812r;
        RetainedStaticContext retainedStaticContext = getRetainedStaticContext();
        if (getFormatExpression() != null) {
            String obj = getFormatExpression().evaluateAsString(xPathContext).toString();
            if (obj.startsWith("Q{")) {
                structuredQName = StructuredQName.fromEQName(obj);
            } else {
                try {
                    String[] qNameParts = NameChecker.getQNameParts(obj);
                    String uRIForPrefix = retainedStaticContext.getURIForPrefix(qNameParts[0], false);
                    if (uRIForPrefix == null) {
                        XPathException xPathException = new XPathException("The namespace prefix in the format name " + obj + " is undeclared");
                        xPathException.maybeSetLocation(getFormatExpression().getLocation());
                        xPathException.setErrorCode("XTDE1460");
                        xPathException.setXPathContext(xPathContext);
                        throw xPathException;
                    }
                    structuredQName = new StructuredQName(qNameParts[0], uRIForPrefix, qNameParts[1]);
                } catch (QNameException unused) {
                    XPathException xPathException2 = new XPathException("The requested output format " + Err.wrap(obj) + " is not a valid QName");
                    xPathException2.maybeSetLocation(getFormatExpression().getLocation());
                    xPathException2.setErrorCode("XTDE1460");
                    xPathException2.setXPathContext(xPathContext);
                    throw xPathException2;
                }
            }
            Properties namedOutputProperties = ((StylesheetPackage) getRetainedStaticContext().getPackageData()).getNamedOutputProperties(structuredQName);
            if (namedOutputProperties == null) {
                XPathException xPathException3 = new XPathException("There is no xsl:output format named " + obj);
                xPathException3.setErrorCode("XTDE1460");
                xPathException3.setXPathContext(xPathContext);
                throw xPathException3;
            }
            properties = namedOutputProperties;
        }
        Properties properties2 = new Properties(properties);
        for (String str2 : this.f99813s.stringPropertyNames()) {
            StructuredQName fromClarkName = StructuredQName.fromClarkName(str2);
            try {
                str = "XTDE0030";
                try {
                    setSerializationProperty(properties2, fromClarkName.getURI(), fromClarkName.getLocalPart(), this.f99813s.getProperty(str2), retainedStaticContext, true, configuration);
                } catch (XPathException e) {
                    e = e;
                    e.setErrorCode(str);
                    e.maybeSetLocation(getLocation());
                    throw e;
                }
            } catch (XPathException e2) {
                e = e2;
                str = "XTDE0030";
            }
        }
        if (!this.f99815u.isEmpty()) {
            for (Map.Entry<StructuredQName, Operand> entry : this.f99815u.entrySet()) {
                try {
                    setSerializationProperty(properties2, entry.getKey().getURI(), entry.getKey().getLocalPart(), entry.getValue().getChildExpression().evaluateAsString(xPathContext).toString(), retainedStaticContext, false, configuration);
                } catch (XPathException e3) {
                    e3.setErrorCode("XTDE0030");
                    e3.maybeSetLocation(getLocation());
                    e3.maybeSetContext(xPathContext);
                    if (!NamespaceConstant.SAXON.equals(e3.getErrorCodeNamespace())) {
                        throw e3;
                    }
                    if (!"SXWN".equals(e3.getErrorCodeLocalPart().substring(0, 4))) {
                        throw e3;
                    }
                    XmlProcessingException xmlProcessingException = new XmlProcessingException(e3);
                    xmlProcessingException.setWarning(true);
                    controller.getErrorReporter().report(xmlProcessingException);
                }
            }
        }
        return properties2;
    }

    public CharacterMapIndex getCharacterMapIndex() {
        return this.f99817w;
    }

    @Override // net.p110sf.saxon.expr.instruct.InstructionWithComplexContent
    public Expression getContentExpression() {
        return this.f99810p.getChildExpression();
    }

    public Expression getFormatExpression() {
        Operand operand = this.f99809o;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public Expression getHref() {
        Operand operand = this.f99808n;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 201;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return 33554432;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return ErrorType.getInstance();
    }

    @Override // net.p110sf.saxon.expr.instruct.ValidatingInstruction
    public SchemaType getSchemaType() {
        ParseOptions parseOptions = this.f99814t;
        if (parseOptions == null) {
            return null;
        }
        return parseOptions.getTopLevelType();
    }

    public String getStaticSerializationProperty(StructuredQName structuredQName) {
        String clarkName = structuredQName.getClarkName();
        String property = this.f99813s.getProperty(clarkName);
        if (property != null) {
            return property;
        }
        if (this.f99815u.containsKey(structuredQName)) {
            return null;
        }
        return this.f99812r.getProperty(clarkName);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "ResultDocument";
    }

    @Override // net.p110sf.saxon.expr.instruct.ValidatingInstruction
    public int getValidationAction() {
        ParseOptions parseOptions = this.f99814t;
        if (parseOptions == null) {
            return 3;
        }
        return parseOptions.getSchemaValidationMode();
    }

    public ParseOptions getValidationOptions() {
        return this.f99814t;
    }

    public boolean isAsynchronous() {
        return this.f99811q;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isMultiThreaded(Configuration configuration) {
        return isAsynchronous() && configuration.isLicensedFeature(1) && configuration.getBooleanProperty(Feature.ALLOW_MULTITHREADING);
    }

    public boolean isResolveAgainstStaticBase() {
        return this.f99816v;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        ArrayList arrayList = new ArrayList(6);
        arrayList.add(this.f99810p);
        Operand operand = this.f99808n;
        if (operand != null) {
            arrayList.add(operand);
        }
        Operand operand2 = this.f99809o;
        if (operand2 != null) {
            arrayList.add(operand2);
        }
        arrayList.addAll(this.f99815u.values());
        return arrayList;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        optimizeChildren(expressionVisitor, contextItemStaticInfo);
        if (isAsynchronous()) {
            for (Expression parentExpression = getParentExpression(); parentExpression != null; parentExpression = parentExpression.getParentExpression()) {
                if (parentExpression instanceof LetExpression) {
                    LetExpression letExpression = (LetExpression) parentExpression;
                    if (ExpressionTool.dependsOnVariable(getContentExpression(), new Binding[]{letExpression})) {
                        letExpression.setNeedsEagerEvaluation(true);
                    }
                }
            }
        }
        return this;
    }

    public void process(Expression expression, XPathContext xPathContext) throws XPathException {
        m62791e(xPathContext);
        xPathContext.getConfiguration().processResultDocument(this, expression, xPathContext);
    }

    public void processInstruction(Expression expression, XPathContext xPathContext) throws XPathException {
        boolean z;
        String currentOutputUri = xPathContext.getCurrentOutputUri();
        ComplexContentOutputter processLeft = processLeft(xPathContext);
        try {
            expression.process(processLeft, xPathContext);
            processLeft.close();
            xPathContext.setCurrentOutputUri(currentOutputUri);
        } catch (XPathException e) {
            try {
                e.maybeSetContext(xPathContext);
                e.maybeSetLocation(getLocation());
                throw e;
            } catch (Throwable th) {
                th = th;
                z = true;
                try {
                    processLeft.close();
                } catch (XPathException e2) {
                    if (!z) {
                        throw e2;
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            z = false;
            processLeft.close();
            throw th;
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        process(getContentExpression(), xPathContext);
        return null;
    }

    public ComplexContentOutputter processLeft(XPathContext xPathContext) throws XPathException {
        PrincipalOutputGatekeeper gatekeeper;
        Receiver makeReceiver;
        XsltController xsltController = (XsltController) xPathContext.getController();
        final Configuration configuration = xsltController.getConfiguration();
        m62791e(xPathContext);
        Properties gatherOutputProperties = gatherOutputProperties(xPathContext);
        if (gatherOutputProperties.getProperty(SaxonOutputKeys.PARAMETER_DOCUMENT) != null && getStaticBaseURIString() != null) {
            try {
                gatherOutputProperties.setProperty(SaxonOutputKeys.PARAMETER_DOCUMENT, ResolveURI.makeAbsolute(gatherOutputProperties.getProperty(SaxonOutputKeys.PARAMETER_DOCUMENT), getStaticBaseURIString()).toASCIIString());
            } catch (URISyntaxException e) {
                throw XPathException.makeXPathException(e);
            }
        }
        SerializationProperties serializationProperties = new SerializationProperties(gatherOutputProperties, this.f99817w);
        ParseOptions parseOptions = this.f99814t;
        if (parseOptions != null && parseOptions.getSchemaValidationMode() != 3) {
            serializationProperties.setValidationFactory(new FilterFactory() { // from class: com.sunia.HTREnginev2.frl
                @Override // net.p110sf.saxon.event.FilterFactory
                public final Receiver makeFilter(Receiver receiver) {
                    Receiver m62789h;
                    m62789h = ResultDocument.this.m62789h(configuration, receiver);
                    return m62789h;
                }
            });
        }
        String obj = getHref() != null ? IriToUri.iriToUri(getHref().evaluateAsString(xPathContext)).toString() : "";
        if ((obj.isEmpty() || obj.equals(xsltController.getBaseOutputURI())) && (gatekeeper = xsltController.getGatekeeper()) != null) {
            gatekeeper.useAsSecondary();
            makeReceiver = gatekeeper.makeReceiver(serializationProperties);
        } else {
            makeReceiver = null;
        }
        if (makeReceiver == null) {
            try {
                ResultDocumentResolver resultDocumentResolver = xsltController.getResultDocumentResolver();
                if (resultDocumentResolver == null) {
                    resultDocumentResolver = StandardResultDocumentResolver.getInstance();
                }
                makeReceiver = makeReceiver(obj, getStaticBaseURIString(), xPathContext, resultDocumentResolver, serializationProperties, this.f99816v);
                traceDestination(xPathContext, makeReceiver);
            } catch (XPathException e2) {
                e2.maybeSetLocation(getLocation());
                e2.maybeSetContext(xPathContext);
                throw e2;
            }
        }
        makeReceiver.getPipelineConfiguration().setController(xsltController);
        String systemId = makeReceiver.getSystemId();
        ComplexContentOutputter complexContentOutputter = new ComplexContentOutputter(new NamespaceReducer(makeReceiver));
        complexContentOutputter.setSystemId(systemId);
        xPathContext.setCurrentOutputUri(systemId);
        complexContentOutputter.open();
        return complexContentOutputter;
    }

    public void setAsynchronous(boolean z) {
        this.f99811q = z;
    }

    public void setContentExpression(Expression expression) {
        this.f99810p = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
    }

    public void setFormatExpression(Expression expression) {
        this.f99809o.setChildExpression(expression);
    }

    public void setHref(Expression expression) {
        this.f99808n.setChildExpression(expression);
    }

    public void setSchemaType(SchemaType schemaType) {
        if (this.f99814t == null) {
            this.f99814t = new ParseOptions();
        }
        this.f99814t.setSchemaValidationMode(8);
        this.f99814t.setTopLevelType(schemaType);
    }

    public void setUseStaticBaseUri(boolean z) {
        this.f99816v = z;
    }

    public void setValidationAction(int i, SchemaType schemaType) {
        if ((i == 3 && schemaType == null) || this.f99814t != null) {
            return;
        }
        ParseOptions parseOptions = new ParseOptions();
        this.f99814t = parseOptions;
        parseOptions.setSchemaValidationMode(i);
        this.f99814t.setTopLevelType(schemaType);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        typeCheckChildren(expressionVisitor, contextItemStaticInfo);
        String staticSerializationProperty = getStaticSerializationProperty(XSLResultDocument.METHOD);
        boolean z = staticSerializationProperty == null && this.f99809o == null && !this.f99815u.containsKey(XSLResultDocument.METHOD);
        if ("yes".equals(getStaticSerializationProperty(XSLResultDocument.BUILD_TREE)) || z || "xml".equals(staticSerializationProperty) || "html".equals(staticSerializationProperty) || "xhtml".equals(staticSerializationProperty) || "text".equals(staticSerializationProperty)) {
            try {
                DocumentInstr.checkContentSequence(expressionVisitor.getStaticContext(), this.f99810p, this.f99814t);
            } catch (XPathException e) {
                e.maybeSetLocation(getLocation());
                throw e;
            }
        }
        return this;
    }
}
