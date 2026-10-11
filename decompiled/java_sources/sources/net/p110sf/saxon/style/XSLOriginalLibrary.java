package net.p110sf.saxon.style;

import java.util.List;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.StaticFunctionCall;
import net.p110sf.saxon.expr.instruct.OriginalFunction;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.linked.NodeImpl;

/* loaded from: classes11.dex */
public class XSLOriginalLibrary implements FunctionLibrary {

    /* renamed from: a */
    public static final XSLOriginalLibrary f102071a = new XSLOriginalLibrary();
    public static StructuredQName XSL_ORIGINAL = new StructuredQName("xsl", "http://www.w3.org/1999/XSL/Transform", "original");

    public static XSLOriginalLibrary getInstance() {
        return f102071a;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Expression bind(SymbolicName.C18533F c18533f, Expression[] expressionArr, StaticContext staticContext, List<String> list) {
        try {
            Function functionItem = getFunctionItem(c18533f, staticContext);
            if (functionItem == null) {
                return null;
            }
            return new StaticFunctionCall(functionItem, expressionArr);
        } catch (XPathException e) {
            list.add(e.getMessage());
            return null;
        }
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public FunctionLibrary copy() {
        return this;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Function getFunctionItem(SymbolicName.C18533F c18533f, StaticContext staticContext) throws XPathException {
        if (c18533f.getComponentKind() != 160 || !c18533f.getComponentName().hasURI("http://www.w3.org/1999/XSL/Transform") || !c18533f.getComponentName().getLocalPart().equals("original") || !(staticContext instanceof ExpressionContext)) {
            return null;
        }
        StyleElement styleElement = ((ExpressionContext) staticContext).getStyleElement();
        while (!(styleElement instanceof XSLFunction)) {
            NodeImpl parent = styleElement.getParent();
            if (!(parent instanceof StyleElement)) {
                return null;
            }
            styleElement = (StyleElement) parent;
        }
        SymbolicName.C18533F symbolicName = ((XSLFunction) styleElement).getSymbolicName();
        Component component = ((XSLUsePackage) ((XSLOverride) styleElement.getParent()).getParent()).getUsedPackage().getComponent(symbolicName);
        if (component != null) {
            return new OriginalFunction(component);
        }
        throw new XPathException("Function " + symbolicName + " does not exist in used package", "XTSE3058");
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public boolean isAvailable(SymbolicName.C18533F c18533f, int i) {
        return false;
    }
}
