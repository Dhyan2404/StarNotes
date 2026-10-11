package org.apache.poi.hsmf.datatypes;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class StoragePropertiesChunk extends PropertiesChunk {
    public StoragePropertiesChunk(ChunkGroup chunkGroup) {
        super(chunkGroup);
    }

    @Override // org.apache.poi.hsmf.datatypes.Chunk
    public void readValue(InputStream inputStream) throws IOException {
        LittleEndian.readLong(inputStream);
        readProperties(inputStream);
    }

    public void writePreCalculatedValue(OutputStream outputStream) throws IOException {
        outputStream.write(new byte[8]);
        writePreCalculatedProperties(outputStream);
    }

    @Override // org.apache.poi.hsmf.datatypes.Chunk
    public void writeValue(OutputStream outputStream) throws IOException {
        outputStream.write(new byte[8]);
        writeProperties(outputStream);
    }
}
