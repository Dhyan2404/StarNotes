package org.apache.poi.hpbf.model.qcbits;

import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public abstract class QCPLCBit extends QCBit {
    private static final int MAX_NUMBER_OF_PLCS = 1000;
    private final int numberOfPLCs;
    private long[] plcValA;
    private long[] plcValB;
    private int[] preData;
    private final int typeOfPLCS;

    /* loaded from: classes12.dex */
    public static class Type0 extends QCPLCBit {
        private Type0(String str, String str2, byte[] bArr) {
            super(str, str2, bArr);
            setPreData(new int[]{LittleEndian.getUShort(bArr, 8), LittleEndian.getUShort(bArr, 10), LittleEndian.getUShort(bArr, 12), LittleEndian.getUShort(bArr, 14)});
            int numberOfPLCs = getNumberOfPLCs();
            long[] jArr = new long[numberOfPLCs];
            long[] jArr2 = new long[numberOfPLCs];
            for (int i = 0; i < numberOfPLCs; i++) {
                int i2 = (i * 4) + 16;
                jArr[i] = LittleEndian.getUShort(bArr, i2);
                jArr2[i] = LittleEndian.getUShort(bArr, i2 + 2);
            }
            setPlcValA(jArr);
            setPlcValB(jArr2);
        }
    }

    /* loaded from: classes12.dex */
    public static class Type12 extends QCPLCBit {
        private static final int oneStartsAt = 76;
        private static final int threePlusIncrement = 22;
        private static final int twoStartsAt = 104;
        private final String[] hyperlinks;

        public int getAllTextEndAt() {
            return getPreData()[getNumberOfPLCs() + 1];
        }

        public String getHyperlink(int i) {
            return this.hyperlinks[i];
        }

        public int getNumberOfHyperlinks() {
            return this.hyperlinks.length;
        }

        public int getTextStartAt(int i) {
            return getPreData()[i + 1];
        }

        private Type12(String str, String str2, byte[] bArr) {
            super(str, str2, bArr);
            int numberOfPLCs = getNumberOfPLCs();
            int i = 52;
            this.hyperlinks = new String[bArr.length == 52 ? 0 : numberOfPLCs];
            int i2 = numberOfPLCs + 1 + 1;
            int[] iArr = new int[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                iArr[i3] = (int) LittleEndian.getUInt(bArr, (i3 * 4) + 8);
            }
            setPreData(iArr);
            int i4 = (numberOfPLCs * 4) + 12 + 4;
            if (numberOfPLCs == 1 && this.hyperlinks.length == 1) {
                i = 76;
            } else if (numberOfPLCs >= 2) {
                i = ((numberOfPLCs - 2) * 22) + 104;
            }
            int i5 = (i - i4) / 2;
            long[] jArr = new long[i5];
            long[] jArr2 = new long[0];
            for (int i6 = 0; i6 < i5; i6++) {
                jArr[i6] = LittleEndian.getUShort(bArr, (i6 * 2) + i4);
            }
            setPlcValA(jArr);
            setPlcValB(jArr2);
            for (int i7 = 0; i7 < this.hyperlinks.length; i7++) {
                int uShort = LittleEndian.getUShort(bArr, i);
                int i8 = i + 2;
                if (LittleEndian.getUShort(bArr, i8) == 0) {
                    this.hyperlinks[i7] = "";
                } else {
                    this.hyperlinks[i7] = StringUtil.getFromUnicodeLE(bArr, i8, uShort);
                    uShort = (uShort * 2) + 2;
                }
                i += uShort;
            }
        }
    }

    /* loaded from: classes12.dex */
    public static class Type4 extends QCPLCBit {
        private Type4(String str, String str2, byte[] bArr) {
            super(str, str2, bArr);
            setPreData(new int[]{LittleEndian.getUShort(bArr, 8), LittleEndian.getUShort(bArr, 10), LittleEndian.getUShort(bArr, 12), LittleEndian.getUShort(bArr, 14)});
            int numberOfPLCs = getNumberOfPLCs();
            long[] jArr = new long[numberOfPLCs];
            long[] jArr2 = new long[numberOfPLCs];
            for (int i = 0; i < numberOfPLCs; i++) {
                int i2 = (i * 8) + 16;
                jArr[i] = LittleEndian.getUInt(bArr, i2);
                jArr2[i] = LittleEndian.getUInt(bArr, i2 + 4);
            }
            setPlcValA(jArr);
            setPlcValB(jArr2);
        }
    }

    /* loaded from: classes12.dex */
    public static class Type8 extends QCPLCBit {
        private Type8(String str, String str2, byte[] bArr) {
            super(str, str2, bArr);
            setPreData(new int[]{LittleEndian.getUShort(bArr, 8), LittleEndian.getUShort(bArr, 10), LittleEndian.getUShort(bArr, 12), LittleEndian.getUShort(bArr, 14), LittleEndian.getUShort(bArr, 16), LittleEndian.getUShort(bArr, 18), LittleEndian.getUShort(bArr, 20)});
            int numberOfPLCs = getNumberOfPLCs();
            long[] jArr = new long[numberOfPLCs];
            long[] jArr2 = new long[numberOfPLCs];
            for (int i = 0; i < numberOfPLCs; i++) {
                int i2 = (i * 8) + 22;
                jArr[i] = LittleEndian.getUInt(bArr, i2);
                jArr2[i] = LittleEndian.getUInt(bArr, i2 + 4);
            }
            setPlcValA(jArr);
            setPlcValB(jArr2);
        }
    }

    public static QCPLCBit createQCPLCBit(String str, String str2, byte[] bArr) {
        int uInt = (int) LittleEndian.getUInt(bArr, 4);
        if (uInt == 0) {
            return new Type0(str, str2, bArr);
        }
        if (uInt == 4) {
            return new Type4(str, str2, bArr);
        }
        if (uInt == 8) {
            return new Type8(str, str2, bArr);
        }
        if (uInt == 12) {
            return new Type12(str, str2, bArr);
        }
        throw new IllegalArgumentException("Sorry, I don't know how to deal with PLCs of type " + uInt);
    }

    public int getNumberOfPLCs() {
        return this.numberOfPLCs;
    }

    public long[] getPlcValA() {
        return this.plcValA;
    }

    public long[] getPlcValB() {
        return this.plcValB;
    }

    public int[] getPreData() {
        return this.preData;
    }

    public int getTypeOfPLCS() {
        return this.typeOfPLCS;
    }

    public final void setPlcValA(long[] jArr) {
        this.plcValA = (long[]) jArr.clone();
    }

    public final void setPlcValB(long[] jArr) {
        this.plcValB = (long[]) jArr.clone();
    }

    public final void setPreData(int[] iArr) {
        this.preData = (int[]) iArr.clone();
    }

    private QCPLCBit(String str, String str2, byte[] bArr) {
        super(str, str2, bArr);
        int uInt = (int) LittleEndian.getUInt(bArr, 0);
        this.numberOfPLCs = uInt;
        if (uInt >= 0) {
            this.typeOfPLCS = (int) LittleEndian.getUInt(bArr, 4);
            IOUtils.safelyAllocateCheck(uInt, 1000);
            this.plcValA = new long[uInt];
            this.plcValB = new long[uInt];
            return;
        }
        throw new IllegalArgumentException("Invalid number of PLCs: " + uInt);
    }
}
