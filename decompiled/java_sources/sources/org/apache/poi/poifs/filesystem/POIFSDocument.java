package org.apache.poi.poifs.filesystem;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import org.apache.poi.poifs.dev.POIFSViewable;
import org.apache.poi.poifs.property.DocumentProperty;
import org.apache.poi.util.HexDump;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public final class POIFSDocument implements POIFSViewable, Iterable<ByteBuffer> {
    private int _block_size;
    private POIFSFileSystem _filesystem;
    private DocumentProperty _property;
    private POIFSStream _stream;

    public POIFSDocument(DocumentNode documentNode) {
        this((DocumentProperty) documentNode.getProperty(), ((DirectoryNode) documentNode.getParent()).getFileSystem());
    }

    private int store(InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 4097);
        bufferedInputStream.mark(4096);
        if (IOUtils.skipFully(bufferedInputStream, 4096L) < 4096) {
            this._stream = new POIFSStream(this._filesystem.getMiniStore());
            this._block_size = this._filesystem.getMiniStore().getBlockStoreBlockSize();
        } else {
            this._stream = new POIFSStream(this._filesystem);
            this._block_size = this._filesystem.getBlockStoreBlockSize();
        }
        bufferedInputStream.reset();
        OutputStream outputStream = this._stream.getOutputStream();
        try {
            long copy = IOUtils.copy(bufferedInputStream, outputStream);
            int i = this._block_size;
            int i2 = (int) (copy % i);
            if (i2 != 0 && i2 != i) {
                byte[] safelyAllocate = IOUtils.safelyAllocate(i - i2, POIFSFileSystem.getMaxRecordLength());
                Arrays.fill(safelyAllocate, (byte) -1);
                outputStream.write(safelyAllocate);
            }
            if (outputStream != null) {
                outputStream.close();
            }
            return Math.toIntExact(copy);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public void free() throws IOException {
        this._stream.free();
        this._property.setStartBlock(-2);
    }

    public Iterator<ByteBuffer> getBlockIterator() {
        return (getSize() > 0 ? this._stream : Collections.emptyList()).iterator();
    }

    public int getDocumentBlockSize() {
        return this._block_size;
    }

    public DocumentProperty getDocumentProperty() {
        return this._property;
    }

    public POIFSFileSystem getFileSystem() {
        return this._filesystem;
    }

    @Override // org.apache.poi.poifs.dev.POIFSViewable
    public String getShortDescription() {
        return "Document: \"" + this._property.getName() + "\" size = " + getSize();
    }

    public int getSize() {
        return this._property.getSize();
    }

    @Override // org.apache.poi.poifs.dev.POIFSViewable
    public Object[] getViewableArray() {
        String str;
        if (getSize() > 0) {
            byte[] safelyAllocate = IOUtils.safelyAllocate(getSize(), POIFSFileSystem.getMaxRecordLength());
            Iterator<ByteBuffer> it2 = this._stream.iterator();
            int i = 0;
            while (it2.hasNext()) {
                ByteBuffer next = it2.next();
                int min = Math.min(this._block_size, safelyAllocate.length - i);
                next.get(safelyAllocate, i, min);
                i += min;
            }
            str = HexDump.dump(safelyAllocate, 0L, 0);
        } else {
            str = "<NO DATA>";
        }
        return new String[]{str};
    }

    @Override // org.apache.poi.poifs.dev.POIFSViewable
    public Iterator<Object> getViewableIterator() {
        return Collections.emptyIterator();
    }

    @Override // java.lang.Iterable
    public Iterator<ByteBuffer> iterator() {
        return getBlockIterator();
    }

    @Override // org.apache.poi.poifs.dev.POIFSViewable
    public boolean preferArray() {
        return true;
    }

    public void replaceContents(InputStream inputStream) throws IOException {
        free();
        int store = store(inputStream);
        this._property.setStartBlock(this._stream.getStartBlock());
        this._property.updateSize(store);
    }

    public POIFSDocument(DocumentProperty documentProperty, POIFSFileSystem pOIFSFileSystem) {
        this._property = documentProperty;
        this._filesystem = pOIFSFileSystem;
        if (documentProperty.getSize() < 4096) {
            this._stream = new POIFSStream(this._filesystem.getMiniStore(), documentProperty.getStartBlock());
            this._block_size = this._filesystem.getMiniStore().getBlockStoreBlockSize();
        } else {
            this._stream = new POIFSStream(this._filesystem, documentProperty.getStartBlock());
            this._block_size = this._filesystem.getBlockStoreBlockSize();
        }
    }

    public POIFSDocument(String str, POIFSFileSystem pOIFSFileSystem, InputStream inputStream) throws IOException {
        this._filesystem = pOIFSFileSystem;
        DocumentProperty documentProperty = new DocumentProperty(str, store(inputStream));
        this._property = documentProperty;
        documentProperty.setStartBlock(this._stream.getStartBlock());
        this._property.setDocument(this);
    }

    public POIFSDocument(String str, int i, POIFSFileSystem pOIFSFileSystem, POIFSWriterListener pOIFSWriterListener) throws IOException {
        this._filesystem = pOIFSFileSystem;
        if (i < 4096) {
            this._stream = new POIFSStream(pOIFSFileSystem.getMiniStore());
            this._block_size = this._filesystem.getMiniStore().getBlockStoreBlockSize();
        } else {
            this._stream = new POIFSStream(pOIFSFileSystem);
            this._block_size = this._filesystem.getBlockStoreBlockSize();
        }
        DocumentProperty documentProperty = new DocumentProperty(str, i);
        this._property = documentProperty;
        documentProperty.setStartBlock(this._stream.getStartBlock());
        this._property.setDocument(this);
        DocumentOutputStream documentOutputStream = new DocumentOutputStream(this, i);
        try {
            POIFSDocumentPath pOIFSDocumentPath = new POIFSDocumentPath(str.split("\\\\"));
            pOIFSWriterListener.processPOIFSWriterEvent(new POIFSWriterEvent(documentOutputStream, pOIFSDocumentPath, pOIFSDocumentPath.getComponent(pOIFSDocumentPath.length() - 1), i));
            documentOutputStream.close();
        } finally {
        }
    }
}
