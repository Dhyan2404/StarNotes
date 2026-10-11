package net.p110sf.saxon.type;

import java.util.Optional;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public interface AtomicType extends SimpleType, PlainType, CastingTarget {
    @Override // net.p110sf.saxon.type.ItemType
    default Optional<String> explainMismatch(Item item, TypeHierarchy typeHierarchy) {
        if (item instanceof AtomicValue) {
            return Optional.of("The supplied value is of type " + ((AtomicValue) item).getItemType());
        }
        return Optional.of("The supplied value is " + Err.describeGenre(item.getGenre()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [net.sf.saxon.type.AtomicType, net.sf.saxon.type.ItemType] */
    /* JADX WARN: Type inference failed for: r6v1, types: [net.sf.saxon.type.SchemaType] */
    /* JADX WARN: Type inference failed for: r6v2, types: [net.sf.saxon.type.SchemaType] */
    @Override // net.p110sf.saxon.type.ItemType
    default double getDefaultPriority() {
        if (getBasicAlphaCode().equals("A")) {
            return 0.0d;
        }
        double d = 1.0d;
        do {
            d *= 0.5d;
            this = this.getBaseType();
        } while (this != BuiltInAtomicType.ANY_ATOMIC);
        return 1.0d - d;
    }

    @Override // net.p110sf.saxon.type.ItemType
    default Genre getGenre() {
        return Genre.ATOMIC;
    }

    default BuiltInAtomicType getPrimitiveAtomicType() {
        return (BuiltInAtomicType) getPrimitiveItemType();
    }

    StringConverter getStringConverter(ConversionRules conversionRules);

    @Override // net.p110sf.saxon.type.PlainType
    StructuredQName getTypeName();

    boolean isAbstract();

    @Override // net.p110sf.saxon.type.SimpleType
    boolean isBuiltInType();

    @Override // net.p110sf.saxon.type.SchemaType
    boolean isIdRefType();

    @Override // net.p110sf.saxon.type.SchemaType
    boolean isIdType();

    boolean isOrdered(boolean z);

    boolean isPrimitiveType();

    ValidationFailure validate(AtomicValue atomicValue, UnicodeString unicodeString, ConversionRules conversionRules);
}
