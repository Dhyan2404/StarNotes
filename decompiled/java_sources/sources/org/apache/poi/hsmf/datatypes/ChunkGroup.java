package org.apache.poi.hsmf.datatypes;

/* loaded from: classes12.dex */
public interface ChunkGroup {
    void chunksComplete();

    Chunk[] getChunks();

    void record(Chunk chunk);
}
