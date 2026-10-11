package net.p110sf.saxon.expr.instruct;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.lib.StandardURIChecker;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class NamespaceConstructor extends SimpleNodeConstructor {

    /* renamed from: o */
    public static final /* synthetic */ boolean f99780o = false;

    /* renamed from: n */
    public final Operand f99781n;

    public NamespaceConstructor(Expression expression) {
        this.f99781n = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        NamespaceConstructor namespaceConstructor = new NamespaceConstructor(getNameExp().copy(rebindingMap));
        namespaceConstructor.setSelect(getSelect().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, namespaceConstructor);
        return namespaceConstructor;
    }

    /* renamed from: d */
    public final void m62782d(String str, String str2, XPathContext xPathContext) throws XPathException {
        if (str.equals("xml") != str2.equals("http://www.w3.org/XML/1998/namespace")) {
            throw Instruction.dynamicError(getLocation(), new XPathException("Namespace prefix 'xml' and namespace uri http://www.w3.org/XML/1998/namespace must only be used together", isXSLT() ? "XTDE0925" : "XQDY0101", getLocation()), xPathContext);
        }
        if (str2.isEmpty()) {
            throw Instruction.dynamicError(getLocation(), new XPathException("Namespace URI is an empty string", isXSLT() ? "XTDE0930" : "XQDY0101", getLocation()), xPathContext);
        }
        if (str2.equals("http://www.w3.org/2000/xmlns/")) {
            throw Instruction.dynamicError(getLocation(), new XPathException("A namespace node cannot have the reserved namespace http://www.w3.org/2000/xmlns/", isXSLT() ? "XTDE0905" : "XQDY0101", getLocation()), xPathContext);
        }
        if (xPathContext.getConfiguration().getXsdVersion() != 10 || StandardURIChecker.getInstance().isValidURI(str2)) {
        } else {
            throw Instruction.dynamicError(getLocation(), new XPathException("The string value of the constructed namespace node must be a valid URI", "XTDE0905", getLocation()), xPathContext);
        }
    }

    /* renamed from: e */
    public final String m62783e(XPathContext xPathContext) throws XPathException {
        AtomicValue atomicValue = (AtomicValue) getNameExp().evaluateItem(xPathContext);
        if (atomicValue == null) {
            return "";
        }
        if (!(atomicValue instanceof StringValue) || (atomicValue instanceof AnyURIValue)) {
            XPathException xPathException = new XPathException("Namespace prefix is not an xs:string or xs:untypedAtomic", "XPTY0004", getLocation());
            xPathException.setIsTypeError(true);
            throw Instruction.dynamicError(getLocation(), xPathException, xPathContext);
        }
        String trim = Whitespace.trim(atomicValue.getStringValue());
        if (trim.isEmpty() || NameChecker.isValidNCName(trim)) {
            if (trim.equals("xmlns")) {
                throw Instruction.dynamicError(getLocation(), new XPathException("Namespace prefix 'xmlns' is not allowed", isXSLT() ? "XTDE0920" : "XQDY0101", getLocation()), xPathContext);
            }
            return trim;
        }
        throw Instruction.dynamicError(getLocation(), new XPathException("Namespace prefix is invalid: " + trim, isXSLT() ? "XTDE0920" : "XQDY0074", getLocation()), xPathContext);
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    public NodeName evaluateNodeName(XPathContext xPathContext) throws XPathException {
        return new NoNamespaceName(m62783e(xPathContext));
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement(Constants.ATTRNAME_NAMESPACE, this);
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

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 181;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return NodeKindTest.NAMESPACE;
    }

    public Expression getNameExp() {
        return this.f99781n.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    public void localTypeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        StaticContext staticContext = expressionVisitor.getStaticContext();
        this.f99781n.typeCheck(expressionVisitor, contextItemStaticInfo);
        setNameExp(staticContext.getConfiguration().getTypeChecker(false).staticTypeCheck(getNameExp(), SequenceType.OPTIONAL_ATOMIC, new RoleDiagnostic(4, "namespace/name", 0), expressionVisitor));
        adoptChildExpression(getNameExp());
        if (getNameExp() instanceof Literal) {
            m62783e(staticContext.makeEarlyEvaluationContext());
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor, net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return operandList(this.selectOp, this.f99781n);
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    public void processValue(UnicodeString unicodeString, Outputter outputter, XPathContext xPathContext) throws XPathException {
        String m62783e = m62783e(xPathContext);
        String obj = unicodeString.toString();
        m62782d(m62783e, obj, xPathContext);
        outputter.namespace(m62783e, obj, 32);
    }

    public void setNameExp(Expression expression) {
        this.f99781n.setChildExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor, net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public NodeInfo evaluateItem(XPathContext xPathContext) throws XPathException {
        NodeInfo nodeInfo = (NodeInfo) super.evaluateItem(xPathContext);
        m62782d(nodeInfo.getLocalPart(), nodeInfo.getStringValue(), xPathContext);
        return nodeInfo;
    }
}
