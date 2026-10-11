package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.CastExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.functions.String_1;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import net.p110sf.saxon.tree.util.Orphan;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.Cardinality;

/* loaded from: classes11.dex */
public abstract class SimpleNodeConstructor extends Instruction {
    protected Operand selectOp = new Operand(this, Literal.makeEmptySequence(), OperandRole.SINGLE_ATOMIC);

    @Override // net.p110sf.saxon.expr.Expression
    public boolean allowExtractingCommonSubexpressions() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public boolean alwaysCreatesNewNodes() {
        return true;
    }

    public UnicodeString checkContent(UnicodeString unicodeString, XPathContext xPathContext) throws XPathException {
        return unicodeString;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return getSelect().getCardinality();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return super.computeSpecialProperties() | 16777216;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        Item evaluateItem = getSelect().evaluateItem(xPathContext);
        UnicodeString emptyUnicodeString = evaluateItem == null ? EmptyUnicodeString.getInstance() : checkContent(evaluateItem.getUnicodeStringValue(), xPathContext);
        Orphan orphan = new Orphan(xPathContext.getConfiguration());
        orphan.setNodeKind((short) getItemType().getPrimitiveType());
        orphan.setStringValue(emptyUnicodeString);
        orphan.setNodeName(evaluateNodeName(xPathContext));
        return orphan;
    }

    public NodeName evaluateNodeName(XPathContext xPathContext) throws XPathException {
        return null;
    }

    public Expression getSelect() {
        return this.selectOp.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "SimpleNodeConstructor";
    }

    public boolean isLocal() {
        return ExpressionTool.isLocalConstructor(this);
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return SingletonIterator.makeIterator(evaluateItem(xPathContext));
    }

    public abstract void localTypeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException;

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return this.selectOp;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        optimizeChildren(expressionVisitor, contextItemStaticInfo);
        if (getSelect().isCallOn(String_1.class)) {
            SystemFunctionCall systemFunctionCall = (SystemFunctionCall) getSelect();
            if (expressionVisitor.getConfiguration().getTypeHierarchy().isSubType(systemFunctionCall.getArg(0).getItemType(), BuiltInAtomicType.STRING) && !Cardinality.allowsMany(systemFunctionCall.getArg(0).getCardinality())) {
                setSelect(systemFunctionCall.getArg(0));
            }
        }
        return this;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        try {
            processValue(getSelect().evaluateAsString(xPathContext), outputter, xPathContext);
            return null;
        } catch (XPathException e) {
            e.maybeSetLocation(getLocation());
            throw e;
        }
    }

    public abstract void processValue(UnicodeString unicodeString, Outputter outputter, XPathContext xPathContext) throws XPathException;

    public void setSelect(Expression expression) {
        this.selectOp.setChildExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        typeCheckChildren(expressionVisitor, contextItemStaticInfo);
        localTypeCheck(expressionVisitor, contextItemStaticInfo);
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        if (getSelect() instanceof ValueOf) {
            Expression select = ((ValueOf) getSelect()).getSelect();
            if (typeHierarchy.isSubType(select.getItemType(), BuiltInAtomicType.STRING) && !Cardinality.allowsMany(select.getCardinality())) {
                setSelect(select);
            }
        }
        if (getSelect().isCallOn(String_1.class)) {
            Expression arg = ((SystemFunctionCall) getSelect()).getArg(0);
            if (arg.getItemType() == BuiltInAtomicType.UNTYPED_ATOMIC && !Cardinality.allowsMany(arg.getCardinality())) {
                setSelect(arg);
            }
        } else if ((getSelect() instanceof CastExpression) && ((CastExpression) getSelect()).getTargetType() == BuiltInAtomicType.STRING) {
            Expression baseExpression = ((CastExpression) getSelect()).getBaseExpression();
            if (baseExpression.getItemType() == BuiltInAtomicType.UNTYPED_ATOMIC && !Cardinality.allowsMany(baseExpression.getCardinality())) {
                setSelect(baseExpression);
            }
        }
        adoptChildExpression(getSelect());
        return this;
    }
}
