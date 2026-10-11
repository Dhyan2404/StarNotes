package net.p110sf.saxon.expr.flwor;

import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.CardinalityChecker;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.VariableReference;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.Clause;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class ForClause extends Clause {

    /* renamed from: d */
    public static final /* synthetic */ boolean f99504d = false;
    protected boolean allowsEmpty;
    protected LocalVariableBinding positionVariable;
    protected LocalVariableBinding rangeVariable;
    protected Operand sequenceOp;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean addPredicate(net.p110sf.saxon.expr.flwor.FLWORExpression r20, net.p110sf.saxon.expr.parser.ExpressionVisitor r21, net.p110sf.saxon.expr.parser.ContextItemStaticInfo r22, net.p110sf.saxon.expr.Expression r23) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.flwor.ForClause.addPredicate(net.sf.saxon.expr.flwor.FLWORExpression, net.sf.saxon.expr.parser.ExpressionVisitor, net.sf.saxon.expr.parser.ContextItemStaticInfo, net.sf.saxon.expr.Expression):boolean");
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        pathMap.registerPathForVariable(this.rangeVariable, getSequence().addToPathMap(pathMap, pathMapNodeSet));
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void explain(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement(getClauseKey().toString().toLowerCase());
        expressionPresenter.emitAttribute("var", getRangeVariable().getVariableQName());
        expressionPresenter.emitAttribute("slot", getRangeVariable().getLocalSlotNumber() + "");
        LocalVariableBinding positionVariable = getPositionVariable();
        if (positionVariable != null) {
            expressionPresenter.emitAttribute("at", positionVariable.getVariableQName());
            expressionPresenter.emitAttribute("at-slot", positionVariable.getLocalSlotNumber() + "");
        }
        getSequence().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void gatherVariableReferences(ExpressionVisitor expressionVisitor, Binding binding, List<VariableReference> list) {
        ExpressionTool.gatherVariableReferences(getSequence(), binding, list);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public Clause.ClauseName getClauseKey() {
        return Clause.ClauseName.FOR;
    }

    public LocalVariableBinding getPositionVariable() {
        return this.positionVariable;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePull getPullStream(TuplePull tuplePull, XPathContext xPathContext) {
        return this.allowsEmpty ? new ForClauseOuterPull(tuplePull, this) : new ForClausePull(tuplePull, this);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePush getPushStream(TuplePush tuplePush, Outputter outputter, XPathContext xPathContext) {
        return this.allowsEmpty ? new ForClauseOuterPush(outputter, tuplePush, this) : new ForClausePush(outputter, tuplePush, this);
    }

    public LocalVariableBinding getRangeVariable() {
        return this.rangeVariable;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public LocalVariableBinding[] getRangeVariables() {
        LocalVariableBinding localVariableBinding = this.positionVariable;
        return localVariableBinding == null ? new LocalVariableBinding[]{this.rangeVariable} : new LocalVariableBinding[]{this.rangeVariable, localVariableBinding};
    }

    public Expression getSequence() {
        return this.sequenceOp.getChildExpression();
    }

    public void initSequence(FLWORExpression fLWORExpression, Expression expression) {
        this.sequenceOp = new Operand(fLWORExpression, expression, isRepeated() ? OperandRole.REPEAT_NAVIGATE : OperandRole.NAVIGATE);
    }

    public boolean isAllowingEmpty() {
        return this.allowsEmpty;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void processOperands(OperandProcessor operandProcessor) throws XPathException {
        operandProcessor.processOperand(this.sequenceOp);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void refineVariableType(ExpressionVisitor expressionVisitor, List<VariableReference> list, Expression expression) {
        ItemType itemType = getSequence().getItemType();
        if (itemType instanceof ErrorType) {
            itemType = AnyItemType.getInstance();
        }
        Iterator<VariableReference> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().refineVariableType(itemType, this.allowsEmpty ? 24576 : 16384, null, getSequence().getSpecialProperties());
        }
    }

    public void setAllowingEmpty(boolean z) {
        this.allowsEmpty = z;
    }

    public void setPositionVariable(LocalVariableBinding localVariableBinding) {
        this.positionVariable = localVariableBinding;
    }

    public void setRangeVariable(LocalVariableBinding localVariableBinding) {
        this.rangeVariable = localVariableBinding;
    }

    public void setSequence(Expression expression) {
        this.sequenceOp.setChildExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public String toShortString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(getClauseKey().toString().toLowerCase());
        sb.append(" $");
        sb.append(this.rangeVariable.getVariableQName().getDisplayName());
        sb.append(' ');
        LocalVariableBinding positionVariable = getPositionVariable();
        if (positionVariable != null) {
            sb.append("at $");
            sb.append(positionVariable.getVariableQName().getDisplayName());
            sb.append(' ');
        }
        sb.append("in ");
        sb.append(getSequence().toShortString());
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(getClauseKey().toString().toLowerCase());
        sb.append(" $");
        sb.append(this.rangeVariable.getVariableQName().getDisplayName());
        sb.append(' ');
        LocalVariableBinding positionVariable = getPositionVariable();
        if (positionVariable != null) {
            sb.append("at $");
            sb.append(positionVariable.getVariableQName().getDisplayName());
            sb.append(' ');
        }
        sb.append("in ");
        sb.append(getSequence().toString());
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        SequenceType requiredType = this.rangeVariable.getRequiredType();
        if (this.allowsEmpty && !Cardinality.allowsZero(requiredType.getCardinality())) {
            setSequence(CardinalityChecker.makeCardinalityChecker(getSequence(), 49152, new RoleDiagnostic(3, this.rangeVariable.getVariableQName().getDisplayName(), 0)));
        }
        setSequence(TypeChecker.strictTypeCheck(getSequence(), SequenceType.makeSequenceType(requiredType.getPrimaryType(), 57344), new RoleDiagnostic(3, this.rangeVariable.getVariableQName().getDisplayName(), 0), expressionVisitor.getStaticContext()));
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public ForClause copy(FLWORExpression fLWORExpression, RebindingMap rebindingMap) {
        ForClause forClause = new ForClause();
        forClause.setLocation(getLocation());
        forClause.setPackageData(getPackageData());
        forClause.rangeVariable = this.rangeVariable.copy();
        LocalVariableBinding localVariableBinding = this.positionVariable;
        if (localVariableBinding != null) {
            forClause.positionVariable = localVariableBinding.copy();
        }
        forClause.initSequence(fLWORExpression, getSequence().copy(rebindingMap));
        forClause.allowsEmpty = this.allowsEmpty;
        return forClause;
    }
}
