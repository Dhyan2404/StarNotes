package org.apache.poi.hslf.record;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.UnknownRecordPlaceholder;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class UnknownRecordPlaceholder extends RecordAtom {
    private static final int MAX_RECORD_LENGTH = 20000000;
    private byte[] _contents;
    private long _type;

    public UnknownRecordPlaceholder(byte[] bArr, int i, int i2) {
        this._contents = IOUtils.safelyClone(bArr, i, i2 < 0 ? 0 : i2, MAX_RECORD_LENGTH);
        this._type = LittleEndian.getUShort(r2, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return this._contents;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(Constants.ELEMNAME_CONTENTS_STRING, new Supplier() { // from class: com.sunia.HTREnginev2.xtn
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = UnknownRecordPlaceholder.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return this._type;
    }

    public RecordTypes getRecordTypeEnum() {
        return RecordTypes.forTypeID((int) this._type);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._contents);
    }
}
