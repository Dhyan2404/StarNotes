package org.apache.poi.hwmf.record;

import java.util.Arrays;
import java.util.function.BiConsumer;
import org.apache.poi.hwmf.record.HwmfBinaryRasterOp;

/* loaded from: classes12.dex */
public enum HwmfBinaryRasterOp {
    R2_BLACK(1, new BiConsumer() { // from class: com.sunia.HTREnginev2.o0i
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            HwmfBinaryRasterOp.R2_BLACK((int[]) obj, (int[]) obj2);
        }
    }),
    R2_NOTMERGEPEN(2, new BiConsumer() { // from class: com.sunia.HTREnginev2.b1i
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            HwmfBinaryRasterOp.R2_NOTMERGEPEN((int[]) obj, (int[]) obj2);
        }
    }),
    R2_MASKNOTPEN(3, new BiConsumer() { // from class: com.sunia.HTREnginev2.c1i
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            HwmfBinaryRasterOp.R2_MASKNOTPEN((int[]) obj, (int[]) obj2);
        }
    }),
    R2_NOTCOPYPEN(4, new BiConsumer() { // from class: com.sunia.HTREnginev2.d1i
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            HwmfBinaryRasterOp.R2_NOTCOPYPEN((int[]) obj, (int[]) obj2);
        }
    }),
    R2_MASKPENNOT(5, new BiConsumer() { // from class: com.sunia.HTREnginev2.p0i
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            HwmfBinaryRasterOp.R2_MASKPENNOT((int[]) obj, (int[]) obj2);
        }
    }),
    R2_NOT(6, new BiConsumer() { // from class: com.sunia.HTREnginev2.q0i
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            HwmfBinaryRasterOp.R2_NOT((int[]) obj, (int[]) obj2);
        }
    }),
    R2_XORPEN(7, new BiConsumer() { // from class: com.sunia.HTREnginev2.r0i
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            HwmfBinaryRasterOp.R2_XORPEN((int[]) obj, (int[]) obj2);
        }
    }),
    R2_NOTMASKPEN(8, new BiConsumer() { // from class: com.sunia.HTREnginev2.s0i
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            HwmfBinaryRasterOp.R2_NOTMASKPEN((int[]) obj, (int[]) obj2);
        }
    }),
    R2_MASKPEN(9, new BiConsumer() { // from class: com.sunia.HTREnginev2.t0i
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            HwmfBinaryRasterOp.R2_MASKPEN((int[]) obj, (int[]) obj2);
        }
    }),
    R2_NOTXORPEN(10, new BiConsumer() { // from class: com.sunia.HTREnginev2.u0i
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            HwmfBinaryRasterOp.R2_NOTXORPEN((int[]) obj, (int[]) obj2);
        }
    }),
    R2_NOP(11, new BiConsumer() { // from class: com.sunia.HTREnginev2.v0i
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            HwmfBinaryRasterOp.R2_NOP((int[]) obj, (int[]) obj2);
        }
    }),
    R2_MERGENOTPEN(12, new BiConsumer() { // from class: com.sunia.HTREnginev2.w0i
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            HwmfBinaryRasterOp.R2_MERGENOTPEN((int[]) obj, (int[]) obj2);
        }
    }),
    R2_COPYPEN(13, new BiConsumer() { // from class: com.sunia.HTREnginev2.x0i
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            HwmfBinaryRasterOp.R2_COPYPEN((int[]) obj, (int[]) obj2);
        }
    }),
    R2_MERGEPENNOT(14, new BiConsumer() { // from class: com.sunia.HTREnginev2.y0i
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            HwmfBinaryRasterOp.R2_MERGEPENNOT((int[]) obj, (int[]) obj2);
        }
    }),
    R2_MERGEPEN(15, new BiConsumer() { // from class: com.sunia.HTREnginev2.z0i
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            HwmfBinaryRasterOp.R2_MERGEPEN((int[]) obj, (int[]) obj2);
        }
    }),
    R2_WHITE(16, new BiConsumer() { // from class: com.sunia.HTREnginev2.a1i
        @Override // java.util.function.BiConsumer
        public final void accept(Object obj, Object obj2) {
            HwmfBinaryRasterOp.R2_WHITE((int[]) obj, (int[]) obj2);
        }
    });


    /* renamed from: op */
    private final BiConsumer<int[], int[]> f111437op;
    private final int opIndex;

    HwmfBinaryRasterOp(int i, BiConsumer biConsumer) {
        this.opIndex = i;
        this.f111437op = biConsumer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R2_BLACK(int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, -16777216);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R2_COPYPEN(int[] iArr, int[] iArr2) {
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R2_MASKNOTPEN(int[] iArr, int[] iArr2) {
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr2[i];
            iArr2[i] = (i2 & (~iArr[i]) & 16777215) | ((-16777216) & i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R2_MASKPEN(int[] iArr, int[] iArr2) {
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr2[i];
            iArr2[i] = (i2 & iArr[i] & 16777215) | ((-16777216) & i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R2_MASKPENNOT(int[] iArr, int[] iArr2) {
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr2[i];
            iArr2[i] = ((~i2) & iArr[i] & 16777215) | ((-16777216) & i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R2_MERGENOTPEN(int[] iArr, int[] iArr2) {
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr2[i];
            iArr2[i] = ((i2 | (~iArr[i])) & 16777215) | ((-16777216) & i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R2_MERGEPEN(int[] iArr, int[] iArr2) {
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr2[i];
            iArr2[i] = ((i2 | iArr[i]) & 16777215) | ((-16777216) & i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R2_MERGEPENNOT(int[] iArr, int[] iArr2) {
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr2[i];
            iArr2[i] = ((~i2) & iArr[i] & 16777215) | ((-16777216) & i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R2_NOP(int[] iArr, int[] iArr2) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R2_NOT(int[] iArr, int[] iArr2) {
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr2[i];
            iArr2[i] = ((~i2) & 16777215) | ((-16777216) & i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R2_NOTCOPYPEN(int[] iArr, int[] iArr2) {
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = (iArr2[i] & (-16777216)) | ((~iArr[i]) & 16777215);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R2_NOTMASKPEN(int[] iArr, int[] iArr2) {
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr2[i];
            iArr2[i] = ((~(i2 & iArr[i])) & 16777215) | ((-16777216) & i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R2_NOTMERGEPEN(int[] iArr, int[] iArr2) {
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr2[i];
            iArr2[i] = ((~(i2 | iArr[i])) & 16777215) | ((-16777216) & i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R2_NOTXORPEN(int[] iArr, int[] iArr2) {
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr2[i];
            iArr2[i] = ((~(i2 ^ iArr[i])) & 16777215) | ((-16777216) & i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R2_WHITE(int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R2_XORPEN(int[] iArr, int[] iArr2) {
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr2[i];
            iArr2[i] = ((i2 ^ iArr[i]) & 16777215) | ((-16777216) & i2);
        }
    }

    public int getOpIndex() {
        return this.opIndex;
    }

    public void process(int[] iArr, int[] iArr2) {
        this.f111437op.accept(iArr, iArr2);
    }

    public static HwmfBinaryRasterOp valueOf(int i) {
        for (HwmfBinaryRasterOp hwmfBinaryRasterOp : values()) {
            if (hwmfBinaryRasterOp.opIndex == i) {
                return hwmfBinaryRasterOp;
            }
        }
        return null;
    }
}
