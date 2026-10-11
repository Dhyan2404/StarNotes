package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.util.ByteSequence;
import java.io.IOException;

/* loaded from: classes10.dex */
public class LDC_W extends LDC {
    public LDC_W() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.LDC, com.sun.org.apache.bcel.internal.generic.CPInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void initFromFile(ByteSequence byteSequence, boolean z) throws IOException {
        setIndex(byteSequence.readUnsignedShort());
        this.opcode = (short) 19;
    }

    public LDC_W(int i) {
        super(i);
    }
}
