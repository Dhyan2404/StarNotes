package org.apache.poi.hslf.record;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.SlidePersistAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class SlidePersistAtom extends RecordAtom {
    private static final int[] FLAGS_MASKS = {4};
    private static final String[] FLAGS_NAMES = {"HAS_SHAPES_OTHER_THAN_PLACEHOLDERS"};
    private static final int HAS_SHAPES_OTHER_THAN_PLACEHOLDERS = 4;
    private static final int MAX_RECORD_LENGTH = 32;
    private static final long _type = 1011;
    private final byte[] _header;
    private int flags;
    private int numPlaceholderTexts;
    private int refID;
    private byte[] reservedFields;
    private int slideIdentifier;

    public SlidePersistAtom(byte[] bArr, int i, int i2) {
        i2 = i2 < 8 ? 8 : i2;
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this.refID = LittleEndian.getInt(bArr, i3);
        this.flags = LittleEndian.getInt(bArr, i + 12);
        this.numPlaceholderTexts = LittleEndian.getInt(bArr, i + 16);
        this.slideIdentifier = LittleEndian.getInt(bArr, i + 20);
        this.reservedFields = IOUtils.safelyClone(bArr, i + 24, i2 - 24, 32);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getGenericProperties$0() {
        return Integer.valueOf(this.flags);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(Constants.ATTRNAME_REFID, new Supplier() { // from class: com.sunia.HTREnginev2.ttm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(SlidePersistAtom.this.getRefID());
            }
        }, "flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.utm
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = SlidePersistAtom.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, FLAGS_MASKS, FLAGS_NAMES), "numPlaceholderTexts", new Supplier() { // from class: com.sunia.HTREnginev2.vtm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(SlidePersistAtom.this.getNumPlaceholderTexts());
            }
        }, "slideIdentifier", new Supplier() { // from class: com.sunia.HTREnginev2.wtm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(SlidePersistAtom.this.getSlideIdentifier());
            }
        });
    }

    public boolean getHasShapesOtherThanPlaceholders() {
        return (this.flags & 4) != 0;
    }

    public int getNumPlaceholderTexts() {
        return this.numPlaceholderTexts;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public int getRefID() {
        return this.refID;
    }

    public int getSlideIdentifier() {
        return this.slideIdentifier;
    }

    public void setRefID(int i) {
        this.refID = i;
    }

    public void setSlideIdentifier(int i) {
        this.slideIdentifier = i;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        Record.writeLittleEndian(this.refID, outputStream);
        Record.writeLittleEndian(this.flags, outputStream);
        Record.writeLittleEndian(this.numPlaceholderTexts, outputStream);
        Record.writeLittleEndian(this.slideIdentifier, outputStream);
        outputStream.write(this.reservedFields);
    }

    public SlidePersistAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putUShort(bArr, 0, 0);
        LittleEndian.putUShort(bArr, 2, 1011);
        LittleEndian.putInt(bArr, 4, 20);
        this.flags = 4;
        this.reservedFields = new byte[4];
    }
}
