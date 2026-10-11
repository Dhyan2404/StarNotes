package org.apache.poi.hsmf.datatypes;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import org.apache.poi.hsmf.datatypes.Types;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public class StringChunk extends Chunk {
    private static final String DEFAULT_ENCODING = "CP1252";
    private String encoding7Bit;
    private byte[] rawValue;
    private String value;

    public StringChunk(String str, int i, Types.MAPIType mAPIType) {
        super(str, i, mAPIType);
        this.encoding7Bit = DEFAULT_ENCODING;
    }

    public static String parseAs7BitData(byte[] bArr) {
        return parseAs7BitData(bArr, DEFAULT_ENCODING);
    }

    private void parseString() {
        String fromUnicodeLE;
        if (getType() == Types.ASCII_STRING) {
            fromUnicodeLE = parseAs7BitData(this.rawValue, this.encoding7Bit);
        } else {
            if (getType() != Types.UNICODE_STRING) {
                throw new IllegalArgumentException("Invalid type " + getType() + " for String Chunk");
            }
            fromUnicodeLE = StringUtil.getFromUnicodeLE(this.rawValue);
        }
        this.value = fromUnicodeLE.replace("\u0000", "");
    }

    private void storeString() {
        if (getType() == Types.ASCII_STRING) {
            this.rawValue = this.value.getBytes(Charset.forName(this.encoding7Bit));
            return;
        }
        if (getType() == Types.UNICODE_STRING) {
            this.rawValue = StringUtil.getToUnicodeLE(this.value);
            return;
        }
        throw new IllegalArgumentException("Invalid type " + getType() + " for String Chunk");
    }

    public String get7BitEncoding() {
        return this.encoding7Bit;
    }

    public byte[] getRawValue() {
        return this.rawValue;
    }

    public String getValue() {
        return this.value;
    }

    @Override // org.apache.poi.hsmf.datatypes.Chunk
    public void readValue(InputStream inputStream) throws IOException {
        this.rawValue = IOUtils.toByteArray(inputStream);
        parseString();
    }

    public void set7BitEncoding(String str) {
        this.encoding7Bit = str;
        if (getType() == Types.ASCII_STRING) {
            parseString();
        }
    }

    public void setValue(String str) {
        this.value = str;
        storeString();
    }

    public String toString() {
        return this.value;
    }

    @Override // org.apache.poi.hsmf.datatypes.Chunk
    public void writeValue(OutputStream outputStream) throws IOException {
        outputStream.write(this.rawValue);
    }

    public static String parseAs7BitData(byte[] bArr, String str) {
        if ("ansi".equals(str)) {
            str = DEFAULT_ENCODING;
        }
        return new String(bArr, Charset.forName(str));
    }

    public StringChunk(int i, Types.MAPIType mAPIType) {
        super(i, mAPIType);
        this.encoding7Bit = DEFAULT_ENCODING;
    }
}
