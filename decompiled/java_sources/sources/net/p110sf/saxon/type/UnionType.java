package net.p110sf.saxon.type;

import com.google.android.material.motion.MotionUtils;
import java.util.List;
import java.util.Optional;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public interface UnionType extends ItemType, CastingTarget {
    ValidationFailure checkAgainstFacets(AtomicValue atomicValue, ConversionRules conversionRules);

    boolean containsListType() throws MissingComponentException;

    @Override // net.p110sf.saxon.type.ItemType
    default Optional<String> explainMismatch(Item item, TypeHierarchy typeHierarchy) {
        if (item.getGenre() != Genre.ATOMIC) {
            return Optional.empty();
        }
        StringBuilder sb = new StringBuilder(256);
        sb.append("The required type is a union type allowing any of ");
        try {
            String str = MotionUtils.f31761c;
            for (PlainType plainType : getPlainMemberTypes()) {
                sb.append(str);
                str = ", ";
                sb.append(plainType.getTypeName().getDisplayName());
            }
        } catch (MissingComponentException unused) {
            sb.append("*member types unobtainable*");
        }
        sb.append("), but the supplied type ");
        sb.append(((AtomicValue) item).getItemType().getDisplayName());
        sb.append(" is not any of these");
        return Optional.of(sb.toString());
    }

    default String getDescription() {
        return this instanceof SimpleType ? ((SimpleType) this).getDescription() : toString();
    }

    List<? extends PlainType> getPlainMemberTypes() throws MissingComponentException;

    SequenceType getResultTypeOfCast();

    default StructuredQName getStructuredQName() {
        return getTypeName();
    }

    StructuredQName getTypeName();

    AtomicSequence getTypedValue(UnicodeString unicodeString, NamespaceResolver namespaceResolver, ConversionRules conversionRules) throws ValidationException;
}
