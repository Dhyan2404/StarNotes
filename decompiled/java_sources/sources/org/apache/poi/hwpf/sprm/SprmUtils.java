package org.apache.poi.hwpf.sprm;

import java.util.List;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.Removal;

@Internal
/* loaded from: classes12.dex */
public final class SprmUtils {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int DEFAULT_MAX_RECORD_LENGTH = 100000;
    static int MAX_RECORD_LENGTH = 100000;

    public static int addSpecialSprm(short s, byte[] bArr, List<byte[]> list) {
        int length = bArr.length + 4;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 4, bArr.length);
        LittleEndian.putShort(bArr2, 0, s);
        LittleEndian.putShort(bArr2, 2, (short) (bArr.length + 1));
        list.add(bArr2);
        return length;
    }

    public static int addSprm(short s, boolean z, List<byte[]> list) {
        return addSprm(s, z ? 1 : 0, null, list);
    }

    public static int convertBrcToInt(short[] sArr) {
        byte[] bArr = new byte[4];
        LittleEndian.putShort(bArr, 0, sArr[0]);
        LittleEndian.putShort(bArr, 2, sArr[1]);
        return LittleEndian.getInt(bArr);
    }

    public static byte[] getGrpprl(List<byte[]> list, int i) {
        byte[] safelyAllocate = IOUtils.safelyAllocate(i, MAX_RECORD_LENGTH);
        int i2 = 0;
        for (int size = list.size() - 1; size >= 0; size--) {
            byte[] remove = list.remove(0);
            System.arraycopy(remove, 0, safelyAllocate, i2, remove.length);
            i2 += remove.length;
        }
        return safelyAllocate;
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    @Removal(version = "6.0.0")
    public static byte[] shortArrayToByteArray(short[] sArr) {
        byte[] safelyAllocate = IOUtils.safelyAllocate(sArr.length * 2, MAX_RECORD_LENGTH);
        for (int i = 0; i < sArr.length; i++) {
            LittleEndian.putShort(safelyAllocate, i * 2, sArr[i]);
        }
        return safelyAllocate;
    }

    public static int addSprm(short s, int i, byte[] bArr, List<byte[]> list) {
        byte[] bArr2;
        switch ((57344 & s) >> 13) {
            case 0:
            case 1:
                bArr2 = new byte[]{0, 0, (byte) i};
                break;
            case 2:
                bArr2 = new byte[4];
                LittleEndian.putShort(bArr2, 2, (short) i);
                break;
            case 3:
                bArr2 = new byte[6];
                LittleEndian.putInt(bArr2, 2, i);
                break;
            case 4:
            case 5:
                bArr2 = new byte[4];
                LittleEndian.putShort(bArr2, 2, (short) i);
                break;
            case 6:
                byte[] bArr3 = new byte[bArr.length + 3];
                bArr3[2] = (byte) bArr.length;
                System.arraycopy(bArr, 0, bArr3, 3, bArr.length);
                bArr2 = bArr3;
                break;
            case 7:
                bArr2 = new byte[5];
                byte[] bArr4 = new byte[4];
                LittleEndian.putInt(bArr4, 0, i);
                System.arraycopy(bArr4, 0, bArr2, 2, 3);
                break;
            default:
                throw new IllegalStateException("Invalid sprm type");
        }
        LittleEndian.putShort(bArr2, 0, s);
        list.add(bArr2);
        return bArr2.length;
    }
}
