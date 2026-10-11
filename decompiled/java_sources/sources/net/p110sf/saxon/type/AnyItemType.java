package net.p110sf.saxon.type;

import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class AnyItemType implements ItemTypeWithSequenceTypeCache {

    /* renamed from: i */
    public static final AnyItemType f102759i = new AnyItemType();

    /* renamed from: e */
    public SequenceType f102760e;

    /* renamed from: f */
    public SequenceType f102761f;

    /* renamed from: g */
    public SequenceType f102762g;

    /* renamed from: h */
    public SequenceType f102763h;

    public static AnyItemType getInstance() {
        return f102759i;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String getBasicAlphaCode() {
        return "";
    }

    @Override // net.p110sf.saxon.type.ItemType
    public double getDefaultPriority() {
        return -2.0d;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public Genre getGenre() {
        return Genre.ANY;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public ItemType getPrimitiveItemType() {
        return this;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public int getPrimitiveType() {
        return 88;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return UType.ANY;
    }

    public int hashCode() {
        return 604149465;
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
        return true;
    }

    @Override // net.p110sf.saxon.type.ItemTypeWithSequenceTypeCache
    public SequenceType one() {
        if (this.f102760e == null) {
            this.f102760e = new SequenceType(this, 16384);
        }
        return this.f102760e;
    }

    @Override // net.p110sf.saxon.type.ItemTypeWithSequenceTypeCache
    public SequenceType oneOrMore() {
        if (this.f102761f == null) {
            this.f102761f = new SequenceType(this, 49152);
        }
        return this.f102761f;
    }

    public String toString() {
        return "item()";
    }

    @Override // net.p110sf.saxon.type.ItemTypeWithSequenceTypeCache
    public SequenceType zeroOrMore() {
        if (this.f102763h == null) {
            this.f102763h = new SequenceType(this, 57344);
        }
        return this.f102763h;
    }

    @Override // net.p110sf.saxon.type.ItemTypeWithSequenceTypeCache
    public SequenceType zeroOrOne() {
        if (this.f102762g == null) {
            this.f102762g = new SequenceType(this, 24576);
        }
        return this.f102762g;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public AtomicType getAtomizedItemType() {
        return BuiltInAtomicType.ANY_ATOMIC;
    }
}
