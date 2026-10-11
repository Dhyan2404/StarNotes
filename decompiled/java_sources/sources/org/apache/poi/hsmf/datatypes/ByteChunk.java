package org.apache.poi.hsmf.datatypes;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.hsmf.datatypes.Types;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public class ByteChunk extends Chunk {
    private byte[] value;

    public ByteChunk(String str, int i, Types.MAPIType mAPIType) {
        super(str, i, mAPIType);
    }

    public static String toDebugFriendlyString(byte[] bArr) {
        if (bArr == null) {
            return "(Null Byte Array)";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Bytes len=");
        sb.append(bArr.length);
        sb.append(" [");
        int min = Math.min(bArr.length, 16);
        if (bArr.length > 16) {
            min = 12;
        }
        for (int i = 0; i < min; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append((int) bArr[i]);
        }
        if (bArr.length > 16) {
            sb.append(",....");
        }
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    public String getAs7bitString() {
        return StringChunk.parseAs7BitData(this.value);
    }

    public byte[] getValue() {
        return this.value;
    }

    @Override // org.apache.poi.hsmf.datatypes.Chunk
    public void readValue(InputStream inputStream) throws IOException {
        this.value = IOUtils.toByteArray(inputStream);
    }

    public void setValue(byte[] bArr) {
        this.value = bArr;
    }

    public String toString() {
        return toDebugFriendlyString(this.value);
    }

    @Override // org.apache.poi.hsmf.datatypes.Chunk
    public void writeValue(OutputStream outputStream) throws IOException {
        outputStream.write(this.value);
    }

    public ByteChunk(int i, Types.MAPIType mAPIType) {
        super(i, mAPIType);
    }
}
