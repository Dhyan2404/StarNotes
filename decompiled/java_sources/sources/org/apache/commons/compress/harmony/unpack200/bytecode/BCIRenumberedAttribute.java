package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.function.IntUnaryOperator;
import org.apache.commons.compress.harmony.pack200.Pack200Exception;
import org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute;

/* loaded from: classes12.dex */
public abstract class BCIRenumberedAttribute extends Attribute {
    protected boolean renumbered;

    public BCIRenumberedAttribute(CPUTF8 cputf8) {
        super(cputf8);
    }

    /* renamed from: b */
    public static /* synthetic */ int m67107b(List list, int[] iArr, int i) {
        return ((Integer) list.get(iArr[i])).intValue();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public abstract int getLength();

    public abstract int[] getStartPCs();

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public boolean hasBCIRenumbering() {
        return true;
    }

    public void renumber(final List<Integer> list) throws Pack200Exception {
        if (this.renumbered) {
            throw new Error("Trying to renumber a line number table that has already been renumbered");
        }
        this.renumbered = true;
        final int[] startPCs = getStartPCs();
        Arrays.setAll(startPCs, new IntUnaryOperator() { // from class: com.sunia.HTREnginev2.ol
            @Override // java.util.function.IntUnaryOperator
            public final int applyAsInt(int i) {
                int m67107b;
                m67107b = BCIRenumberedAttribute.m67107b(list, startPCs, i);
                return m67107b;
            }
        });
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public abstract String toString();

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public abstract void writeBody(DataOutputStream dataOutputStream) throws IOException;
}
