package net.p110sf.saxon.expr.parser;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ExpressionOwner;
import net.p110sf.saxon.expr.FilterExpression;
import net.p110sf.saxon.expr.GeneralComparison;
import net.p110sf.saxon.expr.IsLastExpression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OrExpression;
import net.p110sf.saxon.expr.QuantifiedExpression;
import net.p110sf.saxon.expr.SlashExpression;
import net.p110sf.saxon.expr.UserFunctionCall;
import net.p110sf.saxon.expr.ValueComparison;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.Choose;
import net.p110sf.saxon.expr.instruct.NamedTemplate;
import net.p110sf.saxon.expr.instruct.NumberInstruction;
import net.p110sf.saxon.expr.instruct.TemplateRule;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.sort.DocumentSorter;
import net.p110sf.saxon.functions.PositionAndLast;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.NodeSetPattern;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.style.XSLFunction;
import net.p110sf.saxon.style.XSLTemplate;
import net.p110sf.saxon.trans.GlobalVariableManager;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.rules.RuleTarget;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class Optimizer {

    /* renamed from: a */
    public OptimizerOptions f99939a = OptimizerOptions.FULL_EE_OPTIMIZATION;
    protected Configuration config;
    protected boolean tracing;

    public Optimizer(Configuration configuration) {
        this.config = configuration;
        this.tracing = configuration.getBooleanProperty(Feature.TRACE_OPTIMIZER_DECISIONS);
    }

    /* renamed from: a */
    public final Expression m62838a(Expression expression, Expression expression2, int i) {
        if (!expression.isCallOn(PositionAndLast.Position.class) || !expression2.isCallOn(PositionAndLast.Last.class)) {
            return null;
        }
        switch (i) {
            case 50:
            case 54:
                IsLastExpression isLastExpression = new IsLastExpression(true);
                ExpressionTool.copyLocationInfo(expression, isLastExpression);
                return isLastExpression;
            case 51:
            case 53:
                IsLastExpression isLastExpression2 = new IsLastExpression(false);
                ExpressionTool.copyLocationInfo(expression, isLastExpression2);
                return isLastExpression2;
            case 52:
                return Literal.makeLiteral(BooleanValue.FALSE, expression);
            case 55:
                return Literal.makeLiteral(BooleanValue.TRUE, expression);
            default:
                return null;
        }
    }

    public void assessFunctionStreamability(XSLFunction xSLFunction, UserFunction userFunction) throws XPathException {
        throw new XPathException("Streamable stylesheet functions are not supported in Saxon-HE", "XTSE3430");
    }

    public void checkStreamability(XSLTemplate xSLTemplate, TemplateRule templateRule) throws XPathException {
    }

    public Expression compileToByteCode(ICompilerService iCompilerService, Expression expression, String str, int i) {
        return null;
    }

    public Expression convertPathExpressionToKey(SlashExpression slashExpression, ExpressionVisitor expressionVisitor) {
        return null;
    }

    public FilterExpression convertToFilterExpression(SlashExpression slashExpression, TypeHierarchy typeHierarchy) {
        return null;
    }

    public Expression eliminateCommonSubexpressions(Expression expression) {
        return expression;
    }

    public Sequence evaluateStreamingArgument(Expression expression, XPathContext xPathContext) throws XPathException {
        return ExpressionTool.eagerEvaluate(expression, xPathContext);
    }

    public Expression generateMultithreadedInstruction(Expression expression) {
        return expression;
    }

    public Configuration getConfiguration() {
        return this.config;
    }

    public OptimizerOptions getOptimizerOptions() {
        return this.f99939a;
    }

    public void injectByteCodeCandidates(Expression expression) throws XPathException {
    }

    public int isIndexableFilter(Expression expression) {
        return 0;
    }

    public boolean isOptionSet(int i) {
        return this.f99939a.isSet(i);
    }

    public boolean isVariableReplaceableByDot(Expression expression, Binding[] bindingArr) {
        for (Operand operand : expression.operands()) {
            if (operand.hasSameFocus()) {
                if (!isVariableReplaceableByDot(operand.getChildExpression(), bindingArr)) {
                    return false;
                }
            } else if (ExpressionTool.dependsOnVariable(operand.getChildExpression(), bindingArr)) {
                return false;
            }
        }
        return true;
    }

    public Expression makeByteCodeCandidate(ExpressionOwner expressionOwner, Expression expression, String str, int i) {
        return expression;
    }

    public Expression makeConditionalDocumentSorter(DocumentSorter documentSorter, SlashExpression slashExpression) throws XPathException {
        return documentSorter;
    }

    public void makeCopyOperationsExplicit(Expression expression, Operand operand) {
    }

    public GroundedValue makeIndexedValue(SequenceIterator sequenceIterator) throws UnsupportedOperationException, XPathException {
        throw new UnsupportedOperationException("Indexing requires Saxon-EE");
    }

    public RuleTarget makeInversion(Pattern pattern, NamedTemplate namedTemplate) throws XPathException {
        return null;
    }

    public Expression optimizeGeneralComparison(ExpressionVisitor expressionVisitor, GeneralComparison generalComparison, boolean z, ContextItemStaticInfo contextItemStaticInfo) {
        return generalComparison;
    }

    public void optimizeNodeSetPattern(NodeSetPattern nodeSetPattern) {
    }

    public Expression optimizeNumberInstruction(NumberInstruction numberInstruction, ContextItemStaticInfo contextItemStaticInfo) {
        return null;
    }

    public Expression optimizeQuantifiedExpressionForStreaming(QuantifiedExpression quantifiedExpression) throws XPathException {
        return quantifiedExpression;
    }

    public Expression optimizeSaxonStreamFunction(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression expression) throws XPathException {
        if (expression.getItemType().isPlainType()) {
            return expression;
        }
        return null;
    }

    public Expression optimizeValueComparison(ValueComparison valueComparison, ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression lhsExpression = valueComparison.getLhsExpression();
        Expression rhsExpression = valueComparison.getRhsExpression();
        Expression m62838a = m62838a(lhsExpression, rhsExpression, valueComparison.getOperator());
        if (m62838a != null) {
            trace("Rewrote position() ~= last()", m62838a);
            return m62838a;
        }
        Expression m62838a2 = m62838a(rhsExpression, lhsExpression, Token.inverse(valueComparison.getOperator()));
        if (m62838a2 == null) {
            return valueComparison;
        }
        trace("Rewrote last() ~= position()", m62838a2);
        return m62838a2;
    }

    public void prepareForStreaming(Expression expression) throws XPathException {
    }

    public Expression promoteExpressionsToGlobal(Expression expression, GlobalVariableManager globalVariableManager, ExpressionVisitor expressionVisitor) throws XPathException {
        return null;
    }

    public FilterExpression reorderPredicates(FilterExpression filterExpression, ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return filterExpression;
    }

    public void setOptimizerOptions(OptimizerOptions optimizerOptions) {
        this.f99939a = optimizerOptions;
    }

    public void trace(String str, Expression expression) {
        if (this.tracing) {
            Logger logger = getConfiguration().getLogger();
            logger.info("OPT : At line " + expression.getLocation().getLineNumber() + " of " + expression.getLocation().getSystemId());
            StringBuilder sb = new StringBuilder();
            sb.append("OPT : ");
            sb.append(str);
            logger.info(sb.toString());
            logger.info("OPT : Expression after rewrite: " + expression);
            expression.verifyParentPointers();
        }
    }

    public Expression tryGeneralComparison(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, OrExpression orExpression) throws XPathException {
        return orExpression;
    }

    public Expression tryIndexedFilter(FilterExpression filterExpression, ExpressionVisitor expressionVisitor, boolean z, boolean z2) {
        return filterExpression;
    }

    public Expression tryInlineFunctionCall(UserFunctionCall userFunctionCall, ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) {
        return userFunctionCall;
    }

    public Expression trySwitch(Choose choose, ExpressionVisitor expressionVisitor) {
        return choose;
    }

    public static void trace(Configuration configuration, String str, Expression expression) {
        if (configuration.getBooleanProperty(Feature.TRACE_OPTIMIZER_DECISIONS)) {
            Logger logger = configuration.getLogger();
            logger.info("OPT : At line " + expression.getLocation().getLineNumber() + " of " + expression.getLocation().getSystemId());
            StringBuilder sb = new StringBuilder();
            sb.append("OPT : ");
            sb.append(str);
            logger.info(sb.toString());
            logger.info("OPT : Expression after rewrite: " + expression);
            expression.verifyParentPointers();
        }
    }
}
