package org.apache.commons.compress.harmony.unpack200.bytecode.forms;

import java.util.Arrays;
import java.util.function.IntUnaryOperator;
import org.apache.commons.compress.harmony.unpack200.bytecode.ByteCode;
import org.apache.commons.compress.harmony.unpack200.bytecode.OperandManager;

/* loaded from: classes12.dex */
public class LookupSwitchForm extends SwitchForm {
    public LookupSwitchForm(int i, String str) {
        super(i, str);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.forms.ByteCodeForm
    public void setByteCodeOperands(ByteCode byteCode, final OperandManager operandManager, int i) {
        int nextCaseCount = operandManager.nextCaseCount();
        int nextLabel = operandManager.nextLabel();
        int[] iArr = new int[nextCaseCount];
        Arrays.setAll(iArr, new IntUnaryOperator() { // from class: com.sunia.HTREnginev2.y5j
            @Override // java.util.function.IntUnaryOperator
            public final int applyAsInt(int i2) {
                int nextCaseValues;
                nextCaseValues = OperandManager.this.nextCaseValues();
                return nextCaseValues;
            }
        });
        int[] iArr2 = new int[nextCaseCount];
        Arrays.setAll(iArr2, new IntUnaryOperator() { // from class: com.sunia.HTREnginev2.z5j
            @Override // java.util.function.IntUnaryOperator
            public final int applyAsInt(int i2) {
                int nextLabel2;
                nextLabel2 = OperandManager.this.nextLabel();
                return nextLabel2;
            }
        });
        int i2 = nextCaseCount + 1;
        int[] iArr3 = new int[i2];
        iArr3[0] = nextLabel;
        int i3 = 1;
        System.arraycopy(iArr2, 0, iArr3, 1, i2 - 1);
        byteCode.setByteCodeTargets(iArr3);
        int i4 = 3 - (i % 4);
        int i5 = nextCaseCount * 4;
        int[] iArr4 = new int[i4 + 1 + 4 + 4 + i5 + i5];
        iArr4[0] = byteCode.getOpcode();
        int i6 = 0;
        while (i6 < i4) {
            iArr4[i3] = 0;
            i6++;
            i3++;
        }
        int i7 = i3 + 1;
        iArr4[i3] = -1;
        int i8 = i7 + 1;
        iArr4[i7] = -1;
        int i9 = i8 + 1;
        iArr4[i8] = -1;
        int i10 = i9 + 1;
        iArr4[i9] = -1;
        setRewrite4Bytes(nextCaseCount, i10, iArr4);
        int i11 = i10 + 4;
        for (int i12 = 0; i12 < nextCaseCount; i12++) {
            setRewrite4Bytes(iArr[i12], i11, iArr4);
            int i13 = i11 + 4;
            int i14 = i13 + 1;
            iArr4[i13] = -1;
            int i15 = i14 + 1;
            iArr4[i14] = -1;
            int i16 = i15 + 1;
            iArr4[i15] = -1;
            i11 = i16 + 1;
            iArr4[i16] = -1;
        }
        byteCode.setRewrite(iArr4);
    }
}
