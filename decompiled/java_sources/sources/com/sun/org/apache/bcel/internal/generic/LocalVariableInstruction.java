package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.util.ByteSequence;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public abstract class LocalVariableInstruction extends Instruction implements TypedInstruction, IndexedInstruction {
    private short c_tag;
    private short canon_tag;

    /* renamed from: n */
    protected int f64072n;

    public LocalVariableInstruction(short s, short s2) {
        this.f64072n = -1;
        this.canon_tag = s;
        this.c_tag = s2;
    }

    private final boolean wide() {
        return this.f64072n > 255;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void dump(DataOutputStream dataOutputStream) throws IOException {
        if (wide()) {
            dataOutputStream.writeByte(196);
        }
        dataOutputStream.writeByte(this.opcode);
        if (this.length > 1) {
            if (wide()) {
                dataOutputStream.writeShort(this.f64072n);
            } else {
                dataOutputStream.writeByte(this.f64072n);
            }
        }
    }

    public short getCanonicalTag() {
        return this.canon_tag;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IndexedInstruction
    public final int getIndex() {
        return this.f64072n;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.bcel.internal.generic.Type getType(com.sun.org.apache.bcel.internal.generic.ConstantPoolGen r3) {
        /*
            r2 = this;
            short r3 = r2.canon_tag
            switch(r3) {
                case 21: goto L2d;
                case 22: goto L2a;
                case 23: goto L27;
                case 24: goto L24;
                case 25: goto L21;
                default: goto L5;
            }
        L5:
            switch(r3) {
                case 54: goto L2d;
                case 55: goto L2a;
                case 56: goto L27;
                case 57: goto L24;
                case 58: goto L21;
                default: goto L8;
            }
        L8:
            com.sun.org.apache.bcel.internal.generic.ClassGenException r3 = new com.sun.org.apache.bcel.internal.generic.ClassGenException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Oops: unknown case in switch"
            r0.append(r1)
            short r2 = r2.canon_tag
            r0.append(r2)
            java.lang.String r2 = r0.toString()
            r3.<init>(r2)
            throw r3
        L21:
            com.sun.org.apache.bcel.internal.generic.ObjectType r2 = com.sun.org.apache.bcel.internal.generic.Type.OBJECT
            return r2
        L24:
            com.sun.org.apache.bcel.internal.generic.BasicType r2 = com.sun.org.apache.bcel.internal.generic.Type.DOUBLE
            return r2
        L27:
            com.sun.org.apache.bcel.internal.generic.BasicType r2 = com.sun.org.apache.bcel.internal.generic.Type.FLOAT
            return r2
        L2a:
            com.sun.org.apache.bcel.internal.generic.BasicType r2 = com.sun.org.apache.bcel.internal.generic.Type.LONG
            return r2
        L2d:
            com.sun.org.apache.bcel.internal.generic.BasicType r2 = com.sun.org.apache.bcel.internal.generic.Type.INT
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.bcel.internal.generic.LocalVariableInstruction.getType(com.sun.org.apache.bcel.internal.generic.ConstantPoolGen):com.sun.org.apache.bcel.internal.generic.Type");
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void initFromFile(ByteSequence byteSequence, boolean z) throws IOException {
        if (z) {
            this.f64072n = byteSequence.readUnsignedShort();
            this.length = (short) 4;
            return;
        }
        short s = this.opcode;
        if ((s >= 21 && s <= 25) || (s >= 54 && s <= 58)) {
            this.f64072n = byteSequence.readUnsignedByte();
            this.length = (short) 2;
        } else if (s <= 45) {
            this.f64072n = (s - 26) % 4;
            this.length = (short) 1;
        } else {
            this.f64072n = (s - 59) % 4;
            this.length = (short) 1;
        }
    }

    public void setIndex(int i) {
        if (i < 0 || i > 65535) {
            throw new ClassGenException("Illegal value: " + i);
        }
        this.f64072n = i;
        if (i >= 0 && i <= 3) {
            this.opcode = (short) (this.c_tag + i);
            this.length = (short) 1;
            return;
        }
        this.opcode = this.canon_tag;
        if (wide()) {
            this.length = (short) 4;
        } else {
            this.length = (short) 2;
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public String toString(boolean z) {
        short s = this.opcode;
        if ((s >= 26 && s <= 45) || (s >= 59 && s <= 78)) {
            return super.toString(z);
        }
        return super.toString(z) + " " + this.f64072n;
    }

    public LocalVariableInstruction() {
        this.f64072n = -1;
        this.c_tag = (short) -1;
        this.canon_tag = (short) -1;
    }

    public LocalVariableInstruction(short s, short s2, int i) {
        super(s, (short) 2);
        this.f64072n = -1;
        this.c_tag = s2;
        this.canon_tag = s;
        setIndex(i);
    }
}
