package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes12.dex */
public class SignatureAttribute extends Attribute {

    /* renamed from: e */
    public static CPUTF8 f107282e;

    /* renamed from: c */
    public int f107283c;

    /* renamed from: d */
    public final CPUTF8 f107284d;

    public SignatureAttribute(CPUTF8 cputf8) {
        super(f107282e);
        this.f107284d = cputf8;
    }

    public static void setAttributeName(CPUTF8 cputf8) {
        f107282e = cputf8;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public int getLength() {
        return 2;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        return new ClassFileEntry[]{getAttributeName(), this.f107284d};
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.f107284d.resolve(classConstantPool);
        this.f107283c = classConstantPool.indexOf(this.f107284d);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "Signature: " + this.f107284d;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f107283c);
    }
}
