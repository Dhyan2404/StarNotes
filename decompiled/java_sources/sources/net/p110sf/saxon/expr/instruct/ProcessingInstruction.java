package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.str.Twine8;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class ProcessingInstruction extends SimpleNodeConstructor {

    /* renamed from: o */
    public static final UnicodeString f99805o = new Twine8(StringConstants.PI_END);

    /* renamed from: n */
    public final Operand f99806n;

    public ProcessingInstruction(Expression expression) {
        this.f99806n = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
    }

    public static UnicodeString checkContentXQuery(UnicodeString unicodeString) throws XPathException {
        if (unicodeString.indexOf(f99805o, 0L) < 0) {
            return Whitespace.removeLeadingWhitespace(unicodeString);
        }
        throw new XPathException("Invalid characters (?>) in processing instruction", "XQDY0026");
    }

    public static UnicodeString checkContentXSLT(UnicodeString unicodeString) {
        while (true) {
            long indexOf = unicodeString.indexOf(f99805o, 0L);
            if (indexOf < 0) {
                return Whitespace.removeLeadingWhitespace(unicodeString);
            }
            long j = indexOf + 1;
            unicodeString = unicodeString.substring(0L, j).concat(StringConstants.SINGLE_SPACE.concat(unicodeString.substring(j)));
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    public UnicodeString checkContent(UnicodeString unicodeString, XPathContext xPathContext) throws XPathException {
        if (isXSLT()) {
            return checkContentXSLT(unicodeString);
        }
        try {
            return checkContentXQuery(unicodeString);
        } catch (XPathException e) {
            e.setXPathContext(xPathContext);
            e.setLocation(this.getLocation());
            throw e;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ProcessingInstruction processingInstruction = new ProcessingInstruction(getNameExp().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, processingInstruction);
        processingInstruction.setSelect(getSelect().copy(rebindingMap));
        return processingInstruction;
    }

    /* renamed from: d */
    public final String m62786d(AtomicValue atomicValue, XPathContext xPathContext) throws XPathException {
        if (!(atomicValue instanceof StringValue) || (atomicValue instanceof AnyURIValue)) {
            XPathException xPathException = new XPathException("Processing instruction name " + Err.wrap(atomicValue.getUnicodeStringValue()) + " is not of type xs:string or xs:untypedAtomic");
            xPathException.setXPathContext(xPathContext);
            xPathException.setErrorCode("XPTY0004");
            xPathException.setIsTypeError(true);
            throw Instruction.dynamicError(getLocation(), xPathException, xPathContext);
        }
        String trim = Whitespace.trim(atomicValue.getStringValue());
        if (NameChecker.isValidNCName(trim)) {
            if (!trim.equalsIgnoreCase("xml")) {
                return trim;
            }
            XPathException xPathException2 = new XPathException("Processing instructions cannot be named 'xml' in any combination of upper/lower case");
            xPathException2.setXPathContext(xPathContext);
            xPathException2.setErrorCode(isXSLT() ? "XTDE0890" : "XQDY0064");
            throw Instruction.dynamicError(getLocation(), xPathException2, xPathContext);
        }
        XPathException xPathException3 = new XPathException("Processing instruction name " + Err.wrap(trim) + " is not a valid NCName");
        xPathException3.setXPathContext(xPathContext);
        xPathException3.setErrorCode(isXSLT() ? "XTDE0890" : "XQDY0041");
        throw Instruction.dynamicError(getLocation(), xPathException3, xPathContext);
    }

    /* renamed from: e */
    public final String m62787e(XPathContext xPathContext) throws XPathException {
        AtomicValue atomicValue = (AtomicValue) getNameExp().evaluateItem(xPathContext);
        if ((atomicValue instanceof StringValue) && !(atomicValue instanceof AnyURIValue)) {
            return m62786d(atomicValue, xPathContext);
        }
        XPathException xPathException = new XPathException("Processing instruction name is not a string");
        xPathException.setXPathContext(xPathContext);
        xPathException.setErrorCode("XPTY0004");
        throw Instruction.dynamicError(getLocation(), xPathException, xPathContext);
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    public NodeName evaluateNodeName(XPathContext xPathContext) throws XPathException {
        return new NoNamespaceName(m62787e(xPathContext));
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("procInst", this);
        String str = "";
        if (isLocal()) {
            str = "l";
        }
        if (!str.isEmpty()) {
            expressionPresenter.emitAttribute("flags", str);
        }
        expressionPresenter.setChildRole("name");
        getNameExp().export(expressionPresenter);
        expressionPresenter.setChildRole("select");
        getSelect().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getDependencies() {
        return super.getDependencies() | getNameExp().getDependencies();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 200;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return NodeKindTest.PROCESSING_INSTRUCTION;
    }

    public Expression getNameExp() {
        return this.f99806n.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    public void localTypeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        StaticContext staticContext = expressionVisitor.getStaticContext();
        this.f99806n.typeCheck(expressionVisitor, contextItemStaticInfo);
        setNameExp(expressionVisitor.getConfiguration().getTypeChecker(false).staticTypeCheck(getNameExp(), SequenceType.SINGLE_ATOMIC, new RoleDiagnostic(4, "processing-instruction/name", 0), expressionVisitor));
        Expression nameExp = getNameExp();
        adoptChildExpression(nameExp);
        if (nameExp instanceof Literal) {
            Literal literal = (Literal) nameExp;
            if (literal.getGroundedValue() instanceof AtomicValue) {
                m62786d((AtomicValue) literal.getGroundedValue(), staticContext.makeEarlyEvaluationContext());
            }
        }
        if (getSelect() instanceof StringLiteral) {
            UnicodeString unicodeStringValue = ((StringLiteral) getSelect()).getGroundedValue().getUnicodeStringValue();
            UnicodeString checkContent = checkContent(unicodeStringValue, staticContext.makeEarlyEvaluationContext());
            if (checkContent.equals(unicodeStringValue)) {
                return;
            }
            setSelect(new StringLiteral(checkContent));
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor, net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandList(this.selectOp, this.f99806n);
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    public void processValue(UnicodeString unicodeString, Outputter outputter, XPathContext xPathContext) throws XPathException {
        outputter.processingInstruction(m62787e(xPathContext), checkContent(unicodeString, xPathContext), getLocation(), 0);
    }

    public void setNameExp(Expression expression) {
        this.f99806n.setChildExpression(expression);
    }
}
