package com.sun.org.apache.bcel.internal.classfile;

import java.io.DataInputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class ConstantInterfaceMethodref extends ConstantCP {
    public ConstantInterfaceMethodref(ConstantInterfaceMethodref constantInterfaceMethodref) {
        super((byte) 11, constantInterfaceMethodref.getClassIndex(), constantInterfaceMethodref.getNameAndTypeIndex());
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant, com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitConstantInterfaceMethodref(this);
    }

    public ConstantInterfaceMethodref(DataInputStream dataInputStream) throws IOException {
        super((byte) 11, dataInputStream);
    }

    public ConstantInterfaceMethodref(int i, int i2) {
        super((byte) 11, i, i2);
    }
}
