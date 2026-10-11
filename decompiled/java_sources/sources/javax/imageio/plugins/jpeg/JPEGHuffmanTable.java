package javax.imageio.plugins.jpeg;

import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import org.apache.poi.hssf.record.EscherAggregate;
import org.apache.poi.hssf.record.MergeCellsRecord;

/* loaded from: classes5.dex */
public class JPEGHuffmanTable {
    public static final JPEGHuffmanTable StdACChrominance;
    public static final JPEGHuffmanTable StdACLuminance;
    public static final JPEGHuffmanTable StdDCChrominance;
    public static final JPEGHuffmanTable StdDCLuminance;

    /* renamed from: c */
    public static final short[] f97897c;

    /* renamed from: d */
    public static final short[] f97898d;

    /* renamed from: e */
    public static final short[] f97899e;

    /* renamed from: f */
    public static final short[] f97900f;

    /* renamed from: g */
    public static final short[] f97901g;

    /* renamed from: h */
    public static final short[] f97902h;

    /* renamed from: i */
    public static final short[] f97903i;

    /* renamed from: j */
    public static final short[] f97904j;

    /* renamed from: a */
    public short[] f97905a;

    /* renamed from: b */
    public short[] f97906b;

    static {
        short[] sArr = {0, 1, 5, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0};
        f97897c = sArr;
        short[] sArr2 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
        f97898d = sArr2;
        short[] sArr3 = {0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0};
        f97899e = sArr3;
        short[] sArr4 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
        f97900f = sArr4;
        short[] sArr5 = {0, 2, 1, 3, 3, 2, 4, 3, 5, 5, 4, 4, 0, 0, 1, 125};
        f97901g = sArr5;
        short[] sArr6 = {1, 2, 3, 0, 4, 17, 5, 18, 33, 49, 65, 6, 19, 81, 97, 7, 34, 113, 20, 50, 129, 145, 161, 8, 35, 66, 177, 193, 21, 82, 209, 240, 36, 51, 98, 114, 130, 9, 10, 22, 23, 24, 25, 26, 37, 38, 39, 40, 41, 42, 52, 53, 54, 55, 56, 57, 58, 67, 68, 69, 70, 71, 72, 73, 74, 83, 84, 85, 86, 87, 88, 89, 90, 99, 100, 101, 102, 103, 104, 105, 106, 115, 116, 117, 118, 119, 120, 121, 122, 131, 132, 133, 134, 135, 136, 137, 138, 146, 147, 148, 149, 150, 151, 152, 153, 154, 162, 163, 164, 165, 166, 167, 168, 169, 170, 178, 179, 180, 181, 182, 183, 184, 185, EscherAggregate.ST_BRACEPAIR, 194, 195, 196, 197, 198, 199, 200, 201, 202, 210, 211, 212, 213, 214, 215, 216, Constants.INVOKESTATIC_QUICK, 218, 225, 226, 227, Constants.PUTFIELD_QUICK_W, MergeCellsRecord.sid, 230, 231, 232, 233, 234, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250};
        f97902h = sArr6;
        short[] sArr7 = {0, 2, 1, 2, 4, 4, 3, 4, 7, 5, 4, 4, 0, 1, 2, 119};
        f97903i = sArr7;
        short[] sArr8 = {0, 1, 2, 3, 17, 4, 5, 33, 49, 6, 18, 65, 81, 7, 97, 113, 19, 34, 50, 129, 8, 20, 66, 145, 161, 177, 193, 9, 35, 51, 82, 240, 21, 98, 114, 209, 10, 22, 36, 52, 225, 37, 241, 23, 24, 25, 26, 38, 39, 40, 41, 42, 53, 54, 55, 56, 57, 58, 67, 68, 69, 70, 71, 72, 73, 74, 83, 84, 85, 86, 87, 88, 89, 90, 99, 100, 101, 102, 103, 104, 105, 106, 115, 116, 117, 118, 119, 120, 121, 122, 130, 131, 132, 133, 134, 135, 136, 137, 138, 146, 147, 148, 149, 150, 151, 152, 153, 154, 162, 163, 164, 165, 166, 167, 168, 169, 170, 178, 179, 180, 181, 182, 183, 184, 185, EscherAggregate.ST_BRACEPAIR, 194, 195, 196, 197, 198, 199, 200, 201, 202, 210, 211, 212, 213, 214, 215, 216, Constants.INVOKESTATIC_QUICK, 218, 226, 227, Constants.PUTFIELD_QUICK_W, MergeCellsRecord.sid, 230, 231, 232, 233, 234, 242, 243, 244, 245, 246, 247, 248, 249, 250};
        f97904j = sArr8;
        StdDCLuminance = new JPEGHuffmanTable(sArr, sArr2, false);
        StdDCChrominance = new JPEGHuffmanTable(sArr3, sArr4, false);
        StdACLuminance = new JPEGHuffmanTable(sArr5, sArr6, false);
        StdACChrominance = new JPEGHuffmanTable(sArr7, sArr8, false);
    }

    public JPEGHuffmanTable(short[] sArr, short[] sArr2) {
        if (sArr != null && sArr2 != null && sArr.length != 0 && sArr2.length != 0 && sArr.length <= 16 && sArr2.length <= 256) {
            for (int i = 0; i < sArr.length; i++) {
                if (sArr[i] < 0) {
                    throw new IllegalArgumentException("lengths[" + i + "] < 0");
                }
            }
            for (int i2 = 0; i2 < sArr2.length; i2++) {
                if (sArr2[i2] < 0) {
                    throw new IllegalArgumentException("values[" + i2 + "] < 0");
                }
            }
            this.f97905a = Arrays.copyOf(sArr, sArr.length);
            this.f97906b = Arrays.copyOf(sArr2, sArr2.length);
            m61476a();
            return;
        }
        throw new IllegalArgumentException("Illegal lengths or values");
    }

    /* renamed from: a */
    public final void m61476a() {
        int i = 0;
        int i2 = 0;
        while (true) {
            short[] sArr = this.f97905a;
            if (i >= sArr.length) {
                break;
            }
            i2 += sArr[i];
            i++;
        }
        if (i2 != this.f97906b.length) {
            throw new IllegalArgumentException("lengths do not correspond to length of value table");
        }
    }

    public short[] getLengths() {
        short[] sArr = this.f97905a;
        return Arrays.copyOf(sArr, sArr.length);
    }

    public short[] getValues() {
        short[] sArr = this.f97906b;
        return Arrays.copyOf(sArr, sArr.length);
    }

    public String toString() {
        String property = System.getProperty("line.separator", "\n");
        StringBuilder sb = new StringBuilder("JPEGHuffmanTable");
        sb.append(property);
        sb.append("lengths:");
        for (int i = 0; i < this.f97905a.length; i++) {
            sb.append(" ");
            sb.append((int) this.f97905a[i]);
        }
        sb.append(property);
        sb.append("values:");
        for (int i2 = 0; i2 < this.f97906b.length; i2++) {
            sb.append(" ");
            sb.append((int) this.f97906b[i2]);
        }
        return sb.toString();
    }

    public JPEGHuffmanTable(short[] sArr, short[] sArr2, boolean z) {
        if (z) {
            this.f97905a = Arrays.copyOf(sArr, sArr.length);
            this.f97906b = Arrays.copyOf(sArr2, sArr2.length);
        } else {
            this.f97905a = sArr;
            this.f97906b = sArr2;
        }
    }
}
