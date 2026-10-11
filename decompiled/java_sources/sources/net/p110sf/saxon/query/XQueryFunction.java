package net.p110sf.saxon.query;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.ErrorExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.TailCallLoop;
import net.p110sf.saxon.expr.UserFunctionCall;
import net.p110sf.saxon.expr.UserFunctionResolvable;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.instruct.UserFunctionParameter;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.LoopLifter;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.FunctionStreamability;
import net.p110sf.saxon.trans.GlobalVariableManager;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.tree.jiter.PairIterator;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class XQueryFunction implements Declaration, Location {

    /* renamed from: e */
    public StructuredQName f101078e;

    /* renamed from: g */
    public SequenceType f101080g;

    /* renamed from: j */
    public Location f101083j;

    /* renamed from: l */
    public boolean f101085l;

    /* renamed from: m */
    public NamespaceResolver f101086m;

    /* renamed from: n */
    public QueryModule f101087n;

    /* renamed from: h */
    public Expression f101081h = null;

    /* renamed from: i */
    public List<UserFunctionResolvable> f101082i = new ArrayList(10);

    /* renamed from: k */
    public UserFunction f101084k = null;

    /* renamed from: o */
    public boolean f101088o = false;

    /* renamed from: p */
    public AnnotationList f101089p = AnnotationList.EMPTY;

    /* renamed from: f */
    public final List<UserFunctionParameter> f101079f = new ArrayList(8);

    /* renamed from: net.sf.saxon.query.XQueryFunction$a */
    /* loaded from: classes11.dex */
    public class C18437a implements GlobalVariableManager {
        public C18437a() {
        }

        @Override // net.p110sf.saxon.trans.GlobalVariableManager
        public void addGlobalVariable(GlobalVariable globalVariable) throws XPathException {
            PackageData packageData = XQueryFunction.this.f101087n.getPackageData();
            globalVariable.setPackageData(packageData);
            globalVariable.compile(XQueryFunction.this.f101087n.getExecutable(), packageData.getGlobalSlotManager().allocateSlotNumber(globalVariable.getVariableQName()));
            packageData.addGlobalVariable(globalVariable);
        }

        @Override // net.p110sf.saxon.trans.GlobalVariableManager
        public GlobalVariable getEquivalentVariable(Expression expression) {
            return null;
        }
    }

    public void addArgument(UserFunctionParameter userFunctionParameter) {
        this.f101079f.add(userFunctionParameter);
    }

    public void checkReferences(ExpressionVisitor expressionVisitor) throws XPathException {
        for (UserFunctionResolvable userFunctionResolvable : this.f101082i) {
            if (userFunctionResolvable instanceof UserFunctionCall) {
                ((UserFunctionCall) userFunctionResolvable).checkFunctionCall(this.f101084k, expressionVisitor);
            }
        }
        this.f101082i = new ArrayList(0);
    }

    public void compile() throws XPathException {
        Configuration configuration = this.f101087n.getConfiguration();
        try {
            if (this.f101084k == null) {
                SlotManager makeSlotManager = configuration.makeSlotManager();
                UserFunctionParameter[] parameterDefinitions = getParameterDefinitions();
                for (int i = 0; i < parameterDefinitions.length; i++) {
                    parameterDefinitions[i].setSlotNumber(i);
                    makeSlotManager.allocateSlotNumber(parameterDefinitions[i].getVariableQName());
                }
                RetainedStaticContext retainedStaticContext = null;
                try {
                    retainedStaticContext = getStaticContext().makeRetainedStaticContext();
                    this.f101081h.setRetainedStaticContext(retainedStaticContext);
                    ExpressionVisitor make = ExpressionVisitor.make(this.f101087n);
                    this.f101081h = this.f101081h.simplify().typeCheck(make, ContextItemStaticInfo.ABSENT);
                    this.f101081h = configuration.getTypeChecker(false).staticTypeCheck(this.f101081h, this.f101080g, new RoleDiagnostic(5, this.f101078e.getDisplayName(), 0), make);
                } catch (XPathException e) {
                    e.maybeSetLocation(this);
                    if (e.isReportableStatically()) {
                        throw e;
                    }
                    ErrorExpression errorExpression = new ErrorExpression(new XmlProcessingException(e));
                    ExpressionTool.copyLocationInfo(this.f101081h, errorExpression);
                    this.f101081h = errorExpression;
                }
                UserFunction newUserFunction = configuration.newUserFunction(this.f101085l, FunctionStreamability.UNCLASSIFIED);
                this.f101084k = newUserFunction;
                newUserFunction.setRetainedStaticContext(retainedStaticContext);
                this.f101084k.setPackageData(this.f101087n.getPackageData());
                this.f101084k.setBody(this.f101081h);
                this.f101084k.setFunctionName(this.f101078e);
                this.f101084k.setParameterDefinitions(parameterDefinitions);
                this.f101084k.setResultType(getResultType());
                this.f101084k.setLineNumber(this.f101083j.getLineNumber());
                this.f101084k.setColumnNumber(this.f101083j.getColumnNumber());
                this.f101084k.setSystemId(this.f101083j.getSystemId());
                this.f101084k.setStackFrameMap(makeSlotManager);
                this.f101084k.setUpdating(this.f101088o);
                this.f101084k.setAnnotations(this.f101089p);
                if (this.f101087n.getUserQueryContext().isCompileWithTracing()) {
                    this.f101086m = this.f101087n.getNamespaceResolver();
                    this.f101087n.getCodeInjector().process(this.f101084k);
                    this.f101081h = this.f101084k.getBody();
                }
            }
            fixupReferences();
        } catch (XPathException e2) {
            e2.maybeSetLocation(this);
            throw e2;
        }
    }

    public void explain(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("declareFunction");
        expressionPresenter.emitAttribute("name", this.f101078e.getDisplayName());
        expressionPresenter.emitAttribute("arity", "" + getNumberOfArguments());
        UserFunction userFunction = this.f101084k;
        if (userFunction == null) {
            expressionPresenter.emitAttribute("unreferenced", "true");
        } else {
            if (userFunction.isMemoFunction()) {
                expressionPresenter.emitAttribute("memo", "true");
            }
            expressionPresenter.emitAttribute("tailRecursive", this.f101084k.isTailRecursive() ? "true" : "false");
            this.f101081h.export(expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    public void fixupReferences() {
        Iterator<UserFunctionResolvable> it2 = this.f101082i.iterator();
        while (it2.hasNext()) {
            it2.next().setFunction(this.f101084k);
        }
    }

    public AnnotationList getAnnotations() {
        return this.f101089p;
    }

    public SequenceType[] getArgumentTypes() {
        SequenceType[] sequenceTypeArr = new SequenceType[this.f101079f.size()];
        for (int i = 0; i < this.f101079f.size(); i++) {
            sequenceTypeArr[i] = this.f101079f.get(i).getRequiredType();
        }
        return sequenceTypeArr;
    }

    public Expression getBody() {
        return this.f101081h;
    }

    @Override // javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        return -1;
    }

    public String getDisplayName() {
        return this.f101078e.getDisplayName();
    }

    public StructuredQName getFunctionName() {
        return this.f101078e;
    }

    public HostLanguage getHostLanguage() {
        return HostLanguage.XQUERY;
    }

    public SymbolicName getIdentificationKey() {
        return new SymbolicName.C18533F(this.f101078e, this.f101079f.size());
    }

    @Override // javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return this.f101083j.getLineNumber();
    }

    public NamespaceResolver getNamespaceResolver() {
        return this.f101086m;
    }

    public int getNumberOfArguments() {
        return this.f101079f.size();
    }

    public StructuredQName getObjectName() {
        return this.f101078e;
    }

    public PackageData getPackageData() {
        return this.f101087n.getPackageData();
    }

    public UserFunctionParameter[] getParameterDefinitions() {
        return (UserFunctionParameter[]) this.f101079f.toArray(new UserFunctionParameter[this.f101079f.size()]);
    }

    public Iterator<String> getProperties() {
        return new PairIterator("name", "as");
    }

    public Object getProperty(String str) {
        if ("name".equals(str)) {
            return this.f101078e.getDisplayName();
        }
        if ("as".equals(str)) {
            return this.f101080g.toString();
        }
        return null;
    }

    @Override // javax.xml.transform.SourceLocator
    public String getPublicId() {
        return null;
    }

    public SequenceType getResultType() {
        return this.f101080g;
    }

    public StaticContext getStaticContext() {
        return this.f101087n;
    }

    @Override // javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.f101083j.getSystemId();
    }

    public UserFunction getUserFunction() {
        return this.f101084k;
    }

    public boolean hasAnnotation(StructuredQName structuredQName) {
        return this.f101089p.includes(structuredQName);
    }

    public boolean isMemoFunction() {
        return this.f101085l;
    }

    public boolean isPrivate() {
        return hasAnnotation(Annotation.PRIVATE);
    }

    public boolean isUpdating() {
        return this.f101088o;
    }

    public void optimize() throws XPathException {
        int markTailFunctionCalls;
        this.f101081h.checkForUpdatingSubexpressions();
        if (this.f101088o) {
            if (ExpressionTool.isNotAllowedInUpdatingContext(this.f101081h)) {
                XPathException xPathException = new XPathException("The body of an updating function must be an updating expression", "XUST0002");
                xPathException.setLocator(this.f101081h.getLocation());
                throw xPathException;
            }
        } else if (this.f101081h.isUpdatingExpression()) {
            XPathException xPathException2 = new XPathException("The body of a non-updating function must be a non-updating expression", "XUST0001");
            xPathException2.setLocator(this.f101081h.getLocation());
            throw xPathException2;
        }
        ExpressionVisitor make = ExpressionVisitor.make(this.f101087n);
        this.f101087n.getConfiguration();
        Optimizer obtainOptimizer = make.obtainOptimizer();
        int size = this.f101079f.size();
        if (obtainOptimizer.isOptionSet(256)) {
            this.f101081h = this.f101081h.optimize(make, ContextItemStaticInfo.ABSENT);
        }
        this.f101081h.setParentExpression(null);
        if (obtainOptimizer.isOptionSet(1)) {
            this.f101081h = LoopLifter.process(this.f101081h, make, ContextItemStaticInfo.ABSENT);
        }
        if (obtainOptimizer.isOptionSet(2)) {
            if (obtainOptimizer.promoteExpressionsToGlobal(this.f101081h, new C18437a(), make) != null) {
                this.f101081h = this.f101081h.optimize(make, ContextItemStaticInfo.ABSENT);
            }
        }
        if (obtainOptimizer.getOptimizerOptions().isSet(16384) && !this.f101088o && (markTailFunctionCalls = ExpressionTool.markTailFunctionCalls(this.f101081h, this.f101078e, size)) != 0) {
            this.f101084k.setBody(this.f101081h);
            this.f101084k.setTailRecursive(markTailFunctionCalls > 0, markTailFunctionCalls > 1);
            this.f101081h = new TailCallLoop(this.f101084k, this.f101081h);
        }
        this.f101084k.setBody(this.f101081h);
        this.f101084k.computeEvaluationMode();
        ExpressionTool.allocateSlots(this.f101081h, size, this.f101084k.getStackFrameMap());
    }

    public void registerReference(UserFunctionResolvable userFunctionResolvable) {
        this.f101082i.add(userFunctionResolvable);
    }

    @Override // net.p110sf.saxon.s9api.Location
    public Location saveLocation() {
        return this;
    }

    public void setAnnotations(AnnotationList annotationList) {
        this.f101089p = annotationList;
        UserFunction userFunction = this.f101084k;
        if (userFunction != null) {
            userFunction.setAnnotations(annotationList);
        }
        if (annotationList.includes(Annotation.UPDATING)) {
            setUpdating(true);
        }
    }

    public void setBody(Expression expression) {
        this.f101081h = expression;
    }

    public void setFunctionName(StructuredQName structuredQName) {
        this.f101078e = structuredQName;
    }

    public void setLocation(Location location) {
        this.f101083j = location;
    }

    public void setMemoFunction(boolean z) {
        this.f101085l = z;
    }

    public void setResultType(SequenceType sequenceType) {
        this.f101080g = sequenceType;
    }

    public void setStaticContext(QueryModule queryModule) {
        this.f101087n = queryModule;
    }

    public void setUpdating(boolean z) {
        this.f101088o = z;
    }

    public static SymbolicName getIdentificationKey(StructuredQName structuredQName, int i) {
        return new SymbolicName.C18533F(structuredQName, i);
    }
}
