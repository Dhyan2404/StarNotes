package org.apache.poi.xssf.streaming;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.CRC32;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import org.apache.poi.xssf.streaming.Zip64Impl;

/* loaded from: classes13.dex */
class OpcOutputStream extends DeflaterOutputStream {
    private final CRC32 crc;
    private Zip64Impl.Entry current;
    private final List<Zip64Impl.Entry> entries;
    private boolean finished;
    private final Zip64Impl spec;
    private int written;

    public OpcOutputStream(OutputStream outputStream) {
        super(outputStream, new Deflater(-1, true));
        this.entries = new ArrayList();
        this.crc = new CRC32();
        this.written = 0;
        this.finished = false;
        this.spec = new Zip64Impl(outputStream);
    }

    @Override // java.util.zip.DeflaterOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        finish();
        ((DeflaterOutputStream) this).out.close();
    }

    public void closeEntry() throws IOException {
        if (this.current == null) {
            throw new IllegalStateException("not current zip current");
        }
        ((DeflaterOutputStream) this).def.finish();
        while (!((DeflaterOutputStream) this).def.finished()) {
            deflate();
        }
        this.current.size = ((DeflaterOutputStream) this).def.getBytesRead();
        this.current.compressedSize = Math.toIntExact(((DeflaterOutputStream) this).def.getBytesWritten());
        this.current.crc = this.crc.getValue();
        int i = this.written;
        Zip64Impl.Entry entry = this.current;
        int i2 = i + entry.compressedSize;
        this.written = i2;
        this.written = i2 + this.spec.writeDAT(entry);
        this.current = null;
        ((DeflaterOutputStream) this).def.reset();
        this.crc.reset();
    }

    @Override // java.util.zip.DeflaterOutputStream
    public void finish() throws IOException {
        if (this.finished) {
            return;
        }
        if (this.current != null) {
            closeEntry();
        }
        int i = this.written;
        Iterator<Zip64Impl.Entry> it2 = this.entries.iterator();
        while (it2.hasNext()) {
            this.written += this.spec.writeCEN(it2.next());
        }
        this.written += this.spec.writeEND(this.entries.size(), i, this.written - i);
        this.finished = true;
    }

    public void putNextEntry(String str) throws IOException {
        if (this.current != null) {
            closeEntry();
        }
        Zip64Impl.Entry entry = new Zip64Impl.Entry(str);
        this.current = entry;
        int i = this.written;
        entry.offset = i;
        this.written = i + this.spec.writeLFH(entry);
        this.entries.add(this.current);
    }

    public void setLevel(int i) {
        ((DeflaterOutputStream) this).def.setLevel(i);
    }

    @Override // java.util.zip.DeflaterOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) throws IOException {
        if (i >= 0 && i2 >= 0) {
            if (i <= bArr.length - i2) {
                if (i2 == 0) {
                    return;
                }
                super.write(bArr, i, i2);
                this.crc.update(bArr, i, i2);
                return;
            }
        }
        throw new IndexOutOfBoundsException();
    }
}
