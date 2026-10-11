package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes12.dex */
public abstract class CPRef extends ConstantPoolEntry {

    /* renamed from: c */
    public CPClass f107149c;
    protected String cachedToString;

    /* renamed from: d */
    public transient int f107150d;

    /* renamed from: e */
    public transient int f107151e;
    protected CPNameAndType nameAndType;

    public CPRef(byte b, CPClass cPClass, CPNameAndType cPNameAndType, int i) {
        super(b, i);
        Objects.requireNonNull(cPClass, "className");
        this.f107149c = cPClass;
        Objects.requireNonNull(cPNameAndType, "descriptor");
        this.nameAndType = cPNameAndType;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || hashCode() != obj.hashCode()) {
            return false;
        }
        CPRef cPRef = (CPRef) obj;
        return this.f107149c.equals(cPRef.f107149c) && this.nameAndType.equals(cPRef.nameAndType);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        return new ClassFileEntry[]{this.f107149c, this.nameAndType};
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.f107151e = classConstantPool.indexOf(this.nameAndType);
        this.f107150d = classConstantPool.indexOf(this.f107149c);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        if (this.cachedToString == null) {
            this.cachedToString = (getTag() == 9 ? "FieldRef" : getTag() == 10 ? "MethoddRef" : getTag() == 11 ? "InterfaceMethodRef" : "unknown") + ": " + this.f107149c + "#" + this.nameAndType;
        }
        return this.cachedToString;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f107150d);
        dataOutputStream.writeShort(this.f107151e);
    }
}
