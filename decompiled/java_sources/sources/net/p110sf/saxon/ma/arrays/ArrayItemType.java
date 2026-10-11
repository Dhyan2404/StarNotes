package net.p110sf.saxon.ma.arrays;

import com.google.android.material.motion.MotionUtils;
import java.util.Iterator;
import java.util.Optional;
import java.util.function.Function;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.PlainType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class ArrayItemType extends AnyFunctionType {
    public static final ArrayItemType ANY_ARRAY_TYPE;
    public static final SequenceType SINGLE_ARRAY;

    /* renamed from: e */
    public final SequenceType f100609e;

    static {
        ArrayItemType arrayItemType = new ArrayItemType(SequenceType.ANY_SEQUENCE);
        ANY_ARRAY_TYPE = arrayItemType;
        SINGLE_ARRAY = SequenceType.makeSequenceType(arrayItemType, 16384);
    }

    public ArrayItemType(SequenceType sequenceType) {
        this.f100609e = sequenceType;
    }

    /* renamed from: e */
    public final String m63301e(Function<SequenceType, String> function) {
        if (equals(ANY_ARRAY_TYPE)) {
            return "array(*)";
        }
        StringBuilder sb = new StringBuilder(100);
        sb.append("array(");
        sb.append(function.apply(this.f100609e));
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ArrayItemType) {
            return this.f100609e.equals(((ArrayItemType) obj).f100609e);
        }
        return false;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public Optional<String> explainMismatch(Item item, TypeHierarchy typeHierarchy) {
        if (item instanceof ArrayItem) {
            int i = 0;
            while (true) {
                ArrayItem arrayItem = (ArrayItem) item;
                if (i >= arrayItem.arrayLength()) {
                    break;
                }
                GroundedValue groundedValue = arrayItem.get(i);
                if (!this.f100609e.matches(groundedValue, typeHierarchy)) {
                    String str = "The " + RoleDiagnostic.ordinal(i + 1) + " member of the supplied array {" + ((Object) Err.depictSequence(groundedValue)) + "} does not match the required member type " + this.f100609e;
                    Optional<String> explainMismatch = this.f100609e.explainMismatch(groundedValue, typeHierarchy);
                    if (explainMismatch.isPresent()) {
                        str = str + ". " + explainMismatch.get();
                    }
                    return Optional.of(str);
                }
                i++;
            }
        }
        return Optional.empty();
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public SequenceType[] getArgumentTypes() {
        return new SequenceType[]{BuiltInAtomicType.INTEGER.one()};
    }

    public int getArity() {
        return 1;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public PlainType getAtomizedItemType() {
        return this.f100609e.getPrimaryType().getAtomizedItemType();
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public String getBasicAlphaCode() {
        return "FA";
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public double getDefaultPriority() {
        return this.f100609e.getPrimaryType().getNormalizedDefaultPriority();
    }

    @Override // net.p110sf.saxon.type.FunctionItemType, net.p110sf.saxon.type.ItemType
    public Genre getGenre() {
        return Genre.ARRAY;
    }

    public SequenceType getMemberType() {
        return this.f100609e;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public SequenceType getResultType() {
        return this.f100609e;
    }

    public int hashCode() {
        return this.f100609e.hashCode();
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public boolean isArrayType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public boolean isAtomizable(TypeHierarchy typeHierarchy) {
        return true;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public boolean isMapType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public Expression makeFunctionSequenceCoercer(Expression expression, RoleDiagnostic roleDiagnostic) throws XPathException {
        return new SpecificFunctionType(getArgumentTypes(), getResultType()).makeFunctionSequenceCoercer(expression, roleDiagnostic);
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public boolean matches(Item item, TypeHierarchy typeHierarchy) {
        if (!(item instanceof ArrayItem)) {
            return false;
        }
        if (this == ANY_ARRAY_TYPE) {
            return true;
        }
        Iterator<GroundedValue> it2 = ((ArrayItem) item).members().iterator();
        while (it2.hasNext()) {
            if (!this.f100609e.matches(it2.next(), typeHierarchy)) {
                return false;
            }
        }
        return true;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public Affinity relationship(FunctionItemType functionItemType, TypeHierarchy typeHierarchy) {
        if (functionItemType == AnyFunctionType.getInstance()) {
            return Affinity.SUBSUMED_BY;
        }
        if (equals(functionItemType)) {
            return Affinity.SAME_TYPE;
        }
        if (functionItemType == ANY_ARRAY_TYPE) {
            return Affinity.SUBSUMED_BY;
        }
        if (functionItemType.isMapType()) {
            return Affinity.DISJOINT;
        }
        if (functionItemType instanceof ArrayItemType) {
            Affinity sequenceTypeRelationship = typeHierarchy.sequenceTypeRelationship(this.f100609e, ((ArrayItemType) functionItemType).f100609e);
            return sequenceTypeRelationship == Affinity.DISJOINT ? Affinity.OVERLAPS : sequenceTypeRelationship;
        }
        Affinity relationship = new SpecificFunctionType(getArgumentTypes(), getResultType()).relationship(functionItemType, typeHierarchy);
        return (relationship == Affinity.SUBSUMES || relationship == Affinity.SAME_TYPE) ? Affinity.OVERLAPS : relationship;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String toExportString() {
        return m63301e(new Function() { // from class: com.sunia.HTREnginev2.df
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String exportString;
                exportString = ((SequenceType) obj).toExportString();
                return exportString;
            }
        });
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType
    public String toString() {
        return m63301e(new Function() { // from class: com.sunia.HTREnginev2.ef
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String sequenceType;
                sequenceType = ((SequenceType) obj).toString();
                return sequenceType;
            }
        });
    }
}
