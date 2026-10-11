package org.apache.poi.hsmf.datatypes;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.poi.hsmf.datatypes.Types;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.DocumentNode;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public class ByteChunkDeferred extends ByteChunk {
    private DocumentNode node;

    public ByteChunkDeferred(String str, int i, Types.MAPIType mAPIType) {
        super(str, i, mAPIType);
    }

    private DocumentInputStream createDocumentInputStream() throws IOException {
        return ((DirectoryNode) this.node.getParent()).createDocumentInputStream(this.node);
    }

    @Override // org.apache.poi.hsmf.datatypes.ByteChunk
    public byte[] getValue() {
        if (this.node == null) {
            return super.getValue();
        }
        try {
            DocumentInputStream createDocumentInputStream = createDocumentInputStream();
            try {
                byte[] byteArray = IOUtils.toByteArray(createDocumentInputStream, this.node.getSize());
                if (createDocumentInputStream != null) {
                    createDocumentInputStream.close();
                }
                return byteArray;
            } finally {
            }
        } catch (IOException unused) {
            return null;
        }
    }

    public void readValue(DocumentNode documentNode) {
        this.node = documentNode;
    }

    @Override // org.apache.poi.hsmf.datatypes.ByteChunk
    public void setValue(byte[] bArr) {
        this.node = null;
        super.setValue(bArr);
    }

    @Override // org.apache.poi.hsmf.datatypes.ByteChunk, org.apache.poi.hsmf.datatypes.Chunk
    public void writeValue(OutputStream outputStream) throws IOException {
        if (this.node == null) {
            super.writeValue(outputStream);
            return;
        }
        DocumentInputStream createDocumentInputStream = createDocumentInputStream();
        try {
            IOUtils.copy(createDocumentInputStream, outputStream);
            if (createDocumentInputStream != null) {
                createDocumentInputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (createDocumentInputStream != null) {
                    try {
                        createDocumentInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.poi.hsmf.datatypes.ByteChunk, org.apache.poi.hsmf.datatypes.Chunk
    public void readValue(InputStream inputStream) throws IOException {
        if (this.node == null) {
            super.readValue(inputStream);
        }
    }
}
