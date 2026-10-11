package net.p110sf.saxon.type;

import java.util.List;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.StructuredQName;

/* loaded from: classes11.dex */
public interface PlainType extends ItemType, HyperType {
    List<? extends PlainType> getPlainMemberTypes() throws MissingComponentException;

    @Override // net.p110sf.saxon.type.ItemType
    AtomicType getPrimitiveItemType();

    StructuredQName getTypeName();

    @Override // net.p110sf.saxon.type.ItemType
    boolean matches(Item item, TypeHierarchy typeHierarchy);
}
