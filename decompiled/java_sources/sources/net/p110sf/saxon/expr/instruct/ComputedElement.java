package net.p110sf.saxon.expr.instruct;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.lib.StandardURIChecker;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.QNameException;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.ContentTypeTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ComplexType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class ComputedElement extends ElementCreator {

    /* renamed from: v */
    public static final /* synthetic */ boolean f99660v = false;

    /* renamed from: r */
    public final Operand f99661r;

    /* renamed from: s */
    public Operand f99662s;

    /* renamed from: t */
    public final boolean f99663t;

    /* renamed from: u */
    public ItemType f99664u;

    public ComputedElement(Expression expression, Expression expression2, SchemaType schemaType, int i, boolean z, boolean z2) {
        OperandRole operandRole = OperandRole.SINGLE_ATOMIC;
        this.f99661r = new Operand(this, expression, operandRole);
        if (expression2 != null) {
            this.f99662s = new Operand(this, expression2, operandRole);
        }
        setValidationAction(i, schemaType);
        this.preservingTypes = schemaType == null && i == 3;
        this.f99686p = z;
        this.f99663t = z2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkPermittedContents(SchemaType schemaType, boolean z) throws XPathException {
        String str;
        boolean z2 = schemaType instanceof SimpleType;
        if (z2 || ((ComplexType) schemaType).isSimpleContent()) {
            if (!z2) {
                str = "Elements are not permitted here: the containing element has a complex type with simple content";
            } else if (schemaType.isAnonymousType()) {
                str = "Elements are not permitted here: the containing element is defined to have a simple type";
            } else {
                str = "Elements are not permitted here: the containing element is of simple type " + schemaType.getDescription();
            }
            XPathException xPathException = new XPathException(str);
            xPathException.setIsTypeError(true);
            xPathException.setLocation(getLocation());
            throw xPathException;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ComputedElement computedElement = new ComputedElement(getNameExp().copy(rebindingMap), getNamespaceExp() == null ? null : getNamespaceExp().copy(rebindingMap), getSchemaType(), getValidationAction(), this.f99686p, this.f99663t);
        ExpressionTool.copyLocationInfo(this, computedElement);
        computedElement.setContentExpression(getContentExpression().copy(rebindingMap));
        return computedElement;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("compElem", this);
        String m62750e = m62750e();
        if (isLocal()) {
            m62750e = m62750e + "l";
        }
        if (!m62750e.isEmpty()) {
            expressionPresenter.emitAttribute("flags", m62750e);
        }
        m62749d(expressionPresenter);
        expressionPresenter.setChildRole("name");
        getNameExp().export(expressionPresenter);
        if (getNamespaceExp() != null) {
            expressionPresenter.setChildRole(Constants.ATTRNAME_NAMESPACE);
            getNamespaceExp().export(expressionPresenter);
        }
        expressionPresenter.setChildRole("content");
        getContentExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.instruct.ElementCreator
    public NodeName getElementName(XPathContext xPathContext, NodeInfo nodeInfo) throws XPathException {
        String localName;
        String prefix;
        String str;
        xPathContext.getController();
        AtomicValue atomicValue = (AtomicValue) getNameExp().evaluateItem(xPathContext);
        if (atomicValue == null) {
            throw Instruction.dynamicError(getLocation(), new XPathException("Invalid element name (empty sequence)", isXSLT() ? "XTDE0820" : "XPTY0004", getLocation()), xPathContext);
        }
        String str2 = "XQDY0074";
        if (atomicValue instanceof StringValue) {
            String trim = Whitespace.trim(atomicValue.getStringValue());
            if (trim.startsWith("Q{") && this.f99663t) {
                try {
                    StructuredQName fromEQName = StructuredQName.fromEQName(trim);
                    localName = fromEQName.getLocalPart();
                    str = fromEQName.getURI();
                    if (!NameChecker.isValidNCName(localName)) {
                        throw new XPathException("Local part of EQName in computed element constructor is invalid", "XQDY0074");
                    }
                    prefix = "";
                } catch (IllegalArgumentException e) {
                    throw new XPathException("Invalid EQName in computed element constructor: " + e.getMessage(), "XQDY0074");
                }
            } else {
                try {
                    String[] qNameParts = NameChecker.getQNameParts(trim);
                    prefix = qNameParts[0];
                    localName = qNameParts[1];
                    str = null;
                } catch (QNameException e2) {
                    String str3 = "Invalid element name. " + e2.getMessage();
                    if (trim.length() == 0) {
                        str3 = "Supplied element name is a zero-length string";
                    }
                    throw Instruction.dynamicError(getLocation(), new XPathException(str3, isXSLT() ? "XTDE0820" : "XQDY0074", getLocation()), xPathContext);
                }
            }
        } else {
            if (!(atomicValue instanceof QNameValue) || !this.f99663t) {
                XPathException xPathException = new XPathException("Computed element name has incorrect type", isXSLT() ? "XTDE0820" : "XPTY0004", getLocation());
                xPathException.setIsTypeError(true);
                throw Instruction.dynamicError(getLocation(), xPathException, xPathContext);
            }
            QNameValue qNameValue = (QNameValue) atomicValue;
            localName = qNameValue.getLocalName();
            String namespaceURI = qNameValue.getNamespaceURI();
            prefix = qNameValue.getPrefix();
            if (prefix.equals("xmlns")) {
                throw Instruction.dynamicError(getLocation(), new XPathException("Computed element name has prefix xmlns", "XQDY0096", getLocation()), xPathContext);
            }
            str = namespaceURI;
        }
        if (getNamespaceExp() == null && str == null) {
            str = getRetainedStaticContext().getURIForPrefix(prefix, true);
            if (str == null) {
                if (isXSLT()) {
                    str2 = "XTDE0830";
                } else if (prefix.equals("xmlns")) {
                    str2 = "XQDY0096";
                }
                throw Instruction.dynamicError(getLocation(), new XPathException("Undeclared prefix in element name: " + prefix, str2, getLocation()), xPathContext);
            }
        } else {
            if (str == null) {
                if (getNamespaceExp() instanceof StringLiteral) {
                    str = ((StringLiteral) getNamespaceExp()).stringify();
                } else {
                    str = getNamespaceExp().evaluateAsString(xPathContext).toString();
                    if (!StandardURIChecker.getInstance().isValidURI(str)) {
                        throw Instruction.dynamicError(getLocation(), new XPathException("The value of the namespace attribute must be a valid URI", "XTDE0835", getLocation()), xPathContext);
                    }
                }
            }
            String str4 = str.isEmpty() ? "" : prefix;
            prefix = str4.equals("xmlns") ? "x-xmlns" : str4;
        }
        if (!str.equals("http://www.w3.org/2000/xmlns/")) {
            if (str.equals("http://www.w3.org/XML/1998/namespace") != prefix.equals("xml")) {
                throw Instruction.dynamicError(getLocation(), new XPathException(prefix.equals("xml") ? "When the prefix is 'xml', the namespace URI must be http://www.w3.org/XML/1998/namespace" : "When the namespace URI is http://www.w3.org/XML/1998/namespace, the prefix must be 'xml'", isXSLT() ? "XTDE0835" : "XQDY0096", getLocation()), xPathContext);
            }
            return new FingerprintedQName(prefix, str, localName);
        }
        throw Instruction.dynamicError(getLocation(), new XPathException("Cannot create element in namespace " + str, isXSLT() ? "XTDE0835" : "XQDY0096", getLocation()), xPathContext);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 151;
    }

    @Override // net.p110sf.saxon.expr.instruct.ElementCreator, net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        ItemType itemType = this.f99664u;
        return itemType == null ? super.getItemType() : itemType;
    }

    public Expression getNameExp() {
        return this.f99661r.getChildExpression();
    }

    public Expression getNamespaceExp() {
        Operand operand = this.f99662s;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public NamespaceResolver getNamespaceResolver() {
        return getRetainedStaticContext();
    }

    @Override // net.p110sf.saxon.expr.instruct.ElementCreator
    public String getNewBaseURI(XPathContext xPathContext, NodeInfo nodeInfo) {
        return getStaticBaseURIString();
    }

    public boolean isAllowNameAsQName() {
        return this.f99663t;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandSparseList(this.contentOp, this.f99661r, this.f99662s);
    }

    @Override // net.p110sf.saxon.expr.instruct.ElementCreator
    public void outputNamespaceNodes(Outputter outputter, NodeName nodeName, NodeInfo nodeInfo) throws XPathException {
    }

    public void setNameExp(Expression expression) {
        this.f99661r.setChildExpression(expression);
    }

    public void setNamespaceExp(Expression expression) {
        Operand operand = this.f99662s;
        if (operand == null) {
            this.f99662s = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
        } else {
            operand.setChildExpression(expression);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        setNameExp(getNameExp().simplify());
        if (getNamespaceExp() != null) {
            setNamespaceExp(getNamespaceExp().simplify());
        }
        Configuration configuration = getConfiguration();
        boolean isSchemaAware = getPackageData().isSchemaAware();
        this.preservingTypes |= !isSchemaAware;
        SchemaType schemaType = getSchemaType();
        if (schemaType != null) {
            this.f99664u = new ContentTypeTest(1, schemaType, configuration, false);
            schemaType.analyzeContentExpression(getContentExpression(), 1);
        } else if (getValidationAction() == 4 || !isSchemaAware) {
            this.f99664u = new ContentTypeTest(1, Untyped.getInstance(), configuration, false);
        } else {
            this.f99664u = NodeKindTest.ELEMENT;
        }
        return super.simplify();
    }

    @Override // net.p110sf.saxon.expr.instruct.ParentNodeConstructor, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        super.typeCheck(expressionVisitor, contextItemStaticInfo);
        Configuration configuration = expressionVisitor.getConfiguration();
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        RoleDiagnostic roleDiagnostic = new RoleDiagnostic(4, "element/name", 0);
        if (this.f99663t) {
            setNameExp(configuration.getTypeChecker(false).staticTypeCheck(getNameExp(), SequenceType.SINGLE_ATOMIC, roleDiagnostic, expressionVisitor));
            ItemType itemType = getNameExp().getItemType();
            Affinity relationship = typeHierarchy.relationship(itemType, BuiltInAtomicType.STRING);
            Affinity affinity = Affinity.DISJOINT;
            if (relationship == affinity && typeHierarchy.relationship(itemType, BuiltInAtomicType.UNTYPED_ATOMIC) == affinity && typeHierarchy.relationship(itemType, BuiltInAtomicType.QNAME) == affinity) {
                XPathException xPathException = new XPathException("The name of a constructed element must be a string, QName, or untypedAtomic");
                xPathException.setErrorCode("XPTY0004");
                xPathException.setIsTypeError(true);
                xPathException.setLocation(getLocation());
                throw xPathException;
            }
        } else if (!typeHierarchy.isSubType(getNameExp().getItemType(), BuiltInAtomicType.STRING)) {
            setNameExp(SystemFunction.makeCall("string", getRetainedStaticContext(), getNameExp()));
        }
        if (Literal.isAtomic(getNameExp())) {
            try {
                AtomicValue atomicValue = (AtomicValue) ((Literal) getNameExp()).getGroundedValue();
                if (atomicValue instanceof StringValue) {
                    String[] checkQNameParts = NameChecker.checkQNameParts(atomicValue.getStringValue());
                    if (getNamespaceExp() == null) {
                        String str = checkQNameParts[0];
                        String uRIForPrefix = getNamespaceResolver().getURIForPrefix(str, true);
                        if (uRIForPrefix == null) {
                            XPathException xPathException2 = new XPathException("Prefix " + str + " has not been declared");
                            xPathException2.setErrorCode("XPST0081");
                            xPathException2.setIsStaticError(true);
                            throw xPathException2;
                        }
                        setNamespaceExp(new StringLiteral(uRIForPrefix));
                    }
                }
            } catch (XPathException e) {
                String errorCodeLocalPart = e.getErrorCodeLocalPart();
                if (errorCodeLocalPart == null || errorCodeLocalPart.equals("FORG0001")) {
                    e.setErrorCode(isXSLT() ? "XTDE0820" : "XQDY0074");
                } else if (errorCodeLocalPart.equals("XPST0081")) {
                    e.setErrorCode(isXSLT() ? "XTDE0830" : "XQDY0074");
                }
                e.maybeSetLocation(getLocation());
                e.setIsStaticError(true);
                throw e;
            }
        }
        return super.typeCheck(expressionVisitor, contextItemStaticInfo);
    }
}
