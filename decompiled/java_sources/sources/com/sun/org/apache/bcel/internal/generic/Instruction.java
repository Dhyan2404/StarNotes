package com.sun.org.apache.bcel.internal.generic;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.classfile.ConstantPool;
import com.sun.org.apache.bcel.internal.util.ByteSequence;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public abstract class Instruction implements Cloneable, Serializable {
    private static InstructionComparator cmp = InstructionComparator.DEFAULT;
    protected short length;
    protected short opcode;

    public Instruction() {
        this.length = (short) 1;
        this.opcode = (short) -1;
    }

    private static final String className(short s) {
        String upperCase = Constants.OPCODE_NAMES[s].toUpperCase();
        try {
            int length = upperCase.length();
            int i = length - 2;
            char charAt = upperCase.charAt(i);
            char charAt2 = upperCase.charAt(length - 1);
            if (charAt == '_' && charAt2 >= '0' && charAt2 <= '5') {
                upperCase = upperCase.substring(0, i);
            }
            if (upperCase.equals("ICONST_M1")) {
                upperCase = "ICONST";
            }
        } catch (StringIndexOutOfBoundsException e) {
            System.err.println(e);
        }
        return "com.sun.org.apache.bcel.internal.generic." + upperCase;
    }

    public static InstructionComparator getComparator() {
        return cmp;
    }

    public static final Instruction readInstruction(ByteSequence byteSequence) throws IOException {
        boolean z;
        short readUnsignedByte = (short) byteSequence.readUnsignedByte();
        if (readUnsignedByte == 196) {
            readUnsignedByte = (short) byteSequence.readUnsignedByte();
            z = true;
        } else {
            z = false;
        }
        Instruction instruction = InstructionConstants.INSTRUCTIONS[readUnsignedByte];
        if (instruction != null) {
            return instruction;
        }
        try {
            try {
                Instruction instruction2 = (Instruction) Class.forName(className(readUnsignedByte)).newInstance();
                if (z && !(instruction2 instanceof LocalVariableInstruction) && !(instruction2 instanceof IINC) && !(instruction2 instanceof RET)) {
                    throw new Exception("Illegal opcode after wide: " + ((int) readUnsignedByte));
                }
                instruction2.setOpcode(readUnsignedByte);
                instruction2.initFromFile(byteSequence, z);
                return instruction2;
            } catch (Exception e) {
                throw new ClassGenException(e.toString());
            }
        } catch (ClassNotFoundException unused) {
            throw new ClassGenException("Illegal opcode detected.");
        }
    }

    public static void setComparator(InstructionComparator instructionComparator) {
        cmp = instructionComparator;
    }

    private void setOpcode(short s) {
        this.opcode = s;
    }

    public abstract void accept(Visitor visitor);

    public int consumeStack(ConstantPoolGen constantPoolGen) {
        return Constants.CONSUME_STACK[this.opcode];
    }

    public Instruction copy() {
        if (InstructionConstants.INSTRUCTIONS[getOpcode()] != null) {
            return this;
        }
        try {
            return (Instruction) clone();
        } catch (CloneNotSupportedException e) {
            System.err.println(e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dispose() {
    }

    public void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.opcode);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Instruction) {
            return cmp.equals(this, (Instruction) obj);
        }
        return false;
    }

    public int getLength() {
        return this.length;
    }

    public String getName() {
        return Constants.OPCODE_NAMES[this.opcode];
    }

    public short getOpcode() {
        return this.opcode;
    }

    public void initFromFile(ByteSequence byteSequence, boolean z) throws IOException {
    }

    public int produceStack(ConstantPoolGen constantPoolGen) {
        return Constants.PRODUCE_STACK[this.opcode];
    }

    public String toString(boolean z) {
        if (z) {
            return getName() + IteratorUtils.f104923a + ((int) this.opcode) + "](" + ((int) this.length) + MotionUtils.f31762d;
        }
        return getName();
    }

    public String toString() {
        return toString(true);
    }

    public Instruction(short s, short s2) {
        this.length = s2;
        this.opcode = s;
    }

    public String toString(ConstantPool constantPool) {
        return toString(false);
    }
}
