package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import org.apache.commons.compress.harmony.unpack200.AttributeLayout;

/* loaded from: classes12.dex */
public class EnclosingMethodAttribute extends Attribute {

    /* renamed from: g */
    public static CPUTF8 f107171g;

    /* renamed from: c */
    public int f107172c;

    /* renamed from: d */
    public int f107173d;

    /* renamed from: e */
    public final CPClass f107174e;

    /* renamed from: f */
    public final CPNameAndType f107175f;

    public EnclosingMethodAttribute(CPClass cPClass, CPNameAndType cPNameAndType) {
        super(f107171g);
        this.f107174e = cPClass;
        this.f107175f = cPNameAndType;
    }

    public static void setAttributeName(CPUTF8 cputf8) {
        f107171g = cputf8;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public int getLength() {
        return 4;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        CPNameAndType cPNameAndType = this.f107175f;
        return cPNameAndType != null ? new ClassFileEntry[]{f107171g, this.f107174e, cPNameAndType} : new ClassFileEntry[]{f107171g, this.f107174e};
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.f107174e.resolve(classConstantPool);
        this.f107172c = classConstantPool.indexOf(this.f107174e);
        CPNameAndType cPNameAndType = this.f107175f;
        if (cPNameAndType == null) {
            this.f107173d = 0;
        } else {
            cPNameAndType.resolve(classConstantPool);
            this.f107173d = classConstantPool.indexOf(this.f107175f);
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return AttributeLayout.ATTRIBUTE_ENCLOSING_METHOD;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f107172c);
        dataOutputStream.writeShort(this.f107173d);
    }
}
