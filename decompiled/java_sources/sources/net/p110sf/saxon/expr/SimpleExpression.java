package net.p110sf.saxon.expr;

import java.util.Arrays;
import java.util.Iterator;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.SimpleExpression;
import net.p110sf.saxon.expr.oper.OperandArray;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;

/* loaded from: classes11.dex */
public abstract class SimpleExpression extends Expression implements Callable {

    /* renamed from: n */
    public OperandArray f99368n;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m62632c(Outputter outputter, Item item) throws XPathException {
        outputter.m62516b(item, getLocation(), 524288);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return (getImplementationMethod() & 1) == 0 ? 49152 : 24576;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        SimpleExpression simpleCopy = simpleCopy();
        Expression[] expressionArr = new Expression[this.f99368n.getNumberOfOperands()];
        Iterator<Operand> it2 = operands().iterator();
        int i = 0;
        while (it2.hasNext()) {
            expressionArr[i] = it2.next().getChildExpression().copy(rebindingMap);
            i++;
        }
        simpleCopy.setOperanda(new OperandArray(simpleCopy, expressionArr, this.f99368n.getRoles()));
        return simpleCopy;
    }

    public SimpleExpression copyOperandsFrom(SimpleExpression simpleExpression) {
        Expression[] expressionArr = new Expression[simpleExpression.f99368n.getNumberOfOperands()];
        Iterator<Operand> it2 = simpleExpression.operands().iterator();
        int i = 0;
        while (it2.hasNext()) {
            expressionArr[i] = it2.next().getChildExpression().copy(new RebindingMap());
            i++;
        }
        setOperanda(new OperandArray(this, expressionArr, simpleExpression.f99368n.getRoles()));
        return this;
    }

    public final Sequence[] evaluateArguments(XPathContext xPathContext) throws XPathException {
        Sequence[] makeSequenceArray = SequenceTool.makeSequenceArray(getOperanda().getNumberOfOperands());
        Iterator<Operand> it2 = operands().iterator();
        int i = 0;
        while (it2.hasNext()) {
            makeSequenceArray[i] = SequenceTool.toLazySequence(it2.next().getChildExpression().iterate(xPathContext));
            i++;
        }
        return makeSequenceArray;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final Item evaluateItem(XPathContext xPathContext) throws XPathException {
        return call(xPathContext, evaluateArguments(xPathContext)).head();
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        throw new XPathException("In general, stylesheets using extension instructions cannot be exported");
    }

    public String getExpressionType() {
        return getClass().getName();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return Type.ITEM_TYPE;
    }

    public OperandArray getOperanda() {
        return this.f99368n;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return call(xPathContext, evaluateArguments(xPathContext)).iterate();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return this.f99368n.operands();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final void process(final Outputter outputter, XPathContext xPathContext) throws XPathException {
        SequenceTool.supply(call(xPathContext, evaluateArguments(xPathContext)).iterate(), new ItemConsumer() { // from class: com.sunia.HTREnginev2.fsm
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                SimpleExpression.this.m62632c(outputter, item);
            }
        });
    }

    public void setArguments(Expression[] expressionArr) {
        if (getOperanda() != null && getOperanda().getNumberOfOperands() > 0) {
            throw new IllegalArgumentException("Cannot replace existing argument array");
        }
        Expression[] expressionArr2 = (Expression[]) Arrays.copyOf(expressionArr, expressionArr.length);
        OperandRole[] operandRoleArr = new OperandRole[expressionArr.length];
        Arrays.fill(operandRoleArr, OperandRole.NAVIGATE);
        setOperanda(new OperandArray(this, expressionArr2, operandRoleArr));
    }

    public void setOperanda(OperandArray operandArray) {
        this.f99368n = operandArray;
    }

    public SimpleExpression simpleCopy() {
        try {
            return (SimpleExpression) getClass().newInstance();
        } catch (IllegalAccessException | InstantiationException unused) {
            throw new UnsupportedOperationException(getClass().getName() + ".copy()");
        }
    }
}
