package com.twelvemonkeys.imageio.metadata.jpeg;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.evernote.edam.limits.Constants;
import com.google.android.exoplayer2.extractor.p007ts.PsExtractor;
import com.onyx.android.sdk.data.common.data.template.OfficialCoverType;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.sun.org.apache.xpath.internal.compiler.OpCodes;
import com.twelvemonkeys.lang.Validate;
import java.io.DataInputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.imageio.IIOException;
import javax.imageio.ImageIO;
import javax.imageio.plugins.jpeg.JPEGQTable;
import javax.imageio.stream.ImageInputStream;
import net.p110sf.saxon.om.StandardNames;
import org.apache.poi.hssf.record.BOFRecord;
import org.apache.poi.util.CodePageUtil;

/* loaded from: classes10.dex */
public final class JPEGQuality {

    /* renamed from: a */
    public static final int f94053a = 4;

    /* renamed from: b */
    public static final int f94054b = 64;

    /* renamed from: a */
    public static int m60479a(int[][] iArr) throws IOException {
        int[] iArr2;
        int[] iArr3;
        int i;
        int[] iArr4;
        int i2 = 0;
        for (int i3 = 0; i3 < 4; i3++) {
            if (iArr[i3] != null) {
                for (int i4 = 0; i4 < 64; i4++) {
                    i2 += iArr[i3][i4];
                }
            }
        }
        int[] iArr5 = iArr[0];
        if (iArr5 == null || (iArr4 = iArr[1]) == null) {
            if (iArr5 != null) {
                iArr2 = new int[]{510, 505, 422, 380, DataBinderMapperImpl.f53103Q5, 338, 326, 318, 311, 305, 300, 297, 293, 291, 288, 286, 284, 283, 281, 280, 279, 278, 277, 273, 262, 251, 243, 233, 225, 218, 211, 205, 198, 193, 186, 181, 177, 172, 168, 164, 158, 156, 152, 148, 145, 142, 139, 136, 133, 131, 129, 126, 123, 120, 118, 115, 113, 110, 107, 105, 102, 100, 97, 94, 92, 89, 87, 83, 81, 79, 76, 74, 70, 68, 66, 63, 61, 57, 55, 52, 50, 48, 44, 42, 39, 37, 34, 31, 29, 26, 24, 21, 18, 16, 13, 11, 8, 6, 3, 2, 0};
                iArr3 = new int[]{16320, 16315, 15946, 15277, 14655, 14073, 13623, 13230, 12859, 12560, 12240, 11861, 11456, 11081, 10714, 10360, 10027, 9679, 9368, 9056, 8680, 8331, 7995, 7668, 7376, 7084, 6823, 6562, 6345, 6125, 5939, 5756, 5571, 5421, 5240, 5086, 4976, 4829, 4719, 4616, 4463, 4393, 4280, 4166, Constants.EDAM_APPLICATIONDATA_VALUE_LEN_MAX, 3980, 3909, 3835, 3755, 3688, 3621, 3541, 3467, 3396, 3323, 3247, 3170, 3096, 3021, 2952, 2874, 2804, 2727, 2657, 2583, OfficialCoverType.COVER_LITTLE_RABBIT2_HORIZONTAL, 2437, 2362, 2290, 2211, 2136, 2068, BOFRecord.BUILD_YEAR, 1915, 1858, 1773, 1692, 1620, 1552, 1477, 1398, 1326, CodePageUtil.CP_WINDOWS_1251, 1179, 1109, OpCodes.NODETYPE_TEXT, 961, 884, 814, 736, 667, 592, 518, PsExtractor.f24606o, 369, 292, 221, 151, 86, 64, 0};
                i = iArr5[2] + iArr5[53];
            }
            return -1;
        }
        iArr2 = new int[]{1020, 1015, CodePageUtil.CP_SJIS, 848, 780, 735, TypedValues.TransitionType.TYPE_TO, 679, 660, StandardNames.XSI_SCHEMA_LOCATION_TYPE, 632, StandardNames.XS_TOTAL_DIGITS, 613, 607, 600, StandardNames.XS_FIELD, StandardNames.XS_DEFAULT_OPEN_CONTENT, StandardNames.XS_ATTRIBUTE_GROUP, StandardNames.XS_APPINFO, 571, StandardNames.XS_LANGUAGE, 542, 529, 514, 494, 474, 457, 439, 424, 410, 397, StandardNames.XML_SPACE, 373, 364, 351, 341, 334, 324, 317, 309, 299, 294, 287, 279, 274, DataBinderMapperImpl.f53206g4, 262, 257, 251, DataBinderMapperImpl.f53073M3, 243, 237, 232, 227, 222, 217, 213, 207, 202, 198, 192, 188, 183, 177, 173, 168, 163, 157, 153, 148, 143, 139, 132, 128, 125, 119, 115, 108, 104, 99, 94, 90, 84, 79, 74, 70, 64, 59, 55, 49, 45, 40, 34, 30, 25, 20, 15, 11, 6, 4, 0};
        iArr3 = new int[]{32640, 32635, 32266, 31495, 30665, 29804, 29146, CodePageUtil.CP_ISO_8859_9, 28104, 27670, 27225, 26725, 26210, 25716, 25240, 24789, 24373, 23946, 23572, 22846, 21801, 20842, 19949, 19121, 18386, 17651, 16998, 16349, 15800, 15247, 14783, 14321, 13859, 13535, 13081, 12702, 12423, 12056, 11779, 11513, 11135, 10955, 10676, 10392, 10208, 9928, 9747, 9564, 9369, 9193, 9017, 8822, 8639, 8458, 8270, 8084, 7896, 7710, 7527, 7347, 7156, 6977, 6788, 6607, 6422, 6236, 6054, 5867, 5684, 5495, 5305, 5128, 4945, 4751, 4638, 4442, 4248, 4065, 3888, 3698, OfficialCoverType.COVER_ALWAYS_HOLDING_A_BOOK_HORIZONTAL, 3326, 3139, 2957, 2775, 2586, 2405, 2216, 2037, 1846, 1666, 1483, 1297, 1109, 927, 735, 554, 375, 201, 128, 0};
        i = iArr5[2] + iArr5[53] + iArr4[0] + iArr4[63];
        for (int i5 = 0; i5 < 100; i5++) {
            int i6 = iArr2[i5];
            if (i >= i6 || i2 >= iArr3[i5]) {
                if ((i <= i6 && i2 <= iArr3[i5]) || i5 >= 50) {
                    return i5 + 1;
                }
                return -1;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public static int[][] m60480b(List<JPEGSegment> list) throws IOException {
        Validate.notNull(list, "segments");
        int[][] iArr = new int[4];
        for (JPEGSegment jPEGSegment : list) {
            if (jPEGSegment.marker() == 65499) {
                DataInputStream dataInputStream = new DataInputStream(jPEGSegment.data());
                int i = 0;
                while (i < jPEGSegment.length()) {
                    int read = dataInputStream.read();
                    int i2 = i + 1;
                    int i3 = read & 15;
                    int i4 = read >> 4;
                    if (i3 >= 4) {
                        throw new IIOException("Bad DQT table index: " + i3);
                    }
                    if (iArr[i3] != null) {
                        throw new IIOException("Duplicate DQT table index: " + i3);
                    }
                    if (i4 < 0 || i4 > 1) {
                        throw new IIOException("Bad DQT bit info: " + i4);
                    }
                    int i5 = (i4 + 1) * 64;
                    byte[] bArr = new byte[i5];
                    dataInputStream.readFully(bArr);
                    i = i2 + i5;
                    iArr[i3] = new int[64];
                    if (i4 == 0) {
                        for (int i6 = 0; i6 < i5; i6++) {
                            iArr[i3][i6] = (short) (bArr[i6] & 255);
                        }
                    } else if (i4 == 1) {
                        for (int i7 = 0; i7 < i5; i7 += 2) {
                            iArr[i3][i7 / 2] = (short) (((bArr[i7] & 255) << 8) | (bArr[i7 + 1] & 255));
                        }
                    }
                }
            }
        }
        return iArr;
    }

    public static float getJPEGQuality(List<JPEGSegment> list) throws IOException {
        int m60479a = m60479a(m60480b(list));
        return m60479a >= 0 ? m60479a / 100.0f : m60479a;
    }

    public static JPEGQTable[] getQTables(List<JPEGSegment> list) throws IOException {
        int[][] m60480b = m60480b(list);
        ArrayList arrayList = new ArrayList();
        for (int[] iArr : m60480b) {
            if (iArr != null) {
                arrayList.add(new JPEGQTable(iArr));
            }
        }
        return (JPEGQTable[]) arrayList.toArray(new JPEGQTable[arrayList.size()]);
    }

    public static void main(String[] strArr) throws IOException {
        for (String str : strArr) {
            float jPEGQuality = getJPEGQuality(ImageIO.createImageInputStream(new File(str)));
            System.err.println(str + " quality: " + jPEGQuality + "/" + ((int) (jPEGQuality * 100.0f)));
        }
    }

    public static float getJPEGQuality(ImageInputStream imageInputStream) throws IOException {
        return getJPEGQuality(JPEGSegmentUtil.readSegments(imageInputStream, JPEG.DQT, null));
    }
}
