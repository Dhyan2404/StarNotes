package com.sun.org.apache.bcel.internal.classfile;

import com.google.android.material.motion.MotionUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class SourceFile extends Attribute {
    private int sourcefile_index;

    public SourceFile(SourceFile sourceFile) {
        this(sourceFile.getNameIndex(), sourceFile.getLength(), sourceFile.getSourceFileIndex(), sourceFile.getConstantPool());
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute, com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitSourceFile(this);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public Attribute copy(ConstantPool constantPool) {
        return (SourceFile) clone();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        super.dump(dataOutputStream);
        dataOutputStream.writeShort(this.sourcefile_index);
    }

    public final int getSourceFileIndex() {
        return this.sourcefile_index;
    }

    public final String getSourceFileName() {
        return ((ConstantUtf8) this.constant_pool.getConstant(this.sourcefile_index, (byte) 1)).getBytes();
    }

    public final void setSourceFileIndex(int i) {
        this.sourcefile_index = i;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final String toString() {
        return "SourceFile(" + getSourceFileName() + MotionUtils.f31762d;
    }

    public SourceFile(int i, int i2, DataInputStream dataInputStream, ConstantPool constantPool) throws IOException {
        this(i, i2, dataInputStream.readUnsignedShort(), constantPool);
    }

    public SourceFile(int i, int i2, int i3, ConstantPool constantPool) {
        super((byte) 0, i, i2, constantPool);
        this.sourcefile_index = i3;
    }
}
