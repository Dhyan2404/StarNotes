package com.twelvemonkeys.io;

import java.io.IOException;

/* loaded from: classes10.dex */
public interface Seekable {
    void close() throws IOException;

    void flush() throws IOException;

    void flushBefore(long j) throws IOException;

    long getFlushedPosition() throws IOException;

    long getStreamPosition() throws IOException;

    boolean isCached();

    boolean isCachedFile();

    boolean isCachedMemory();

    void mark();

    void reset() throws IOException;

    void seek(long j) throws IOException;
}
