package org.apache.poi.hdgf.streams;

import org.apache.poi.hdgf.chunks.ChunkFactory;
import org.apache.poi.hdgf.pointers.Pointer;
import org.apache.poi.hdgf.pointers.PointerFactory;

/* loaded from: classes12.dex */
public class TrailerStream extends PointerContainingStream {
    public TrailerStream(Pointer pointer, StreamStore streamStore, ChunkFactory chunkFactory, PointerFactory pointerFactory) {
        super(pointer, streamStore, chunkFactory, pointerFactory);
    }
}
