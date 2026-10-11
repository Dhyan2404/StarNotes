package net.p110sf.saxon.expr.parser;

import java.util.IdentityHashMap;
import java.util.Map;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LetExpression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.PseudoExpression;
import net.p110sf.saxon.expr.TryCatch;
import net.p110sf.saxon.expr.VariableReference;
import net.p110sf.saxon.expr.instruct.ConditionalInstruction;
import net.p110sf.saxon.expr.parser.Evaluator;
import net.p110sf.saxon.expr.parser.LoopLifter;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class LoopLifter {

    /* renamed from: h */
    public static final String f99926h = "marker";

    /* renamed from: i */
    public static final /* synthetic */ boolean f99927i = false;

    /* renamed from: a */
    public Expression f99928a;

    /* renamed from: b */
    public final Configuration f99929b;

    /* renamed from: e */
    public boolean f99932e;

    /* renamed from: f */
    public boolean f99933f;

    /* renamed from: c */
    public int f99930c = 0;

    /* renamed from: d */
    public boolean f99931d = false;

    /* renamed from: g */
    public final Map<Expression, C18322b> f99934g = new IdentityHashMap();

    /* renamed from: net.sf.saxon.expr.parser.LoopLifter$b */
    /* loaded from: classes11.dex */
    public static class C18322b {

        /* renamed from: a */
        public Expression f99935a;

        /* renamed from: b */
        public int f99936b;

        /* renamed from: c */
        public boolean f99937c;

        /* renamed from: d */
        public Map<Expression, String> f99938d;

        public C18322b() {
            this.f99938d = new IdentityHashMap();
        }
    }

    public LoopLifter(Expression expression, Configuration configuration, boolean z) {
        this.f99932e = false;
        this.f99933f = false;
        this.f99928a = expression;
        this.f99929b = configuration;
        this.f99932e = configuration.getBooleanProperty(Feature.TRACE_OPTIMIZER_DECISIONS);
        this.f99933f = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ boolean m62831d(int i, Expression expression, Object obj) throws XPathException {
        this.f99934g.get(expression).f99936b -= i;
        return false;
    }

    public static Expression process(Expression expression, ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        if ((expression instanceof Literal) || (expression instanceof VariableReference)) {
            return expression;
        }
        LoopLifter loopLifter = new LoopLifter(expression, expressionVisitor.getConfiguration(), expressionVisitor.isOptimizeForStreaming());
        RetainedStaticContext retainedStaticContext = expression.getRetainedStaticContext();
        loopLifter.gatherInfo(expression);
        loopLifter.m62835f(expression);
        loopLifter.f99928a.setRetainedStaticContext(retainedStaticContext);
        loopLifter.f99928a.setParentExpression(null);
        if (!loopLifter.f99931d) {
            return loopLifter.f99928a;
        }
        ExpressionTool.resetPropertiesWithinSubtree(loopLifter.f99928a);
        Expression optimize = loopLifter.f99928a.optimize(expressionVisitor, contextItemStaticInfo);
        optimize.setParentExpression(null);
        return optimize;
    }

    /* renamed from: b */
    public final void m62832b(Expression expression, int i, int i2, boolean z) {
        C18322b c18322b = new C18322b();
        c18322b.f99935a = expression;
        c18322b.f99936b = i2;
        c18322b.f99937c = z;
        this.f99934g.put(expression, c18322b);
        Expression scopingExpression = expression.getScopingExpression();
        if (scopingExpression != null) {
            m62836g(expression, scopingExpression);
        }
        boolean z2 = z || expression.isMultiThreaded(this.f99929b);
        Expression m62833c = m62833c(expression);
        if (m62833c != null) {
            m62836g(expression, m62833c);
        }
        for (Operand operand : expression.operands()) {
            m62832b(operand.getChildExpression(), i + 1, operand.isEvaluatedRepeatedly() ? i2 + 1 : i2, z2);
        }
    }

    /* renamed from: c */
    public final Expression m62833c(Expression expression) {
        Expression parentExpression = expression.getParentExpression();
        while (true) {
            Expression expression2 = expression;
            expression = parentExpression;
            if (expression == null) {
                return null;
            }
            if (expression instanceof ConditionalInstruction) {
                Operand findOperand = ExpressionTool.findOperand(expression, expression2);
                if (findOperand == null) {
                    throw new AssertionError();
                }
                if (findOperand.getOperandRole().isInChoiceGroup()) {
                    return expression;
                }
            } else if (expression instanceof TryCatch) {
                return expression;
            }
            parentExpression = expression.getParentExpression();
        }
    }

    /* renamed from: e */
    public final Expression m62834e(Expression expression, Expression expression2) {
        this.f99931d = true;
        C18322b c18322b = this.f99934g.get(expression);
        C18322b c18322b2 = this.f99934g.get(expression2);
        final int i = c18322b.f99936b - c18322b2.f99936b;
        Operand findOperand = ExpressionTool.findOperand(expression.getParentExpression(), expression);
        LetExpression letExpression = new LetExpression();
        StringBuilder sb = new StringBuilder();
        sb.append("v");
        int i2 = this.f99930c;
        this.f99930c = i2 + 1;
        sb.append(i2);
        letExpression.setVariableQName(new StructuredQName("vv", NamespaceConstant.SAXON_GENERATED_VARIABLE, sb.toString()));
        SequenceType makeSequenceType = SequenceType.makeSequenceType(expression.getItemType(), expression.getCardinality());
        letExpression.setRequiredType(makeSequenceType);
        ExpressionTool.copyLocationInfo(expression, letExpression);
        letExpression.setSequence(expression);
        letExpression.setNeedsLazyEvaluation(true);
        letExpression.setEvaluator(Cardinality.allowsMany(expression.getCardinality()) ? Evaluator.MemoClosureEvaluator.INSTANCE : Evaluator.SingletonClosure.INSTANCE);
        letExpression.setAction(expression2);
        letExpression.adoptChildExpression(expression2);
        C18322b c18322b3 = new C18322b();
        c18322b3.f99935a = letExpression;
        Map<Expression, String> map = c18322b.f99938d;
        c18322b3.f99938d = map;
        map.putAll(c18322b2.f99938d);
        c18322b3.f99936b = c18322b2.f99936b;
        this.f99934g.put(letExpression, c18322b3);
        try {
            ExpressionTool.processExpressionTree(expression, null, new ExpressionAction() { // from class: com.sunia.HTREnginev2.b6j
                @Override // net.p110sf.saxon.expr.parser.ExpressionAction
                public final boolean process(Expression expression3, Object obj) {
                    boolean m62831d;
                    m62831d = LoopLifter.this.m62831d(i, expression3, obj);
                    return m62831d;
                }
            });
        } catch (XPathException e) {
            e.printStackTrace();
        }
        LocalVariableReference localVariableReference = new LocalVariableReference(letExpression);
        localVariableReference.setStaticType(makeSequenceType, null, expression.getSpecialProperties() & 67108864);
        localVariableReference.setInLoop(true);
        letExpression.addReference(localVariableReference, true);
        ExpressionTool.copyLocationInfo(expression, localVariableReference);
        findOperand.setChildExpression(localVariableReference);
        if (this.f99932e) {
            Logger logger = this.f99929b.getLogger();
            logger.info("OPT : At line " + expression.getLocation().getLineNumber() + " of " + expression.getLocation().getSystemId());
            logger.info("OPT : Lifted (" + expression.toShortString() + ") above (" + expression2.toShortString() + ") on line " + expression2.getLocation().getLineNumber());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("OPT : Expression after rewrite: ");
            sb2.append(letExpression);
            logger.info(sb2.toString());
        }
        return letExpression;
    }

    /* renamed from: f */
    public final void m62835f(Expression expression) {
        C18322b c18322b = this.f99934g.get(expression);
        if (c18322b.f99937c) {
            return;
        }
        if (c18322b.f99936b > 0 && expression.getNetCost() > 0) {
            if (c18322b.f99938d.isEmpty() && expression.isLiftable(this.f99933f) && !m62837h(expression)) {
                this.f99928a = m62834e(expression, this.f99928a);
            } else {
                C18322b c18322b2 = this.f99934g.get(expression);
                Expression parentExpression = expression.getParentExpression();
                Expression expression2 = expression;
                while (true) {
                    if (parentExpression == null) {
                        break;
                    }
                    if (c18322b2.f99938d.containsKey(parentExpression)) {
                        if (c18322b2.f99936b != this.f99934g.get(expression2).f99936b) {
                            Operand findOperand = ExpressionTool.findOperand(parentExpression, expression2);
                            if (expression.isLiftable(this.f99933f) && !(expression2 instanceof PseudoExpression) && !findOperand.getOperandRole().isConstrainedClass()) {
                                findOperand.setChildExpression(m62834e(expression, expression2));
                            }
                        }
                    } else {
                        expression2 = parentExpression;
                        parentExpression = parentExpression.getParentExpression();
                    }
                }
            }
        }
        for (Operand operand : expression.operands()) {
            if (!operand.getOperandRole().isConstrainedClass()) {
                m62835f(operand.getChildExpression());
            }
        }
    }

    /* renamed from: g */
    public final void m62836g(Expression expression, Expression expression2) {
        if (expression2 != null) {
            while (expression != null && expression != expression2) {
                try {
                    this.f99934g.get(expression).f99938d.put(expression2, "marker");
                    expression = expression.getParentExpression();
                } catch (NullPointerException e) {
                    ExpressionTool.validateTree(expression);
                    e.printStackTrace();
                    throw e;
                }
            }
        }
    }

    public void gatherInfo(Expression expression) {
        m62832b(expression, 0, 0, false);
    }

    public Expression getRoot() {
        return this.f99928a;
    }

    /* renamed from: h */
    public final boolean m62837h(Expression expression) {
        return this.f99933f && !expression.getItemType().getUType().intersection(UType.ANY_NODE).equals(UType.VOID);
    }
}
