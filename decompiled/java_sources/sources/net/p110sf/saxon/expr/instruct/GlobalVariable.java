package net.p110sf.saxon.expr.instruct;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.BindingReference;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.VariableReference;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.Bindery;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.Declaration;
import net.p110sf.saxon.query.XQueryFunction;
import net.p110sf.saxon.query.XQueryFunctionLibrary;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trace.TraceableComponent;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.Visibility;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.IndexedStack;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class GlobalVariable extends Actor implements Binding, Declaration, TraceableComponent, ContextOriginator {

    /* renamed from: v */
    public static final /* synthetic */ boolean f99738v = false;

    /* renamed from: m */
    public StructuredQName f99739m;

    /* renamed from: n */
    public SequenceType f99740n;

    /* renamed from: o */
    public boolean f99741o;

    /* renamed from: r */
    public GlobalVariable f99744r;

    /* renamed from: s */
    public int f99745s;

    /* renamed from: t */
    public boolean f99746t;

    /* renamed from: u */
    public boolean f99747u;
    protected List<BindingReference> references = new ArrayList(10);

    /* renamed from: p */
    public boolean f99742p = false;

    /* renamed from: q */
    public boolean f99743q = false;

    /* renamed from: b */
    public static XPathContextMajor m62773b(XPathContext xPathContext) {
        XPathContext caller = xPathContext.getCaller();
        while (caller != null && !(caller instanceof XPathContextMajor)) {
            caller = caller.getCaller();
        }
        return (XPathContextMajor) caller;
    }

    /* renamed from: c */
    public static void m62774c(XQueryFunction xQueryFunction, IndexedStack<Object> indexedStack, XQueryFunctionLibrary xQueryFunctionLibrary) throws XPathException {
        Expression body = xQueryFunction.getBody();
        indexedStack.push(xQueryFunction);
        ArrayList<Binding> arrayList = new ArrayList(10);
        ExpressionTool.gatherReferencedVariables(body, arrayList);
        for (Binding binding : arrayList) {
            if (binding instanceof GlobalVariable) {
                ((GlobalVariable) binding).lookForCycles(indexedStack, xQueryFunctionLibrary);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ExpressionTool.gatherCalledFunctionNames(body, arrayList2);
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            XQueryFunction declarationByKey = xQueryFunctionLibrary.getDeclarationByKey((SymbolicName) it2.next());
            if (!indexedStack.contains(declarationByKey)) {
                m62774c(declarationByKey, indexedStack, xQueryFunctionLibrary);
            }
        }
        indexedStack.pop();
    }

    public static void setDependencies(GlobalVariable globalVariable, XPathContext xPathContext) throws XPathException {
        Controller controller = xPathContext.getController();
        if (!(xPathContext instanceof XPathContextMajor)) {
            xPathContext = m62773b(xPathContext);
        }
        while (xPathContext != null) {
            do {
                ContextOriginator origin = ((XPathContextMajor) xPathContext).getOrigin();
                if (origin instanceof GlobalVariable) {
                    controller.registerGlobalVariableDependency((GlobalVariable) origin, globalVariable);
                    return;
                }
                xPathContext = m62773b(xPathContext);
            } while (xPathContext != null);
        }
    }

    public GroundedValue actuallyEvaluate(XPathContext xPathContext, Component component) throws XPathException {
        Controller controller = xPathContext.getController();
        Bindery bindery = controller.getBindery(getPackageData());
        try {
            setDependencies(this, xPathContext);
            if (!bindery.setExecuting(this)) {
                return bindery.getGlobalVariable(getBinderySlotNumber());
            }
            GroundedValue selectValue = getSelectValue(xPathContext, component);
            if (this.f99741o) {
                selectValue = controller.getConfiguration().obtainOptimizer().makeIndexedValue(selectValue.iterate());
            }
            return bindery.saveGlobalVariableValue(this, selectValue);
        } catch (XPathException e) {
            bindery.setNotExecuting(this);
            if (!(e instanceof XPathException.Circularity)) {
                throw e;
            }
            e.setErrorCode(getPackageData().isXSLT() ? "XTDE0640" : "XQDY0054");
            e.setXPathContext(xPathContext);
            e.setIsGlobalError(true);
            bindery.setGlobalVariable(this, new Bindery.FailureValue(e));
            e.setLocation(getLocation());
            throw e;
        }
    }

    @Override // net.p110sf.saxon.expr.Binding
    public void addReference(VariableReference variableReference, boolean z) {
    }

    public void compile(Executable executable, int i) throws XPathException {
        GroundedValue groundedValue;
        Affinity relationship;
        TypeHierarchy typeHierarchy = getConfiguration().getTypeHierarchy();
        setBinderySlotNumber(i);
        boolean z = this instanceof GlobalParam;
        if (z) {
            setRequiredParam(getBody() == null);
        }
        SequenceType requiredType = getRequiredType();
        for (BindingReference bindingReference : this.references) {
            bindingReference.fixup(this);
            Expression body = getBody();
            if ((body instanceof Literal) && !z && ((relationship = typeHierarchy.relationship(body.getItemType(), requiredType.getPrimaryType())) == Affinity.SAME_TYPE || relationship == Affinity.SUBSUMED_BY)) {
                GroundedValue groundedValue2 = ((Literal) body).getGroundedValue();
                groundedValue = groundedValue2;
                requiredType = SequenceType.makeSequenceType(SequenceTool.getItemType(groundedValue2, typeHierarchy), SequenceTool.getCardinality(groundedValue2));
            } else {
                groundedValue = null;
            }
            bindingReference.setStaticType(requiredType, groundedValue, (body != null ? body.getSpecialProperties() : 0) | 8388608);
        }
        if (isRequiredParam()) {
            executable.registerGlobalParameter((GlobalParam) this);
        }
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        Visibility visibility;
        expressionPresenter.startElement((this instanceof GlobalParam) && !isStatic() ? "globalParam" : "globalVariable");
        expressionPresenter.emitAttribute("name", getVariableQName());
        expressionPresenter.emitAttribute("as", getRequiredType().toAlphaCode());
        expressionPresenter.emitAttribute("line", getLineNumber() + "");
        expressionPresenter.emitAttribute("module", getSystemId());
        if (getStackFrameMap() != null) {
            expressionPresenter.emitAttribute("slots", getStackFrameMap().getNumberOfVariables() + "");
        }
        if (getDeclaringComponent() != null && (visibility = getDeclaringComponent().getVisibility()) != Visibility.UNDEFINED) {
            expressionPresenter.emitAttribute("visibility", visibility.toString());
        }
        String flags = getFlags();
        if (!flags.isEmpty()) {
            expressionPresenter.emitAttribute("flags", flags);
        }
        if (getBody() != null) {
            getBody().export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.trace.Traceable
    public void gatherProperties(BiConsumer<String, Object> biConsumer) {
        biConsumer.accept("name", getVariableQName());
    }

    public int getBinderySlotNumber() {
        return this.f99745s;
    }

    public final Configuration getConfiguration() {
        return getPackageData().getConfiguration();
    }

    public String getDescription() {
        if (!this.f99739m.hasURI(NamespaceConstant.SAXON_GENERATED_VARIABLE)) {
            return "global variable " + getVariableQName().getDisplayName();
        }
        return "optimizer-generated global variable select=\"" + getBody().toShortString() + '\"';
    }

    public String getFlags() {
        String str = "";
        if (this.f99743q) {
            str = "a";
        }
        if (this.f99741o) {
            str = str + "x";
        }
        if (this.f99746t) {
            str = str + "r";
        }
        if (!this.f99747u) {
            return str;
        }
        return str + "s";
    }

    public HostLanguage getHostLanguage() {
        return getPackageData().getHostLanguage();
    }

    @Override // net.p110sf.saxon.expr.Binding
    public IntegerValue[] getIntegerBoundsForVariable() {
        if (getBody() == null) {
            return null;
        }
        return getBody().getIntegerBounds();
    }

    public int getLocalSlotNumber() {
        return 0;
    }

    @Override // net.p110sf.saxon.trace.Traceable
    public StructuredQName getObjectName() {
        return getVariableQName();
    }

    public GlobalVariable getOriginalVariable() {
        return this.f99744r;
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public Object getProperty(String str) {
        return null;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public SequenceType getRequiredType() {
        return this.f99740n;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003c A[Catch: XPathException -> 0x0087, UncheckedXPathException -> 0x0096, TryCatch #2 {UncheckedXPathException -> 0x0096, XPathException -> 0x0087, blocks: (B:10:0x0014, B:13:0x0022, B:17:0x0032, B:19:0x003c, B:20:0x0050, B:22:0x0056, B:23:0x005d, B:25:0x0070, B:26:0x0083, B:29:0x007b, B:30:0x004d), top: B:9:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0056 A[Catch: XPathException -> 0x0087, UncheckedXPathException -> 0x0096, TryCatch #2 {UncheckedXPathException -> 0x0096, XPathException -> 0x0087, blocks: (B:10:0x0014, B:13:0x0022, B:17:0x0032, B:19:0x003c, B:20:0x0050, B:22:0x0056, B:23:0x005d, B:25:0x0070, B:26:0x0083, B:29:0x007b, B:30:0x004d), top: B:9:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0070 A[Catch: XPathException -> 0x0087, UncheckedXPathException -> 0x0096, TryCatch #2 {UncheckedXPathException -> 0x0096, XPathException -> 0x0087, blocks: (B:10:0x0014, B:13:0x0022, B:17:0x0032, B:19:0x003c, B:20:0x0050, B:22:0x0056, B:23:0x005d, B:25:0x0070, B:26:0x0083, B:29:0x007b, B:30:0x004d), top: B:9:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007b A[Catch: XPathException -> 0x0087, UncheckedXPathException -> 0x0096, TryCatch #2 {UncheckedXPathException -> 0x0096, XPathException -> 0x0087, blocks: (B:10:0x0014, B:13:0x0022, B:17:0x0032, B:19:0x003c, B:20:0x0050, B:22:0x0056, B:23:0x005d, B:25:0x0070, B:26:0x0083, B:29:0x007b, B:30:0x004d), top: B:9:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004d A[Catch: XPathException -> 0x0087, UncheckedXPathException -> 0x0096, TryCatch #2 {UncheckedXPathException -> 0x0096, XPathException -> 0x0087, blocks: (B:10:0x0014, B:13:0x0022, B:17:0x0032, B:19:0x003c, B:20:0x0050, B:22:0x0056, B:23:0x005d, B:25:0x0070, B:26:0x0083, B:29:0x007b, B:30:0x004d), top: B:9:0x0014 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.om.GroundedValue getSelectValue(net.p110sf.saxon.expr.XPathContext r7, net.p110sf.saxon.expr.Component r8) throws net.p110sf.saxon.trans.XPathException {
        /*
            r6 = this;
            java.lang.String r0 = "http://saxon.sf.net/generated-variable"
            net.sf.saxon.expr.Expression r1 = r6.getBody()
            if (r1 == 0) goto La9
            boolean r2 = r1 instanceof net.p110sf.saxon.expr.Literal
            if (r2 == 0) goto L13
            net.sf.saxon.expr.Literal r1 = (net.p110sf.saxon.expr.Literal) r1
            net.sf.saxon.om.GroundedValue r6 = r1.getGroundedValue()
            return r6
        L13:
            r2 = 1
            net.sf.saxon.Controller r3 = r7.getController()     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            net.sf.saxon.expr.instruct.Executable r3 = r3.getExecutable()     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            boolean r4 = r3 instanceof net.p110sf.saxon.PreparedStylesheet     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            if (r4 == 0) goto L31
            if (r8 == 0) goto L31
            net.sf.saxon.style.StylesheetPackage r4 = r8.getDeclaringPackage()     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            net.sf.saxon.PreparedStylesheet r3 = (net.p110sf.saxon.PreparedStylesheet) r3     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            net.sf.saxon.style.StylesheetPackage r3 = r3.getTopLevelPackage()     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            if (r4 != r3) goto L2f
            goto L31
        L2f:
            r3 = 0
            goto L32
        L31:
            r3 = r2
        L32:
            net.sf.saxon.expr.XPathContextMajor r4 = r7.newCleanContext()     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            r4.setOrigin(r6)     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            r5 = 0
            if (r3 == 0) goto L4d
            net.sf.saxon.tree.iter.ManualIterator r3 = new net.sf.saxon.tree.iter.ManualIterator     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            net.sf.saxon.Controller r7 = r7.getController()     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            net.sf.saxon.om.Item r7 = r7.getGlobalContextItem()     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            r3.<init>(r7)     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            r4.setCurrentIterator(r3)     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            goto L50
        L4d:
            r4.setCurrentIterator(r5)     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
        L50:
            net.sf.saxon.expr.instruct.SlotManager r7 = r6.getStackFrameMap()     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            if (r7 == 0) goto L5d
            net.sf.saxon.expr.instruct.SlotManager r7 = r6.getStackFrameMap()     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            r4.openStackFrame(r7)     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
        L5d:
            r4.setCurrentComponent(r8)     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            int r7 = r4.getTemporaryOutputState()     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            r8 = 218(0xda, float:3.05E-43)
            r4.setTemporaryOutputState(r8)     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            r4.setCurrentOutputUri(r5)     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            boolean r8 = r6.f99741o     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            if (r8 == 0) goto L7b
            net.sf.saxon.Configuration r8 = r4.getConfiguration()     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            r3 = 10000(0x2710, float:1.4013E-41)
            net.sf.saxon.om.GroundedValue r8 = r8.makeSequenceExtent(r1, r3, r4)     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            goto L83
        L7b:
            net.sf.saxon.om.SequenceIterator r8 = r1.iterate(r4)     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            net.sf.saxon.om.GroundedValue r8 = net.p110sf.saxon.om.SequenceTool.toGroundedValue(r8)     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
        L83:
            r4.setTemporaryOutputState(r7)     // Catch: net.p110sf.saxon.trans.XPathException -> L87 net.p110sf.saxon.trans.UncheckedXPathException -> L96
            return r8
        L87:
            r7 = move-exception
            net.sf.saxon.om.StructuredQName r6 = r6.getVariableQName()
            boolean r6 = r6.hasURI(r0)
            if (r6 != 0) goto L95
            r7.setIsGlobalError(r2)
        L95:
            throw r7
        L96:
            r7 = move-exception
            net.sf.saxon.trans.XPathException r7 = r7.getXPathException()
            net.sf.saxon.om.StructuredQName r6 = r6.getVariableQName()
            boolean r6 = r6.hasURI(r0)
            if (r6 != 0) goto La8
            r7.setIsGlobalError(r2)
        La8:
            throw r7
        La9:
            java.lang.AssertionError r7 = new java.lang.AssertionError
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "*** No select expression for global variable $"
            r8.append(r0)
            net.sf.saxon.om.StructuredQName r6 = r6.getVariableQName()
            java.lang.String r6 = r6.getDisplayName()
            r8.append(r6)
            java.lang.String r6 = "!!"
            r8.append(r6)
            java.lang.String r6 = r8.toString()
            r7.<init>(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.instruct.GlobalVariable.getSelectValue(net.sf.saxon.expr.XPathContext, net.sf.saxon.expr.Component):net.sf.saxon.om.GroundedValue");
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor
    public SymbolicName getSymbolicName() {
        return new SymbolicName(218, this.f99739m);
    }

    @Override // net.p110sf.saxon.expr.instruct.Actor, net.p110sf.saxon.trace.TraceableComponent
    public String getTracingTag() {
        return "xsl:variable";
    }

    public GlobalVariable getUltimateOriginalVariable() {
        GlobalVariable globalVariable = this.f99744r;
        return globalVariable == null ? this : globalVariable.getUltimateOriginalVariable();
    }

    @Override // net.p110sf.saxon.expr.Binding
    public StructuredQName getVariableQName() {
        return this.f99739m;
    }

    public void init(Expression expression, StructuredQName structuredQName) {
        this.f99739m = structuredQName;
        setBody(expression);
    }

    @Override // net.p110sf.saxon.expr.Binding
    public final boolean isAssignable() {
        return this.f99743q;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public boolean isGlobal() {
        return true;
    }

    public boolean isIndexedVariable() {
        return this.f99741o;
    }

    public boolean isPrivate() {
        return this.f99742p;
    }

    public boolean isRequiredParam() {
        return this.f99746t;
    }

    public boolean isStatic() {
        return this.f99747u;
    }

    public boolean isUnused() {
        return this.f99745s == -9234;
    }

    public Iterator<BindingReference> iterateReferences() {
        return this.references.iterator();
    }

    public void lookForCycles(IndexedStack<Object> indexedStack, XQueryFunctionLibrary xQueryFunctionLibrary) throws XPathException {
        if (!indexedStack.contains(this)) {
            Expression body = getBody();
            if (body != null) {
                indexedStack.push(this);
                ArrayList<Binding> arrayList = new ArrayList(10);
                ExpressionTool.gatherReferencedVariables(body, arrayList);
                for (Binding binding : arrayList) {
                    if (binding instanceof GlobalVariable) {
                        ((GlobalVariable) binding).lookForCycles(indexedStack, xQueryFunctionLibrary);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                ExpressionTool.gatherCalledFunctionNames(body, arrayList2);
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    XQueryFunction declarationByKey = xQueryFunctionLibrary.getDeclarationByKey((SymbolicName) it2.next());
                    if (!indexedStack.contains(declarationByKey)) {
                        m62774c(declarationByKey, indexedStack, xQueryFunctionLibrary);
                    }
                }
                indexedStack.pop();
                return;
            }
            return;
        }
        int indexOf = indexedStack.indexOf(this);
        indexedStack.push(this);
        StringBuilder sb = new StringBuilder("Circular definition of global variable: $" + getVariableQName().getDisplayName());
        int i = indexOf;
        while (i < indexedStack.size() - 1) {
            if (i != indexOf) {
                sb.append(", which");
            }
            i++;
            if (indexedStack.get(i) instanceof GlobalVariable) {
                GlobalVariable globalVariable = (GlobalVariable) indexedStack.get(i);
                sb.append(" uses $");
                sb.append(globalVariable.getVariableQName().getDisplayName());
            } else if (indexedStack.get(i) instanceof XQueryFunction) {
                XQueryFunction xQueryFunction = (XQueryFunction) indexedStack.get(i);
                sb.append(" calls ");
                sb.append(xQueryFunction.getFunctionName().getDisplayName());
                sb.append("#");
                sb.append(xQueryFunction.getNumberOfArguments());
                sb.append("()");
            }
        }
        XPathException xPathException = new XPathException(sb.toString() + '.');
        xPathException.setErrorCode(!getPackageData().isXSLT() ? (indexOf == 0 && indexedStack.size() == 2) ? "XPST0008" : "XQDY0054" : "XTDE0640");
        xPathException.setIsStaticError(true);
        xPathException.setLocation(getLocation());
        throw xPathException;
    }

    public void registerReference(BindingReference bindingReference) {
        this.references.add(bindingReference);
    }

    public void setAssignable(boolean z) {
        this.f99743q = z;
    }

    public void setBinderySlotNumber(int i) {
        if (isUnused()) {
            return;
        }
        this.f99745s = i;
    }

    public void setContainsLocals(SlotManager slotManager) {
        setStackFrameMap(slotManager);
    }

    public void setIndexedVariable() {
        this.f99741o = true;
    }

    public void setOriginalVariable(GlobalVariable globalVariable) {
        this.f99744r = globalVariable;
    }

    public void setPrivate(boolean z) {
        this.f99742p = z;
    }

    public void setRequiredParam(boolean z) {
        this.f99746t = z;
    }

    public void setRequiredType(SequenceType sequenceType) {
        this.f99740n = sequenceType;
    }

    public void setStatic(boolean z) {
        this.f99747u = z;
    }

    public void setUnused(boolean z) {
        this.f99745s = -9234;
    }

    public void setVariableQName(StructuredQName structuredQName) {
        this.f99739m = structuredQName;
    }

    public void typeCheck(ExpressionVisitor expressionVisitor) throws XPathException {
        Expression body = getBody();
        if (body != null) {
            body.checkForUpdatingSubexpressions();
            if (body.isUpdatingExpression()) {
                throw new XPathException("Initializing expression for global variable must not be an updating expression", "XUST0001");
            }
            RoleDiagnostic roleDiagnostic = new RoleDiagnostic(3, getVariableQName().getDisplayName(), 0);
            ContextItemStaticInfo makeContextItemStaticInfo = getConfiguration().makeContextItemStaticInfo(AnyItemType.getInstance(), true);
            Expression optimize = TypeChecker.strictTypeCheck(body.simplify().typeCheck(expressionVisitor, makeContextItemStaticInfo), getRequiredType(), roleDiagnostic, expressionVisitor.getStaticContext()).optimize(expressionVisitor, makeContextItemStaticInfo);
            setBody(optimize);
            SlotManager makeSlotManager = getConfiguration().makeSlotManager();
            if (ExpressionTool.allocateSlots(optimize, 0, makeSlotManager) > 0) {
                setContainsLocals(makeSlotManager);
            }
            if (getRequiredType() != SequenceType.ANY_SEQUENCE || (this instanceof GlobalParam)) {
                return;
            }
            try {
                ItemType itemType = body.getItemType();
                int cardinality = body.getCardinality();
                setRequiredType(SequenceType.makeSequenceType(itemType, cardinality));
                GroundedValue groundedValue = optimize instanceof Literal ? ((Literal) optimize).getGroundedValue() : null;
                for (BindingReference bindingReference : this.references) {
                    if (bindingReference instanceof VariableReference) {
                        ((VariableReference) bindingReference).refineVariableType(itemType, cardinality, groundedValue, body.getSpecialProperties());
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    @Override // net.p110sf.saxon.expr.Binding
    public GroundedValue evaluateVariable(XPathContext xPathContext) throws XPathException {
        GroundedValue globalVariable = xPathContext.getController().getBindery(getPackageData()).getGlobalVariable(getBinderySlotNumber());
        return globalVariable != null ? globalVariable : actuallyEvaluate(xPathContext, null);
    }

    public GroundedValue evaluateVariable(XPathContext xPathContext, Component component) throws XPathException {
        Bindery bindery = xPathContext.getController().getBindery(getPackageData());
        if (bindery != null) {
            GroundedValue globalVariable = bindery.getGlobalVariable(getBinderySlotNumber());
            if (globalVariable != null) {
                if (globalVariable instanceof Bindery.FailureValue) {
                    throw ((Bindery.FailureValue) globalVariable).getObject();
                }
                return globalVariable;
            }
            return actuallyEvaluate(xPathContext, component);
        }
        throw new AssertionError();
    }
}
