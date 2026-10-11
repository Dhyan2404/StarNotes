package org.apache.commons.compress.harmony.pack200;

/* loaded from: classes12.dex */
public class CPNameAndType extends ConstantPoolEntry implements Comparable {

    /* renamed from: f */
    public final CPUTF8 f106503f;

    /* renamed from: g */
    public final CPSignature f106504g;

    public CPNameAndType(CPUTF8 cputf8, CPSignature cPSignature) {
        this.f106503f = cputf8;
        this.f106504g = cPSignature;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (!(obj instanceof CPNameAndType)) {
            return 0;
        }
        CPNameAndType cPNameAndType = (CPNameAndType) obj;
        int compareTo = this.f106504g.compareTo(cPNameAndType.f106504g);
        return compareTo == 0 ? this.f106503f.compareTo(cPNameAndType.f106503f) : compareTo;
    }

    public String getName() {
        return this.f106503f.getUnderlyingString();
    }

    public int getNameIndex() {
        return this.f106503f.getIndex();
    }

    public int getTypeIndex() {
        return this.f106504g.getIndex();
    }

    public String toString() {
        return this.f106503f + ":" + this.f106504g;
    }
}
