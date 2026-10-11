package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes12.dex */
public class DeprecatedAttribute extends Attribute {

    /* renamed from: c */
    public static CPUTF8 f107170c;

    public DeprecatedAttribute() {
        super(f107170c);
    }

    public static void setAttributeName(CPUTF8 cputf8) {
        f107170c = cputf8;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public int getLength() {
        return 0;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "Deprecated Attribute";
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
    }
}
