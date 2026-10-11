package org.apache.commons.compress.harmony.unpack200.bytecode;

import com.google.android.material.motion.MotionUtils;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import org.apache.commons.compress.harmony.unpack200.bytecode.Attribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.ClassConstantPool;

/* loaded from: classes12.dex */
public class CPMember extends ClassFileEntry {

    /* renamed from: b */
    public List<Attribute> f107134b;

    /* renamed from: c */
    public short f107135c;

    /* renamed from: d */
    public CPUTF8 f107136d;
    protected final CPUTF8 descriptor;

    /* renamed from: e */
    public transient int f107137e;

    /* renamed from: f */
    public transient int f107138f;

    public CPMember(CPUTF8 cputf8, CPUTF8 cputf82, long j, List<Attribute> list) {
        Objects.requireNonNull(cputf8, "name");
        this.f107136d = cputf8;
        Objects.requireNonNull(cputf82, "descriptor");
        this.descriptor = cputf82;
        this.f107135c = (short) j;
        this.f107134b = list == null ? Collections.EMPTY_LIST : list;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void doWrite(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f107135c);
        dataOutputStream.writeShort(this.f107137e);
        dataOutputStream.writeShort(this.f107138f);
        int size = this.f107134b.size();
        dataOutputStream.writeShort(size);
        for (int i = 0; i < size; i++) {
            this.f107134b.get(i).doWrite(dataOutputStream);
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CPMember cPMember = (CPMember) obj;
        return this.f107134b.equals(cPMember.f107134b) && this.descriptor.equals(cPMember.descriptor) && this.f107135c == cPMember.f107135c && this.f107136d.equals(cPMember.f107136d);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        int size = this.f107134b.size();
        ClassFileEntry[] classFileEntryArr = new ClassFileEntry[size + 2];
        classFileEntryArr[0] = this.f107136d;
        classFileEntryArr[1] = this.descriptor;
        for (int i = 0; i < size; i++) {
            classFileEntryArr[i + 2] = this.f107134b.get(i);
        }
        return classFileEntryArr;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        return ((((((this.f107134b.hashCode() + 31) * 31) + this.descriptor.hashCode()) * 31) + this.f107135c) * 31) + this.f107136d.hashCode();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(final ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.f107137e = classConstantPool.indexOf(this.f107136d);
        this.f107138f = classConstantPool.indexOf(this.descriptor);
        this.f107134b.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.h20
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((Attribute) obj).resolve(ClassConstantPool.this);
            }
        });
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "CPMember: " + this.f107136d + MotionUtils.f31761c + this.descriptor + MotionUtils.f31762d;
    }
}
