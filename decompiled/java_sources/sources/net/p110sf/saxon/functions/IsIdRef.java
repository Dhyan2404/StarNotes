package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.ExtensionFunctionCall;
import net.p110sf.saxon.lib.ExtensionFunctionDefinition;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class IsIdRef extends ExtensionFunctionDefinition {

    /* renamed from: a */
    public static final StructuredQName f100259a = new StructuredQName("", NamespaceConstant.SAXON, "is-idref");

    /* renamed from: net.sf.saxon.functions.IsIdRef$b */
    /* loaded from: classes11.dex */
    public static class C18362b extends ExtensionFunctionCall {
        public C18362b() {
        }

        @Override // net.p110sf.saxon.lib.ExtensionFunctionCall, net.p110sf.saxon.expr.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            Item contextItem = xPathContext.getContextItem();
            return BooleanValue.get((contextItem instanceof NodeInfo) && ((NodeInfo) contextItem).isIdref());
        }

        @Override // net.p110sf.saxon.lib.ExtensionFunctionCall
        public boolean effectiveBooleanValue(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            Item contextItem = xPathContext.getContextItem();
            return (contextItem instanceof NodeInfo) && ((NodeInfo) contextItem).isIdref();
        }
    }

    @Override // net.p110sf.saxon.lib.ExtensionFunctionDefinition
    public SequenceType[] getArgumentTypes() {
        return new SequenceType[0];
    }

    @Override // net.p110sf.saxon.lib.ExtensionFunctionDefinition
    public StructuredQName getFunctionQName() {
        return f100259a;
    }

    @Override // net.p110sf.saxon.lib.ExtensionFunctionDefinition
    public int getMaximumNumberOfArguments() {
        return 0;
    }

    @Override // net.p110sf.saxon.lib.ExtensionFunctionDefinition
    public int getMinimumNumberOfArguments() {
        return 0;
    }

    @Override // net.p110sf.saxon.lib.ExtensionFunctionDefinition
    public SequenceType getResultType(SequenceType[] sequenceTypeArr) {
        return SequenceType.SINGLE_BOOLEAN;
    }

    @Override // net.p110sf.saxon.lib.ExtensionFunctionDefinition
    public ExtensionFunctionCall makeCallExpression() {
        return new C18362b();
    }
}
