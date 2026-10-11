package net.p110sf.saxon.query;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class ImportedFunctionLibrary implements FunctionLibrary, XQueryFunctionBinder {

    /* renamed from: a */
    public transient QueryModule f100983a;

    /* renamed from: b */
    public final XQueryFunctionLibrary f100984b;

    /* renamed from: c */
    public final HashSet<String> f100985c = new HashSet<>(5);

    public ImportedFunctionLibrary(QueryModule queryModule, XQueryFunctionLibrary xQueryFunctionLibrary) {
        this.f100983a = queryModule;
        this.f100984b = xQueryFunctionLibrary;
    }

    public void addImportedNamespace(String str) {
        this.f100985c.add(str);
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Expression bind(SymbolicName.C18533F c18533f, Expression[] expressionArr, StaticContext staticContext, List<String> list) {
        String uri = c18533f.getComponentName().getURI();
        RetainedStaticContext retainedStaticContext = new RetainedStaticContext(staticContext);
        for (Expression expression : expressionArr) {
            if (expression.getLocalRetainedStaticContext() == null) {
                expression.setRetainedStaticContext(retainedStaticContext);
            }
        }
        if (this.f100985c.contains(uri)) {
            return this.f100984b.bind(c18533f, expressionArr, staticContext, list);
        }
        return null;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public FunctionLibrary copy() {
        ImportedFunctionLibrary importedFunctionLibrary = new ImportedFunctionLibrary(this.f100983a, this.f100984b);
        Iterator<String> it2 = this.f100985c.iterator();
        while (it2.hasNext()) {
            importedFunctionLibrary.addImportedNamespace(it2.next());
        }
        return importedFunctionLibrary;
    }

    @Override // net.p110sf.saxon.query.XQueryFunctionBinder
    public XQueryFunction getDeclaration(StructuredQName structuredQName, int i) {
        if (this.f100985c.contains(structuredQName.getURI())) {
            return this.f100984b.getDeclaration(structuredQName, i);
        }
        return null;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Function getFunctionItem(SymbolicName.C18533F c18533f, StaticContext staticContext) throws XPathException {
        if (this.f100985c.contains(c18533f.getComponentName().getURI())) {
            return this.f100984b.getFunctionItem(c18533f, staticContext);
        }
        return null;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public boolean isAvailable(SymbolicName.C18533F c18533f, int i) {
        return this.f100985c.contains(c18533f.getComponentName().getURI()) && this.f100984b.isAvailable(c18533f, i);
    }

    public void setImportingModule(QueryModule queryModule) {
        this.f100983a = queryModule;
    }
}
