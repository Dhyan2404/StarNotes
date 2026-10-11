package org.apache.poi.ddf;

import androidx.transition.Transition;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.GenericRecordXmlWriter;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public abstract class EscherRecord implements Duplicatable, GenericRecord {
    private static final BitField fInstance = BitFieldFactory.getInstance(65520);
    private static final BitField fVersion = BitFieldFactory.getInstance(15);
    private short _options;
    private short _recordId;

    public EscherRecord() {
    }

    public static short readInstance(byte[] bArr, int i) {
        return fInstance.getShortValue(LittleEndian.getShort(bArr, i));
    }

    @Override // org.apache.poi.common.Duplicatable
    public abstract EscherRecord copy();

    public void display(PrintWriter printWriter, int i) {
        for (int i2 = 0; i2 < i * 4; i2++) {
            printWriter.print(' ');
        }
        printWriter.println(getRecordName());
    }

    public abstract int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory);

    public int fillFields(byte[] bArr, EscherRecordFactory escherRecordFactory) {
        return fillFields(bArr, 0, escherRecordFactory);
    }

    public EscherRecord getChild(int i) {
        return getChildRecords().get(i);
    }

    public List<EscherRecord> getChildRecords() {
        return Collections.emptyList();
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public List<? extends GenericRecord> getGenericChildren() {
        return getChildRecords();
    }

    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(CouchFieldKey.KEY_RECORD_ID, new Supplier() { // from class: com.sunia.HTREnginev2.evf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherRecord.this.getRecordId());
            }
        }, "version", new Supplier() { // from class: com.sunia.HTREnginev2.fvf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherRecord.this.getVersion());
            }
        }, Transition.f10626J0, new Supplier() { // from class: com.sunia.HTREnginev2.gvf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherRecord.this.getInstance());
            }
        }, "options", new Supplier() { // from class: com.sunia.HTREnginev2.hvf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherRecord.this.getOptions());
            }
        }, "recordSize", new Supplier() { // from class: com.sunia.HTREnginev2.ivf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherRecord.this.getRecordSize());
            }
        });
    }

    public short getInstance() {
        return fInstance.getShortValue(this._options);
    }

    @Internal
    public short getOptions() {
        return this._options;
    }

    public short getRecordId() {
        return this._recordId;
    }

    public abstract String getRecordName();

    public abstract int getRecordSize();

    public short getVersion() {
        return fVersion.getShortValue(this._options);
    }

    public boolean isContainerRecord() {
        return getVersion() == 15;
    }

    public int readHeader(byte[] bArr, int i) {
        this._options = LittleEndian.getShort(bArr, i);
        this._recordId = LittleEndian.getShort(bArr, i + 2);
        return LittleEndian.getInt(bArr, i + 4);
    }

    public abstract int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener);

    public byte[] serialize() {
        byte[] bArr = new byte[getRecordSize()];
        serialize(0, bArr);
        return bArr;
    }

    public void setChildRecords(List<EscherRecord> list) {
        throw new UnsupportedOperationException("This record does not support child records.");
    }

    public void setInstance(short s) {
        this._options = fInstance.setShortValue(this._options, s);
    }

    @Internal
    public void setOptions(short s) {
        setVersion(fVersion.getShortValue(s));
        setInstance(fInstance.getShortValue(s));
        this._options = s;
    }

    public void setRecordId(short s) {
        this._recordId = s;
    }

    public void setVersion(short s) {
        this._options = fVersion.setShortValue(this._options, s);
    }

    public final String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    public String toXml() {
        return toXml("");
    }

    public EscherRecord(EscherRecord escherRecord) {
        this._options = escherRecord._options;
        this._recordId = escherRecord._recordId;
    }

    public final String toXml(String str) {
        return GenericRecordXmlWriter.marshal(this);
    }

    public int serialize(int i, byte[] bArr) {
        return serialize(i, bArr, new NullEscherSerializationListener());
    }
}
