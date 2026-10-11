package org.apache.poi.hsmf.exceptions;

/* loaded from: classes12.dex */
public final class ChunkNotFoundException extends Exception {
    private static final long serialVersionUID = 1;

    public ChunkNotFoundException() {
        super("Chunk not found");
    }

    public ChunkNotFoundException(String str) {
        super(str + " was named, but not found in POIFS object");
    }
}
