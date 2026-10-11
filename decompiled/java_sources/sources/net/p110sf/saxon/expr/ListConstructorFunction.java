package net.p110sf.saxon.expr;

import net.p110sf.saxon.functions.AbstractFunction;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.EmptyAtomicSequence;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.ListType;
import net.p110sf.saxon.type.MissingComponentException;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.type.ValidationFailure;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class ListConstructorFunction extends AbstractFunction {
    protected boolean allowEmpty;
    protected SimpleType memberType;
    protected NamespaceResolver nsResolver;
    protected ListType targetType;

    public ListConstructorFunction(ListType listType, NamespaceResolver namespaceResolver, boolean z) throws MissingComponentException {
        this.targetType = listType;
        this.nsResolver = namespaceResolver;
        this.allowEmpty = z;
        this.memberType = listType.getItemType();
    }

    @Override // net.p110sf.saxon.om.Function
    public int getArity() {
        return 1;
    }

    @Override // net.p110sf.saxon.om.Function
    public String getDescription() {
        return getFunctionName().getDisplayName();
    }

    @Override // net.p110sf.saxon.om.Function
    public FunctionItemType getFunctionItemType() {
        ItemType itemType = BuiltInAtomicType.ANY_ATOMIC;
        if (this.memberType.isAtomicType()) {
            itemType = (AtomicType) this.memberType;
        }
        return new SpecificFunctionType(new SequenceType[]{this.allowEmpty ? SequenceType.OPTIONAL_ATOMIC : SequenceType.SINGLE_ATOMIC}, SequenceType.makeSequenceType(itemType, 57344));
    }

    @Override // net.p110sf.saxon.om.Function
    public StructuredQName getFunctionName() {
        return this.targetType.getStructuredQName();
    }

    public SimpleType getMemberType() {
        return this.memberType;
    }

    public ListType getTargetType() {
        return this.targetType;
    }

    public boolean isAllowEmpty() {
        return this.allowEmpty;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public AtomicSequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        AtomicValue atomicValue = (AtomicValue) sequenceArr[0].head();
        if (atomicValue == null) {
            if (this.allowEmpty) {
                return EmptyAtomicSequence.getInstance();
            }
            XPathException xPathException = new XPathException("Cast expression does not allow an empty sequence to be supplied", "XPTY0004");
            xPathException.setIsTypeError(true);
            throw xPathException;
        }
        if ((atomicValue instanceof StringValue) && !(atomicValue instanceof AnyURIValue)) {
            ConversionRules conversionRules = xPathContext.getConfiguration().getConversionRules();
            UnicodeString unicodeStringValue = atomicValue.getUnicodeStringValue();
            ValidationFailure validateContent = this.targetType.validateContent(unicodeStringValue, this.nsResolver, conversionRules);
            if (validateContent == null) {
                return this.targetType.getTypedValue(unicodeStringValue, this.nsResolver, conversionRules);
            }
            throw validateContent.makeException();
        }
        XPathException xPathException2 = new XPathException("Only xs:string and xs:untypedAtomic can be cast to a list type", "XPTY0004");
        xPathException2.setIsTypeError(true);
        throw xPathException2;
    }
}
