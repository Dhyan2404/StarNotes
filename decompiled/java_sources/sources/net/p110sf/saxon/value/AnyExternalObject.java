package net.p110sf.saxon.value;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;

/* loaded from: classes11.dex */
public interface AnyExternalObject extends Item {
    ItemType getItemType(TypeHierarchy typeHierarchy);

    Object getWrappedObject();
}
