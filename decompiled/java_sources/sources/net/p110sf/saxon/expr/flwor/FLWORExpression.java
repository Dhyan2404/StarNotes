package net.p110sf.saxon.expr.flwor;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.AndExpression;
import net.p110sf.saxon.expr.Assignation;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ForExpression;
import net.p110sf.saxon.expr.LetExpression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.PendingUpdateList;
import net.p110sf.saxon.expr.VariableReference;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.Clause;
import net.p110sf.saxon.expr.flwor.FLWORExpression;
import net.p110sf.saxon.expr.parser.CodeInjector;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.query.QueryModule;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class FLWORExpression extends Expression {

    /* renamed from: n */
    public static final OperandRole f99498n;

    /* renamed from: o */
    public static final OperandRole f99499o;

    /* renamed from: p */
    public static final /* synthetic */ boolean f99500p = false;
    public List<Clause> clauses;
    public Operand returnClauseOp;

    /* renamed from: net.sf.saxon.expr.flwor.FLWORExpression$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18313a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f99501a;

        static {
            int[] iArr = new int[Clause.ClauseName.values().length];
            f99501a = iArr;
            try {
                iArr[Clause.ClauseName.LET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f99501a[Clause.ClauseName.WHERE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static {
        OperandUsage operandUsage = OperandUsage.TRANSMISSION;
        SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
        f99498n = new OperandRole(0, operandUsage, sequenceType);
        f99499o = new OperandRole(4, operandUsage, sequenceType);
    }

    public static boolean isLoopingClause(Clause clause) {
        return clause.getClauseKey() == Clause.ClauseName.FOR || clause.getClauseKey() == Clause.ClauseName.GROUP_BY || clause.getClauseKey() == Clause.ClauseName.WINDOW;
    }

    /* renamed from: m */
    public static /* synthetic */ void m62687m(Operand operand) throws XPathException {
        operand.getChildExpression().checkForUpdatingSubexpressions();
        if (operand.getChildExpression().isUpdatingExpression()) {
            throw new XPathException("An updating expression cannot be used in a clause of a FLWOR expression", "XUST0001");
        }
    }

    /* renamed from: n */
    public static /* synthetic */ void m62688n(List list, Binding binding, Operand operand) throws XPathException {
        if (list.isEmpty() && ExpressionTool.dependsOnVariable(operand.getChildExpression(), new Binding[]{binding})) {
            list.add(Boolean.TRUE);
        }
    }

    /* renamed from: q */
    public static /* synthetic */ void m62691q(Operand operand) throws XPathException {
        operand.setChildExpression(operand.getChildExpression().simplify());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        Iterator<Clause> it2 = this.clauses.iterator();
        while (it2.hasNext()) {
            it2.next().addToPathMap(pathMap, pathMapNodeSet);
        }
        return getReturnClause().addToPathMap(pathMap, pathMapNodeSet);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean allowExtractingCommonSubexpressions() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void checkForUpdatingSubexpressions() throws XPathException {
        OperandProcessor operandProcessor = new OperandProcessor() { // from class: com.sunia.HTREnginev2.e8g
            @Override // net.p110sf.saxon.expr.flwor.OperandProcessor
            public final void processOperand(Operand operand) {
                FLWORExpression.m62687m(operand);
            }
        };
        Iterator<Clause> it2 = this.clauses.iterator();
        while (it2.hasNext()) {
            it2.next().processOperands(operandProcessor);
        }
        getReturnClause().checkForUpdatingSubexpressions();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 57344;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ArrayList arrayList = new ArrayList();
        FLWORExpression fLWORExpression = new FLWORExpression();
        for (Clause clause : this.clauses) {
            Clause copy = clause.copy(fLWORExpression, rebindingMap);
            copy.setLocation(clause.getLocation());
            copy.setRepeated(clause.isRepeated());
            LocalVariableBinding[] rangeVariables = clause.getRangeVariables();
            LocalVariableBinding[] rangeVariables2 = copy.getRangeVariables();
            for (int i = 0; i < rangeVariables.length; i++) {
                rebindingMap.put(rangeVariables[i], rangeVariables2[i]);
            }
            arrayList.add(copy);
        }
        fLWORExpression.init(arrayList, getReturnClause().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, fLWORExpression);
        return fLWORExpression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void evaluatePendingUpdates(XPathContext xPathContext, PendingUpdateList pendingUpdateList) throws XPathException {
        TuplePull singularityPull = new SingularityPull();
        Iterator<Clause> it2 = this.clauses.iterator();
        while (it2.hasNext()) {
            singularityPull = it2.next().getPullStream(singularityPull, xPathContext);
        }
        while (singularityPull.nextTuple(xPathContext)) {
            getReturnClause().evaluatePendingUpdates(xPathContext, pendingUpdateList);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("FLWOR", this);
        Iterator<Clause> it2 = this.clauses.iterator();
        while (it2.hasNext()) {
            it2.next().explain(expressionPresenter);
        }
        expressionPresenter.startSubsidiaryElement("return");
        getReturnClause().export(expressionPresenter);
        expressionPresenter.endSubsidiaryElement();
        expressionPresenter.endElement();
    }

    public List<Clause> getClauseList() {
        return this.clauses;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getEvaluationMethod() {
        return 4;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "FLWOR";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 6;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getReturnClause().getItemType();
    }

    public Expression getReturnClause() {
        return this.returnClauseOp.getChildExpression();
    }

    public boolean hasLoopingVariableReference(final Binding binding) {
        int i = 0;
        while (true) {
            if (i >= this.clauses.size()) {
                i = -1;
                break;
            }
            if (m62693k(this.clauses.get(i), binding)) {
                break;
            }
            i++;
        }
        if (i < 0) {
            i = 0;
        }
        int size = this.clauses.size();
        if (!ExpressionTool.dependsOnVariable(getReturnClause(), new Binding[]{binding})) {
            final ArrayList arrayList = new ArrayList();
            OperandProcessor operandProcessor = new OperandProcessor() { // from class: com.sunia.HTREnginev2.g8g
                @Override // net.p110sf.saxon.expr.flwor.OperandProcessor
                public final void processOperand(Operand operand) {
                    FLWORExpression.m62688n(arrayList, binding, operand);
                }
            };
            int size2 = this.clauses.size() - 1;
            while (true) {
                if (size2 < 0) {
                    break;
                }
                try {
                    this.clauses.get(size2).processOperands(operandProcessor);
                } catch (XPathException unused) {
                }
                if (!arrayList.isEmpty()) {
                    size = size2;
                    break;
                }
                size2--;
            }
        }
        for (int i2 = size - 1; i2 >= i; i2--) {
            if (isLoopingClause(this.clauses.get(i2))) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean hasVariableBinding(Binding binding) {
        Iterator<Clause> it2 = this.clauses.iterator();
        while (it2.hasNext()) {
            if (m62693k(it2.next(), binding)) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean implementsStaticTypeCheck() {
        Iterator<Clause> it2 = this.clauses.iterator();
        while (it2.hasNext()) {
            int i = C18313a.f99501a[it2.next().getClauseKey().ordinal()];
            if (i != 1 && i != 2) {
                return false;
            }
        }
        return true;
    }

    public void init(List<Clause> list, Expression expression) {
        boolean z;
        this.clauses = list;
        Iterator<Clause> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = false;
                break;
            } else if (isLoopingClause(it2.next())) {
                z = true;
                break;
            }
        }
        this.returnClauseOp = new Operand(this, expression, z ? f99499o : f99498n);
    }

    public void injectCode(CodeInjector codeInjector) {
        if (codeInjector != null) {
            Iterator<Clause> it2 = this.clauses.iterator();
            while (it2.hasNext()) {
                if (it2.next() instanceof TraceClause) {
                    return;
                }
            }
            ArrayList arrayList = new ArrayList(this.clauses.size() * 2);
            arrayList.add(this.clauses.get(0));
            for (int i = 1; i < this.clauses.size(); i++) {
                Clause injectClause = codeInjector.injectClause(this, this.clauses.get(i - 1));
                if (injectClause != null) {
                    arrayList.add(injectClause);
                }
                arrayList.add(this.clauses.get(i));
            }
            List<Clause> list = this.clauses;
            Clause injectClause2 = codeInjector.injectClause(this, list.get(list.size() - 1));
            if (injectClause2 != null) {
                arrayList.add(injectClause2);
            }
            this.clauses = arrayList;
            Operand operand = this.returnClauseOp;
            operand.setChildExpression(ExpressionTool.injectCode(operand.getChildExpression(), codeInjector));
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isUpdatingExpression() {
        return getReturnClause().isUpdatingExpression();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        TuplePull singularityPull = new SingularityPull();
        Iterator<Clause> it2 = this.clauses.iterator();
        while (it2.hasNext()) {
            singularityPull = it2.next().getPullStream(singularityPull, xPathContext);
        }
        return new ReturnClauseIterator(singularityPull, this, xPathContext);
    }

    /* renamed from: k */
    public final boolean m62693k(Clause clause, Binding binding) {
        for (LocalVariableBinding localVariableBinding : clause.getRangeVariables()) {
            if (localVariableBinding == binding) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: l */
    public final Binding[] m62694l(Binding[] bindingArr, LocalVariableBinding[] localVariableBindingArr) {
        if (bindingArr == null) {
            bindingArr = new Binding[0];
        }
        if (localVariableBindingArr == null || localVariableBindingArr.length == 0) {
            return bindingArr;
        }
        Binding[] bindingArr2 = new Binding[bindingArr.length + localVariableBindingArr.length];
        System.arraycopy(bindingArr, 0, bindingArr2, 0, bindingArr.length);
        System.arraycopy(localVariableBindingArr, 0, bindingArr2, bindingArr.length, localVariableBindingArr.length);
        return bindingArr2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        final ArrayList arrayList = new ArrayList(5);
        try {
            Iterator<Clause> it2 = this.clauses.iterator();
            while (it2.hasNext()) {
                it2.next().processOperands(new OperandProcessor() { // from class: com.sunia.HTREnginev2.j8g
                    @Override // net.p110sf.saxon.expr.flwor.OperandProcessor
                    public final void processOperand(Operand operand) {
                        arrayList.add(operand);
                    }
                });
            }
            arrayList.add(this.returnClauseOp);
            return arrayList;
        } catch (XPathException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(final ExpressionVisitor expressionVisitor, final ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        boolean z;
        boolean z2;
        boolean z3;
        Optimizer obtainOptimizer = expressionVisitor.obtainOptimizer();
        for (Clause clause : this.clauses) {
            clause.processOperands(new OperandProcessor() { // from class: com.sunia.HTREnginev2.f8g
                @Override // net.p110sf.saxon.expr.flwor.OperandProcessor
                public final void processOperand(Operand operand) {
                    operand.optimize(ExpressionVisitor.this, contextItemStaticInfo);
                }
            });
            clause.optimize(expressionVisitor, contextItemStaticInfo);
        }
        this.returnClauseOp.setChildExpression(getReturnClause().optimize(expressionVisitor, contextItemStaticInfo));
        boolean z4 = false;
        if (this.clauses.size() == 1) {
            Clause clause2 = this.clauses.get(0);
            if ((clause2 instanceof LetClause) || ((clause2 instanceof ForClause) && !(clause2 instanceof ForMemberClause) && ((ForClause) clause2).getPositionVariable() == null)) {
                return m62696t(expressionVisitor, contextItemStaticInfo);
            }
        }
        boolean z5 = false;
        do {
            for (Clause clause3 : this.clauses) {
                if (clause3.getClauseKey() == Clause.ClauseName.LET) {
                    LetClause letClause = (LetClause) clause3;
                    if (ExpressionTool.dependsOnVariable(this, new Binding[]{letClause.getRangeVariable()})) {
                        Iterator<Clause> it2 = this.clauses.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                z3 = false;
                                break;
                            }
                            if (it2.next().containsNonInlineableVariableReference(letClause.getRangeVariable())) {
                                z3 = true;
                                break;
                            }
                        }
                        if (z3) {
                            continue;
                        } else {
                            boolean z6 = letClause.getRangeVariable().getNominalReferenceCount() == 1;
                            boolean z7 = (letClause.getSequence() instanceof VariableReference) || (letClause.getSequence() instanceof Literal);
                            if (z6 || z7) {
                                ExpressionTool.replaceVariableReferences(this, letClause.getRangeVariable(), letClause.getSequence(), true);
                                this.clauses.remove(clause3);
                                obtainOptimizer.trace("Inlined variable " + letClause.getRangeVariable().getVariableQName().getDisplayName(), this);
                                if (this.clauses.isEmpty()) {
                                    return getReturnClause();
                                }
                            }
                        }
                    } else {
                        this.clauses.remove(clause3);
                        obtainOptimizer.trace("Removed unused variable " + letClause.getRangeVariable().getVariableQName().getDisplayName(), this);
                    }
                    z = true;
                    break;
                }
            }
            z = false;
            z5 |= z;
        } while (z);
        if (z5) {
            for (int size = this.clauses.size() - 1; size >= 1; size--) {
                Clause.ClauseName clauseKey = this.clauses.get(size).getClauseKey();
                Clause.ClauseName clauseName = Clause.ClauseName.TRACE;
                if (clauseKey == clauseName && this.clauses.get(size - 1).getClauseKey() == clauseName) {
                    this.clauses.remove(size);
                }
            }
        }
        Iterator<Clause> it3 = this.clauses.iterator();
        while (true) {
            if (!it3.hasNext()) {
                z2 = false;
                break;
            }
            Clause next = it3.next();
            if ((next instanceof WhereClause) && ExpressionTool.dependsOnFocus(((WhereClause) next).getPredicate())) {
                z2 = true;
                break;
            }
        }
        if (z2 && contextItemStaticInfo != null) {
            Expression tryToFactorOutDot = ExpressionTool.tryToFactorOutDot(this, contextItemStaticInfo.getItemType());
            if (tryToFactorOutDot == null || tryToFactorOutDot == this) {
                return this;
            }
            resetLocalStaticProperties();
            return tryToFactorOutDot.optimize(expressionVisitor, contextItemStaticInfo);
        }
        Expression m62697u = m62697u(expressionVisitor, contextItemStaticInfo);
        if (m62697u != null && m62697u != this) {
            return m62697u.optimize(expressionVisitor, contextItemStaticInfo);
        }
        Iterator<Clause> it4 = this.clauses.iterator();
        while (true) {
            if (!it4.hasNext()) {
                z4 = true;
                break;
            }
            Clause next2 = it4.next();
            if ((next2 instanceof ForClause) && !(next2 instanceof ForMemberClause)) {
                if (((ForClause) next2).getPositionVariable() != null) {
                    break;
                }
            } else {
                if (!(next2 instanceof LetClause)) {
                    break;
                }
            }
        }
        return z4 ? m62696t(expressionVisitor, contextItemStaticInfo) : this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void process(Outputter outputter, XPathContext xPathContext) throws XPathException {
        TuplePush returnClausePush = new ReturnClausePush(outputter, getReturnClause());
        for (int size = this.clauses.size() - 1; size >= 0; size--) {
            returnClausePush = this.clauses.get(size).getPushStream(returnClausePush, outputter, xPathContext);
        }
        returnClausePush.processTuple(xPathContext);
        returnClausePush.close();
    }

    /* renamed from: s */
    public final Expression m62695s(List<Expression> list) {
        return list.size() == 1 ? list.get(0) : new AndExpression(list.get(0), m62695s(list.subList(1, list.size())));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        OperandProcessor operandProcessor = new OperandProcessor() { // from class: com.sunia.HTREnginev2.h8g
            @Override // net.p110sf.saxon.expr.flwor.OperandProcessor
            public final void processOperand(Operand operand) {
                FLWORExpression.m62691q(operand);
            }
        };
        Iterator<Clause> it2 = this.clauses.iterator();
        while (it2.hasNext()) {
            it2.next().processOperands(operandProcessor);
        }
        this.returnClauseOp.setChildExpression(getReturnClause().simplify());
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression staticTypeCheck(SequenceType sequenceType, boolean z, RoleDiagnostic roleDiagnostic, ExpressionVisitor expressionVisitor) throws XPathException {
        this.returnClauseOp.setChildExpression(expressionVisitor.getConfiguration().getTypeChecker(z).staticTypeCheck(getReturnClause(), sequenceType, roleDiagnostic, expressionVisitor));
        return this;
    }

    /* renamed from: t */
    public final Expression m62696t(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Assignation letExpression;
        Expression returnClause = getReturnClause();
        if (expressionVisitor.getStaticContext() instanceof QueryModule) {
            ((QueryModule) expressionVisitor.getStaticContext()).getCodeInjector();
        }
        for (int size = this.clauses.size() - 1; size >= 0; size--) {
            if (this.clauses.get(size) instanceof ForClause) {
                ForClause forClause = (ForClause) this.clauses.get(size);
                letExpression = forClause.isAllowingEmpty() ? new OuterForExpression() : new ForExpression();
                letExpression.setLocation(forClause.getLocation());
                letExpression.setRetainedStaticContext(getRetainedStaticContext());
                letExpression.setAction(returnClause);
                letExpression.setSequence(forClause.getSequence());
                letExpression.setVariableQName(forClause.getRangeVariable().getVariableQName());
                letExpression.setRequiredType(forClause.getRangeVariable().getRequiredType());
                ExpressionTool.rebindVariableReferences(returnClause, forClause.getRangeVariable(), letExpression);
            } else {
                LetClause letClause = (LetClause) this.clauses.get(size);
                letExpression = new LetExpression();
                letExpression.setLocation(letClause.getLocation());
                letExpression.setRetainedStaticContext(getRetainedStaticContext());
                letExpression.setAction(returnClause);
                letExpression.setSequence(letClause.getSequence());
                letExpression.setVariableQName(letClause.getRangeVariable().getVariableQName());
                letExpression.setRequiredType(letClause.getRangeVariable().getRequiredType());
                if (letClause.getRangeVariable().isIndexedVariable()) {
                    letExpression.setIndexedVariable();
                }
                ExpressionTool.rebindVariableReferences(returnClause, letClause.getRangeVariable(), letExpression);
            }
            returnClause = letExpression;
        }
        return returnClause.typeCheck(expressionVisitor, contextItemStaticInfo).optimize(expressionVisitor, contextItemStaticInfo);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(this.clauses.get(0).toShortString());
        sb.append(" ... return ");
        sb.append(getReturnClause().toShortString());
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        Iterator<Clause> it2 = this.clauses.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().toString());
            sb.append(' ');
        }
        sb.append(" return ");
        sb.append(getReturnClause().toString());
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(final ExpressionVisitor expressionVisitor, final ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        OperandProcessor operandProcessor = new OperandProcessor() { // from class: com.sunia.HTREnginev2.i8g
            @Override // net.p110sf.saxon.expr.flwor.OperandProcessor
            public final void processOperand(Operand operand) {
                operand.typeCheck(ExpressionVisitor.this, contextItemStaticInfo);
            }
        };
        for (int i = 0; i < this.clauses.size(); i++) {
            this.clauses.get(i).processOperands(operandProcessor);
            this.clauses.get(i).typeCheck(expressionVisitor, contextItemStaticInfo);
            for (LocalVariableBinding localVariableBinding : this.clauses.get(i).getRangeVariables()) {
                ArrayList arrayList = new ArrayList();
                for (int i2 = i; i2 < this.clauses.size(); i2++) {
                    this.clauses.get(i2).gatherVariableReferences(expressionVisitor, localVariableBinding, arrayList);
                }
                ExpressionTool.gatherVariableReferences(getReturnClause(), localVariableBinding, arrayList);
                this.clauses.get(i).refineVariableType(expressionVisitor, arrayList, getReturnClause());
            }
        }
        this.returnClauseOp.typeCheck(expressionVisitor, contextItemStaticInfo);
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0123 A[SYNTHETIC] */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final net.p110sf.saxon.expr.Expression m62697u(net.p110sf.saxon.expr.parser.ExpressionVisitor r14, net.p110sf.saxon.expr.parser.ContextItemStaticInfo r15) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.flwor.FLWORExpression.m62697u(net.sf.saxon.expr.parser.ExpressionVisitor, net.sf.saxon.expr.parser.ContextItemStaticInfo):net.sf.saxon.expr.Expression");
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression unordered(boolean z, boolean z2) throws XPathException {
        for (Clause clause : this.clauses) {
            if (clause instanceof ForClause) {
                ForClause forClause = (ForClause) clause;
                if (forClause.getPositionVariable() == null) {
                    forClause.setSequence(forClause.getSequence().unordered(z, z2));
                }
            }
        }
        this.returnClauseOp.setChildExpression(getReturnClause().unordered(z, z2));
        return this;
    }

    /* renamed from: net.sf.saxon.expr.flwor.FLWORExpression$b */
    /* loaded from: classes11.dex */
    public static class C18314b {

        /* renamed from: a */
        public int f99502a;

        /* renamed from: b */
        public WhereClause f99503b;

        public C18314b() {
            this.f99502a = 0;
        }

        public /* synthetic */ C18314b(C18313a c18313a) {
            this();
        }
    }
}
