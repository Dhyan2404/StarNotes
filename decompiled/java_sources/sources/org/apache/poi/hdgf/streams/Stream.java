package org.apache.poi.hdgf.streams;

import java.io.IOException;
import org.apache.poi.hdgf.chunks.ChunkFactory;
import org.apache.poi.hdgf.exceptions.HDGFException;
import org.apache.poi.hdgf.pointers.Pointer;
import org.apache.poi.hdgf.pointers.PointerFactory;

/* loaded from: classes12.dex */
public abstract class Stream {
    private Pointer pointer;
    private StreamStore store;

    public Stream(Pointer pointer, StreamStore streamStore) {
        this.pointer = pointer;
        this.store = streamStore;
    }

    public static Stream createStream(Pointer pointer, byte[] bArr, ChunkFactory chunkFactory, PointerFactory pointerFactory) {
        StreamStore compressedStreamStore;
        if (pointer.destinationCompressed()) {
            try {
                compressedStreamStore = new CompressedStreamStore(bArr, pointer.getOffset(), pointer.getLength());
            } catch (IOException e) {
                throw new HDGFException(e);
            }
        } else {
            compressedStreamStore = new StreamStore(bArr, pointer.getOffset(), pointer.getLength());
        }
        return pointer.getType() == 20 ? new TrailerStream(pointer, compressedStreamStore, chunkFactory, pointerFactory) : pointer.destinationHasPointers() ? new PointerContainingStream(pointer, compressedStreamStore, chunkFactory, pointerFactory) : pointer.destinationHasChunks() ? new ChunkStream(pointer, compressedStreamStore, chunkFactory) : pointer.destinationHasStrings() ? new StringsStream(pointer, compressedStreamStore, chunkFactory) : new UnknownStream(pointer, compressedStreamStore);
    }

    public int _getContentsLength() {
        return this.store.getContents().length;
    }

    public StreamStore _getStore() {
        return this.store;
    }

    public Pointer getPointer() {
        return this.pointer;
    }

    public StreamStore getStore() {
        return this.store;
    }
}
