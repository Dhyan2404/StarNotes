package org.apache.poi.hdgf.streams;

import java.util.ArrayList;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hdgf.chunks.Chunk;
import org.apache.poi.hdgf.chunks.ChunkFactory;
import org.apache.poi.hdgf.chunks.ChunkHeader;
import org.apache.poi.hdgf.pointers.Pointer;

/* loaded from: classes12.dex */
public final class ChunkStream extends Stream {
    private static final Logger LOG = LogManager.getLogger((Class<?>) ChunkStream.class);
    private final ChunkFactory chunkFactory;
    private Chunk[] chunks;

    public ChunkStream(Pointer pointer, StreamStore streamStore, ChunkFactory chunkFactory) {
        super(pointer, streamStore);
        this.chunkFactory = chunkFactory;
        streamStore.copyBlockHeaderToContents();
    }

    public void findChunks() {
        ArrayList arrayList = new ArrayList();
        getPointer().getOffset();
        byte[] contents = getStore().getContents();
        int i = 0;
        while (i < contents.length) {
            try {
                int headerSize = ChunkHeader.getHeaderSize(this.chunkFactory.getVersion());
                if (i + headerSize <= contents.length) {
                    Chunk createChunk = this.chunkFactory.createChunk(contents, i);
                    arrayList.add(createChunk);
                    i += createChunk.getOnDiskSize();
                } else {
                    LOG.atWarn().log("Needed {} bytes to create the next chunk header, but only found {} bytes, ignoring rest of data", Unbox.box(headerSize), Unbox.box(contents.length - i));
                    i = contents.length;
                }
            } catch (Exception e) {
                LOG.atError().withThrowable(e).log("Failed to create chunk at {}, ignoring rest of data.", Unbox.box(i));
            }
        }
        this.chunks = (Chunk[]) arrayList.toArray(new Chunk[0]);
    }

    public Chunk[] getChunks() {
        return this.chunks;
    }
}
