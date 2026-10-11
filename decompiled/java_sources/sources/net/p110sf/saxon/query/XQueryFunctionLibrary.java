package net.p110sf.saxon.query;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.UserFunctionCall;
import net.p110sf.saxon.expr.UserFunctionResolvable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.functions.hof.UnresolvedXQueryFunctionItem;
import net.p110sf.saxon.functions.hof.UserFunctionReference;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SpecificFunctionType;

/* loaded from: classes11.dex */
public class XQueryFunctionLibrary implements FunctionLibrary, XQueryFunctionBinder {

    /* renamed from: a */
    public Configuration f101091a;

    /* renamed from: b */
    public HashMap<SymbolicName, XQueryFunction> f101092b = new HashMap<>(20);

    /* loaded from: classes11.dex */
    public static class UnresolvedCallable implements UserFunctionResolvable, Callable {

        /* renamed from: e */
        public SymbolicName.C18533F f101093e;

        /* renamed from: f */
        public UserFunction f101094f;

        public UnresolvedCallable(SymbolicName.C18533F c18533f) {
            this.f101093e = c18533f;
        }

        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            if (this.f101094f == null) {
                throw new XPathException("Forwards reference to XQuery function has not been resolved");
            }
            Sequence[] sequenceArr2 = new Sequence[sequenceArr.length];
            for (int i = 0; i < sequenceArr.length; i++) {
                sequenceArr2[i] = SequenceTool.toGroundedValue(sequenceArr[i].iterate());
            }
            return this.f101094f.call(xPathContext.newCleanContext(), sequenceArr2);
        }

        public int getArity() {
            return this.f101093e.getArity();
        }

        public UserFunction getFunction() {
            return this.f101094f;
        }

        public StructuredQName getFunctionName() {
            return this.f101093e.getComponentName();
        }

        @Override // net.p110sf.saxon.expr.UserFunctionResolvable
        public void setFunction(UserFunction userFunction) {
            this.f101094f = userFunction;
        }
    }

    public XQueryFunctionLibrary(Configuration configuration) {
        this.f101091a = configuration;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Expression bind(SymbolicName.C18533F c18533f, Expression[] expressionArr, StaticContext staticContext, List<String> list) {
        XQueryFunction xQueryFunction = this.f101092b.get(c18533f);
        if (xQueryFunction == null) {
            return null;
        }
        if (xQueryFunction.isPrivate() && xQueryFunction.getStaticContext() != staticContext) {
            list.add("Cannot call the private XQuery function " + c18533f.getComponentName().getDisplayName() + " from outside its module");
            return null;
        }
        UserFunctionCall userFunctionCall = new UserFunctionCall();
        userFunctionCall.setFunctionName(xQueryFunction.getFunctionName());
        userFunctionCall.setArguments(expressionArr);
        userFunctionCall.setStaticType(xQueryFunction.getResultType());
        UserFunction userFunction = xQueryFunction.getUserFunction();
        if (userFunction == null) {
            xQueryFunction.registerReference(userFunctionCall);
        } else {
            userFunctionCall.setFunction(userFunction);
        }
        return userFunctionCall;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public FunctionLibrary copy() {
        XQueryFunctionLibrary xQueryFunctionLibrary = new XQueryFunctionLibrary(this.f101091a);
        xQueryFunctionLibrary.f101092b = new HashMap<>(this.f101092b);
        return xQueryFunctionLibrary;
    }

    public void declareFunction(XQueryFunction xQueryFunction) throws XPathException {
        SymbolicName identificationKey = xQueryFunction.getIdentificationKey();
        XQueryFunction xQueryFunction2 = this.f101092b.get(identificationKey);
        if (xQueryFunction2 == xQueryFunction) {
            return;
        }
        if (xQueryFunction2 == null) {
            this.f101092b.put(identificationKey, xQueryFunction);
            return;
        }
        XPathException xPathException = new XPathException("Duplicate definition of function " + xQueryFunction.getDisplayName() + " (see line " + xQueryFunction2.getLineNumber() + CloudStorageConstants.OPERATION_IN + xQueryFunction2.getSystemId() + ')');
        xPathException.setErrorCode("XQST0034");
        xPathException.setIsStaticError(true);
        xPathException.setLocator(xQueryFunction);
        throw xPathException;
    }

    public void explainGlobalFunctions(ExpressionPresenter expressionPresenter) throws XPathException {
        Iterator<XQueryFunction> it2 = this.f101092b.values().iterator();
        while (it2.hasNext()) {
            it2.next().explain(expressionPresenter);
        }
    }

    public void fixupGlobalFunctions(QueryModule queryModule) throws XPathException {
        ExpressionVisitor make = ExpressionVisitor.make(queryModule);
        Iterator<XQueryFunction> it2 = this.f101092b.values().iterator();
        while (it2.hasNext()) {
            it2.next().compile();
        }
        Iterator<XQueryFunction> it3 = this.f101092b.values().iterator();
        while (it3.hasNext()) {
            it3.next().checkReferences(make);
        }
    }

    public Configuration getConfiguration() {
        return this.f101091a;
    }

    @Override // net.p110sf.saxon.query.XQueryFunctionBinder
    public XQueryFunction getDeclaration(StructuredQName structuredQName, int i) {
        return this.f101092b.get(XQueryFunction.getIdentificationKey(structuredQName, i));
    }

    public XQueryFunction getDeclarationByKey(SymbolicName symbolicName) {
        return this.f101092b.get(symbolicName);
    }

    public Iterable<XQueryFunction> getFunctionDefinitions() {
        return this.f101092b.values();
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Function getFunctionItem(SymbolicName.C18533F c18533f, StaticContext staticContext) throws XPathException {
        XQueryFunction xQueryFunction = this.f101092b.get(c18533f);
        if (xQueryFunction == null) {
            return null;
        }
        if (xQueryFunction.isPrivate() && !xQueryFunction.getSystemId().equals(staticContext.getStaticBaseURI())) {
            throw new XPathException("Cannot call the private function " + c18533f.getComponentName().getDisplayName() + " from outside its module", "XPST0017");
        }
        UserFunction userFunction = xQueryFunction.getUserFunction();
        new SpecificFunctionType(xQueryFunction.getArgumentTypes(), xQueryFunction.getResultType(), xQueryFunction.getAnnotations());
        if (userFunction != null) {
            return userFunction;
        }
        UserFunction userFunction2 = new UserFunction();
        userFunction2.setFunctionName(c18533f.getComponentName());
        userFunction2.setResultType(xQueryFunction.getResultType());
        userFunction2.setParameterDefinitions(xQueryFunction.getParameterDefinitions());
        UserFunctionReference userFunctionReference = new UserFunctionReference(userFunction2);
        xQueryFunction.registerReference(userFunctionReference);
        return new UnresolvedXQueryFunctionItem(xQueryFunction, c18533f, userFunctionReference);
    }

    public UserFunction getUserDefinedFunction(String str, String str2, int i) {
        XQueryFunction xQueryFunction = this.f101092b.get(new SymbolicName.C18533F(new StructuredQName("", str, str2), i));
        if (xQueryFunction == null) {
            return null;
        }
        return xQueryFunction.getUserFunction();
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public boolean isAvailable(SymbolicName.C18533F c18533f, int i) {
        return this.f101092b.get(c18533f) != null;
    }

    public void optimizeGlobalFunctions(QueryModule queryModule) throws XPathException {
        for (XQueryFunction xQueryFunction : this.f101092b.values()) {
            if (((QueryModule) xQueryFunction.getStaticContext()).getTopLevelModule() == queryModule) {
                xQueryFunction.optimize();
            }
        }
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public void setConfiguration(Configuration configuration) {
        this.f101091a = configuration;
    }
}
