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
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes11.dex */
public class DiagnosticClause extends Clause {

    /* renamed from: d */
    public Operand f99490d;

    /* renamed from: e */
    public Evaluator f99491e;

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        getSequence().addToPathMap(pathMap, pathMapNodeSet);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void explain(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement(AbstractLogger.TRACE);
        getSequence().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void gatherVariableReferences(ExpressionVisitor expressionVisitor, Binding binding, List<VariableReference> list) {
        ExpressionTool.gatherVariableReferences(getSequence(), binding, list);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public Clause.ClauseName getClauseKey() {
        return Clause.ClauseName.DIAG;
    }

    public Evaluator getEvaluator() {
        if (this.f99491e == null) {
            this.f99491e = ExpressionTool.lazyEvaluator(getSequence(), true);
        }
        return this.f99491e;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePull getPullStream(TuplePull tuplePull, XPathContext xPathContext) {
        return new DiagnosticClausePull(tuplePull, this);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePush getPushStream(TuplePush tuplePush, Outputter outputter, XPathContext xPathContext) {
        return new DiagnosticClausePush(outputter, tuplePush, this);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public LocalVariableBinding[] getRangeVariables() {
        return new LocalVariableBinding[0];
    }

    public Expression getSequence() {
        return this.f99490d.getChildExpression();
    }

    public void initSequence(FLWORExpression fLWORExpression, Expression expression) {
        this.f99490d = new Operand(fLWORExpression, expression, isRepeated() ? OperandRole.REPEAT_NAVIGATE : OperandRole.NAVIGATE);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void processOperands(OperandProcessor operandProcessor) throws XPathException {
        operandProcessor.processOperand(this.f99490d);
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

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public String toShortString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("trace ");
        sb.append(getSequence().toShortString());
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("trace ");
        sb.append(getSequence().toString());
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f99491e = ExpressionTool.lazyEvaluator(getSequence(), true);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public DiagnosticClause copy(FLWORExpression fLWORExpression, RebindingMap rebindingMap) {
        DiagnosticClause diagnosticClause = new DiagnosticClause();
        diagnosticClause.setLocation(getLocation());
        diagnosticClause.setPackageData(getPackageData());
        diagnosticClause.initSequence(fLWORExpression, getSequence().copy(rebindingMap));
        return diagnosticClause;
    }
}
