package org.apache.poi.poifs.filesystem;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.poifs.property.DocumentProperty;

/* loaded from: classes12.dex */
public final class DocumentOutputStream extends OutputStream {
    private UnsynchronizedByteArrayOutputStream _buffer;
    private boolean _closed;
    private final POIFSDocument _document;
    private int _document_size;
    private final long _limit;
    private final DocumentProperty _property;
    private POIFSStream _stream;
    private OutputStream _stream_output;

    public DocumentOutputStream(DocumentEntry documentEntry) throws IOException {
        this(documentEntry, -1L);
    }

    private void checkBufferSize() throws IOException {
        if (this._buffer.size() > 4096) {
            byte[] byteArray = this._buffer.toByteArray();
            this._buffer = null;
            write(byteArray, 0, byteArray.length);
        }
    }

    private static DocumentEntry createDocument(DirectoryEntry directoryEntry, String str) throws IOException {
        if (directoryEntry instanceof DirectoryNode) {
            return directoryEntry.createDocument(str, new UnsynchronizedByteArrayInputStream(new byte[0]));
        }
        throw new IOException("Cannot open internal directory storage, " + directoryEntry + " not a Directory Node");
    }

    private static POIFSDocument getDocument(DocumentEntry documentEntry) throws IOException {
        if (documentEntry instanceof DocumentNode) {
            return new POIFSDocument((DocumentNode) documentEntry);
        }
        throw new IOException("Cannot open internal document storage, " + documentEntry + " not a Document Node");
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = this._buffer;
        if (unsynchronizedByteArrayOutputStream != null) {
            this._document.replaceContents(unsynchronizedByteArrayOutputStream.toInputStream());
        } else {
            this._stream_output.close();
            this._property.updateSize(this._document_size);
            this._property.setStartBlock(this._stream.getStartBlock());
        }
        this._closed = true;
    }

    public long size() {
        return this._document_size + (this._buffer == null ? 0L : r4.size());
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i}, 0, 1);
    }

    public DocumentOutputStream(DirectoryEntry directoryEntry, String str) throws IOException {
        this(createDocument(directoryEntry, str), -1L);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (this._closed) {
            throw new IOException("cannot perform requested operation on a closed stream");
        }
        if (this._limit > -1 && size() + i2 > this._limit) {
            throw new IOException("tried to write too much data");
        }
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = this._buffer;
        if (unsynchronizedByteArrayOutputStream != null) {
            unsynchronizedByteArrayOutputStream.write(bArr, i, i2);
            checkBufferSize();
            return;
        }
        if (this._stream == null) {
            POIFSStream pOIFSStream = new POIFSStream(this._document.getFileSystem());
            this._stream = pOIFSStream;
            this._stream_output = pOIFSStream.getOutputStream();
        }
        this._stream_output.write(bArr, i, i2);
        this._document_size += i2;
    }

    public DocumentOutputStream(DocumentEntry documentEntry, long j) throws IOException {
        this(getDocument(documentEntry), j);
    }

    public DocumentOutputStream(POIFSDocument pOIFSDocument, long j) throws IOException {
        this._document_size = 0;
        this._closed = false;
        this._buffer = new UnsynchronizedByteArrayOutputStream(4096);
        this._document = pOIFSDocument;
        pOIFSDocument.free();
        this._property = pOIFSDocument.getDocumentProperty();
        this._limit = j;
    }
}
