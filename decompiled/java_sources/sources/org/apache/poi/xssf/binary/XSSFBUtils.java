package org.apache.poi.xssf.binary;

import com.fasterxml.jackson.core.base.ParserBase;
import java.nio.charset.StandardCharsets;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes13.dex */
public class XSSFBUtils {
    public static int castToInt(long j) {
        if (j < 2147483647L && j > ParserBase.f21225q) {
            return (int) j;
        }
        throw new POIXMLException("val (" + j + ") can't be cast to int");
    }

    public static short castToShort(int i) {
        if (i < 32767 && i > -32768) {
            return (short) i;
        }
        throw new POIXMLException("val (" + i + ") can't be cast to short");
    }

    public static int get24BitInt(byte[] bArr, int i) {
        int i2 = i + 1;
        return ((bArr[i2 + 1] & 255) << 16) + ((bArr[i2] & 255) << 8) + (bArr[i] & 255);
    }

    public static int readXLNullableWideString(byte[] bArr, int i, StringBuilder sb) throws XSSFBParseException {
        long uInt = LittleEndian.getUInt(bArr, i);
        if (uInt < 0) {
            throw new XSSFBParseException("too few chars to read");
        }
        if (uInt == 4294967295L) {
            return 0;
        }
        if (uInt > 4294967295L) {
            throw new XSSFBParseException("too many chars to read");
        }
        int i2 = ((int) uInt) * 2;
        int i3 = i + 4;
        if (i3 + i2 <= bArr.length) {
            sb.append(new String(bArr, i3, i2, StandardCharsets.UTF_16LE));
            return i2 + 4;
        }
        throw new XSSFBParseException("trying to read beyond data length: offset=" + i3 + ", numBytes=" + i2 + ", data.length=" + bArr.length);
    }

    public static int readXLWideString(byte[] bArr, int i, StringBuilder sb) throws XSSFBParseException {
        long uInt = LittleEndian.getUInt(bArr, i);
        if (uInt < 0) {
            throw new XSSFBParseException("too few chars to read");
        }
        if (uInt > 4294967295L) {
            throw new XSSFBParseException("too many chars to read");
        }
        int i2 = ((int) uInt) * 2;
        int i3 = i + 4;
        if (i3 + i2 > bArr.length) {
            throw new XSSFBParseException("trying to read beyond data length");
        }
        sb.append(new String(bArr, i3, i2, StandardCharsets.UTF_16LE));
        return i2 + 4;
    }
}
