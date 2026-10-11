package net.p110sf.saxon.functions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.XQueryFunction;
import net.p110sf.saxon.query.XQueryFunctionBinder;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class FunctionLibraryList implements FunctionLibrary, XQueryFunctionBinder {
    public List<FunctionLibrary> libraryList = new ArrayList(8);

    /* renamed from: a */
    public static ArrayList<FunctionLibrary> m63015a(int i) {
        return new ArrayList<>(i);
    }

    public int addFunctionLibrary(FunctionLibrary functionLibrary) {
        this.libraryList.add(functionLibrary);
        return this.libraryList.size() - 1;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Expression bind(SymbolicName.C18533F c18533f, Expression[] expressionArr, StaticContext staticContext, List<String> list) {
        boolean booleanProperty = staticContext.getConfiguration().getBooleanProperty(Feature.TRACE_EXTERNAL_FUNCTIONS);
        Logger logger = staticContext.getConfiguration().getLogger();
        if (booleanProperty) {
            logger.info("Looking for function " + c18533f.getComponentName().getEQName() + "#" + c18533f.getArity());
        }
        for (FunctionLibrary functionLibrary : this.libraryList) {
            if (booleanProperty) {
                logger.info("Trying " + functionLibrary.getClass().getName());
            }
            Expression bind = functionLibrary.bind(c18533f, expressionArr, staticContext, list);
            if (bind != null) {
                return bind;
            }
        }
        if (!booleanProperty) {
            return null;
        }
        logger.info("Function " + c18533f.getComponentName().getEQName() + " not found!");
        return null;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public FunctionLibrary copy() {
        FunctionLibraryList functionLibraryList = new FunctionLibraryList();
        functionLibraryList.libraryList = m63015a(this.libraryList.size());
        for (int i = 0; i < this.libraryList.size(); i++) {
            functionLibraryList.libraryList.add(this.libraryList.get(i).copy());
        }
        return functionLibraryList;
    }

    public FunctionLibrary get(int i) {
        return this.libraryList.get(i);
    }

    @Override // net.p110sf.saxon.query.XQueryFunctionBinder
    public XQueryFunction getDeclaration(StructuredQName structuredQName, int i) {
        XQueryFunction declaration;
        for (FunctionLibrary functionLibrary : this.libraryList) {
            if ((functionLibrary instanceof XQueryFunctionBinder) && (declaration = ((XQueryFunctionBinder) functionLibrary).getDeclaration(structuredQName, i)) != null) {
                return declaration;
            }
        }
        return null;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Function getFunctionItem(SymbolicName.C18533F c18533f, StaticContext staticContext) throws XPathException {
        Iterator<FunctionLibrary> it2 = this.libraryList.iterator();
        while (it2.hasNext()) {
            Function functionItem = it2.next().getFunctionItem(c18533f, staticContext);
            if (functionItem != null) {
                return functionItem;
            }
        }
        return null;
    }

    public List<FunctionLibrary> getLibraryList() {
        return this.libraryList;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public boolean isAvailable(SymbolicName.C18533F c18533f, int i) {
        Iterator<FunctionLibrary> it2 = this.libraryList.iterator();
        while (it2.hasNext()) {
            if (it2.next().isAvailable(c18533f, i)) {
                return true;
            }
        }
        return false;
    }
}
