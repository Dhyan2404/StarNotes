package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.model.textproperties.IndentProp;
import org.apache.poi.hslf.record.MasterTextPropAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class MasterTextPropAtom extends RecordAtom {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 100000;
    private static int MAX_RECORD_LENGTH = 100000;
    private byte[] _data;
    private byte[] _header;
    private List<IndentProp> indents;

    public MasterTextPropAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this._data = new byte[0];
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        LittleEndian.putInt(this._header, 4, this._data.length);
        this.indents = new ArrayList();
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    private void read() {
        this.indents = new ArrayList(this._data.length / 6);
        int i = 0;
        while (true) {
            byte[] bArr = this._data;
            if (i > bArr.length - 6) {
                return;
            }
            this.indents.add(new IndentProp(LittleEndian.getInt(bArr, i), LittleEndian.getShort(this._data, i + 4)));
            i += 6;
        }
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    private void write() {
        this._data = IOUtils.safelyAllocate(Math.multiplyExact(this.indents.size(), 6L), MAX_RECORD_LENGTH);
        int i = 0;
        for (IndentProp indentProp : this.indents) {
            LittleEndian.putInt(this._data, i, indentProp.getCharactersCovered());
            LittleEndian.putShort(this._data, i + 4, (short) indentProp.getIndentLevel());
            i += 6;
        }
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("indents", new Supplier() { // from class: com.sunia.HTREnginev2.h9j
            @Override // java.util.function.Supplier
            public final Object get() {
                return MasterTextPropAtom.this.getIndents();
            }
        });
    }

    public int getIndentAt(int i) {
        int i2 = 0;
        for (IndentProp indentProp : this.indents) {
            i2 += indentProp.getCharactersCovered();
            if (i < i2) {
                return indentProp.getIndentLevel();
            }
        }
        return -1;
    }

    public List<IndentProp> getIndents() {
        return Collections.unmodifiableList(this.indents);
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.MasterTextPropAtom.typeID;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        write();
        outputStream.write(this._header);
        outputStream.write(this._data);
    }

    public MasterTextPropAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._data = IOUtils.safelyClone(bArr, i3, i2 - 8, MAX_RECORD_LENGTH);
        try {
            read();
        } catch (Exception e) {
            Record.LOG.atError().withThrowable(e).log("Failed to parse MasterTextPropAtom");
        }
    }
}
