package net.p110sf.saxon.functions.registry;

import java.io.InputStream;
import java.util.ArrayList;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trans.PackageLoaderHE;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class SefFunction extends SystemFunction {

    /* renamed from: h */
    public static final String f100422h = "http://ns.saxonica.com/xpath-functions";
    protected SymbolicName.C18533F functionAlias;
    protected StylesheetPackage pack;

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        for (int i = 0; i < sequenceArr.length; i++) {
            sequenceArr[i] = sequenceArr[i].materialize();
        }
        return callFunction(xPathContext, this.functionAlias, sequenceArr);
    }

    public Sequence callFunction(XPathContext xPathContext, SymbolicName.C18533F c18533f, Sequence[] sequenceArr) throws XPathException {
        if (this.pack == null) {
            PackageLoaderHE packageLoaderHE = new PackageLoaderHE(xPathContext.getConfiguration());
            ArrayList<String> arrayList = new ArrayList();
            InputStream locateResource = Version.platform.locateResource("sef/function-library.sef.xml", arrayList);
            if (locateResource == null) {
                StringBuilder sb = new StringBuilder("Failed to load built-in function library: function-library.sef.xml");
                for (String str : arrayList) {
                    sb.append(": ");
                    sb.append(str);
                }
                throw new XPathException(sb.toString());
            }
            this.pack = packageLoaderHE.loadPackage(new StreamSource(locateResource));
        }
        Component component = this.pack.getComponent(c18533f);
        if (component == null) {
            throw new XPathException("Built-in XSLT function " + getDetails().name.getEQName() + " not found");
        }
        if (component.isHiddenAbstractComponent()) {
            throw new XPathException("Cannot call an abstract function (" + c18533f.getComponentName().getDisplayName() + ") with no implementation", "XTDE3052");
        }
        UserFunction userFunction = (UserFunction) component.getActor();
        XPathContextMajor makeNewContext = userFunction.makeNewContext(xPathContext, (ContextOriginator) null);
        makeNewContext.setCurrentComponent(component);
        try {
            return userFunction.call(makeNewContext, sequenceArr);
        } catch (UncheckedXPathException e) {
            throw e.getXPathException();
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression... expressionArr) {
        SystemFunctionCall systemFunctionCall = new SystemFunctionCall(this, expressionArr);
        systemFunctionCall.setRetainedStaticContext(getRetainedStaticContext());
        return systemFunctionCall;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public void setDetails(BuiltInFunctionSet.Entry entry) {
        super.setDetails(entry);
        this.functionAlias = new SymbolicName.C18533F(new StructuredQName("", f100422h, getDetails().name.getLocalPart()), getDetails().arity);
    }
}
