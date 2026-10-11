package net.p110sf.saxon.value;

import java.util.Iterator;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.expr.sort.CodepointCollator;
import net.p110sf.saxon.expr.sort.SimpleTypeComparison;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.functions.AccessorFn;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.IdentityComparable;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.SingleAtomicIterator;
import net.p110sf.saxon.tree.jiter.MonoIterator;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ComplexType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.type.ValidationFailure;

/* loaded from: classes11.dex */
public abstract class AtomicValue implements Item, AtomicSequence, ConversionResult, IdentityComparable {
    protected AtomicType typeLabel;

    @Override // net.p110sf.saxon.type.ConversionResult
    public AtomicValue asAtomic() {
        return this;
    }

    public AtomicMatchKey asMapKey() {
        try {
            return getXPathMatchKey(CodepointCollator.getInstance(), Integer.MIN_VALUE);
        } catch (NoDynamicContextException unused) {
            throw new IllegalStateException("No implicit timezone available");
        }
    }

    @Override // net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        return this;
    }

    public void checkPermittedContents(SchemaType schemaType, StaticContext staticContext, boolean z) throws XPathException {
        SimpleType simpleType;
        if (z) {
            if (schemaType instanceof SimpleType) {
                simpleType = (SimpleType) schemaType;
            } else {
                if (schemaType instanceof ComplexType) {
                    ComplexType complexType = (ComplexType) schemaType;
                    if (complexType.isSimpleContent()) {
                        simpleType = complexType.getSimpleContentType();
                    }
                }
                simpleType = null;
            }
            if (simpleType != null && !simpleType.isNamespaceSensitive()) {
                ValidationFailure validateContent = simpleType.validateContent(getUnicodeStringValue(), null, staticContext.getConfiguration().getConversionRules());
                if (validateContent != null) {
                    throw validateContent.makeException();
                }
                return;
            }
        }
        if (schemaType instanceof ComplexType) {
            ComplexType complexType2 = (ComplexType) schemaType;
            if (complexType2.isSimpleContent() || complexType2.isMixedContent() || Whitespace.isAllWhite(getUnicodeStringValue())) {
                return;
            }
            XPathException xPathException = new XPathException("Complex type " + schemaType.getDescription() + " does not allow text content " + Err.wrap(getUnicodeStringValue()));
            xPathException.setIsTypeError(true);
            throw xPathException;
        }
    }

    public void checkValidInJavascript() throws XPathException {
    }

    public abstract AtomicValue copyAsSubType(AtomicType atomicType);

    @Override // net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() throws XPathException {
        XPathException xPathException = new XPathException("Effective boolean value is not defined for an atomic value of type " + Type.displayTypeName(this));
        xPathException.setIsTypeError(true);
        xPathException.setErrorCode("FORG0006");
        throw xPathException;
    }

    public boolean equals(Object obj) {
        throw new UnsupportedOperationException("equals() not implemented");
    }

    @Override // net.p110sf.saxon.om.AtomicSequence
    public UnicodeString getCanonicalLexicalRepresentation() {
        return getUnicodeStringValue();
    }

    public final int getCardinality() {
        return 16384;
    }

    public AtomicValue getComponent(AccessorFn.Component component) throws XPathException {
        throw new UnsupportedOperationException("Data type does not support component extraction");
    }

    @Override // net.p110sf.saxon.om.Item
    public final Genre getGenre() {
        return Genre.ATOMIC;
    }

    public final AtomicType getItemType() {
        return this.typeLabel;
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public int getLength() {
        return 1;
    }

    public abstract UnicodeString getPrimitiveStringValue();

    public abstract BuiltInAtomicType getPrimitiveType();

    public final UType getUType() {
        return getItemType().getUType();
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        UnicodeString primitiveStringValue = getPrimitiveStringValue();
        try {
            return this.typeLabel.postprocess(primitiveStringValue);
        } catch (XPathException unused) {
            return primitiveStringValue;
        }
    }

    public abstract XPathComparable getXPathComparable(StringCollator stringCollator, int i) throws NoDynamicContextException;

    public abstract AtomicMatchKey getXPathMatchKey(StringCollator stringCollator, int i) throws NoDynamicContextException;

    public int hashCode() {
        throw new UnsupportedOperationException("hashCode() not implemented");
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public final AtomicValue head() {
        return this;
    }

    @Override // net.p110sf.saxon.om.IdentityComparable
    public int identityHashCode() {
        return hashCode();
    }

    public boolean isIdentical(AtomicValue atomicValue) {
        return SimpleTypeComparison.getInstance().equal((AtomicSequence) this, (AtomicSequence) atomicValue);
    }

    public boolean isNaN() {
        return false;
    }

    public boolean isUntypedAtomic() {
        return this.typeLabel == BuiltInAtomicType.UNTYPED_ATOMIC;
    }

    @Override // java.lang.Iterable
    public Iterator<AtomicValue> iterator() {
        return new MonoIterator(this);
    }

    public void setTypeLabel(AtomicType atomicType) {
        this.typeLabel = atomicType;
    }

    public String show() {
        return this.typeLabel + "(\"" + getUnicodeStringValue() + "\")";
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public String toShortString() {
        return show();
    }

    public String toString() {
        return getStringValue();
    }

    @Override // net.p110sf.saxon.om.IdentityComparable
    public boolean isIdentical(IdentityComparable identityComparable) {
        return (identityComparable instanceof AtomicValue) && isIdentical((AtomicValue) identityComparable);
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public final AtomicValue itemAt(int i) {
        if (i == 0) {
            return head();
        }
        return null;
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public SingleAtomicIterator iterate() {
        return (SingleAtomicIterator) SingleAtomicIterator.makeIterator(this);
    }
}
