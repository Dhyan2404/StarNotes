package org.apache.commons.compress.harmony.pack200;

/* loaded from: classes12.dex */
public class CPMethodOrField extends ConstantPoolEntry implements Comparable {

    /* renamed from: f */
    public final CPClass f106499f;

    /* renamed from: g */
    public final CPNameAndType f106500g;

    /* renamed from: h */
    public int f106501h = -1;

    /* renamed from: i */
    public int f106502i = -1;

    public CPMethodOrField(CPClass cPClass, CPNameAndType cPNameAndType) {
        this.f106499f = cPClass;
        this.f106500g = cPNameAndType;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (!(obj instanceof CPMethodOrField)) {
            return 0;
        }
        CPMethodOrField cPMethodOrField = (CPMethodOrField) obj;
        int compareTo = this.f106499f.compareTo(cPMethodOrField.f106499f);
        return compareTo == 0 ? this.f106500g.compareTo(cPMethodOrField.f106500g) : compareTo;
    }

    public int getClassIndex() {
        return this.f106499f.getIndex();
    }

    public CPClass getClassName() {
        return this.f106499f;
    }

    public CPNameAndType getDesc() {
        return this.f106500g;
    }

    public int getDescIndex() {
        return this.f106500g.getIndex();
    }

    public int getIndexInClass() {
        return this.f106501h;
    }

    public int getIndexInClassForConstructor() {
        return this.f106502i;
    }

    public void setIndexInClass(int i) {
        this.f106501h = i;
    }

    public void setIndexInClassForConstructor(int i) {
        this.f106502i = i;
    }

    public String toString() {
        return this.f106499f + ": " + this.f106500g;
    }
}
