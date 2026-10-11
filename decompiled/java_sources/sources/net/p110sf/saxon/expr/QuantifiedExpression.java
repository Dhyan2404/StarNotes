package net.p110sf.saxon.expr;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.Token;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.functions.BooleanFn;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class QuantifiedExpression extends Assignation {

    /* renamed from: q */
    public int f99360q;

    @Override // net.p110sf.saxon.expr.Assignation, net.p110sf.saxon.expr.Expression
    public void checkForUpdatingSubexpressions() throws XPathException {
        getSequence().checkForUpdatingSubexpressions();
        getAction().checkForUpdatingSubexpressions();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return super.computeSpecialProperties() | 8388608;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        QuantifiedExpression quantifiedExpression = new QuantifiedExpression();
        ExpressionTool.copyLocationInfo(this, quantifiedExpression);
        quantifiedExpression.setOperator(this.f99360q);
        quantifiedExpression.setVariableQName(this.variableName);
        quantifiedExpression.setRequiredType(this.requiredType);
        quantifiedExpression.setSequence(getSequence().copy(rebindingMap));
        rebindingMap.put(this, quantifiedExpression);
        quantifiedExpression.setAction(getAction().copy(rebindingMap));
        quantifiedExpression.variableName = this.variableName;
        quantifiedExpression.slotNumber = this.slotNumber;
        return quantifiedExpression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        SequenceIterator iterate = getSequence().iterate(xPathContext);
        boolean z = this.f99360q == 32;
        int localSlotNumber = getLocalSlotNumber();
        do {
            Item next = iterate.next();
            if (next == null) {
                return !z;
            }
            xPathContext.setLocalVariable(localSlotNumber, next);
        } while (z != getAction().effectiveBooleanValue(xPathContext));
        iterate.close();
        return z;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement(Token.tokens[this.f99360q], this);
        expressionPresenter.emitAttribute("var", getVariableQName());
        expressionPresenter.emitAttribute("slot", "" + this.slotNumber);
        getSequence().export(expressionPresenter);
        getAction().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return Token.tokens[this.f99360q];
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.BOOLEAN;
    }

    public int getOperator() {
        return this.f99360q;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return UType.BOOLEAN;
    }

    @Override // net.p110sf.saxon.expr.Assignation, net.p110sf.saxon.expr.Expression
    public boolean isUpdatingExpression() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimizeQuantifiedExpressionForStreaming;
        getSequenceOp().optimize(expressionVisitor, contextItemStaticInfo);
        getActionOp().optimize(expressionVisitor, contextItemStaticInfo);
        Expression rewriteEffectiveBooleanValue = BooleanFn.rewriteEffectiveBooleanValue(getAction(), expressionVisitor, contextItemStaticInfo);
        if (rewriteEffectiveBooleanValue != null) {
            setAction(rewriteEffectiveBooleanValue);
            adoptChildExpression(rewriteEffectiveBooleanValue);
        }
        if (Literal.hasEffectiveBooleanValue(rewriteEffectiveBooleanValue, true)) {
            if (getOperator() == 32) {
                return SystemFunction.makeCall("exists", getRetainedStaticContext(), getSequence());
            }
            Literal literal = new Literal(BooleanValue.TRUE);
            ExpressionTool.copyLocationInfo(this, literal);
            return literal;
        }
        if (Literal.hasEffectiveBooleanValue(rewriteEffectiveBooleanValue, false)) {
            if (getOperator() != 32) {
                return SystemFunction.makeCall(Constants.ELEMNAME_EMPTY_STRING, getRetainedStaticContext(), getSequence());
            }
            Literal literal2 = new Literal(BooleanValue.FALSE);
            ExpressionTool.copyLocationInfo(this, literal2);
            return literal2;
        }
        if (getSequence() instanceof Literal) {
            int length = ((Literal) getSequence()).getGroundedValue().getLength();
            if (length == 0) {
                Literal literal3 = new Literal(BooleanValue.get(getOperator() == 33));
                ExpressionTool.copyLocationInfo(this, literal3);
                return literal3;
            }
            if (length == 1) {
                if ((getAction() instanceof VariableReference) && ((VariableReference) getAction()).getBinding() == this) {
                    return SystemFunction.makeCall("boolean", getRetainedStaticContext(), getSequence());
                }
                replaceVariable(getSequence());
                return getAction();
            }
        }
        return (!expressionVisitor.isOptimizeForStreaming() || (optimizeQuantifiedExpressionForStreaming = expressionVisitor.obtainOptimizer().optimizeQuantifiedExpressionForStreaming(this)) == null || optimizeQuantifiedExpressionForStreaming == this) ? this : optimizeQuantifiedExpressionForStreaming.optimize(expressionVisitor, contextItemStaticInfo);
    }

    public void setOperator(int i) {
        this.f99360q = i;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f99360q == 32 ? "some" : "every");
        sb.append(" $");
        sb.append(getVariableName());
        sb.append(CloudStorageConstants.OPERATION_IN);
        sb.append(getSequence().toShortString());
        sb.append(" satisfies ...");
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f99360q == 32 ? "some" : "every");
        sb.append(" $");
        sb.append(getVariableEQName());
        sb.append(CloudStorageConstants.OPERATION_IN);
        sb.append(getSequence());
        sb.append(" satisfies ");
        sb.append(ExpressionTool.parenthesize(getAction()));
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getSequenceOp().typeCheck(expressionVisitor, contextItemStaticInfo);
        if (Literal.isEmptySequence(getSequence())) {
            return Literal.makeLiteral(BooleanValue.get(this.f99360q != 32), this);
        }
        setSequence(getSequence().unordered(false, false));
        SequenceType requiredType = getRequiredType();
        if (requiredType.getCardinality() == 8192) {
            XPathException xPathException = new XPathException("Range variable will never satisfy the type empty-sequence()", "XPTY0004");
            xPathException.setIsTypeError(true);
            xPathException.setLocation(getLocation());
            throw xPathException;
        }
        setSequence(TypeChecker.strictTypeCheck(getSequence(), SequenceType.makeSequenceType(requiredType.getPrimaryType(), 57344), new RoleDiagnostic(3, getVariableQName().getDisplayName(), 0), expressionVisitor.getStaticContext()));
        refineTypeInformation(getSequence().getItemType(), 16384, null, getSequence().getSpecialProperties(), this);
        getActionOp().typeCheck(expressionVisitor, contextItemStaticInfo);
        XPathException ebvError = TypeChecker.ebvError(getAction(), expressionVisitor.getConfiguration().getTypeHierarchy());
        if (ebvError == null) {
            return this;
        }
        ebvError.setLocation(getLocation());
        throw ebvError;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public BooleanValue evaluateItem(XPathContext xPathContext) throws XPathException {
        return BooleanValue.get(effectiveBooleanValue(xPathContext));
    }
}
