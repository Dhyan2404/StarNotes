package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.GeneralComparison20;
import net.p110sf.saxon.expr.LetExpression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class XSLSwitch extends XSLChooseOrSwitch {

    /* renamed from: w */
    public Expression f102101w;

    /* renamed from: x */
    public LetExpression f102102x;

    @Override // net.p110sf.saxon.style.XSLChooseOrSwitch, net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        LetExpression letExpression = new LetExpression();
        letExpression.setVariableQName(new StructuredQName("vv", NamespaceConstant.SAXON_GENERATED_VARIABLE, "v" + hashCode()));
        letExpression.setSequence(this.f102101w);
        letExpression.setRequiredType(SequenceType.SINGLE_ATOMIC);
        this.f102102x = letExpression;
        this.f102102x.setAction(super.compile(compilation, componentDeclaration));
        return this.f102102x;
    }

    @Override // net.p110sf.saxon.style.XSLChooseOrSwitch
    public void compileConditions(Compilation compilation, ComponentDeclaration componentDeclaration, Expression[] expressionArr) {
        int i = 0;
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo instanceof XSLWhen) {
                expressionArr[i] = new GeneralComparison20(new LocalVariableReference(this.f102102x), 6, ((XSLWhen) nodeInfo).getCondition());
            } else if (nodeInfo instanceof XSLOtherwise) {
                Literal makeLiteral = Literal.makeLiteral(BooleanValue.TRUE);
                makeLiteral.setRetainedStaticContext(makeRetainedStaticContext());
                expressionArr[i] = makeLiteral;
            }
            i++;
        }
    }

    @Override // net.p110sf.saxon.style.XSLChooseOrSwitch, net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            if (displayName.equals("select")) {
                this.f102101w = makeExpression(value, attributeInfo);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (this.f102101w == null) {
            reportAbsence("select");
        }
    }

    @Override // net.p110sf.saxon.style.XSLChooseOrSwitch, net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        requireXslt40("switch");
        this.f102101w = typeCheck("select", this.f102101w);
        super.validate(componentDeclaration);
    }
}
