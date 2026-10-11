package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import org.apache.commons.compress.harmony.unpack200.Segment;
import org.apache.commons.compress.harmony.unpack200.bytecode.forms.ByteCodeForm;

/* loaded from: classes12.dex */
public class ByteCode extends ClassFileEntry {

    /* renamed from: h */
    public static ByteCode[] f107114h = new ByteCode[255];

    /* renamed from: b */
    public final ByteCodeForm f107115b;

    /* renamed from: c */
    public ClassFileEntry[] f107116c;

    /* renamed from: d */
    public int[][] f107117d;

    /* renamed from: e */
    public int[] f107118e;

    /* renamed from: f */
    public int f107119f;

    /* renamed from: g */
    public int[] f107120g;

    public ByteCode(int i) {
        this(i, ClassFileEntry.NONE);
    }

    public static ByteCode getByteCode(int i) {
        int i2 = i & 255;
        if (!ByteCodeForm.get(i2).hasNoOperand()) {
            return new ByteCode(i2);
        }
        ByteCode[] byteCodeArr = f107114h;
        if (byteCodeArr[i2] == null) {
            byteCodeArr[i2] = new ByteCode(i2);
        }
        return f107114h[i2];
    }

    public void applyByteCodeTargetFixup(CodeAttribute codeAttribute) {
        getByteCodeForm().fixUpByteCodeTargets(this, codeAttribute);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void doWrite(DataOutputStream dataOutputStream) throws IOException {
        for (int i : this.f107118e) {
            dataOutputStream.writeByte(i);
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        return this == obj;
    }

    public void extractOperands(OperandManager operandManager, Segment segment, int i) {
        getByteCodeForm().setByteCodeOperands(this, operandManager, i);
    }

    public ByteCodeForm getByteCodeForm() {
        return this.f107115b;
    }

    public int getByteCodeIndex() {
        return this.f107119f;
    }

    public int[] getByteCodeTargets() {
        return this.f107120g;
    }

    public int getLength() {
        return this.f107118e.length;
    }

    public String getName() {
        return getByteCodeForm().getName();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        return this.f107116c;
    }

    public int[] getNestedPosition(int i) {
        return getNestedPositions()[i];
    }

    public int[][] getNestedPositions() {
        return this.f107117d;
    }

    public int getOpcode() {
        return getByteCodeForm().getOpcode();
    }

    public int[] getRewrite() {
        return this.f107118e;
    }

    public boolean hasMultipleByteCodes() {
        return getByteCodeForm().hasMultipleByteCodes();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        return objectHashCode();
    }

    public boolean nestedMustStartClassPool() {
        return this.f107115b.nestedMustStartClassPool();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        if (this.f107116c.length > 0) {
            for (int i = 0; i < this.f107116c.length; i++) {
                int i2 = getNestedPosition(i)[1];
                if (i2 == 1) {
                    setOperandByte(classConstantPool.indexOf(this.f107116c[i]), getNestedPosition(i)[0]);
                } else {
                    if (i2 != 2) {
                        throw new Error("Unhandled resolve " + this);
                    }
                    setOperand2Bytes(classConstantPool.indexOf(this.f107116c[i]), getNestedPosition(i)[0]);
                }
            }
        }
    }

    public void setByteCodeIndex(int i) {
        this.f107119f = i;
    }

    public void setByteCodeTargets(int[] iArr) {
        this.f107120g = iArr;
    }

    public void setNested(ClassFileEntry[] classFileEntryArr) {
        this.f107116c = classFileEntryArr;
    }

    public void setNestedPositions(int[][] iArr) {
        this.f107117d = iArr;
    }

    public void setOperand2Bytes(int i, int i2) {
        int firstOperandIndex = getByteCodeForm().firstOperandIndex();
        int length = getByteCodeForm().getRewrite().length;
        if (firstOperandIndex < 1) {
            throw new Error("Trying to rewrite " + this + " that has no rewrite");
        }
        int i3 = firstOperandIndex + i2;
        int i4 = i3 + 1;
        if (i4 <= length) {
            int[] iArr = this.f107118e;
            iArr[i3] = (65280 & i) >> 8;
            iArr[i4] = i & 255;
        } else {
            throw new Error("Trying to rewrite " + this + " with an int at position " + i2 + " but this won't fit in the rewrite array");
        }
    }

    public void setOperandByte(int i, int i2) {
        int firstOperandIndex = getByteCodeForm().firstOperandIndex();
        int operandLength = getByteCodeForm().operandLength();
        if (firstOperandIndex < 1) {
            throw new Error("Trying to rewrite " + this + " that has no rewrite");
        }
        int i3 = firstOperandIndex + i2;
        if (i3 <= operandLength) {
            this.f107118e[i3] = i & 255;
            return;
        }
        throw new Error("Trying to rewrite " + this + " with an byte at position " + i2 + " but this won't fit in the rewrite array");
    }

    public void setOperandBytes(int[] iArr) {
        int firstOperandIndex = getByteCodeForm().firstOperandIndex();
        int operandLength = getByteCodeForm().operandLength();
        if (firstOperandIndex < 1) {
            throw new Error("Trying to rewrite " + this + " that has no rewrite");
        }
        if (operandLength == iArr.length) {
            for (int i = 0; i < operandLength; i++) {
                this.f107118e[i + firstOperandIndex] = iArr[i] & 255;
            }
            return;
        }
        throw new Error("Trying to rewrite " + this + " with " + iArr.length + " but bytecode has length " + this.f107115b.operandLength());
    }

    public void setOperandSigned2Bytes(int i, int i2) {
        if (i >= 0) {
            setOperand2Bytes(i, i2);
        } else {
            setOperand2Bytes(i + 65536, i2);
        }
    }

    public void setRewrite(int[] iArr) {
        this.f107118e = iArr;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return getByteCodeForm().getName();
    }

    public ByteCode(int i, ClassFileEntry[] classFileEntryArr) {
        this.f107119f = -1;
        ByteCodeForm byteCodeForm = ByteCodeForm.get(i);
        this.f107115b = byteCodeForm;
        this.f107118e = byteCodeForm.getRewriteCopy();
        this.f107116c = classFileEntryArr;
    }
}
