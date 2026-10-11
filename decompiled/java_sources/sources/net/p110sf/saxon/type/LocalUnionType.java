package net.p110sf.saxon.type;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.LocalUnionType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class LocalUnionType implements PlainType, UnionType {

    /* renamed from: e */
    public List<AtomicType> f102790e;

    public LocalUnionType(List<AtomicType> list) {
        this.f102790e = list;
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m64624b(Item item, TypeHierarchy typeHierarchy, AtomicType atomicType) {
        return atomicType.matches(item, typeHierarchy);
    }

    /* renamed from: c */
    public final boolean m64625c(Predicate<AtomicType> predicate) {
        Iterator<AtomicType> it2 = this.f102790e.iterator();
        while (it2.hasNext()) {
            if (predicate.test(it2.next())) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.type.UnionType
    public ValidationFailure checkAgainstFacets(AtomicValue atomicValue, ConversionRules conversionRules) {
        return null;
    }

    @Override // net.p110sf.saxon.type.UnionType
    public boolean containsListType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public PlainType getAtomizedItemType() {
        return this;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String getBasicAlphaCode() {
        return "A";
    }

    @Override // net.p110sf.saxon.type.ItemType
    public double getDefaultPriority() {
        Iterator<AtomicType> it2 = this.f102790e.iterator();
        double d = 1.0d;
        while (it2.hasNext()) {
            d *= it2.next().getDefaultPriority();
        }
        return d;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public Genre getGenre() {
        return Genre.ATOMIC;
    }

    public List<? extends AtomicType> getMemberTypes() {
        return this.f102790e;
    }

    @Override // net.p110sf.saxon.type.PlainType
    public List<? extends PlainType> getPlainMemberTypes() {
        return this.f102790e;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public int getPrimitiveType() {
        return 632;
    }

    @Override // net.p110sf.saxon.type.UnionType
    public SequenceType getResultTypeOfCast() {
        return SequenceType.makeSequenceType(this, 24576);
    }

    @Override // net.p110sf.saxon.type.PlainType
    public StructuredQName getTypeName() {
        return new StructuredQName("", NamespaceConstant.ANONYMOUS, "U" + hashCode());
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        UType uType = UType.VOID;
        Iterator<AtomicType> it2 = this.f102790e.iterator();
        while (it2.hasNext()) {
            uType = uType.union(it2.next().getUType());
        }
        return uType;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public boolean isAtomicType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public boolean isAtomizable(TypeHierarchy typeHierarchy) {
        return true;
    }

    public boolean isBuiltInType() {
        return false;
    }

    public boolean isIdRefType() {
        return m64625c(new Predicate() { // from class: com.sunia.HTREnginev2.b1j
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((AtomicType) obj).isIdRefType();
            }
        });
    }

    public boolean isIdType() {
        return m64625c(new Predicate() { // from class: com.sunia.HTREnginev2.z0j
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((AtomicType) obj).isIdType();
            }
        });
    }

    public boolean isListType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.HyperType
    public boolean isNamespaceSensitive() {
        return m64625c(new Predicate() { // from class: com.sunia.HTREnginev2.a1j
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((AtomicType) obj).isNamespaceSensitive();
            }
        });
    }

    @Override // net.p110sf.saxon.type.ItemType
    public boolean isPlainType() {
        return true;
    }

    public boolean isUnionType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.PlainType, net.p110sf.saxon.type.ItemType
    public boolean matches(final Item item, final TypeHierarchy typeHierarchy) {
        if (item instanceof AtomicValue) {
            return m64625c(new Predicate() { // from class: com.sunia.HTREnginev2.c1j
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m64624b;
                    m64624b = LocalUnionType.m64624b(Item.this, typeHierarchy, (AtomicType) obj);
                    return m64624b;
                }
            });
        }
        return false;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String toExportString() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("union(");
        Iterator<AtomicType> it2 = this.f102790e.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().toExportString());
            sb.append(", ");
        }
        sb.setLength(sb.length() - 2);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("union(");
        Iterator<AtomicType> it2 = this.f102790e.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().getDisplayName());
            sb.append(", ");
        }
        sb.setLength(sb.length() - 2);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public ValidationFailure validateContent(UnicodeString unicodeString, NamespaceResolver namespaceResolver, ConversionRules conversionRules) {
        Iterator<AtomicType> it2 = this.f102790e.iterator();
        while (it2.hasNext()) {
            if (it2.next().validateContent(unicodeString, namespaceResolver, conversionRules) == null) {
                return null;
            }
        }
        return new ValidationFailure("Value " + Err.wrap(unicodeString, 4) + " does not match any member of union type " + toString());
    }

    @Override // net.p110sf.saxon.type.PlainType, net.p110sf.saxon.type.ItemType
    public AtomicType getPrimitiveItemType() {
        return BuiltInAtomicType.ANY_ATOMIC;
    }

    @Override // net.p110sf.saxon.type.UnionType
    public AtomicValue getTypedValue(UnicodeString unicodeString, NamespaceResolver namespaceResolver, ConversionRules conversionRules) throws ValidationException {
        Iterator<AtomicType> it2 = this.f102790e.iterator();
        while (it2.hasNext()) {
            StringConverter makeStringConverter = conversionRules.makeStringConverter(it2.next());
            makeStringConverter.setNamespaceResolver(namespaceResolver);
            ConversionResult convertString = makeStringConverter.convertString(unicodeString);
            if (convertString instanceof AtomicValue) {
                return (AtomicValue) convertString;
            }
        }
        throw new ValidationFailure("Value " + Err.wrap(unicodeString, 4) + " does not match any member of union type " + toString()).makeException();
    }

    public LocalUnionType(AtomicType... atomicTypeArr) {
        ArrayList arrayList = new ArrayList();
        this.f102790e = arrayList;
        arrayList.addAll(Arrays.asList(atomicTypeArr));
    }
}
