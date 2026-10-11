package net.p110sf.saxon.expr.flwor;

import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.VariableReference;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.Clause;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.Evaluator;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class LetClause extends Clause {

    /* renamed from: d */
    public LocalVariableBinding f99522d;

    /* renamed from: e */
    public Operand f99523e;

    /* renamed from: f */
    public Evaluator f99524f;

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        pathMap.registerPathForVariable(this.f99522d, getSequence().addToPathMap(pathMap, pathMapNodeSet));
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void explain(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("let");
        expressionPresenter.emitAttribute("var", getRangeVariable().getVariableQName());
        expressionPresenter.emitAttribute("slot", getRangeVariable().getLocalSlotNumber() + "");
        getSequence().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void gatherVariableReferences(ExpressionVisitor expressionVisitor, Binding binding, List<VariableReference> list) {
        ExpressionTool.gatherVariableReferences(getSequence(), binding, list);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public Clause.ClauseName getClauseKey() {
        return Clause.ClauseName.LET;
    }

    public Evaluator getEvaluator() {
        if (this.f99524f == null) {
            this.f99524f = ExpressionTool.lazyEvaluator(getSequence(), true);
        }
        return this.f99524f;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePull getPullStream(TuplePull tuplePull, XPathContext xPathContext) {
        return new LetClausePull(tuplePull, this);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePush getPushStream(TuplePush tuplePush, Outputter outputter, XPathContext xPathContext) {
        return new LetClausePush(outputter, tuplePush, this);
    }

    public LocalVariableBinding getRangeVariable() {
        return this.f99522d;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public LocalVariableBinding[] getRangeVariables() {
        return new LocalVariableBinding[]{this.f99522d};
    }

    public Expression getSequence() {
        return this.f99523e.getChildExpression();
    }

    public void initSequence(FLWORExpression fLWORExpression, Expression expression) {
        this.f99523e = new Operand(fLWORExpression, expression, isRepeated() ? OperandRole.REPEAT_NAVIGATE : OperandRole.NAVIGATE);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void processOperands(OperandProcessor operandProcessor) throws XPathException {
        operandProcessor.processOperand(this.f99523e);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void refineVariableType(ExpressionVisitor expressionVisitor, List<VariableReference> list, Expression expression) {
        Expression sequence = getSequence();
        ItemType itemType = sequence.getItemType();
        Iterator<VariableReference> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().refineVariableType(itemType, getSequence().getCardinality(), sequence instanceof Literal ? ((Literal) sequence).getGroundedValue() : null, sequence.getSpecialProperties());
            ExpressionTool.resetStaticProperties(expression);
        }
    }

    public void setRangeVariable(LocalVariableBinding localVariableBinding) {
        this.f99522d = localVariableBinding;
    }

    public void setSequence(Expression expression) {
        this.f99523e.setChildExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public String toShortString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("let $");
        sb.append(this.f99522d.getVariableQName().getDisplayName());
        sb.append(" := ");
        sb.append(getSequence().toShortString());
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("let $");
        sb.append(this.f99522d.getVariableQName().getDisplayName());
        sb.append(" := ");
        sb.append(getSequence().toString());
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        setSequence(TypeChecker.strictTypeCheck(getSequence(), this.f99522d.getRequiredType(), new RoleDiagnostic(3, this.f99522d.getVariableQName().getDisplayName(), 0), expressionVisitor.getStaticContext()));
        this.f99524f = ExpressionTool.lazyEvaluator(getSequence(), true);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public LetClause copy(FLWORExpression fLWORExpression, RebindingMap rebindingMap) {
        LetClause letClause = new LetClause();
        letClause.setLocation(getLocation());
        letClause.setPackageData(getPackageData());
        letClause.f99522d = this.f99522d.copy();
        letClause.initSequence(fLWORExpression, getSequence().copy(rebindingMap));
        return letClause;
    }
}
