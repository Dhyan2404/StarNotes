package org.apache.poi.hemf.record.emfplus;

import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.poi.util.LittleEndianInputStream;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public class HemfPlusRecordIterator implements Iterator<HemfPlusRecord> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private HemfPlusRecord currentRecord;
    private final LittleEndianInputStream leis;
    private final int limit;
    private final int startIdx;

    public HemfPlusRecordIterator(LittleEndianInputStream littleEndianInputStream) {
        this(littleEndianInputStream, -1);
    }

    private HemfPlusRecord _next() {
        HemfPlusRecord hemfPlusRecord = this.currentRecord;
        if (hemfPlusRecord != null && HemfPlusRecordType.eof == hemfPlusRecord.getEmfPlusRecordType()) {
            return null;
        }
        int readUShort = this.leis.readUShort();
        int readUShort2 = this.leis.readUShort();
        int readUInt = (int) this.leis.readUInt();
        int readUInt2 = (int) this.leis.readUInt();
        long j = readUShort;
        HemfPlusRecordType byId = HemfPlusRecordType.getById(j);
        if (byId == null) {
            throw new RecordFormatException("Undefined record of type:" + readUShort);
        }
        HemfPlusRecord hemfPlusRecord2 = byId.constructor.get();
        try {
            this.leis.skipFully((int) ((readUInt - 12) - hemfPlusRecord2.init(this.leis, readUInt2, j, readUShort2)));
            return hemfPlusRecord2;
        } catch (IOException e) {
            throw new RecordFormatException(e);
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

    public HemfPlusRecordIterator(LittleEndianInputStream littleEndianInputStream, int i) {
        this.leis = littleEndianInputStream;
        this.limit = i;
        this.startIdx = littleEndianInputStream.getReadIndex();
        this.currentRecord = _next();
    }

    @Override // java.util.Iterator
    public HemfPlusRecord next() {
        if (hasNext()) {
            HemfPlusRecord hemfPlusRecord = this.currentRecord;
            this.currentRecord = this.limit == -1 || (this.leis.getReadIndex() - this.startIdx) + 12 > this.limit ? null : _next();
            return hemfPlusRecord;
        }
        throw new NoSuchElementException();
    }
}
