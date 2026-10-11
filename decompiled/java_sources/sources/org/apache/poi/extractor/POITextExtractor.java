package org.apache.poi.extractor;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes12.dex */
public interface POITextExtractor extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    default void close() throws IOException {
        Closeable filesystem = getFilesystem();
        if (!isCloseFilesystem() || filesystem == null) {
            return;
        }
        filesystem.close();
    }

    Object getDocument();

    Closeable getFilesystem();

    POITextExtractor getMetadataTextExtractor();

    String getText();

    boolean isCloseFilesystem();

    void setCloseFilesystem(boolean z);
}
