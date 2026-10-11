package org.apache.poi.hdgf.streams;

import org.apache.poi.hdgf.chunks.ChunkFactory;
import org.apache.poi.hdgf.pointers.Pointer;
import org.apache.poi.hdgf.pointers.PointerFactory;

/* loaded from: classes12.dex */
public class PointerContainingStream extends Stream {
    private Pointer[] childPointers;
    private Stream[] childStreams;
    private ChunkFactory chunkFactory;
    private PointerFactory pointerFactory;

    public PointerContainingStream(Pointer pointer, StreamStore streamStore, ChunkFactory chunkFactory, PointerFactory pointerFactory) {
        super(pointer, streamStore);
        this.chunkFactory = chunkFactory;
        this.pointerFactory = pointerFactory;
        this.childPointers = pointerFactory.createContainerPointers(pointer, streamStore.getContents());
    }

    public void findChildren(byte[] bArr) {
        this.childStreams = new Stream[this.childPointers.length];
        int i = 0;
        while (true) {
            Pointer[] pointerArr = this.childPointers;
            if (i >= pointerArr.length) {
                return;
            }
            this.childStreams[i] = Stream.createStream(pointerArr[i], bArr, this.chunkFactory, this.pointerFactory);
            Stream stream = this.childStreams[i];
            if (stream instanceof ChunkStream) {
                ((ChunkStream) stream).findChunks();
            }
            Stream stream2 = this.childStreams[i];
            if (stream2 instanceof PointerContainingStream) {
                ((PointerContainingStream) stream2).findChildren(bArr);
            }
            i++;
        }
    }

    public Pointer[] getChildPointers() {
        return this.childPointers;
    }

    public Stream[] getPointedToStreams() {
        return this.childStreams;
    }
}
