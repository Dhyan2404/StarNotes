package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes12.dex */
public abstract class ClassFileEntry {
    protected static final ClassFileEntry[] NONE = new ClassFileEntry[0];

    /* renamed from: a */
    public boolean f107164a;

    public abstract void doWrite(DataOutputStream dataOutputStream) throws IOException;

    public abstract boolean equals(Object obj);

    public ClassFileEntry[] getNestedClassFileEntries() {
        return NONE;
    }

    public abstract int hashCode();

    public int objectHashCode() {
        return super.hashCode();
    }

    public void resolve(ClassConstantPool classConstantPool) {
        this.f107164a = true;
    }

    public abstract String toString();

    public final void write(DataOutputStream dataOutputStream) throws IOException {
        if (!this.f107164a) {
            throw new IllegalStateException("Entry has not been resolved");
        }
        doWrite(dataOutputStream);
    }
}
