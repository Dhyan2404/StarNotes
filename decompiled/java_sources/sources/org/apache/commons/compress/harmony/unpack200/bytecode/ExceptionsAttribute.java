package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes12.dex */
public class ExceptionsAttribute extends Attribute {

    /* renamed from: e */
    public static CPUTF8 f107184e;

    /* renamed from: c */
    public transient int[] f107185c;

    /* renamed from: d */
    public final CPClass[] f107186d;

    public ExceptionsAttribute(CPClass[] cPClassArr) {
        super(f107184e);
        this.f107186d = cPClassArr;
    }

    /* renamed from: a */
    public static int m67137a(Object[] objArr) {
        if (objArr == null) {
            return 0;
        }
        int length = objArr.length;
        int i = 1;
        for (int i2 = 0; i2 < length; i2++) {
            Object obj = objArr[i2];
            i = (i * 31) + (obj == null ? 0 : obj.hashCode());
        }
        return i;
    }

    public static void setAttributeName(CPUTF8 cputf8) {
        f107184e = cputf8;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return super.equals(obj) && getClass() == obj.getClass() && Arrays.equals(this.f107186d, ((ExceptionsAttribute) obj).f107186d);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public int getLength() {
        return (this.f107186d.length * 2) + 2;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        CPClass[] cPClassArr = this.f107186d;
        ClassFileEntry[] classFileEntryArr = new ClassFileEntry[cPClassArr.length + 1];
        System.arraycopy(cPClassArr, 0, classFileEntryArr, 0, cPClassArr.length);
        classFileEntryArr[this.f107186d.length] = getAttributeName();
        return classFileEntryArr;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        return (super.hashCode() * 31) + m67137a(this.f107186d);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.f107185c = new int[this.f107186d.length];
        int i = 0;
        while (true) {
            CPClass[] cPClassArr = this.f107186d;
            if (i >= cPClassArr.length) {
                return;
            }
            cPClassArr[i].resolve(classConstantPool);
            this.f107185c[i] = classConstantPool.indexOf(this.f107186d[i]);
            i++;
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Exceptions: ");
        for (CPClass cPClass : this.f107186d) {
            sb.append(cPClass);
            sb.append(' ');
        }
        return sb.toString();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f107185c.length);
        for (int i : this.f107185c) {
            dataOutputStream.writeShort(i);
        }
    }
}
