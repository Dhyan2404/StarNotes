package net.p110sf.saxon.expr;

import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.functions.AbstractFunction;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.EmptyAtomicSequence;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.PlainType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.type.UnionType;
import net.p110sf.saxon.type.ValidationException;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class UnionConstructorFunction extends AbstractFunction {
    protected boolean allowEmpty;
    protected NamespaceResolver resolver;
    protected UnionType targetType;

    public UnionConstructorFunction(UnionType unionType, NamespaceResolver namespaceResolver, boolean z) {
        this.targetType = unionType;
        this.resolver = namespaceResolver;
        this.allowEmpty = z;
    }

    public AtomicSequence cast(AtomicValue atomicValue, XPathContext xPathContext) throws XPathException {
        Converter converter;
        ConversionRules conversionRules = xPathContext.getConfiguration().getConversionRules();
        atomicValue.getClass();
        if ((atomicValue instanceof StringValue) && !(atomicValue instanceof AnyURIValue)) {
            try {
                return this.targetType.getTypedValue(atomicValue.getUnicodeStringValue(), this.resolver, conversionRules);
            } catch (ValidationException e) {
                e.setErrorCode("FORG0001");
                throw e;
            }
        }
        AtomicType itemType = atomicValue.getItemType();
        List<? extends PlainType> plainMemberTypes = this.targetType.getPlainMemberTypes();
        if (this.targetType.isPlainType()) {
            Iterator<T> it2 = plainMemberTypes.iterator();
            while (it2.hasNext()) {
                if (itemType.equals((PlainType) it2.next())) {
                    return atomicValue;
                }
            }
            for (PlainType plainType : plainMemberTypes) {
                AtomicType atomicType = itemType;
                while (atomicType != null) {
                    if (atomicType.equals(plainType)) {
                        return atomicValue;
                    }
                    atomicType = atomicType.getBaseType() instanceof AtomicType ? (AtomicType) atomicType.getBaseType() : null;
                }
            }
        }
        for (PlainType plainType2 : plainMemberTypes) {
            if ((plainType2 instanceof AtomicType) && (converter = conversionRules.getConverter(atomicValue.getItemType(), (AtomicType) plainType2)) != null) {
                ConversionResult convert = converter.convert(atomicValue);
                if (!(convert instanceof AtomicValue)) {
                    continue;
                } else if (!this.targetType.isPlainType()) {
                    AtomicValue atomicValue2 = (AtomicValue) convert;
                    if (this.targetType.checkAgainstFacets(atomicValue2, conversionRules) == null) {
                        return atomicValue2;
                    }
                } else {
                    return (AtomicValue) convert;
                }
            }
        }
        throw new XPathException("Cannot convert the supplied value to " + this.targetType.getDescription(), "FORG0001");
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
        return new SpecificFunctionType(new SequenceType[]{this.allowEmpty ? SequenceType.OPTIONAL_ATOMIC : SequenceType.SINGLE_ATOMIC}, this.targetType.getResultTypeOfCast());
    }

    @Override // net.p110sf.saxon.om.Function
    public StructuredQName getFunctionName() {
        return this.targetType.getTypeName();
    }

    public NamespaceResolver getNamespaceResolver() {
        return this.resolver;
    }

    public OperandRole getOperandRole() {
        return OperandRole.SINGLE_ATOMIC;
    }

    public UnionType getTargetType() {
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
        return cast(atomicValue, xPathContext);
    }

    public static AtomicSequence cast(AtomicValue atomicValue, UnionType unionType, NamespaceResolver namespaceResolver, ConversionRules conversionRules) throws XPathException {
        Converter converter;
        atomicValue.getClass();
        if ((atomicValue instanceof StringValue) && !(atomicValue instanceof AnyURIValue)) {
            try {
                return unionType.getTypedValue(atomicValue.getUnicodeStringValue(), namespaceResolver, conversionRules);
            } catch (ValidationException e) {
                e.setErrorCode("FORG0001");
                throw e;
            }
        }
        AtomicType itemType = atomicValue.getItemType();
        List<? extends PlainType> plainMemberTypes = unionType.getPlainMemberTypes();
        Iterator<T> it2 = plainMemberTypes.iterator();
        while (it2.hasNext()) {
            if (itemType.equals((PlainType) it2.next())) {
                return atomicValue;
            }
        }
        for (PlainType plainType : plainMemberTypes) {
            AtomicType atomicType = itemType;
            while (atomicType != null) {
                if (atomicType.equals(plainType)) {
                    return atomicValue;
                }
                atomicType = atomicType.getBaseType() instanceof AtomicType ? (AtomicType) atomicType.getBaseType() : null;
            }
        }
        for (PlainType plainType2 : plainMemberTypes) {
            if ((plainType2 instanceof AtomicType) && (converter = conversionRules.getConverter(atomicValue.getItemType(), (AtomicType) plainType2)) != null) {
                ConversionResult convert = converter.convert(atomicValue);
                if (convert instanceof AtomicValue) {
                    return (AtomicValue) convert;
                }
            }
        }
        throw new XPathException("Cannot convert the supplied value to " + unionType.getDescription(), "FORG0001");
    }
}
