package net.p110sf.saxon.sxpath;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.instruct.Executable;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.LoopLifter;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.functions.registry.ConstructorFunctionLibrary;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Type;

/* loaded from: classes11.dex */
public class XPathEvaluator {

    /* renamed from: a */
    public XPathStaticContext f102160a;

    public XPathEvaluator(Configuration configuration) {
        this.f102160a = new IndependentContext(configuration);
    }

    public XPathExpression createExpression(String str) throws XPathException {
        Configuration configuration = getConfiguration();
        Executable executable = new Executable(configuration);
        executable.setTopLevelPackage(this.f102160a.getPackageData());
        executable.setSchemaAware(this.f102160a.getPackageData().isSchemaAware());
        executable.setHostLanguage(HostLanguage.XPATH);
        FunctionLibraryList functionLibrary = executable.getFunctionLibrary();
        FunctionLibraryList functionLibraryList = new FunctionLibraryList();
        functionLibraryList.addFunctionLibrary(configuration.getXPath31FunctionSet());
        functionLibraryList.addFunctionLibrary(configuration.getBuiltInExtensionLibraryList());
        functionLibraryList.addFunctionLibrary(new ConstructorFunctionLibrary(configuration));
        functionLibraryList.addFunctionLibrary(configuration.getIntegratedFunctionLibrary());
        configuration.addExtensionBinders(functionLibraryList);
        if (functionLibrary != null) {
            functionLibraryList.addFunctionLibrary(functionLibrary);
        }
        executable.setFunctionLibrary(functionLibraryList);
        Optimizer obtainOptimizer = configuration.obtainOptimizer();
        Expression make = ExpressionTool.make(str, this.f102160a, 0, -1, null);
        RetainedStaticContext makeRetainedStaticContext = this.f102160a.makeRetainedStaticContext();
        make.setRetainedStaticContext(makeRetainedStaticContext);
        ExpressionVisitor make2 = ExpressionVisitor.make(this.f102160a);
        ContextItemStaticInfo makeContextItemStaticInfo = configuration.makeContextItemStaticInfo(this.f102160a.getRequiredContextItemType(), true);
        makeContextItemStaticInfo.setParentless(this.f102160a.isContextItemParentless());
        Expression typeCheck = make.typeCheck(make2, makeContextItemStaticInfo);
        if (obtainOptimizer.isOptionSet(256)) {
            typeCheck = typeCheck.optimize(make2, makeContextItemStaticInfo);
        }
        if (obtainOptimizer.isOptionSet(1)) {
            typeCheck.setParentExpression(null);
            typeCheck = LoopLifter.process(typeCheck, make2, makeContextItemStaticInfo);
        }
        Expression postProcess = postProcess(typeCheck, make2, makeContextItemStaticInfo);
        postProcess.setRetainedStaticContext(makeRetainedStaticContext);
        SlotManager stackFrameMap = this.f102160a.getStackFrameMap();
        int numberOfVariables = stackFrameMap.getNumberOfVariables();
        ExpressionTool.allocateSlots(postProcess, numberOfVariables, stackFrameMap);
        XPathExpression xPathExpression = new XPathExpression(this.f102160a, postProcess, executable);
        xPathExpression.setStackFrameMap(stackFrameMap, numberOfVariables);
        return xPathExpression;
    }

    public XPathExpression createPattern(String str) throws XPathException {
        Configuration configuration = getConfiguration();
        Executable executable = new Executable(configuration);
        Pattern make = Pattern.make(str, this.f102160a, new PackageData(configuration));
        make.typeCheck(ExpressionVisitor.make(this.f102160a), configuration.makeContextItemStaticInfo(Type.NODE_TYPE, true));
        SlotManager stackFrameMap = this.f102160a.getStackFrameMap();
        int allocateSlots = make.allocateSlots(stackFrameMap, stackFrameMap.getNumberOfVariables());
        XPathExpression xPathExpression = new XPathExpression(this.f102160a, make, executable);
        xPathExpression.setStackFrameMap(stackFrameMap, allocateSlots);
        return xPathExpression;
    }

    public Configuration getConfiguration() {
        return this.f102160a.getConfiguration();
    }

    public XPathStaticContext getStaticContext() {
        return this.f102160a;
    }

    public Expression postProcess(Expression expression, ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return expression;
    }

    public void setStaticContext(XPathStaticContext xPathStaticContext) {
        this.f102160a = xPathStaticContext;
    }
}
