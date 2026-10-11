package org.apache.poi.hmef;

import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LZWDecompresser;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class CompressedRTF extends LZWDecompresser {
    static final byte[] COMPRESSED_SIGNATURE;
    public static final int COMPRESSED_SIGNATURE_INT;
    public static final String LZW_RTF_PRELOAD = "{\\rtf1\\ansi\\mac\\deff0\\deftab720{\\fonttbl;}{\\f0\\fnil \\froman \\fswiss \\fmodern \\fscript \\fdecor MS Sans SerifSymbolArialTimes New RomanCourier{\\colortbl\\red0\\green0\\blue0\n\r\\par \\pard\\plain\\f0\\fs20\\b\\i\\u\\tab\\tx";
    static final byte[] UNCOMPRESSED_SIGNATURE;
    public static final int UNCOMPRESSED_SIGNATURE_INT;
    private int compressedSize;
    private int decompressedSize;

    static {
        byte[] bArr = {TarConstants.LF_GNUTYPE_LONGNAME, 90, 70, UTF8JsonGenerator.f21285e};
        COMPRESSED_SIGNATURE = bArr;
        byte[] bArr2 = {77, 69, TarConstants.LF_GNUTYPE_LONGNAME, 65};
        UNCOMPRESSED_SIGNATURE = bArr2;
        COMPRESSED_SIGNATURE_INT = LittleEndian.getInt(bArr);
        UNCOMPRESSED_SIGNATURE_INT = LittleEndian.getInt(bArr2);
    }

    public CompressedRTF() {
        super(true, 2, true);
    }

    @Override // org.apache.poi.util.LZWDecompresser
    public int adjustDictionaryOffset(int i) {
        return i;
    }

    @Override // org.apache.poi.util.LZWDecompresser
    public void decompress(InputStream inputStream, OutputStream outputStream) throws IOException {
        this.compressedSize = LittleEndian.readInt(inputStream);
        this.decompressedSize = LittleEndian.readInt(inputStream);
        int readInt = LittleEndian.readInt(inputStream);
        LittleEndian.readInt(inputStream);
        if (readInt == UNCOMPRESSED_SIGNATURE_INT) {
            IOUtils.copy(inputStream, outputStream);
        } else if (readInt != COMPRESSED_SIGNATURE_INT) {
            throw new IllegalArgumentException("Invalid compression signature " + readInt);
        }
        super.decompress(inputStream, outputStream);
    }

    public int getCompressedSize() {
        return this.compressedSize - 12;
    }

    public int getDeCompressedSize() {
        return this.decompressedSize;
    }

    @Override // org.apache.poi.util.LZWDecompresser
    public int populateDictionary(byte[] bArr) {
        byte[] bytes = LZW_RTF_PRELOAD.getBytes(StandardCharsets.US_ASCII);
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        return bytes.length;
    }
}
