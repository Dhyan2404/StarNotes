package net.p110sf.saxon.ma.arrays;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.oper.OperandArray;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class SquareArrayConstructor extends Expression {

    /* renamed from: n */
    public OperandArray f100616n;

    public SquareArrayConstructor(List<Expression> list) {
        Expression[] expressionArr = (Expression[]) list.toArray(new Expression[0]);
        Iterator<Expression> it2 = list.iterator();
        while (it2.hasNext()) {
            adoptChildExpression(it2.next());
        }
        setOperanda(new OperandArray(this, expressionArr, OperandRole.NAVIGATE));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        Iterator<Operand> it2 = operands().iterator();
        int i = 2005635744;
        while (it2.hasNext()) {
            i ^= it2.next().getChildExpression().hashCode();
        }
        return i;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return 0;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ArrayList arrayList = new ArrayList(getOperanda().getNumberOfOperands());
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getChildExpression().copy(rebindingMap));
        }
        SquareArrayConstructor squareArrayConstructor = new SquareArrayConstructor(arrayList);
        ExpressionTool.copyLocationInfo(this, squareArrayConstructor);
        return squareArrayConstructor;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (!(obj instanceof SquareArrayConstructor)) {
            return false;
        }
        SquareArrayConstructor squareArrayConstructor = (SquareArrayConstructor) obj;
        if (squareArrayConstructor.getOperanda().getNumberOfOperands() != getOperanda().getNumberOfOperands()) {
            return false;
        }
        for (int i = 0; i < getOperanda().getNumberOfOperands(); i++) {
            if (!getOperanda().getOperand(i).equals(squareArrayConstructor.getOperanda().getOperand(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        ArrayList arrayList = new ArrayList(getOperanda().getNumberOfOperands());
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            arrayList.add(ExpressionTool.eagerEvaluate(it2.next().getChildExpression(), xPathContext));
        }
        return new SimpleArrayItem(arrayList);
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("arrayBlock", this);
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            it2.next().getChildExpression().export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "SquareArrayConstructor";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final ItemType getItemType() {
        TypeHierarchy typeHierarchy = getConfiguration().getTypeHierarchy();
        ItemType itemType = null;
        int i = 16384;
        for (Expression expression : getOperanda().operandExpressions()) {
            if (itemType == null) {
                itemType = expression.getItemType();
                i = expression.getCardinality();
            } else {
                itemType = Type.getCommonSuperType(itemType, expression.getItemType(), typeHierarchy);
                i = Cardinality.union(i, expression.getCardinality());
            }
        }
        if (itemType == null) {
            itemType = ErrorType.getInstance();
        }
        return new ArrayItemType(SequenceType.makeSequenceType(itemType, i));
    }

    public Operand getOperand(int i) {
        return this.f100616n.getOperand(i);
    }

    public OperandArray getOperanda() {
        return this.f100616n;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return UType.FUNCTION;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "ArrayBlock";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return this.f100616n.operands();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        return optimize != this ? optimize : preEvaluate(expressionVisitor);
    }

    public final Expression preEvaluate(ExpressionVisitor expressionVisitor) {
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            if (!(it2.next().getChildExpression() instanceof Literal)) {
                return this;
            }
        }
        try {
            return Literal.makeLiteral(evaluateItem(expressionVisitor.makeDynamicContext()), this);
        } catch (XPathException unused) {
            return this;
        }
    }

    public void setOperanda(OperandArray operandArray) {
        this.f100616n = operandArray;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        int numberOfOperands = getOperanda().getNumberOfOperands();
        if (numberOfOperands == 0) {
            return "[]";
        }
        if (numberOfOperands == 1) {
            return IteratorUtils.f104923a + getOperanda().getOperand(0).getChildExpression().toShortString() + IteratorUtils.f104924b;
        }
        if (numberOfOperands != 2) {
            return IteratorUtils.f104923a + getOperanda().getOperand(0).getChildExpression().toShortString() + ", ...]";
        }
        return IteratorUtils.f104923a + getOperanda().getOperand(0).getChildExpression().toShortString() + ", " + getOperanda().getOperand(1).getChildExpression().toShortString() + IteratorUtils.f104924b;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression typeCheck = super.typeCheck(expressionVisitor, contextItemStaticInfo);
        return typeCheck != this ? typeCheck : preEvaluate(expressionVisitor);
    }
}
