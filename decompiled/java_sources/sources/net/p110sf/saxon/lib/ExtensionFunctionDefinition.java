package net.p110sf.saxon.lib;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.AbstractFunction;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public abstract class ExtensionFunctionDefinition {

    /* renamed from: net.sf.saxon.lib.ExtensionFunctionDefinition$a */
    /* loaded from: classes11.dex */
    public static class C18393a extends AbstractFunction {

        /* renamed from: e */
        public final ExtensionFunctionDefinition f100499e;

        /* renamed from: f */
        public final int f100500f;

        public C18393a(ExtensionFunctionDefinition extensionFunctionDefinition, int i) {
            this.f100499e = extensionFunctionDefinition;
            this.f100500f = i;
        }

        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            if (sequenceArr.length == this.f100500f) {
                return this.f100499e.makeCallExpression().call(xPathContext, sequenceArr);
            }
            throw new XPathException("Wrong number of arguments in call to " + this.f100499e.getFunctionQName().getDisplayName(), "XPTY0004");
        }

        @Override // net.p110sf.saxon.om.Function
        public int getArity() {
            return this.f100500f;
        }

        @Override // net.p110sf.saxon.om.Function
        public String getDescription() {
            return this.f100499e.getFunctionQName().getDisplayName();
        }

        @Override // net.p110sf.saxon.om.Function
        public FunctionItemType getFunctionItemType() {
            SequenceType[] argumentTypes = this.f100499e.getArgumentTypes();
            ExtensionFunctionDefinition extensionFunctionDefinition = this.f100499e;
            return new SpecificFunctionType(argumentTypes, extensionFunctionDefinition.getResultType(extensionFunctionDefinition.getArgumentTypes()));
        }

        @Override // net.p110sf.saxon.om.Function
        public StructuredQName getFunctionName() {
            return this.f100499e.getFunctionQName();
        }

        @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
        public boolean isTrustedResultType() {
            return this.f100499e.trustResultType();
        }
    }

    public final Function asFunction(int i) {
        return new C18393a(this, i);
    }

    public boolean dependsOnFocus() {
        return false;
    }

    public abstract SequenceType[] getArgumentTypes();

    public abstract StructuredQName getFunctionQName();

    public int getMaximumNumberOfArguments() {
        return getMinimumNumberOfArguments();
    }

    public int getMinimumNumberOfArguments() {
        return getArgumentTypes().length;
    }

    public abstract SequenceType getResultType(SequenceType[] sequenceTypeArr);

    public boolean hasSideEffects() {
        return false;
    }

    public abstract ExtensionFunctionCall makeCallExpression();

    public boolean trustResultType() {
        return false;
    }
}
