package org.apache.poi.hemf.record.emf;

import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.poi.hemf.record.emf.HemfMisc;
import org.apache.poi.util.LittleEndianInputStream;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public class HemfRecordIterator implements Iterator<HemfRecord> {
    static final int HEADER_SIZE = 8;
    private HemfRecord currentRecord = _next();
    private final LittleEndianInputStream stream;

    public HemfRecordIterator(LittleEndianInputStream littleEndianInputStream) {
        this.stream = littleEndianInputStream;
    }

    private HemfRecord _next() {
        HemfRecord hemfRecord = this.currentRecord;
        if (hemfRecord != null && HemfRecordType.eof == hemfRecord.getEmfRecordType()) {
            return null;
        }
        int readIndex = this.stream.getReadIndex();
        try {
            long readUInt = this.stream.readUInt();
            long readUInt2 = this.stream.readUInt();
            HemfRecordType byId = HemfRecordType.getById(readUInt);
            if (byId == null) {
                throw new RecordFormatException("Undefined record of type: " + readUInt + " at " + Integer.toHexString(readIndex));
            }
            HemfRecord hemfRecord2 = byId.constructor.get();
            long j = readUInt2 - 8;
            try {
                long init = hemfRecord2.init(this.stream, j, readUInt);
                if (init <= j) {
                    this.stream.skipFully((int) (j - init));
                    return hemfRecord2;
                }
                throw new RecordFormatException("Record limit exceeded - readBytes: " + init + " / remBytes: " + j);
            } catch (IOException | RuntimeException e) {
                throw new RecordFormatException(e);
            } catch (RecordFormatException e2) {
                throw e2;
            }
        } catch (RuntimeException unused) {
            return null;
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.currentRecord != null;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }

    @Override // java.util.Iterator
    public HemfRecord next() {
        if (hasNext()) {
            HemfRecord hemfRecord = this.currentRecord;
            this.currentRecord = hemfRecord instanceof HemfMisc.EmfEof ? null : _next();
            return hemfRecord;
        }
        throw new NoSuchElementException();
    }
}
