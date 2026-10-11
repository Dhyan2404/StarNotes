package net.p110sf.saxon.expr.instruct;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.Configuration;
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
import net.p110sf.saxon.lib.Validation;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.Orphan;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public final class ComputedAttribute extends AttributeCreator {

    /* renamed from: s */
    public final Operand f99657s;

    /* renamed from: t */
    public Operand f99658t;

    /* renamed from: u */
    public final boolean f99659u;

    public ComputedAttribute(Expression expression, Expression expression2, NamespaceResolver namespaceResolver, int i, SimpleType simpleType, boolean z) {
        OperandRole operandRole = OperandRole.SINGLE_ATOMIC;
        this.f99657s = new Operand(this, expression, operandRole);
        if (expression2 != null) {
            this.f99658t = new Operand(this, expression2, operandRole);
        }
        setSchemaType(simpleType);
        setValidationAction(i);
        setOptions(0);
        this.f99659u = z;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkPermittedContents(SchemaType schemaType, boolean z) throws XPathException {
        String str;
        if (schemaType instanceof SimpleType) {
            if (schemaType.isAnonymousType()) {
                str = "Attributes are not permitted here: the containing element is defined to have a simple type";
            } else {
                str = "Attributes are not permitted here: the containing element is of simple type " + schemaType.getDescription();
            }
            XPathException xPathException = new XPathException(str);
            xPathException.setIsTypeError(true);
            xPathException.setLocation(getLocation());
            throw xPathException;
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.AttributeCreator, net.p110sf.saxon.expr.instruct.SimpleNodeConstructor, net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return super.computeSpecialProperties() | 16777216;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ComputedAttribute computedAttribute = new ComputedAttribute(getNameExp() == null ? null : getNameExp().copy(rebindingMap), getNamespaceExp() == null ? null : getNamespaceExp().copy(rebindingMap), getRetainedStaticContext(), getValidationAction(), getSchemaType(), this.f99659u);
        ExpressionTool.copyLocationInfo(this, computedAttribute);
        computedAttribute.setSelect(getSelect().copy(rebindingMap));
        computedAttribute.setInstruction(isInstruction());
        return computedAttribute;
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor, net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        Item evaluateItem = super.evaluateItem(xPathContext);
        validateOrphanAttribute((Orphan) evaluateItem, xPathContext);
        return evaluateItem;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x026d  */
    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.om.NodeName evaluateNodeName(net.p110sf.saxon.expr.XPathContext r15) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 672
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.instruct.ComputedAttribute.evaluateNodeName(net.sf.saxon.expr.XPathContext):net.sf.saxon.om.NodeName");
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("compAtt", this);
        if (getValidationAction() != 4) {
            expressionPresenter.emitAttribute("validation", Validation.describe(getValidationAction()));
        }
        SimpleType schemaType = getSchemaType();
        if (schemaType != null) {
            expressionPresenter.emitAttribute("type", schemaType.getStructuredQName());
        }
        String str = "";
        if (isLocal()) {
            str = "l";
        }
        if (!str.isEmpty()) {
            expressionPresenter.emitAttribute("flags", str);
        }
        expressionPresenter.setChildRole("name");
        getNameExp().export(expressionPresenter);
        if (getNamespaceExp() != null) {
            expressionPresenter.setChildRole(Constants.ATTRNAME_NAMESPACE);
            getNamespaceExp().export(expressionPresenter);
        }
        expressionPresenter.setChildRole("select");
        getSelect().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getCardinality() {
        return 24576;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 137;
    }

    @Override // net.p110sf.saxon.expr.instruct.AttributeCreator, net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return NodeKindTest.ATTRIBUTE;
    }

    public Expression getNameExp() {
        return this.f99657s.getChildExpression();
    }

    public Expression getNamespaceExp() {
        Operand operand = this.f99658t;
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public NamespaceResolver getNamespaceResolver() {
        return getRetainedStaticContext();
    }

    public boolean isAllowNameAsQName() {
        return this.f99659u;
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    public void localTypeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f99657s.typeCheck(expressionVisitor, contextItemStaticInfo);
        RoleDiagnostic roleDiagnostic = new RoleDiagnostic(4, "attribute/name", 0);
        Configuration configuration = expressionVisitor.getConfiguration();
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        if (this.f99659u) {
            setNameExp(configuration.getTypeChecker(false).staticTypeCheck(getNameExp(), SequenceType.SINGLE_ATOMIC, roleDiagnostic, expressionVisitor));
            ItemType itemType = getNameExp().getItemType();
            Affinity relationship = typeHierarchy.relationship(itemType, BuiltInAtomicType.STRING);
            Affinity affinity = Affinity.DISJOINT;
            boolean z = (relationship == affinity && typeHierarchy.relationship(itemType, BuiltInAtomicType.UNTYPED_ATOMIC) == affinity) ? false : true;
            boolean z2 = typeHierarchy.relationship(itemType, BuiltInAtomicType.QNAME) != affinity;
            if (!z && !z2) {
                XPathException xPathException = new XPathException("The attribute name must be either an xs:string, an xs:QName, or untyped atomic");
                xPathException.setErrorCode("XPTY0004");
                xPathException.setIsTypeError(true);
                xPathException.setLocation(getLocation());
                throw xPathException;
            }
        } else if (!typeHierarchy.isSubType(getNameExp().getItemType(), BuiltInAtomicType.STRING)) {
            setNameExp(SystemFunction.makeCall("string", getRetainedStaticContext(), getNameExp()));
        }
        if (getNamespaceExp() != null) {
            this.f99658t.typeCheck(expressionVisitor, contextItemStaticInfo);
        }
        if (Literal.isAtomic(getNameExp())) {
            try {
                AtomicValue atomicValue = (AtomicValue) ((Literal) getNameExp()).getGroundedValue();
                if (atomicValue instanceof StringValue) {
                    String[] checkQNameParts = NameChecker.checkQNameParts(atomicValue.getStringValue());
                    if (getNamespaceExp() == null) {
                        String uRIForPrefix = getNamespaceResolver().getURIForPrefix(checkQNameParts[0], false);
                        if (uRIForPrefix != null) {
                            setNamespace(new StringLiteral(uRIForPrefix));
                            return;
                        }
                        XPathException xPathException2 = new XPathException("Prefix " + checkQNameParts[0] + " has not been declared");
                        if (isXSLT()) {
                            xPathException2.setErrorCode("XTDE0860");
                            xPathException2.setIsStaticError(true);
                            throw xPathException2;
                        }
                        xPathException2.setErrorCode("XQDY0074");
                        xPathException2.setIsStaticError(false);
                        throw xPathException2;
                    }
                }
            } catch (XPathException e) {
                if (e.getErrorCodeQName() == null || e.getErrorCodeLocalPart().equals("FORG0001")) {
                    e.setErrorCode(isXSLT() ? "XTDE0850" : "XQDY0074");
                }
                e.maybeSetLocation(getLocation());
                e.setIsStaticError(true);
                throw e;
            }
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor, net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandSparseList(this.selectOp, this.f99657s, this.f99658t);
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        if (optimize != this) {
            return optimize;
        }
        if (!(getNameExp() instanceof Literal) || (getNamespaceExp() != null && !(getNamespaceExp() instanceof Literal))) {
            return this;
        }
        FixedAttribute fixedAttribute = new FixedAttribute(evaluateNodeName(expressionVisitor.getStaticContext().makeEarlyEvaluationContext()), getValidationAction(), getSchemaType());
        fixedAttribute.setSelect(getSelect());
        return fixedAttribute;
    }

    public void setNameExp(Expression expression) {
        this.f99657s.setChildExpression(expression);
    }

    public void setNamespace(Expression expression) {
        if (expression != null) {
            Operand operand = this.f99658t;
            if (operand == null) {
                this.f99658t = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
            } else {
                operand.setChildExpression(expression);
            }
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.AttributeCreator
    public void setRejectDuplicates() {
        setOptions(getOptions() | 32);
    }
}
