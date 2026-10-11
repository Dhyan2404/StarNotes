package net.p110sf.saxon.type;

import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.Item;

/* loaded from: classes11.dex */
public class AnyExternalObjectType implements ItemType {
    public static AnyExternalObjectType THE_INSTANCE = new AnyExternalObjectType();

    @Override // net.p110sf.saxon.type.ItemType
    public String getBasicAlphaCode() {
        return "X";
    }

    @Override // net.p110sf.saxon.type.ItemType
    public double getDefaultPriority() {
        return -1.0d;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public Genre getGenre() {
        return Genre.EXTERNAL;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public ItemType getPrimitiveItemType() {
        return this;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public int getPrimitiveType() {
        return -1;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return UType.EXTENSION;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public boolean isAtomicType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public boolean isAtomizable(TypeHierarchy typeHierarchy) {
        return true;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public boolean isPlainType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public boolean matches(Item item, TypeHierarchy typeHierarchy) {
        return item.getGenre() == Genre.EXTERNAL;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public AtomicType getAtomizedItemType() {
        return BuiltInAtomicType.STRING;
    }
}
