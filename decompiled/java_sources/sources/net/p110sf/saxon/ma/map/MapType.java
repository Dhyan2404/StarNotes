package net.p110sf.saxon.ma.map;

import com.google.android.material.motion.MotionUtils;
import java.util.Optional;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class MapType extends AnyFunctionType {
    public static final MapType ANY_MAP_TYPE;
    public static final MapType EMPTY_MAP_TYPE;
    public static final SequenceType OPTIONAL_MAP_ITEM;
    public static final SequenceType SEQUENCE_OF_MAPS;
    public static final SequenceType SINGLE_MAP_ITEM;

    /* renamed from: e */
    public final AtomicType f100698e;

    /* renamed from: f */
    public final SequenceType f100699f;

    /* renamed from: g */
    public final boolean f100700g;

    static {
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.ANY_ATOMIC;
        SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
        MapType mapType = new MapType(builtInAtomicType, sequenceType);
        ANY_MAP_TYPE = mapType;
        EMPTY_MAP_TYPE = new MapType(builtInAtomicType, sequenceType, true);
        OPTIONAL_MAP_ITEM = SequenceType.makeSequenceType(mapType, 24576);
        SINGLE_MAP_ITEM = SequenceType.makeSequenceType(mapType, 16384);
        SEQUENCE_OF_MAPS = SequenceType.makeSequenceType(mapType, 57344);
    }

    public MapType(AtomicType atomicType, SequenceType sequenceType) {
        this.f100698e = atomicType;
        this.f100699f = sequenceType;
        this.f100700g = false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MapType)) {
            return false;
        }
        MapType mapType = (MapType) obj;
        return this.f100698e.equals(mapType.f100698e) && this.f100699f.equals(mapType.f100699f) && this.f100700g == mapType.f100700g;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public Optional<String> explainMismatch(Item item, TypeHierarchy typeHierarchy) {
        if (item instanceof MapItem) {
            for (KeyValuePair keyValuePair : ((MapItem) item).keyValuePairs()) {
                if (!this.f100698e.matches(keyValuePair.key, typeHierarchy)) {
                    return Optional.of("The map contains a key (" + keyValuePair.key.show() + ") of type " + keyValuePair.key.getItemType() + " that is not an instance of the required type " + this.f100698e);
                }
                if (!this.f100699f.matches(keyValuePair.value, typeHierarchy)) {
                    String str = "The map contains an entry with key (" + keyValuePair.key.show() + ") whose corresponding value (" + ((Object) Err.depictSequence(keyValuePair.value)) + ") is not an instance of the required type " + this.f100699f;
                    Optional<String> explainMismatch = this.f100699f.explainMismatch(keyValuePair.value, typeHierarchy);
                    if (explainMismatch.isPresent()) {
                        str = str + ". " + explainMismatch.get();
                    }
                    return Optional.of(str);
                }
            }
        }
        return Optional.empty();
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public SequenceType[] getArgumentTypes() {
        return new SequenceType[]{SequenceType.makeSequenceType(BuiltInAtomicType.ANY_ATOMIC, 16384)};
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
        return this.f100698e.getNormalizedDefaultPriority() * this.f100699f.getPrimaryType().getNormalizedDefaultPriority();
    }

    @Override // net.p110sf.saxon.type.FunctionItemType, net.p110sf.saxon.type.ItemType
    public Genre getGenre() {
        return Genre.MAP;
    }

    public AtomicType getKeyType() {
        return this.f100698e;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public SequenceType getResultType() {
        return Cardinality.allowsZero(this.f100699f.getCardinality()) ? this.f100699f : SequenceType.makeSequenceType(this.f100699f.getPrimaryType(), Cardinality.union(this.f100699f.getCardinality(), 8192));
    }

    public SequenceType getValueType() {
        return this.f100699f;
    }

    public int hashCode() {
        return this.f100699f.hashCode() ^ this.f100698e.hashCode();
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public boolean isArrayType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public boolean isAtomizable(TypeHierarchy typeHierarchy) {
        return false;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public boolean isMapType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public Expression makeFunctionSequenceCoercer(Expression expression, RoleDiagnostic roleDiagnostic) throws XPathException {
        return new SpecificFunctionType(getArgumentTypes(), getResultType()).makeFunctionSequenceCoercer(expression, roleDiagnostic);
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public boolean matches(Item item, TypeHierarchy typeHierarchy) {
        if (!(item instanceof MapItem)) {
            return false;
        }
        MapItem mapItem = (MapItem) item;
        if (mapItem.isEmpty()) {
            return true;
        }
        if (this.f100700g) {
            return false;
        }
        if (this == ANY_MAP_TYPE) {
            return true;
        }
        return mapItem.conforms(this.f100698e, this.f100699f, typeHierarchy);
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public Affinity relationship(FunctionItemType functionItemType, TypeHierarchy typeHierarchy) {
        Affinity sequenceTypeRelationship;
        if (functionItemType == AnyFunctionType.getInstance()) {
            return Affinity.SUBSUMED_BY;
        }
        if (equals(functionItemType)) {
            return Affinity.SAME_TYPE;
        }
        if (functionItemType == ANY_MAP_TYPE) {
            return Affinity.SUBSUMED_BY;
        }
        if (functionItemType.isArrayType()) {
            return Affinity.DISJOINT;
        }
        if (functionItemType instanceof RecordTest) {
            return TypeHierarchy.inverseRelationship(functionItemType.relationship(this, typeHierarchy));
        }
        if (!(functionItemType instanceof MapType)) {
            SequenceType resultType = getResultType();
            if (!Cardinality.allowsZero(resultType.getCardinality())) {
                resultType = SequenceType.makeSequenceType(resultType.getPrimaryType(), Cardinality.union(resultType.getCardinality(), 8192));
            }
            return new SpecificFunctionType(new SequenceType[]{SequenceType.ATOMIC_SEQUENCE}, resultType).relationship(functionItemType, typeHierarchy);
        }
        MapType mapType = (MapType) functionItemType;
        Affinity relationship = typeHierarchy.relationship(this.f100698e, mapType.f100698e);
        Affinity affinity = Affinity.DISJOINT;
        if (relationship != affinity && (sequenceTypeRelationship = typeHierarchy.sequenceTypeRelationship(this.f100699f, mapType.f100699f)) != affinity) {
            if (relationship == sequenceTypeRelationship) {
                return relationship;
            }
            Affinity affinity2 = Affinity.SAME_TYPE;
            return ((relationship == affinity2 || relationship == Affinity.SUBSUMES) && (sequenceTypeRelationship == affinity2 || sequenceTypeRelationship == Affinity.SUBSUMES)) ? Affinity.SUBSUMES : ((relationship == affinity2 || relationship == Affinity.SUBSUMED_BY) && (sequenceTypeRelationship == affinity2 || sequenceTypeRelationship == Affinity.SUBSUMED_BY)) ? Affinity.SUBSUMED_BY : Affinity.OVERLAPS;
        }
        return Affinity.OVERLAPS;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String toExportString() {
        if (this == ANY_MAP_TYPE) {
            return "map(*)";
        }
        if (this == EMPTY_MAP_TYPE) {
            return "map{}";
        }
        StringBuilder sb = new StringBuilder(100);
        sb.append("map(");
        sb.append(this.f100698e.toExportString());
        sb.append(", ");
        sb.append(this.f100699f.toExportString());
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType
    public String toString() {
        if (this == ANY_MAP_TYPE) {
            return "map(*)";
        }
        if (this == EMPTY_MAP_TYPE) {
            return "map{}";
        }
        StringBuilder sb = new StringBuilder(100);
        sb.append("map(");
        sb.append(this.f100698e.toString());
        sb.append(", ");
        sb.append(this.f100699f.toString());
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public MapType(AtomicType atomicType, SequenceType sequenceType, boolean z) {
        this.f100698e = atomicType;
        this.f100699f = sequenceType;
        this.f100700g = z;
    }
}
