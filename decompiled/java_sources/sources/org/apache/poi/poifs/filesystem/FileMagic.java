package org.apache.poi.poifs.filesystem;

import androidx.exifinterface.media.ExifInterface;
import com.alibaba.fastjson2.JSONB;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.util.Arrays;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.poi.poifs.storage.HeaderBlockConstants;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes12.dex */
public enum FileMagic {
    OLE2(HeaderBlockConstants._signature),
    OOXML(80, 75, 3, 4),
    XML(60, 63, 120, 109, 108),
    BIFF2(9, 0, 4, 0, 0, 0, 63, 0),
    BIFF3(9, 2, 6, 0, 0, 0, 63, 0),
    BIFF4(new byte[]{9, 4, 6, 0, 0, 0, 63, 0}, new byte[]{9, 4, 6, 0, 0, 0, 0, 1}),
    MSWRITE(new byte[]{TarConstants.LF_LINK, JSONB.Constants.BC_INT64, 0, 0}, new byte[]{TarConstants.LF_SYMLINK, JSONB.Constants.BC_INT64, 0, 0}),
    RTF("{\\rtf"),
    PDF("%PDF"),
    HTML("<!DOCTYP", "<html", "\n\r<html", "\r\n<html", "\r<html", "\n<html", "<HTML", "\r\n<HTML", "\n\r<HTML", "\r<HTML", "\n<HTML"),
    WORD2(219, 165, 45, 0),
    JPEG(new byte[]{-1, -40, -1, -37}, new byte[]{-1, -40, -1, -32, 63, 63, JSONB.Constants.BC_STR_ASCII_FIX_1, 70, 73, 70, 0, 1}, new byte[]{-1, -40, -1, -18}, new byte[]{-1, -40, -1, ExifInterface.f7159G1, 63, 63, 69, 120, JSONB.Constants.BC_STR_ASCII_FIX_32, 102, 0, 0}),
    GIF("GIF87a", "GIF89a"),
    PNG(137, 80, 78, 71, 13, 10, 26, 10),
    TIFF("II*\u0000", "MM\u0000*"),
    WMF(215, 205, 198, 154),
    EMF(1, 0, 0, 0, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 32, 69, 77, 70),
    BMP(66, 77),
    SMTP("Mime-Version:", "MIME-Version:"),
    UNKNOWN(new byte[0]);

    static final int MAX_PATTERN_LENGTH = 44;
    final byte[][] magic;

    FileMagic(long j) {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 1, 8);
        this.magic = bArr;
        LittleEndian.putLong(bArr[0], 0, j);
    }

    private static boolean findMagic(byte[] bArr, byte[] bArr2, int i) {
        if (bArr.length == 0 || bArr.length > bArr2.length - i) {
            return false;
        }
        int length = bArr.length;
        int i2 = 0;
        while (i2 < length) {
            byte b = bArr[i2];
            int i3 = i + 1;
            if (bArr2[i] != b && b != 63) {
                return false;
            }
            i2++;
            i = i3;
        }
        return true;
    }

    private static boolean isSMTPFile(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            if (bArr[i] == 10) {
                for (byte[] bArr2 : SMTP.magic) {
                    if (findMagic(bArr2, bArr, i + 1)) {
                        return true;
                    }
                }
                return false;
            }
        }
        return false;
    }

    public static InputStream prepareToCheckMagic(InputStream inputStream) {
        return inputStream.markSupported() ? inputStream : new BufferedInputStream(inputStream);
    }

    public static FileMagic valueOf(byte[] bArr) {
        for (FileMagic fileMagic : values()) {
            for (byte[] bArr2 : fileMagic.magic) {
                if (bArr.length >= bArr2.length && findMagic(bArr2, bArr)) {
                    return fileMagic;
                }
            }
        }
        if (isSMTPFile(bArr)) {
            return SMTP;
        }
        return UNKNOWN;
    }

    FileMagic(int... iArr) {
        byte[] bArr = new byte[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            bArr[i] = (byte) (iArr[i] & 255);
        }
        this.magic = new byte[][]{bArr};
    }

    private static boolean findMagic(byte[] bArr, byte[] bArr2) {
        return findMagic(bArr, bArr2, 0);
    }

    FileMagic(byte[]... bArr) {
        this.magic = bArr;
    }

    public static FileMagic valueOf(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[44];
            int readFully = IOUtils.readFully(fileInputStream, bArr, 0, 44);
            if (readFully == -1) {
                FileMagic fileMagic = UNKNOWN;
                fileInputStream.close();
                return fileMagic;
            }
            FileMagic valueOf = valueOf(Arrays.copyOf(bArr, readFully));
            fileInputStream.close();
            return valueOf;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    FileMagic(String... strArr) {
        this.magic = new byte[strArr.length];
        int length = strArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            this.magic[i2] = strArr[i].getBytes(LocaleUtil.CHARSET_1252);
            i++;
            i2++;
        }
    }

    public static FileMagic valueOf(InputStream inputStream) throws IOException {
        if (inputStream.markSupported()) {
            return valueOf(IOUtils.peekFirstNBytes(inputStream, 44));
        }
        throw new IOException("getFileMagic() only operates on streams which support mark(int)");
    }
}
