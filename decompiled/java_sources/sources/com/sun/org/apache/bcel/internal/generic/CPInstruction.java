package com.sun.org.apache.bcel.internal.generic;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.classfile.Constant;
import com.sun.org.apache.bcel.internal.classfile.ConstantClass;
import com.sun.org.apache.bcel.internal.classfile.ConstantPool;
import com.sun.org.apache.bcel.internal.util.ByteSequence;
import java.io.DataOutputStream;
import java.io.IOException;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public abstract class CPInstruction extends Instruction implements TypedInstruction, IndexedInstruction {
    protected int index;

    public CPInstruction() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.opcode);
        dataOutputStream.writeShort(this.index);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IndexedInstruction
    public final int getIndex() {
        return this.index;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.TypedInstruction
    public Type getType(ConstantPoolGen constantPoolGen) {
        String constantString = constantPoolGen.getConstantPool().getConstantString(this.index, (byte) 7);
        if (!constantString.startsWith(IteratorUtils.f104923a)) {
            constantString = "L" + constantString + AndroidTreeView.f47214k;
        }
        return Type.getType(constantString);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void initFromFile(ByteSequence byteSequence, boolean z) throws IOException {
        setIndex(byteSequence.readUnsignedShort());
        this.length = (short) 3;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IndexedInstruction
    public void setIndex(int i) {
        if (i >= 0) {
            this.index = i;
            return;
        }
        throw new ClassGenException("Negative index value: " + i);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public String toString(boolean z) {
        return super.toString(z) + " " + this.index;
    }

    public CPInstruction(short s, int i) {
        super(s, (short) 3);
        setIndex(i);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public String toString(ConstantPool constantPool) {
        Constant constant = constantPool.getConstant(this.index);
        String constantToString = constantPool.constantToString(constant);
        if (constant instanceof ConstantClass) {
            constantToString = constantToString.replace('.', '/');
        }
        return Constants.OPCODE_NAMES[this.opcode] + " " + constantToString;
    }
}
