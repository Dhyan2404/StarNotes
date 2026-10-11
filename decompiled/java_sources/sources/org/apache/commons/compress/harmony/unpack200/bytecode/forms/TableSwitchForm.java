package org.apache.commons.compress.harmony.unpack200.bytecode.forms;

import java.util.Arrays;
import java.util.function.IntUnaryOperator;
import org.apache.commons.compress.harmony.unpack200.bytecode.ByteCode;
import org.apache.commons.compress.harmony.unpack200.bytecode.OperandManager;

/* loaded from: classes12.dex */
public class TableSwitchForm extends SwitchForm {
    public TableSwitchForm(int i, String str) {
        super(i, str);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.forms.ByteCodeForm
    public void setByteCodeOperands(ByteCode byteCode, final OperandManager operandManager, int i) {
        int nextCaseCount = operandManager.nextCaseCount();
        int nextLabel = operandManager.nextLabel();
        int nextCaseValues = operandManager.nextCaseValues();
        int[] iArr = new int[nextCaseCount];
        Arrays.setAll(iArr, new IntUnaryOperator() { // from class: com.sunia.HTREnginev2.w8n
            @Override // java.util.function.IntUnaryOperator
            public final int applyAsInt(int i2) {
                int nextLabel2;
                nextLabel2 = OperandManager.this.nextLabel();
                return nextLabel2;
            }
        });
        int i2 = nextCaseCount + 1;
        int[] iArr2 = new int[i2];
        iArr2[0] = nextLabel;
        int i3 = 1;
        System.arraycopy(iArr, 0, iArr2, 1, i2 - 1);
        byteCode.setByteCodeTargets(iArr2);
        int i4 = (nextCaseValues + nextCaseCount) - 1;
        int i5 = 3 - (i % 4);
        int[] iArr3 = new int[i5 + 1 + 4 + 4 + 4 + (nextCaseCount * 4)];
        iArr3[0] = byteCode.getOpcode();
        int i6 = 0;
        while (i6 < i5) {
            iArr3[i3] = 0;
            i6++;
            i3++;
        }
        int i7 = i3 + 1;
        iArr3[i3] = -1;
        int i8 = i7 + 1;
        iArr3[i7] = -1;
        int i9 = i8 + 1;
        iArr3[i8] = -1;
        int i10 = i9 + 1;
        iArr3[i9] = -1;
        setRewrite4Bytes(nextCaseValues, i10, iArr3);
        int i11 = i10 + 4;
        setRewrite4Bytes(i4, i11, iArr3);
        int i12 = i11 + 4;
        for (int i13 = 0; i13 < nextCaseCount; i13++) {
            int i14 = i12 + 1;
            iArr3[i12] = -1;
            int i15 = i14 + 1;
            iArr3[i14] = -1;
            int i16 = i15 + 1;
            iArr3[i15] = -1;
            i12 = i16 + 1;
            iArr3[i16] = -1;
        }
        byteCode.setRewrite(iArr3);
    }
}
