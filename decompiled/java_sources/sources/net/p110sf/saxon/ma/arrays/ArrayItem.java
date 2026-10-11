package net.p110sf.saxon.ma.arrays;

import java.util.Iterator;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public abstract class ArrayItem implements Function {
    public abstract int arrayLength();

    public abstract ArrayItem concat(ArrayItem arrayItem);

    public abstract GroundedValue get(int i);

    @Override // net.p110sf.saxon.om.Function, net.p110sf.saxon.om.Item
    public final Genre getGenre() {
        return Genre.ARRAY;
    }

    public abstract SequenceType getMemberType(TypeHierarchy typeHierarchy);

    public abstract ArrayItem insert(int i, GroundedValue groundedValue);

    @Override // net.p110sf.saxon.om.Function
    public final boolean isArray() {
        return true;
    }

    public boolean isEmpty() {
        return arrayLength() == 0;
    }

    @Override // net.p110sf.saxon.om.Function
    public final boolean isMap() {
        return false;
    }

    public abstract Iterable<GroundedValue> members();

    public abstract ArrayItem put(int i, GroundedValue groundedValue);

    public abstract ArrayItem remove(int i);

    public abstract ArrayItem removeSeveral(IntSet intSet);

    public abstract ArrayItem subArray(int i, int i2);

    @Override // net.p110sf.saxon.om.Function, net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public String toShortString() {
        StringBuilder sb = new StringBuilder();
        sb.append("array{");
        Iterator<GroundedValue> it2 = members().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            GroundedValue next = it2.next();
            int i2 = i + 1;
            if (i > 2) {
                sb.append(" ...");
                break;
            }
            sb.append(next.toShortString());
            sb.append(", ");
            i = i2;
        }
        sb.append("}");
        return sb.toString();
    }
}
