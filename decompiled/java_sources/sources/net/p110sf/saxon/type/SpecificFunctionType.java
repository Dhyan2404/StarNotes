package net.p110sf.saxon.type;

import com.google.android.material.motion.MotionUtils;
import java.util.Iterator;
import java.util.Objects;
import java.util.Optional;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.functions.hof.FunctionSequenceCoercer;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.arrays.ArrayItemType;
import net.p110sf.saxon.ma.map.KeyValuePair;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class SpecificFunctionType extends AnyFunctionType {
    public static final FunctionItemType COMPONENT_FUNCTION_TYPE = new SpecificFunctionType(new SequenceType[]{SequenceType.SINGLE_STRING}, SequenceType.ANY_SEQUENCE);

    /* renamed from: e */
    public final SequenceType[] f102794e;

    /* renamed from: f */
    public final SequenceType f102795f;

    /* renamed from: g */
    public final AnnotationList f102796g;

    /* renamed from: net.sf.saxon.type.SpecificFunctionType$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18562a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f102797a;

        static {
            int[] iArr = new int[Affinity.values().length];
            f102797a = iArr;
            try {
                iArr[Affinity.SUBSUMES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f102797a[Affinity.SUBSUMED_BY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f102797a[Affinity.DISJOINT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f102797a[Affinity.OVERLAPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f102797a[Affinity.SAME_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public SpecificFunctionType(SequenceType[] sequenceTypeArr, SequenceType sequenceType) {
        Objects.requireNonNull(sequenceTypeArr);
        this.f102794e = sequenceTypeArr;
        Objects.requireNonNull(sequenceType);
        this.f102795f = sequenceType;
        this.f102796g = AnnotationList.EMPTY;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SpecificFunctionType)) {
            return false;
        }
        SpecificFunctionType specificFunctionType = (SpecificFunctionType) obj;
        if (!this.f102795f.equals(specificFunctionType.f102795f) || this.f102794e.length != specificFunctionType.f102794e.length) {
            return false;
        }
        int i = 0;
        while (true) {
            SequenceType[] sequenceTypeArr = this.f102794e;
            if (i >= sequenceTypeArr.length) {
                return getAnnotationAssertions().equals(specificFunctionType.getAnnotationAssertions());
            }
            if (!sequenceTypeArr[i].equals(specificFunctionType.f102794e[i])) {
                return false;
            }
            i++;
        }
    }

    @Override // net.p110sf.saxon.type.ItemType
    public Optional<String> explainMismatch(Item item, TypeHierarchy typeHierarchy) {
        if (!(item instanceof Function)) {
            return Optional.empty();
        }
        if (item instanceof MapItem) {
            if (getArity() != 1) {
                return Optional.of("The function arity is " + getArity() + "; a map can only be supplied for a function type with arity 1");
            }
            if (this.f102794e[0].getCardinality() != 16384 || !this.f102794e[0].getPrimaryType().isPlainType()) {
                return Optional.of("The function argument is of type " + this.f102794e[0] + "; a map can only be supplied for a function type whose argument type is atomic");
            }
            for (KeyValuePair keyValuePair : ((MapItem) item).keyValuePairs()) {
                if (!this.f102795f.matches(keyValuePair.value, typeHierarchy)) {
                    String str = "The supplied map contains an entry with key (" + keyValuePair.key + ") whose corresponding value (" + ((Object) Err.depictSequence(keyValuePair.value)) + ") is not an instance of the return type in the function signature (" + this.f102795f + MotionUtils.f31762d;
                    Optional<String> explainMismatch = this.f102795f.explainMismatch(keyValuePair.value, typeHierarchy);
                    if (explainMismatch.isPresent()) {
                        str = str + ". " + explainMismatch.get();
                    }
                    return Optional.of(str);
                }
            }
        }
        if (item instanceof ArrayItem) {
            if (getArity() != 1) {
                return Optional.of("The function arity is " + getArity() + "; an array can only be supplied for a function type with arity 1");
            }
            if (this.f102794e[0].getCardinality() != 16384 || !this.f102794e[0].getPrimaryType().isPlainType()) {
                return Optional.of("The function argument is of type " + this.f102794e[0] + "; an array can only be supplied for a function type whose argument type is xs:integer");
            }
            Affinity relationship = typeHierarchy.relationship(this.f102794e[0].getPrimaryType(), BuiltInAtomicType.INTEGER);
            if (relationship != Affinity.SAME_TYPE && relationship != Affinity.SUBSUMED_BY) {
                return Optional.of("The function expects an argument of type " + this.f102794e[0] + "; an array can only be supplied for a function that expects an integer");
            }
            for (GroundedValue groundedValue : ((ArrayItem) item).members()) {
                if (!this.f102795f.matches(groundedValue, typeHierarchy)) {
                    String str2 = "The supplied array contains an entry (" + ((Object) Err.depictSequence(groundedValue)) + ") is not an instance of the return type in the function signature (" + this.f102795f + MotionUtils.f31762d;
                    Optional<String> explainMismatch2 = this.f102795f.explainMismatch(groundedValue, typeHierarchy);
                    if (explainMismatch2.isPresent()) {
                        str2 = str2 + ". " + explainMismatch2.get();
                    }
                    return Optional.of(str2);
                }
            }
        }
        Function function = (Function) item;
        FunctionItemType functionItemType = function.getFunctionItemType();
        if (getArity() != function.getArity()) {
            return Optional.of("The required function arity is " + getArity() + "; the supplied function has arity " + function.getArity());
        }
        Affinity sequenceTypeRelationship = typeHierarchy.sequenceTypeRelationship(this.f102795f, functionItemType.getResultType());
        if (sequenceTypeRelationship != Affinity.SAME_TYPE && sequenceTypeRelationship != Affinity.SUBSUMES) {
            return Optional.of("The return type of the required function is " + this.f102795f + " but the returntype of the supplied function is " + functionItemType.getResultType());
        }
        for (int i = 0; i < getArity(); i++) {
            Affinity sequenceTypeRelationship2 = typeHierarchy.sequenceTypeRelationship(this.f102794e[i], functionItemType.getArgumentTypes()[i]);
            if (sequenceTypeRelationship2 != Affinity.SAME_TYPE && sequenceTypeRelationship2 != Affinity.SUBSUMED_BY) {
                return Optional.of("The type of the " + RoleDiagnostic.ordinal(i + 1) + " argument of the required function is " + this.f102794e[i] + " but the declaredtype of the corresponding argument of the supplied function is " + functionItemType.getArgumentTypes()[i]);
            }
        }
        return Optional.empty();
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public AnnotationList getAnnotationAssertions() {
        return this.f102796g;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public SequenceType[] getArgumentTypes() {
        return this.f102794e;
    }

    public int getArity() {
        return this.f102794e.length;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public double getDefaultPriority() {
        double d = 1.0d;
        for (SequenceType sequenceType : getArgumentTypes()) {
            d *= sequenceType.getPrimaryType().getNormalizedDefaultPriority();
        }
        return d;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public SequenceType getResultType() {
        return this.f102795f;
    }

    public int hashCode() {
        int hashCode = this.f102795f.hashCode();
        SequenceType[] sequenceTypeArr = this.f102794e;
        int length = hashCode ^ sequenceTypeArr.length;
        for (SequenceType sequenceType : sequenceTypeArr) {
            length ^= sequenceType.hashCode();
        }
        return length;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public boolean isAtomizable(TypeHierarchy typeHierarchy) {
        if (getArity() != 1) {
            return false;
        }
        return typeHierarchy.isSubType(BuiltInAtomicType.INTEGER, getArgumentTypes()[0].getPrimaryType());
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public Expression makeFunctionSequenceCoercer(Expression expression, RoleDiagnostic roleDiagnostic) throws XPathException {
        return new FunctionSequenceCoercer(expression, this, roleDiagnostic);
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public boolean matches(Item item, TypeHierarchy typeHierarchy) {
        if (!(item instanceof Function)) {
            return false;
        }
        if (item instanceof MapItem) {
            if (getArity() != 1 || this.f102794e[0].getCardinality() != 16384 || !this.f102794e[0].getPrimaryType().isPlainType() || !Cardinality.allowsZero(this.f102795f.getCardinality())) {
                return false;
            }
            Iterator<KeyValuePair> it2 = ((MapItem) item).keyValuePairs().iterator();
            while (it2.hasNext()) {
                if (!this.f102795f.matches(it2.next().value, typeHierarchy)) {
                    return false;
                }
            }
            return true;
        }
        if (!(item instanceof ArrayItem)) {
            Affinity relationship = typeHierarchy.relationship(((Function) item).getFunctionItemType(), this);
            return relationship == Affinity.SAME_TYPE || relationship == Affinity.SUBSUMED_BY;
        }
        if (getArity() != 1 || this.f102794e[0].getCardinality() != 16384 || !this.f102794e[0].getPrimaryType().isPlainType()) {
            return false;
        }
        Affinity relationship2 = typeHierarchy.relationship(this.f102794e[0].getPrimaryType(), BuiltInAtomicType.INTEGER);
        if (relationship2 != Affinity.SAME_TYPE && relationship2 != Affinity.SUBSUMED_BY) {
            return false;
        }
        Iterator<GroundedValue> it3 = ((ArrayItem) item).members().iterator();
        while (it3.hasNext()) {
            if (!this.f102795f.matches(it3.next(), typeHierarchy)) {
                return false;
            }
        }
        return true;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public Affinity relationship(FunctionItemType functionItemType, TypeHierarchy typeHierarchy) {
        if (functionItemType == AnyFunctionType.getInstance() || (functionItemType instanceof AnyFunctionTypeWithAssertions)) {
            return Affinity.SUBSUMED_BY;
        }
        if (equals(functionItemType)) {
            return Affinity.SAME_TYPE;
        }
        boolean z = true;
        if ((functionItemType instanceof ArrayItemType) || (functionItemType instanceof MapType)) {
            Affinity relationship = functionItemType.relationship(this, typeHierarchy);
            int i = C18562a.f102797a[relationship.ordinal()];
            return i != 1 ? i != 2 ? relationship : Affinity.SUBSUMES : Affinity.SUBSUMED_BY;
        }
        if (this.f102794e.length != functionItemType.getArgumentTypes().length) {
            return Affinity.DISJOINT;
        }
        int i2 = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            SequenceType[] sequenceTypeArr = this.f102794e;
            if (i2 >= sequenceTypeArr.length) {
                int i3 = C18562a.f102797a[typeHierarchy.sequenceTypeRelationship(this.f102795f, functionItemType.getResultType()).ordinal()];
                if (i3 != 1) {
                    if (i3 == 2) {
                        z3 = true;
                    } else {
                        if (i3 == 3) {
                            return Affinity.DISJOINT;
                        }
                        if (i3 == 4) {
                            z3 = true;
                        }
                    }
                    z = z2;
                }
                return z ? z3 ? Affinity.OVERLAPS : Affinity.SUBSUMES : z3 ? Affinity.SUBSUMED_BY : Affinity.SAME_TYPE;
            }
            int i4 = C18562a.f102797a[typeHierarchy.sequenceTypeRelationship(sequenceTypeArr[i2], functionItemType.getArgumentTypes()[i2]).ordinal()];
            if (i4 == 1) {
                z3 = true;
            } else if (i4 == 2) {
                z2 = true;
            } else {
                if (i4 == 3) {
                    return Affinity.DISJOINT;
                }
                if (i4 == 4) {
                    z2 = true;
                    z3 = true;
                }
            }
            i2++;
        }
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String toExportString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("(function(");
        int i = 0;
        while (true) {
            SequenceType[] sequenceTypeArr = this.f102794e;
            if (i >= sequenceTypeArr.length) {
                sb.append(") as ");
                sb.append(this.f102795f.toExportString());
                sb.append(')');
                return sb.toString();
            }
            sb.append(sequenceTypeArr[i].toExportString());
            if (i < this.f102794e.length - 1) {
                sb.append(", ");
            }
            i++;
        }
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType
    public String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("(function(");
        int i = 0;
        while (true) {
            SequenceType[] sequenceTypeArr = this.f102794e;
            if (i >= sequenceTypeArr.length) {
                sb.append(") as ");
                sb.append(this.f102795f.toString());
                sb.append(')');
                return sb.toString();
            }
            sb.append(sequenceTypeArr[i].toString());
            if (i < this.f102794e.length - 1) {
                sb.append(", ");
            }
            i++;
        }
    }

    public SpecificFunctionType(SequenceType[] sequenceTypeArr, SequenceType sequenceType, AnnotationList annotationList) {
        Objects.requireNonNull(sequenceTypeArr);
        this.f102794e = sequenceTypeArr;
        Objects.requireNonNull(sequenceType);
        this.f102795f = sequenceType;
        Objects.requireNonNull(annotationList);
        this.f102796g = annotationList;
    }
}
