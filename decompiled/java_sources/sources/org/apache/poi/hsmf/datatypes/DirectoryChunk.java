package org.apache.poi.hsmf.datatypes;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.poi.hsmf.MAPIMessage;
import org.apache.poi.hsmf.datatypes.Types;
import org.apache.poi.poifs.filesystem.DirectoryNode;

/* loaded from: classes12.dex */
public class DirectoryChunk extends Chunk {
    private DirectoryNode dir;

    public DirectoryChunk(DirectoryNode directoryNode, String str, int i, Types.MAPIType mAPIType) {
        super(str, i, mAPIType);
        this.dir = directoryNode;
    }

    public MAPIMessage getAsEmbeddedMessage() throws IOException {
        return new MAPIMessage(this.dir);
    }

    public DirectoryNode getDirectory() {
        return this.dir;
    }

    @Override // org.apache.poi.hsmf.datatypes.Chunk
    public void readValue(InputStream inputStream) {
    }

    @Override // org.apache.poi.hsmf.datatypes.Chunk
    public void writeValue(OutputStream outputStream) {
    }
}
