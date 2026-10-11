package net.p110sf.saxon.expr.flwor;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.oper.OperandArray;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.JavaExternalObjectType;

/* loaded from: classes11.dex */
public class TupleExpression extends Expression {

    /* renamed from: n */
    public OperandArray f99563n;

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        Iterator<Operand> it2 = operands().iterator();
        int i = 77;
        while (it2.hasNext()) {
            i ^= it2.next().getChildExpression().hashCode();
        }
        return i;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        int numberOfOperands = getOperanda().getNumberOfOperands();
        ArrayList arrayList = new ArrayList(numberOfOperands);
        for (int i = 0; i < numberOfOperands; i++) {
            arrayList.add((LocalVariableReference) getSlot(i).copy(rebindingMap));
        }
        TupleExpression tupleExpression = new TupleExpression();
        ExpressionTool.copyLocationInfo(this, tupleExpression);
        tupleExpression.setVariables(arrayList);
        return tupleExpression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (!(obj instanceof TupleExpression)) {
            return false;
        }
        TupleExpression tupleExpression = (TupleExpression) obj;
        if (getOperanda().getNumberOfOperands() != tupleExpression.getOperanda().getNumberOfOperands()) {
            return false;
        }
        for (int i = 0; i < getSize(); i++) {
            if (!getSlot(i).isEqual(tupleExpression.getSlot(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("tuple", this);
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            it2.next().getChildExpression().export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "tuple";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return 0;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return new JavaExternalObjectType(Tuple.class);
    }

    public OperandArray getOperanda() {
        return this.f99563n;
    }

    public int getSize() {
        return getOperanda().getNumberOfOperands();
    }

    public LocalVariableReference getSlot(int i) {
        return (LocalVariableReference) getOperanda().getOperandExpression(i);
    }

    public boolean includesBinding(Binding binding) {
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            if (((LocalVariableReference) it2.next().getChildExpression()).getBinding() == binding) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return this.f99563n.operands();
    }

    public void setCurrentTuple(XPathContext xPathContext, Tuple tuple) throws XPathException {
        Sequence[] members = tuple.getMembers();
        int size = getSize();
        for (int i = 0; i < size; i++) {
            xPathContext.setLocalVariable(getSlot(i).getBinding().getLocalSlotNumber(), members[i]);
        }
    }

    public void setOperanda(OperandArray operandArray) {
        this.f99563n = operandArray;
    }

    public void setSlot(int i, LocalVariableReference localVariableReference) {
        getOperanda().setOperand(i, localVariableReference);
    }

    public void setVariables(List<LocalVariableReference> list) {
        Expression[] expressionArr = new Expression[list.size()];
        for (int i = 0; i < list.size(); i++) {
            expressionArr[i] = list.get(i);
        }
        setOperanda(new OperandArray(this, expressionArr, OperandRole.SAME_FOCUS_ACTION));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        for (int i = 0; i < getSize(); i++) {
            this.f99563n.getOperand(i).typeCheck(expressionVisitor, contextItemStaticInfo);
        }
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Tuple evaluateItem(XPathContext xPathContext) throws XPathException {
        int size = getSize();
        Sequence[] sequenceArr = new Sequence[size];
        for (int i = 0; i < size; i++) {
            sequenceArr[i] = getSlot(i).evaluateVariable(xPathContext);
        }
        return new Tuple(sequenceArr);
    }
}
