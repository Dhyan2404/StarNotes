package org.apache.commons.compress.harmony.unpack200.bytecode.forms;

import java.util.Objects;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;
import org.apache.commons.compress.harmony.unpack200.bytecode.ByteCode;
import org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry;
import org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry;
import org.apache.commons.compress.harmony.unpack200.bytecode.OperandManager;

/* loaded from: classes12.dex */
public abstract class ReferenceForm extends ByteCodeForm {
    public ReferenceForm(int i, String str, int[] iArr) {
        super(i, str, iArr);
    }

    public abstract int getOffset(OperandManager operandManager);

    public abstract int getPoolID();

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.forms.ByteCodeForm
    public void setByteCodeOperands(ByteCode byteCode, OperandManager operandManager, int i) {
        try {
            setNestedEntries(byteCode, operandManager, getOffset(operandManager));
        } catch (Pack200Exception unused) {
            throw new Error("Got a pack200 exception. What to do?");
        }
    }

    public void setNestedEntries(ByteCode byteCode, OperandManager operandManager, int i) throws Pack200Exception {
        ConstantPoolEntry constantPoolEntry = operandManager.globalConstantPool().getConstantPoolEntry(getPoolID(), i);
        Objects.requireNonNull(constantPoolEntry, "Null nested entries are not allowed");
        byteCode.setNested(new ClassFileEntry[]{constantPoolEntry});
        byteCode.setNestedPositions(new int[][]{new int[]{0, 2}});
    }
}
