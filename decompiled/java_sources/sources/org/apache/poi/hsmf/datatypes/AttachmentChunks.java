package org.apache.poi.hsmf.datatypes;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hsmf.MAPIMessage;

/* loaded from: classes12.dex */
public class AttachmentChunks implements ChunkGroup {
    private static final Logger LOG = LogManager.getLogger((Class<?>) AttachmentChunks.class);
    public static final String PREFIX = "__attach_version1.0_#";
    private final List<Chunk> allChunks = new ArrayList();
    private StringChunk attachContentId;
    private ByteChunk attachData;
    private StringChunk attachExtension;
    private StringChunk attachFileName;
    private StringChunk attachLongFileName;
    private StringChunk attachMimeTag;
    private ByteChunk attachRenderingWMF;
    private DirectoryChunk attachmentDirectory;
    private final String poifsName;

    /* loaded from: classes12.dex */
    public static class AttachmentChunksSorter implements Comparator<AttachmentChunks>, Serializable {
        @Override // java.util.Comparator
        public int compare(AttachmentChunks attachmentChunks, AttachmentChunks attachmentChunks2) {
            return attachmentChunks.poifsName.compareTo(attachmentChunks2.poifsName);
        }
    }

    public AttachmentChunks(String str) {
        this.poifsName = str;
    }

    @Override // org.apache.poi.hsmf.datatypes.ChunkGroup
    public void chunksComplete() {
    }

    public Chunk[] getAll() {
        return (Chunk[]) this.allChunks.toArray(new Chunk[0]);
    }

    public StringChunk getAttachContentId() {
        return this.attachContentId;
    }

    public ByteChunk getAttachData() {
        return this.attachData;
    }

    public StringChunk getAttachExtension() {
        return this.attachExtension;
    }

    public StringChunk getAttachFileName() {
        return this.attachFileName;
    }

    public StringChunk getAttachLongFileName() {
        return this.attachLongFileName;
    }

    public StringChunk getAttachMimeTag() {
        return this.attachMimeTag;
    }

    public ByteChunk getAttachRenderingWMF() {
        return this.attachRenderingWMF;
    }

    public DirectoryChunk getAttachmentDirectory() {
        return this.attachmentDirectory;
    }

    @Override // org.apache.poi.hsmf.datatypes.ChunkGroup
    public Chunk[] getChunks() {
        return getAll();
    }

    public byte[] getEmbeddedAttachmentObject() {
        ByteChunk byteChunk = this.attachData;
        if (byteChunk != null) {
            return byteChunk.getValue();
        }
        return null;
    }

    public MAPIMessage getEmbeddedMessage() throws IOException {
        DirectoryChunk directoryChunk = this.attachmentDirectory;
        if (directoryChunk != null) {
            return directoryChunk.getAsEmbeddedMessage();
        }
        return null;
    }

    public String getPOIFSName() {
        return this.poifsName;
    }

    public boolean isEmbeddedMessage() {
        return this.attachmentDirectory != null;
    }

    @Override // org.apache.poi.hsmf.datatypes.ChunkGroup
    public void record(Chunk chunk) {
        int chunkId = chunk.getChunkId();
        if (chunkId == MAPIProperty.ATTACH_DATA.f111389id) {
            if (chunk instanceof ByteChunk) {
                this.attachData = (ByteChunk) chunk;
            } else if (chunk instanceof DirectoryChunk) {
                this.attachmentDirectory = (DirectoryChunk) chunk;
            } else {
                LOG.atError().log("Unexpected data chunk of type {}", chunk.getEntryName());
            }
        } else if (chunkId == MAPIProperty.ATTACH_EXTENSION.f111389id) {
            this.attachExtension = (StringChunk) chunk;
        } else if (chunkId == MAPIProperty.ATTACH_FILENAME.f111389id) {
            this.attachFileName = (StringChunk) chunk;
        } else if (chunkId == MAPIProperty.ATTACH_LONG_FILENAME.f111389id) {
            this.attachLongFileName = (StringChunk) chunk;
        } else if (chunkId == MAPIProperty.ATTACH_MIME_TAG.f111389id) {
            this.attachMimeTag = (StringChunk) chunk;
        } else if (chunkId == MAPIProperty.ATTACH_RENDERING.f111389id) {
            this.attachRenderingWMF = (ByteChunk) chunk;
        } else if (chunkId == MAPIProperty.ATTACH_CONTENT_ID.f111389id) {
            this.attachContentId = (StringChunk) chunk;
        } else {
            LOG.atWarn().log("Currently unsupported attachment chunk property will be ignored. {}", chunk.getEntryName());
        }
        this.allChunks.add(chunk);
    }
}
