package net.p110sf.saxon.functions.hof;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Arrays;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class PartialApply extends Expression {

    /* renamed from: p */
    public static final /* synthetic */ boolean f100391p = false;

    /* renamed from: n */
    public final Operand f100392n;

    /* renamed from: o */
    public final Operand[] f100393o;

    public PartialApply(Expression expression, Expression[] expressionArr) {
        this.f100392n = new Operand(this, expression, OperandRole.INSPECT);
        adoptChildExpression(expression);
        this.f100393o = new Operand[expressionArr.length];
        for (int i = 0; i < expressionArr.length; i++) {
            Expression expression2 = expressionArr[i];
            if (expression2 != null) {
                this.f100393o[i] = new Operand(this, expression2, OperandRole.NAVIGATE);
                adoptChildExpression(expressionArr[i]);
            }
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        int i;
        int i2 = 594252448;
        int i3 = 0;
        for (Operand operand : operands()) {
            if (operand == null) {
                i = i3 + 1;
            } else {
                int hashCode = operand.getChildExpression().hashCode();
                i = i3;
                i3 = hashCode;
            }
            i2 ^= i3;
            i3 = i;
        }
        return i2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        Expression[] expressionArr = new Expression[this.f100393o.length];
        int i = 0;
        while (true) {
            Operand[] operandArr = this.f100393o;
            if (i >= operandArr.length) {
                PartialApply partialApply = new PartialApply(getBaseExpression().copy(rebindingMap), expressionArr);
                ExpressionTool.copyLocationInfo(this, partialApply);
                return partialApply;
            }
            Operand operand = operandArr[i];
            if (operand == null) {
                expressionArr[i] = null;
            } else {
                expressionArr[i] = operand.getChildExpression().copy(rebindingMap);
            }
            i++;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (!(obj instanceof PartialApply)) {
            return false;
        }
        PartialApply partialApply = (PartialApply) obj;
        if (!getBaseExpression().isEqual(partialApply.getBaseExpression()) || this.f100393o.length != partialApply.f100393o.length) {
            return false;
        }
        int i = 0;
        while (true) {
            Operand[] operandArr = this.f100393o;
            if (i >= operandArr.length) {
                return true;
            }
            Operand operand = operandArr[i];
            boolean z = operand == null;
            Operand operand2 = partialApply.f100393o[i];
            if (z != (operand2 == null)) {
                return false;
            }
            if (operand != null && !operand.equals(operand2)) {
                return false;
            }
            i++;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("partialApply", this);
        getBaseExpression().export(expressionPresenter);
        for (Operand operand : this.f100393o) {
            if (operand == null) {
                expressionPresenter.startElement("null", this);
                expressionPresenter.endElement();
            } else {
                operand.getChildExpression().export(expressionPresenter);
            }
        }
        expressionPresenter.endElement();
    }

    public Expression getArgument(int i) {
        Operand operand = this.f100393o[i];
        if (operand == null) {
            return null;
        }
        return operand.getChildExpression();
    }

    public Expression getBaseExpression() {
        return this.f100392n.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "partialApply";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        ItemType itemType = getBaseExpression().getItemType();
        SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
        boolean z = itemType instanceof SpecificFunctionType;
        SequenceType resultType = z ? ((SpecificFunctionType) itemType).getResultType() : sequenceType;
        SequenceType[] sequenceTypeArr = new SequenceType[getNumberOfPlaceHolders()];
        if (z) {
            int i = 0;
            int i2 = 0;
            while (true) {
                Operand[] operandArr = this.f100393o;
                if (i >= operandArr.length) {
                    break;
                }
                if (operandArr[i] == null) {
                    sequenceTypeArr[i2] = ((SpecificFunctionType) itemType).getArgumentTypes()[i];
                    i2++;
                }
                i++;
            }
        } else {
            Arrays.fill(sequenceTypeArr, sequenceType);
        }
        return new SpecificFunctionType(sequenceTypeArr, resultType);
    }

    public int getNumberOfArguments() {
        return this.f100393o.length;
    }

    public int getNumberOfPlaceHolders() {
        int i = 0;
        for (Operand operand : this.f100393o) {
            if (operand == null) {
                i++;
            }
        }
        return i;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        ArrayList arrayList = new ArrayList(this.f100393o.length + 1);
        arrayList.add(this.f100392n);
        for (Operand operand : this.f100393o) {
            if (operand != null) {
                arrayList.add(operand);
            }
        }
        return arrayList;
    }

    public void setBaseExpression(Expression expression) {
        this.f100392n.setChildExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        if (getBaseExpression().operands().iterator().hasNext()) {
            sb.append(MotionUtils.f31761c + getBaseExpression().toString() + MotionUtils.f31762d);
        } else {
            sb.append(getBaseExpression().toString());
        }
        sb.append(MotionUtils.f31761c);
        int i = 0;
        while (true) {
            Operand[] operandArr = this.f100393o;
            if (i >= operandArr.length) {
                sb.append(MotionUtils.f31762d);
                return sb.toString();
            }
            Operand operand = operandArr[i];
            if (operand == null) {
                sb.append("?");
            } else {
                sb.append(operand.getChildExpression().toString());
            }
            if (i != this.f100393o.length - 1) {
                sb.append(", ");
            }
            i++;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        typeCheckChildren(expressionVisitor, contextItemStaticInfo);
        ItemType itemType = getBaseExpression().getItemType();
        SequenceType[] sequenceTypeArr = new SequenceType[this.f100393o.length];
        Arrays.fill(sequenceTypeArr, SequenceType.ANY_SEQUENCE);
        TypeChecker typeChecker = expressionVisitor.getConfiguration().getTypeChecker(false);
        int i = 0;
        while (true) {
            Operand[] operandArr = this.f100393o;
            if (i >= operandArr.length) {
                break;
            }
            Operand operand = operandArr[i];
            if (operand != null) {
                Expression childExpression = operand.getChildExpression();
                if (itemType instanceof SpecificFunctionType) {
                    SpecificFunctionType specificFunctionType = (SpecificFunctionType) itemType;
                    if (i < specificFunctionType.getArity()) {
                        RoleDiagnostic roleDiagnostic = new RoleDiagnostic(0, "saxon:call", i);
                        SequenceType sequenceType = specificFunctionType.getArgumentTypes()[i];
                        sequenceTypeArr[i] = sequenceType;
                        Expression staticTypeCheck = typeChecker.staticTypeCheck(childExpression, sequenceType, roleDiagnostic, expressionVisitor);
                        if (staticTypeCheck != childExpression) {
                            operand.setChildExpression(staticTypeCheck);
                        }
                    }
                }
            }
            i++;
        }
        setBaseExpression(typeChecker.staticTypeCheck(getBaseExpression(), SequenceType.makeSequenceType(new SpecificFunctionType(sequenceTypeArr, itemType instanceof AnyFunctionType ? ((AnyFunctionType) itemType).getResultType() : SequenceType.ANY_SEQUENCE), 16384), new RoleDiagnostic(0, "saxon:call", 0), expressionVisitor));
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Function evaluateItem(XPathContext xPathContext) throws XPathException {
        Function function = (Function) getBaseExpression().evaluateItem(xPathContext);
        Sequence[] sequenceArr = new Sequence[this.f100393o.length];
        int i = 0;
        while (true) {
            Operand[] operandArr = this.f100393o;
            if (i < operandArr.length) {
                Operand operand = operandArr[i];
                if (operand == null) {
                    sequenceArr[i] = null;
                } else {
                    sequenceArr[i] = SequenceTool.toGroundedValue(operand.getChildExpression().iterate(xPathContext));
                }
                i++;
            } else {
                return new CurriedFunction(function, sequenceArr);
            }
        }
    }
}
