package net.p110sf.saxon.type;

import java.util.Optional;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.Item;

/* loaded from: classes11.dex */
public interface ItemType {
    default Optional<String> explainMismatch(Item item, TypeHierarchy typeHierarchy) {
        return Optional.empty();
    }

    PlainType getAtomizedItemType();

    String getBasicAlphaCode();

    double getDefaultPriority();

    default String getFullAlphaCode() {
        return getBasicAlphaCode();
    }

    Genre getGenre();

    default double getNormalizedDefaultPriority() {
        return (getDefaultPriority() + 1.0d) / 2.0d;
    }

    ItemType getPrimitiveItemType();

    int getPrimitiveType();

    UType getUType();

    boolean isAtomicType();

    boolean isAtomizable(TypeHierarchy typeHierarchy);

    boolean isPlainType();

    boolean matches(Item item, TypeHierarchy typeHierarchy);

    default String toExportString() {
        return toString();
    }
}
