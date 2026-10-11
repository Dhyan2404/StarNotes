package net.p110sf.saxon.ma.map;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.function.Function;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class RecordTest extends AnyFunctionType implements TupleType {

    /* renamed from: e */
    public final Map<String, SequenceType> f100710e = new HashMap();

    /* renamed from: f */
    public final Set<String> f100711f = new HashSet();

    /* renamed from: g */
    public boolean f100712g;

    /* renamed from: net.sf.saxon.ma.map.RecordTest$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18408a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f100713a;

        static {
            int[] iArr = new int[Affinity.values().length];
            f100713a = iArr;
            try {
                iArr[Affinity.SAME_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f100713a[Affinity.SUBSUMED_BY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f100713a[Affinity.SUBSUMES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f100713a[Affinity.OVERLAPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f100713a[Affinity.DISJOINT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public RecordTest() {
    }

    /* renamed from: a */
    public final String m63351a(Function<SequenceType, String> function) {
        StringBuilder sb = new StringBuilder(100);
        sb.append("record(");
        boolean z = true;
        for (Map.Entry<String, SequenceType> entry : this.f100710e.entrySet()) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            if (NameChecker.isValidNCName(entry.getKey())) {
                sb.append(entry.getKey());
            } else {
                sb.append('\"');
                sb.append(entry.getKey());
                sb.append('\"');
            }
            if (isOptionalField(entry.getKey())) {
                sb.append('?');
            }
            sb.append(": ");
            if (entry.getValue().getPrimaryType() == this) {
                sb.append(Constants.ATTRVAL_PARENT);
                sb.append(Cardinality.getOccurrenceIndicator(entry.getValue().getCardinality()));
            } else {
                sb.append(function.apply(entry.getValue()));
            }
        }
        if (isExtensible()) {
            sb.append(", *");
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    /* renamed from: b */
    public final Affinity m63352b(MapType mapType, TypeHierarchy typeHierarchy) {
        Affinity relationship = typeHierarchy.relationship(isExtensible() ? BuiltInAtomicType.ANY_ATOMIC : BuiltInAtomicType.STRING, mapType.getKeyType());
        Affinity affinity = Affinity.DISJOINT;
        if (relationship == affinity) {
            return affinity;
        }
        if (mapType.getValueType().getPrimaryType().equals(AnyItemType.getInstance()) && mapType.getValueType().getCardinality() == 57344) {
            Affinity affinity2 = Affinity.SUBSUMED_BY;
            return (relationship == affinity2 || relationship == Affinity.SAME_TYPE) ? affinity2 : Affinity.OVERLAPS;
        }
        if (isExtensible()) {
            return Affinity.OVERLAPS;
        }
        Iterator<SequenceType> it2 = this.f100710e.values().iterator();
        while (it2.hasNext()) {
            Affinity sequenceTypeRelationship = typeHierarchy.sequenceTypeRelationship(it2.next(), mapType.getValueType());
            if (sequenceTypeRelationship != Affinity.SUBSUMED_BY && sequenceTypeRelationship != Affinity.SAME_TYPE) {
                return Affinity.OVERLAPS;
            }
        }
        return Affinity.SUBSUMED_BY;
    }

    /* renamed from: c */
    public final Affinity m63353c(RecordTest recordTest, TypeHierarchy typeHierarchy) {
        boolean z;
        boolean z2;
        HashSet<String> hashSet = new HashSet(this.f100710e.keySet());
        hashSet.addAll(recordTest.f100710e.keySet());
        boolean z3 = false;
        if (isExtensible()) {
            if (!recordTest.isExtensible()) {
                z2 = true;
                z = false;
            }
            z2 = false;
            z = false;
        } else {
            if (recordTest.isExtensible()) {
                z = true;
                z2 = false;
            }
            z2 = false;
            z = false;
        }
        for (String str : hashSet) {
            SequenceType sequenceType = this.f100710e.get(str);
            SequenceType sequenceType2 = recordTest.f100710e.get(str);
            if (sequenceType == null) {
                if (isExtensible()) {
                    z2 = true;
                } else {
                    if (!Cardinality.allowsZero(sequenceType2.getCardinality())) {
                        return Affinity.DISJOINT;
                    }
                    z3 = true;
                }
            } else if (sequenceType2 != null) {
                int i = C18408a.f100713a[typeHierarchy.sequenceTypeRelationship(sequenceType, sequenceType2).ordinal()];
                if (i == 2) {
                    z = true;
                } else if (i == 3) {
                    z2 = true;
                } else if (i == 4) {
                    z3 = true;
                } else if (i == 5) {
                    return Affinity.DISJOINT;
                }
            } else if (recordTest.isExtensible()) {
                z = true;
            } else {
                if (!Cardinality.allowsZero(sequenceType.getCardinality())) {
                    return Affinity.DISJOINT;
                }
                z3 = true;
            }
        }
        return (z3 || (z && z2)) ? Affinity.OVERLAPS : z2 ? Affinity.SUBSUMES : z ? Affinity.SUBSUMED_BY : Affinity.SAME_TYPE;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RecordTest) {
                RecordTest recordTest = (RecordTest) obj;
                if (this.f100712g != recordTest.f100712g || !this.f100710e.equals(recordTest.f100710e) || !this.f100711f.equals(recordTest.f100711f)) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public Optional<String> explainMismatch(Item item, TypeHierarchy typeHierarchy) {
        AtomicValue next;
        if (item instanceof MapItem) {
            for (Map.Entry<String, SequenceType> entry : this.f100710e.entrySet()) {
                String key = entry.getKey();
                SequenceType value = entry.getValue();
                GroundedValue groundedValue = ((MapItem) item).get(new StringValue(key));
                if (groundedValue == null) {
                    if (!Cardinality.allowsZero(value.getCardinality())) {
                        return Optional.of("Field " + key + " is absent; it must have a value");
                    }
                } else if (!value.matches(groundedValue, typeHierarchy)) {
                    String str = "Field " + key + " has value " + ((Object) Err.depictSequence(groundedValue)) + " which does not match the required type " + value.toString();
                    Optional<String> explainMismatch = value.explainMismatch(groundedValue, typeHierarchy);
                    if (explainMismatch.isPresent()) {
                        str = str + ". " + explainMismatch.get();
                    }
                    return Optional.of(str);
                }
            }
            if (!this.f100712g) {
                AtomicIterator keys = ((MapItem) item).keys();
                do {
                    next = keys.next();
                    if (next != null) {
                        if (!(next instanceof StringValue)) {
                            return Optional.of("Undeclared field " + next + " is present, but it is not a string, and the record type is not extensible");
                        }
                    }
                } while (this.f100710e.containsKey(next.getStringValue()));
                return Optional.of("Undeclared field " + next + " is present, but the record type is not extensible");
            }
        }
        return Optional.empty();
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public SequenceType[] getArgumentTypes() {
        return new SequenceType[]{SequenceType.SINGLE_ATOMIC};
    }

    public int getArity() {
        return 1;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public String getBasicAlphaCode() {
        return "FM";
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public double getDefaultPriority() {
        Iterator<SequenceType> it2 = this.f100710e.values().iterator();
        double d = 1.0d;
        while (it2.hasNext()) {
            d *= it2.next().getPrimaryType().getNormalizedDefaultPriority();
        }
        return this.f100712g ? (d / 2.0d) + 0.5d : d;
    }

    @Override // net.p110sf.saxon.ma.map.TupleType
    public Iterable<String> getFieldNames() {
        return this.f100710e.keySet();
    }

    @Override // net.p110sf.saxon.ma.map.TupleType
    public SequenceType getFieldType(String str) {
        return this.f100710e.get(str);
    }

    @Override // net.p110sf.saxon.type.FunctionItemType, net.p110sf.saxon.type.ItemType
    public Genre getGenre() {
        return Genre.MAP;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public SequenceType getResultType() {
        boolean z;
        if (this.f100712g) {
            return SequenceType.ANY_SEQUENCE;
        }
        ItemType itemType = null;
        loop0: while (true) {
            for (Map.Entry<String, SequenceType> entry : this.f100710e.entrySet()) {
                itemType = itemType == null ? entry.getValue().getPrimaryType() : Type.getCommonSuperType(itemType, entry.getValue().getPrimaryType());
                z = z || Cardinality.allowsMany(entry.getValue().getCardinality());
            }
        }
        return SequenceType.makeSequenceType(itemType, z ? 57344 : 24576);
    }

    public int hashCode() {
        int i = 667568159;
        for (Map.Entry<String, SequenceType> entry : this.f100710e.entrySet()) {
            i = (i ^ entry.getKey().hashCode()) ^ (entry.getValue().getPrimaryType() == this ? 84215045 : entry.getValue().hashCode());
        }
        return i;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public boolean isArrayType() {
        return false;
    }

    @Override // net.p110sf.saxon.ma.map.TupleType
    public boolean isExtensible() {
        return this.f100712g;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public boolean isMapType() {
        return true;
    }

    @Override // net.p110sf.saxon.ma.map.TupleType
    public boolean isOptionalField(String str) {
        return this.f100711f.contains(str);
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public Expression makeFunctionSequenceCoercer(Expression expression, RoleDiagnostic roleDiagnostic) throws XPathException {
        return new SpecificFunctionType(getArgumentTypes(), getResultType()).makeFunctionSequenceCoercer(expression, roleDiagnostic);
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public boolean matches(Item item, TypeHierarchy typeHierarchy) {
        AtomicValue next;
        if (!(item instanceof MapItem)) {
            return false;
        }
        MapItem mapItem = (MapItem) item;
        for (Map.Entry<String, SequenceType> entry : this.f100710e.entrySet()) {
            GroundedValue groundedValue = mapItem.get(new StringValue(entry.getKey()));
            if (groundedValue == null) {
                if (!isOptionalField(entry.getKey())) {
                    return false;
                }
            } else if (!entry.getValue().matches(groundedValue, typeHierarchy)) {
                return false;
            }
        }
        if (this.f100712g) {
            return true;
        }
        AtomicIterator keys = mapItem.keys();
        do {
            next = keys.next();
            if (next == null) {
                return true;
            }
            if (!(next instanceof StringValue)) {
                break;
            }
        } while (this.f100710e.containsKey(next.getStringValue()));
        return false;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public Affinity relationship(FunctionItemType functionItemType, TypeHierarchy typeHierarchy) {
        return functionItemType == AnyFunctionType.getInstance() ? Affinity.SUBSUMED_BY : functionItemType instanceof RecordTest ? m63353c((RecordTest) functionItemType, typeHierarchy) : functionItemType == MapType.ANY_MAP_TYPE ? Affinity.SUBSUMED_BY : functionItemType.isArrayType() ? Affinity.DISJOINT : functionItemType instanceof MapType ? m63352b((MapType) functionItemType, typeHierarchy) : new SpecificFunctionType(getArgumentTypes(), getResultType()).relationship(functionItemType, typeHierarchy);
    }

    public void setDetails(List<String> list, List<SequenceType> list2, Collection<String> collection, boolean z) {
        for (int i = 0; i < list.size(); i++) {
            this.f100710e.put(list.get(i), list2.get(i));
        }
        this.f100711f.addAll(collection);
        this.f100712g = z;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String toExportString() {
        return m63351a(new Function() { // from class: com.sunia.HTREnginev2.sel
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((SequenceType) obj).toExportString();
            }
        });
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType
    public String toString() {
        return m63351a(new Function() { // from class: com.sunia.HTREnginev2.rel
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((SequenceType) obj).toString();
            }
        });
    }

    public RecordTest(List<String> list, List<SequenceType> list2, Collection<String> collection, boolean z) {
        setDetails(list, list2, collection, z);
    }
}
