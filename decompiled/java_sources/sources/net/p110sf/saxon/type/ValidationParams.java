package net.p110sf.saxon.type;

import java.util.HashMap;
import java.util.Map;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.sxpath.XPathDynamicContext;
import net.p110sf.saxon.sxpath.XPathVariable;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class ValidationParams extends HashMap<StructuredQName, Sequence> {
    public ValidationParams() {
        super(20);
    }

    public static void setValidationParams(Map<StructuredQName, XPathVariable> map, ValidationParams validationParams, XPathDynamicContext xPathDynamicContext) throws XPathException {
        for (StructuredQName structuredQName : map.keySet()) {
            XPathVariable xPathVariable = map.get(structuredQName);
            Sequence sequence = validationParams.get(structuredQName);
            if (sequence != null) {
                xPathDynamicContext.setVariable(xPathVariable, sequence);
            } else {
                xPathDynamicContext.setVariable(xPathVariable, xPathVariable.getDefaultValue());
            }
        }
    }
}
