package org.apache.poi.poifs.storage;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes12.dex */
public interface BlockWritable {
    void writeBlocks(OutputStream outputStream) throws IOException;
}
