package com.sun.org.apache.bcel.internal.classfile;

import java.io.DataInputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class ConstantFieldref extends ConstantCP {
    public ConstantFieldref(ConstantFieldref constantFieldref) {
        super((byte) 9, constantFieldref.getClassIndex(), constantFieldref.getNameAndTypeIndex());
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant, com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitConstantFieldref(this);
    }

    public ConstantFieldref(DataInputStream dataInputStream) throws IOException {
        super((byte) 9, dataInputStream);
    }

    public ConstantFieldref(int i, int i2) {
        super((byte) 9, i, i2);
    }
}
