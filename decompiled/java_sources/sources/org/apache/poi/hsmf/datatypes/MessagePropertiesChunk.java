package org.apache.poi.hsmf.datatypes;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class MessagePropertiesChunk extends PropertiesChunk {
    private long attachmentCount;
    private boolean isEmbedded;
    private long nextAttachmentId;
    private long nextRecipientId;
    private long recipientCount;

    public MessagePropertiesChunk(ChunkGroup chunkGroup) {
        super(chunkGroup);
    }

    public long getAttachmentCount() {
        return this.attachmentCount;
    }

    public long getNextAttachmentId() {
        return this.nextAttachmentId;
    }

    public long getNextRecipientId() {
        return this.nextRecipientId;
    }

    public long getRecipientCount() {
        return this.recipientCount;
    }

    @Override // org.apache.poi.hsmf.datatypes.PropertiesChunk
    public void readProperties(InputStream inputStream) throws IOException {
        LittleEndian.readLong(inputStream);
        this.nextRecipientId = LittleEndian.readUInt(inputStream);
        this.nextAttachmentId = LittleEndian.readUInt(inputStream);
        this.recipientCount = LittleEndian.readUInt(inputStream);
        this.attachmentCount = LittleEndian.readUInt(inputStream);
        if (!this.isEmbedded) {
            LittleEndian.readLong(inputStream);
        }
        super.readProperties(inputStream);
    }

    @Override // org.apache.poi.hsmf.datatypes.Chunk
    public void readValue(InputStream inputStream) throws IOException {
        readProperties(inputStream);
    }

    public void setAttachmentCount(long j) {
        this.attachmentCount = j;
    }

    public void setNextAttachmentId(long j) {
        this.nextAttachmentId = j;
    }

    public void setNextRecipientId(long j) {
        this.nextRecipientId = j;
    }

    public void setRecipientCount(long j) {
        this.recipientCount = j;
    }

    @Override // org.apache.poi.hsmf.datatypes.PropertiesChunk
    public List<PropertyValue> writeProperties(OutputStream outputStream) throws IOException {
        LittleEndian.putLong(0L, outputStream);
        LittleEndian.putUInt(this.nextRecipientId, outputStream);
        LittleEndian.putUInt(this.nextAttachmentId, outputStream);
        LittleEndian.putUInt(this.recipientCount, outputStream);
        LittleEndian.putUInt(this.attachmentCount, outputStream);
        if (!this.isEmbedded) {
            LittleEndian.putLong(0L, outputStream);
        }
        return super.writeProperties(outputStream);
    }

    @Override // org.apache.poi.hsmf.datatypes.Chunk
    public void writeValue(OutputStream outputStream) throws IOException {
        writeProperties(outputStream);
    }

    public MessagePropertiesChunk(ChunkGroup chunkGroup, boolean z) {
        super(chunkGroup);
        this.isEmbedded = z;
    }
}
