package org.apache.commons.compress.archivers.zip;

import com.fasterxml.jackson.core.base.ParserBase;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.zip.CRC32;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.compress.archivers.zip.UnsupportedZipFeatureException;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;

/* loaded from: classes12.dex */
public abstract class ZipUtil {

    /* renamed from: a */
    public static final byte[] f105944a = ZipLong.getBytes(8448);

    /* renamed from: a */
    public static long m66564a(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 63) {
            return bigInteger.longValue();
        }
        throw new NumberFormatException("The BigInteger cannot fit inside a 64 bit java long: [" + bigInteger + IteratorUtils.f104924b);
    }

    public static long adjustToLong(int i) {
        return i < 0 ? i + 4294967296L : i;
    }

    /* renamed from: b */
    public static boolean m66565b(ZipArchiveEntry zipArchiveEntry) {
        return m66572i(zipArchiveEntry) && m66573j(zipArchiveEntry);
    }

    /* renamed from: c */
    public static void m66566c(ZipArchiveEntry zipArchiveEntry) throws UnsupportedZipFeatureException {
        if (!m66572i(zipArchiveEntry)) {
            throw new UnsupportedZipFeatureException(UnsupportedZipFeatureException.Feature.ENCRYPTION, zipArchiveEntry);
        }
        if (m66573j(zipArchiveEntry)) {
            return;
        }
        ZipMethod methodByCode = ZipMethod.getMethodByCode(zipArchiveEntry.getMethod());
        if (methodByCode != null) {
            throw new UnsupportedZipFeatureException(methodByCode, zipArchiveEntry);
        }
        throw new UnsupportedZipFeatureException(UnsupportedZipFeatureException.Feature.METHOD, zipArchiveEntry);
    }

    /* renamed from: d */
    public static void m66567d(byte[] bArr, byte[] bArr2, int i) {
        if (bArr != null) {
            System.arraycopy(bArr, 0, bArr2, i, bArr.length);
        }
    }

    public static long dosToJavaTime(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, ((int) ((j >> 25) & 127)) + 1980);
        calendar.set(2, ((int) ((j >> 21) & 15)) - 1);
        calendar.set(5, ((int) (j >> 16)) & 31);
        calendar.set(11, ((int) (j >> 11)) & 31);
        calendar.set(12, ((int) (j >> 5)) & 63);
        calendar.set(13, ((int) (j << 1)) & 62);
        calendar.set(14, 0);
        return calendar.getTime().getTime();
    }

    /* renamed from: e */
    public static byte[] m66568e(byte[] bArr) {
        if (bArr != null) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        return null;
    }

    /* renamed from: f */
    public static String m66569f(AbstractUnicodeExtraField abstractUnicodeExtraField, byte[] bArr) {
        if (abstractUnicodeExtraField == null) {
            return null;
        }
        CRC32 crc32 = new CRC32();
        crc32.update(bArr);
        if (crc32.getValue() != abstractUnicodeExtraField.getNameCRC32()) {
            return null;
        }
        try {
            return ZipEncodingHelper.f105932b.decode(abstractUnicodeExtraField.getUnicodeName());
        } catch (IOException unused) {
            return null;
        }
    }

    public static Date fromDosTime(ZipLong zipLong) {
        return new Date(dosToJavaTime(zipLong.getValue()));
    }

    /* renamed from: g */
    public static BigInteger m66570g(long j) {
        if (j >= ParserBase.f21225q) {
            if (j < 0 && j >= ParserBase.f21225q) {
                j = adjustToLong((int) j);
            }
            return BigInteger.valueOf(j);
        }
        throw new IllegalArgumentException("Negative longs < -2^31 not permitted: [" + j + IteratorUtils.f104924b);
    }

    /* renamed from: h */
    public static void m66571h(ZipArchiveEntry zipArchiveEntry, byte[] bArr, byte[] bArr2) {
        ZipExtraField extraField = zipArchiveEntry.getExtraField(UnicodePathExtraField.UPATH_ID);
        String m66569f = m66569f(extraField instanceof UnicodePathExtraField ? (UnicodePathExtraField) extraField : null, bArr);
        if (m66569f != null) {
            zipArchiveEntry.setName(m66569f);
            zipArchiveEntry.setNameSource(ZipArchiveEntry.NameSource.UNICODE_EXTRA_FIELD);
        }
        if (bArr2 == null || bArr2.length <= 0) {
            return;
        }
        ZipExtraField extraField2 = zipArchiveEntry.getExtraField(UnicodeCommentExtraField.UCOM_ID);
        String m66569f2 = m66569f(extraField2 instanceof UnicodeCommentExtraField ? (UnicodeCommentExtraField) extraField2 : null, bArr2);
        if (m66569f2 != null) {
            zipArchiveEntry.setComment(m66569f2);
            zipArchiveEntry.setCommentSource(ZipArchiveEntry.CommentSource.UNICODE_EXTRA_FIELD);
        }
    }

    /* renamed from: i */
    public static boolean m66572i(ZipArchiveEntry zipArchiveEntry) {
        return !zipArchiveEntry.getGeneralPurposeBit().usesEncryption();
    }

    /* renamed from: j */
    public static boolean m66573j(ZipArchiveEntry zipArchiveEntry) {
        return zipArchiveEntry.getMethod() == 0 || zipArchiveEntry.getMethod() == ZipMethod.UNSHRINKING.getCode() || zipArchiveEntry.getMethod() == ZipMethod.IMPLODING.getCode() || zipArchiveEntry.getMethod() == 8 || zipArchiveEntry.getMethod() == ZipMethod.ENHANCED_DEFLATED.getCode() || zipArchiveEntry.getMethod() == ZipMethod.BZIP2.getCode();
    }

    /* renamed from: k */
    public static void m66574k(Calendar calendar, long j, byte[] bArr, int i) {
        calendar.setTimeInMillis(j);
        if (calendar.get(1) < 1980) {
            m66567d(f105944a, bArr, i);
        } else {
            ZipLong.putLong((calendar.get(13) >> 1) | ((r5 - 1980) << 25) | ((calendar.get(2) + 1) << 21) | (calendar.get(5) << 16) | (calendar.get(11) << 11) | (calendar.get(12) << 5), bArr, i);
        }
    }

    public static byte[] reverse(byte[] bArr) {
        int length = bArr.length - 1;
        for (int i = 0; i < bArr.length / 2; i++) {
            byte b = bArr[i];
            int i2 = length - i;
            bArr[i] = bArr[i2];
            bArr[i2] = b;
        }
        return bArr;
    }

    public static int signedByteToUnsignedInt(byte b) {
        return b >= 0 ? b : b + 256;
    }

    public static ZipLong toDosTime(Date date) {
        return new ZipLong(toDosTime(date.getTime()));
    }

    public static byte unsignedIntToSignedByte(int i) {
        if (i <= 255 && i >= 0) {
            return i < 128 ? (byte) i : (byte) (i - 256);
        }
        throw new IllegalArgumentException("Can only convert non-negative integers between [0,255] to byte: [" + i + IteratorUtils.f104924b);
    }

    public static byte[] toDosTime(long j) {
        byte[] bArr = new byte[4];
        toDosTime(j, bArr, 0);
        return bArr;
    }

    public static void toDosTime(long j, byte[] bArr, int i) {
        m66574k(Calendar.getInstance(), j, bArr, i);
    }
}
