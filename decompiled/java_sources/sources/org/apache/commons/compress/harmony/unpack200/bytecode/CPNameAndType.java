package org.apache.commons.compress.harmony.unpack200.bytecode;

import com.google.android.material.motion.MotionUtils;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Objects;
import org.apache.commons.compress.harmony.unpack200.SegmentUtils;

/* loaded from: classes12.dex */
public class CPNameAndType extends ConstantPoolEntry {

    /* renamed from: c */
    public CPUTF8 f107143c;

    /* renamed from: d */
    public transient int f107144d;

    /* renamed from: e */
    public CPUTF8 f107145e;

    /* renamed from: f */
    public transient int f107146f;

    /* renamed from: g */
    public boolean f107147g;

    /* renamed from: h */
    public int f107148h;

    public CPNameAndType(CPUTF8 cputf8, CPUTF8 cputf82, int i) {
        super((byte) 12, i);
        Objects.requireNonNull(cputf8, "name");
        this.f107145e = cputf8;
        Objects.requireNonNull(cputf82, "descriptor");
        this.f107143c = cputf82;
    }

    /* renamed from: a */
    public final void m67115a() {
        this.f107147g = true;
        this.f107148h = ((this.f107143c.hashCode() + 31) * 31) + this.f107145e.hashCode();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CPNameAndType cPNameAndType = (CPNameAndType) obj;
        return this.f107143c.equals(cPNameAndType.f107143c) && this.f107145e.equals(cPNameAndType.f107145e);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        return new ClassFileEntry[]{this.f107145e, this.f107143c};
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        if (!this.f107147g) {
            m67115a();
        }
        return this.f107148h;
    }

    public int invokeInterfaceCount() {
        return SegmentUtils.countInvokeInterfaceArgs(this.f107143c.underlyingString()) + 1;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.f107144d = classConstantPool.indexOf(this.f107143c);
        this.f107146f = classConstantPool.indexOf(this.f107145e);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "NameAndType: " + this.f107145e + MotionUtils.f31761c + this.f107143c + MotionUtils.f31762d;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f107146f);
        dataOutputStream.writeShort(this.f107144d);
    }
}
