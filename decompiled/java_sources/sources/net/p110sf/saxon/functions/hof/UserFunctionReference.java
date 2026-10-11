package net.p110sf.saxon.functions.hof;

import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ComponentInvocation;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.ExportAgent;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.UserFunctionResolvable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.functions.AbstractFunction;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public class UserFunctionReference extends Expression implements ComponentInvocation, UserFunctionResolvable, Callable {

    /* renamed from: n */
    public final SymbolicName f100403n;

    /* renamed from: o */
    public UserFunction f100404o;

    /* renamed from: p */
    public int f100405p = -1;

    /* renamed from: q */
    public int f100406q = 0;

    /* renamed from: r */
    public int f100407r = 0;

    /* loaded from: classes11.dex */
    public static class BoundUserFunction extends AbstractFunction implements ContextOriginator {

        /* renamed from: e */
        public final ExportAgent f100408e;

        /* renamed from: f */
        public final Function f100409f;

        /* renamed from: g */
        public final Component f100410g;

        /* renamed from: h */
        public final Controller f100411h;

        public BoundUserFunction(ExportAgent exportAgent, Function function, Component component, Controller controller) {
            this.f100408e = exportAgent;
            this.f100409f = function;
            this.f100410g = component;
            this.f100411h = controller;
        }

        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            Component component;
            XPathContext makeNewContext = this.f100409f.makeNewContext(xPathContext, this);
            if ((makeNewContext instanceof XPathContextMajor) && (component = this.f100410g) != null) {
                ((XPathContextMajor) makeNewContext).setCurrentComponent(component);
            }
            return this.f100409f.call(makeNewContext, sequenceArr);
        }

        @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
        public void export(ExpressionPresenter expressionPresenter) throws XPathException {
            this.f100408e.export(expressionPresenter);
        }

        @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
        public AnnotationList getAnnotations() {
            return this.f100409f.getAnnotations();
        }

        @Override // net.p110sf.saxon.om.Function
        public int getArity() {
            return this.f100409f.getArity();
        }

        public Controller getController() {
            return this.f100411h;
        }

        @Override // net.p110sf.saxon.om.Function
        public String getDescription() {
            return this.f100409f.getDescription();
        }

        @Override // net.p110sf.saxon.om.Function
        public FunctionItemType getFunctionItemType() {
            return this.f100409f.getFunctionItemType();
        }

        @Override // net.p110sf.saxon.om.Function
        public StructuredQName getFunctionName() {
            return this.f100409f.getFunctionName();
        }

        public Function getTargetFunction() {
            return this.f100409f;
        }

        @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
        public XPathContext makeNewContext(XPathContext xPathContext, ContextOriginator contextOriginator) {
            if (this.f100411h.getConfiguration() != xPathContext.getConfiguration()) {
                throw new IllegalStateException("A function created under one Configuration cannot be called under a different Configuration");
            }
            XPathContextMajor newXPathContext = this.f100411h.newXPathContext();
            newXPathContext.setTemporaryOutputState(160);
            newXPathContext.setCurrentOutputUri(null);
            newXPathContext.setCurrentComponent(this.f100410g);
            newXPathContext.setResourceResolver(xPathContext.getResourceResolver());
            newXPathContext.setOrigin(contextOriginator);
            return this.f100409f.makeNewContext(newXPathContext, contextOriginator);
        }
    }

    public UserFunctionReference(UserFunction userFunction) {
        this.f100404o = userFunction;
        this.f100403n = userFunction.getSymbolicName();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        UserFunctionReference userFunctionReference = new UserFunctionReference(this.f100404o);
        userFunctionReference.f100406q = this.f100406q;
        userFunctionReference.f100407r = this.f100407r;
        return userFunctionReference;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        ExpressionPresenter.ExportOptions exportOptions = (ExpressionPresenter.ExportOptions) expressionPresenter.getOptions();
        if ("JS".equals(exportOptions.target) && exportOptions.targetVersion == 1) {
            throw new XPathException("Higher-order functions are not available in SaxonJS v1.*", "XTSE3540", getLocation());
        }
        if (this.f100404o.getDeclaringComponent() == null) {
            expressionPresenter.startElement("inlineFn");
            this.f100404o.export(expressionPresenter);
            expressionPresenter.endElement();
            return;
        }
        StylesheetPackage stylesheetPackage = exportOptions.rootPackage;
        StylesheetPackage containingPackage = this.f100404o.getDeclaringComponent().getContainingPackage();
        if (stylesheetPackage != null && stylesheetPackage != containingPackage && !stylesheetPackage.contains(containingPackage)) {
            throw new XPathException("Cannot export a package containing a reference to a user-defined function (" + toShortString() + ") that is not present in the package being exported");
        }
        expressionPresenter.startElement("ufRef");
        expressionPresenter.emitAttribute("name", this.f100404o.getFunctionName());
        expressionPresenter.emitAttribute("arity", this.f100404o.getArity() + "");
        expressionPresenter.emitAttribute("bSlot", "" + getBindingSlot());
        expressionPresenter.endElement();
    }

    public int getArity() {
        return this.f100404o.getArity();
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public int getBindingSlot() {
        return this.f100405p;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "UserFunctionReference";
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public Component getFixedTarget() {
        return this.f100404o.getDeclaringComponent();
    }

    public FunctionItemType getFunctionItemType(TypeHierarchy typeHierarchy) {
        return this.f100404o.getFunctionItemType();
    }

    public StructuredQName getFunctionName() {
        return this.f100404o.getFunctionName();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return this.f100404o.getFunctionItemType();
    }

    public UserFunction getNominalTarget() {
        return this.f100404o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return UType.FUNCTION;
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public SymbolicName getSymbolicName() {
        return this.f100403n;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        int i;
        if (this.f100404o.getFunctionName().hasURI(NamespaceConstant.ANONYMOUS) && (i = this.f100406q) == 0) {
            this.f100406q = i + 1;
            Expression optimize = this.f100404o.getBody().optimize(expressionVisitor, ContextItemStaticInfo.ABSENT);
            this.f100404o.setBody(optimize);
            SlotManager makeSlotManager = expressionVisitor.getConfiguration().makeSlotManager();
            for (int i2 = 0; i2 < getArity(); i2++) {
                makeSlotManager.allocateSlotNumber(this.f100404o.getParameterDefinitions()[i2].getVariableQName());
            }
            ExpressionTool.allocateSlots(optimize, getArity(), makeSlotManager);
            this.f100404o.setStackFrameMap(makeSlotManager);
            this.f100406q--;
        }
        return this;
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public void setBindingSlot(int i) {
        this.f100405p = i;
    }

    @Override // net.p110sf.saxon.expr.UserFunctionResolvable
    public void setFunction(UserFunction userFunction) {
        if (!userFunction.getSymbolicName().equals(this.f100403n)) {
            throw new IllegalArgumentException("Function name does not match");
        }
        this.f100404o = userFunction;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        int i;
        if (this.f100404o.getFunctionName().hasURI(NamespaceConstant.ANONYMOUS) && (i = this.f100407r) == 0) {
            this.f100407r = i + 1;
            UserFunction userFunction = this.f100404o;
            userFunction.setBody(userFunction.getBody().simplify());
            this.f100407r--;
        }
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getFunctionName().getDisplayName() + "#" + getArity();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        return getFunctionName().getEQName() + "#" + getArity();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        int i;
        if (this.f100404o.getFunctionName().hasURI(NamespaceConstant.ANONYMOUS) && (i = this.f100407r) == 0) {
            this.f100407r = i + 1;
            this.f100404o.typeCheck(expressionVisitor);
            this.f100407r--;
        }
        return this;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Function call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return evaluateItem(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Function evaluateItem(XPathContext xPathContext) throws XPathException {
        int i = this.f100405p;
        if (i == -1) {
            UserFunction userFunction = this.f100404o;
            return new BoundUserFunction(this, userFunction, userFunction.getDeclaringComponent(), xPathContext.getController());
        }
        Component targetComponent = xPathContext.getTargetComponent(i);
        return new BoundUserFunction(this, (UserFunction) targetComponent.getActor(), targetComponent, xPathContext.getController());
    }

    public UserFunctionReference(SymbolicName symbolicName) {
        this.f100403n = symbolicName;
    }
}
