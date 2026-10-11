package net.p110sf.saxon.expr;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.event.EventMonitor;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.OutputterEventBuffer;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.expr.TailCallLoop;
import net.p110sf.saxon.expr.instruct.BreakInstr;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.QNameTest;
import net.p110sf.saxon.s9api.XmlProcessingError;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.Cardinality;

/* loaded from: classes11.dex */
public class TryCatch extends Expression {

    /* renamed from: n */
    public final Operand f99387n;

    /* renamed from: o */
    public final List<CatchClause> f99388o = new ArrayList();

    /* renamed from: p */
    public boolean f99389p;

    /* loaded from: classes11.dex */
    public static class CatchClause {
        public Operand catchOp;
        public QNameTest nameTest;
        public int slotNumber = -1;
    }

    /* renamed from: net.sf.saxon.expr.TryCatch$a */
    /* loaded from: classes11.dex */
    public static class C18307a implements ErrorReporter {

        /* renamed from: e */
        public final ErrorReporter f99390e;

        /* renamed from: f */
        public final List<CatchClause> f99391f;

        public C18307a(ErrorReporter errorReporter, List<CatchClause> list) {
            this.f99390e = errorReporter;
            this.f99391f = list;
        }

        /* renamed from: a */
        public final boolean m62648a(XmlProcessingError xmlProcessingError) {
            StructuredQName structuredQName = xmlProcessingError.getErrorCode().getStructuredQName();
            Iterator<CatchClause> it2 = this.f99391f.iterator();
            while (it2.hasNext()) {
                if (it2.next().nameTest.matches(structuredQName)) {
                    return true;
                }
            }
            return false;
        }

        @Override // net.p110sf.saxon.lib.ErrorReporter
        public void report(XmlProcessingError xmlProcessingError) {
            if (xmlProcessingError.isWarning() || !m62648a(xmlProcessingError)) {
                this.f99390e.report(xmlProcessingError);
            }
        }
    }

    public TryCatch(Expression expression) {
        this.f99387n = new Operand(this, expression, OperandRole.SAME_FOCUS_ACTION);
    }

    public void addCatchExpression(QNameTest qNameTest, Expression expression) {
        CatchClause catchClause = new CatchClause();
        catchClause.catchOp = new Operand(this, expression, OperandRole.SAME_FOCUS_ACTION);
        catchClause.nameTest = qNameTest;
        this.f99388o.add(catchClause);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean allowExtractingCommonSubexpressions() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        int cardinality = getTryExpr().getCardinality();
        Iterator<CatchClause> it2 = this.f99388o.iterator();
        while (it2.hasNext()) {
            cardinality = Cardinality.union(cardinality, it2.next().catchOp.getChildExpression().getCardinality());
        }
        return cardinality;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        int i = 1667961504;
        for (int i2 = 0; i2 < this.f99388o.size(); i2++) {
            i ^= this.f99388o.get(i2).hashCode() << i2;
        }
        return i + this.f99387n.getChildExpression().hashCode();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        TryCatch tryCatch = new TryCatch(this.f99387n.getChildExpression().copy(rebindingMap));
        for (CatchClause catchClause : this.f99388o) {
            tryCatch.addCatchExpression(catchClause.nameTest, catchClause.catchOp.getChildExpression().copy(rebindingMap));
        }
        tryCatch.setRollbackOutput(this.f99389p);
        ExpressionTool.copyLocationInfo(this, tryCatch);
        return tryCatch;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (obj instanceof TryCatch) {
            TryCatch tryCatch = (TryCatch) obj;
            if (tryCatch.f99387n.getChildExpression().isEqual(this.f99387n.getChildExpression()) && tryCatch.f99388o.equals(this.f99388o)) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        try {
            try {
                return ExpressionTool.eagerEvaluate(this.f99387n.getChildExpression(), xPathContext.newMinorContext()).head();
            } catch (UncheckedXPathException e) {
                throw e.getXPathException();
            }
        } catch (XPathException e2) {
            if (e2.isGlobalError()) {
                e2.setIsGlobalError(false);
            } else {
                StructuredQName errorCodeQName = e2.getErrorCodeQName();
                if (errorCodeQName == null) {
                    errorCodeQName = new StructuredQName("saxon", NamespaceConstant.SAXON, "XXXX9999");
                }
                for (CatchClause catchClause : this.f99388o) {
                    if (catchClause.nameTest.matches(errorCodeQName)) {
                        Expression childExpression = catchClause.catchOp.getChildExpression();
                        XPathContextMajor newContext = xPathContext.newContext();
                        newContext.setCurrentException(e2);
                        return childExpression.evaluateItem(newContext);
                    }
                }
            }
            e2.setHasBeenReported(false);
            throw e2;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("try", this);
        if (this.f99389p) {
            expressionPresenter.emitAttribute("flags", "r");
        }
        this.f99387n.getChildExpression().export(expressionPresenter);
        for (CatchClause catchClause : this.f99388o) {
            expressionPresenter.startElement("catch");
            expressionPresenter.emitAttribute("errors", catchClause.nameTest.exportQNameTest());
            catchClause.catchOp.getChildExpression().export(expressionPresenter);
            expressionPresenter.endElement();
        }
        expressionPresenter.endElement();
    }

    public List<CatchClause> getCatchClauses() {
        return this.f99388o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "tryCatch";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        ItemType itemType = getTryExpr().getItemType();
        Iterator<CatchClause> it2 = this.f99388o.iterator();
        while (it2.hasNext()) {
            itemType = Type.getCommonSuperType(itemType, it2.next().catchOp.getChildExpression().getItemType());
        }
        return itemType;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "TryCatch";
    }

    public Expression getTryExpr() {
        return this.f99387n.getChildExpression();
    }

    public Operand getTryOperand() {
        return this.f99387n;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isInstruction() {
        return true;
    }

    public boolean isRollbackOutput() {
        return this.f99389p;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        XPathContextMajor newContext = xPathContext.newContext();
        newContext.createThreadManager();
        newContext.setErrorReporter(new C18307a(xPathContext.getErrorReporter(), this.f99388o));
        try {
            GroundedValue eagerEvaluate = ExpressionTool.eagerEvaluate(this.f99387n.getChildExpression(), newContext);
            newContext.waitForChildThreads();
            TailCallLoop.TailCallInfo tailCallInfo = newContext.getTailCallInfo();
            if (tailCallInfo instanceof BreakInstr) {
                ((BreakInstr) tailCallInfo).markContext(xPathContext);
            }
            return eagerEvaluate.iterate();
        } catch (XPathException e) {
            if (e.isGlobalError()) {
                e.setIsGlobalError(false);
            } else {
                StructuredQName errorCodeQName = e.getErrorCodeQName();
                if (errorCodeQName == null) {
                    errorCodeQName = new StructuredQName("saxon", NamespaceConstant.SAXON, "XXXX9999");
                }
                for (CatchClause catchClause : this.f99388o) {
                    if (catchClause.nameTest.matches(errorCodeQName)) {
                        Expression childExpression = catchClause.catchOp.getChildExpression();
                        XPathContextMajor newContext2 = xPathContext.newContext();
                        newContext2.setCurrentException(e);
                        GroundedValue eagerEvaluate2 = ExpressionTool.eagerEvaluate(childExpression, newContext2);
                        TailCallLoop.TailCallInfo tailCallInfo2 = newContext2.getTailCallInfo();
                        if (tailCallInfo2 instanceof BreakInstr) {
                            ((BreakInstr) tailCallInfo2).markContext(xPathContext);
                        }
                        return eagerEvaluate2.iterate();
                    }
                }
            }
            e.setHasBeenReported(false);
            throw e;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f99387n);
        Iterator<CatchClause> it2 = this.f99388o.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().catchOp);
        }
        return arrayList;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        optimizeChildren(expressionVisitor, contextItemStaticInfo);
        for (Expression parentExpression = getParentExpression(); parentExpression != null; parentExpression = parentExpression.getParentExpression()) {
            if (parentExpression instanceof LetExpression) {
                LetExpression letExpression = (LetExpression) parentExpression;
                if (ExpressionTool.dependsOnVariable(getTryExpr(), new Binding[]{letExpression})) {
                    letExpression.setNeedsEagerEvaluation(true);
                }
            }
        }
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void process(final Outputter outputter, XPathContext xPathContext) throws XPathException {
        Outputter eventMonitor;
        PipelineConfiguration pipelineConfiguration = outputter.getPipelineConfiguration();
        XPathContextMajor newContext = xPathContext.newContext();
        newContext.createThreadManager();
        newContext.setErrorReporter(new C18307a(xPathContext.getErrorReporter(), this.f99388o));
        if (this.f99389p) {
            eventMonitor = new OutputterEventBuffer();
            eventMonitor.setPipelineConfiguration(pipelineConfiguration);
        } else {
            eventMonitor = new EventMonitor(outputter);
            eventMonitor.setPipelineConfiguration(pipelineConfiguration);
        }
        try {
            this.f99387n.getChildExpression().process(eventMonitor, newContext);
            newContext.waitForChildThreads();
            TailCallLoop.TailCallInfo tailCallInfo = newContext.getTailCallInfo();
            if (tailCallInfo instanceof BreakInstr) {
                ((BreakInstr) tailCallInfo).markContext(xPathContext);
            }
            if (this.f99389p) {
                ((OutputterEventBuffer) eventMonitor).replay(outputter);
            }
        } catch (XPathException e) {
            if (e.isGlobalError()) {
                e.setIsGlobalError(false);
            } else {
                StructuredQName errorCodeQName = e.getErrorCodeQName();
                if (errorCodeQName == null) {
                    errorCodeQName = new StructuredQName("saxon", NamespaceConstant.SAXON, "XXXX9999");
                }
                for (CatchClause catchClause : this.f99388o) {
                    if (catchClause.nameTest.matches(errorCodeQName)) {
                        if ((eventMonitor instanceof EventMonitor) && ((EventMonitor) eventMonitor).hasBeenWrittenTo()) {
                            XPathException xPathException = new XPathException(e.getMessage() + ". The error could not be caught, because rollback-output=no was specified, and output was already written to the result tree", "XTDE3530");
                            xPathException.setLocation(e.getLocator());
                            xPathException.setXPathContext(xPathContext);
                            throw xPathException;
                        }
                        Expression childExpression = catchClause.catchOp.getChildExpression();
                        XPathContextMajor newContext2 = xPathContext.newContext();
                        newContext2.setCurrentException(e);
                        GroundedValue eagerEvaluate = ExpressionTool.eagerEvaluate(childExpression, newContext2);
                        TailCallLoop.TailCallInfo tailCallInfo2 = newContext2.getTailCallInfo();
                        if (tailCallInfo2 instanceof BreakInstr) {
                            ((BreakInstr) tailCallInfo2).markContext(xPathContext);
                        }
                        SequenceTool.supply(eagerEvaluate.iterate(), new ItemConsumer() { // from class: com.sunia.HTREnginev2.con
                            @Override // net.p110sf.saxon.om.ItemConsumer
                            public final void accept(Item item) {
                                Outputter.this.append(item);
                            }
                        });
                        return;
                    }
                }
            }
            e.setHasBeenReported(false);
            throw e;
        }
    }

    public void setRollbackOutput(boolean z) {
        this.f99389p = z;
    }
}
