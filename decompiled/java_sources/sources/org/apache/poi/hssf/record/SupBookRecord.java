package org.apache.poi.hssf.record;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hssf.record.SupBookRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class SupBookRecord extends StandardRecord {
    static final char CH_ALT_STARTUP_DIR = 7;
    static final char CH_DOWN_DIR = 3;
    static final char CH_LIB_DIR = '\b';
    static final char CH_LONG_VOLUME = 5;
    static final char CH_SAME_VOLUME = 2;
    static final char CH_STARTUP_DIR = 6;
    static final char CH_UP_DIR = 4;
    static final char CH_VOLUME = 1;
    private static final Logger LOG = LogManager.getLogger((Class<?>) SupBookRecord.class);
    static final String PATH_SEPERATOR = System.getProperty("file.separator");
    private static final short SMALL_RECORD_SIZE = 4;
    private static final short TAG_ADD_IN_FUNCTIONS = 14849;
    private static final short TAG_INTERNAL_REFERENCES = 1025;
    public static final short sid = 430;
    private final boolean _isAddInFunctions;
    private short field_1_number_of_sheets;
    private String field_2_encoded_url;
    private final String[] field_3_sheet_names;

    public SupBookRecord(SupBookRecord supBookRecord) {
        super(supBookRecord);
        this.field_1_number_of_sheets = supBookRecord.field_1_number_of_sheets;
        this.field_2_encoded_url = supBookRecord.field_2_encoded_url;
        this.field_3_sheet_names = supBookRecord.field_3_sheet_names;
        this._isAddInFunctions = supBookRecord._isAddInFunctions;
    }

    public static SupBookRecord createAddInFunctions() {
        return new SupBookRecord(true, (short) 1);
    }

    public static SupBookRecord createExternalReferences(String str, String[] strArr) {
        return new SupBookRecord(str, strArr);
    }

    public static SupBookRecord createInternalReferences(short s) {
        return new SupBookRecord(false, s);
    }

    private static String decodeFileName(String str) {
        StringBuilder sb = new StringBuilder();
        int i = 1;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            switch (charAt) {
                case 1:
                    i++;
                    char charAt2 = str.charAt(i);
                    if (charAt2 != '@') {
                        sb.append(charAt2);
                        sb.append(":");
                        break;
                    } else {
                        sb.append("\\\\");
                        break;
                    }
                case 2:
                case 3:
                    sb.append(PATH_SEPERATOR);
                    break;
                case 4:
                    sb.append(Constants.ATTRVAL_PARENT);
                    sb.append(PATH_SEPERATOR);
                    break;
                case 5:
                    LOG.atWarn().log("Found unexpected key: ChLongVolume - IGNORING");
                    break;
                case 6:
                case 7:
                case '\b':
                    LOG.atWarn().log("EXCEL.EXE path unknown - using this directory instead: .");
                    sb.append('.');
                    sb.append(PATH_SEPERATOR);
                    break;
                default:
                    sb.append(charAt);
                    break;
            }
            i++;
        }
        return sb.toString();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        if (!isExternalReferences()) {
            return 4;
        }
        int encodedSize = StringUtil.getEncodedSize(this.field_2_encoded_url) + 2;
        for (String str : this.field_3_sheet_names) {
            encodedSize += StringUtil.getEncodedSize(str);
        }
        return encodedSize;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("externalReferences", new Supplier() { // from class: com.sunia.HTREnginev2.x5n
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(SupBookRecord.this.isExternalReferences());
            }
        }, "internalReferences", new Supplier() { // from class: com.sunia.HTREnginev2.y5n
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(SupBookRecord.this.isInternalReferences());
            }
        }, "url", new Supplier() { // from class: com.sunia.HTREnginev2.z5n
            @Override // java.util.function.Supplier
            public final Object get() {
                return SupBookRecord.this.getURL();
            }
        }, "numberOfSheets", new Supplier() { // from class: com.sunia.HTREnginev2.a6n
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(SupBookRecord.this.getNumberOfSheets());
            }
        }, "sheetNames", new Supplier() { // from class: com.sunia.HTREnginev2.b6n
            @Override // java.util.function.Supplier
            public final Object get() {
                return SupBookRecord.this.getSheetNames();
            }
        }, "addInFunctions", new Supplier() { // from class: com.sunia.HTREnginev2.c6n
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(SupBookRecord.this.isAddInFunctions());
            }
        });
    }

    public short getNumberOfSheets() {
        return this.field_1_number_of_sheets;
    }

    public String[] getSheetNames() {
        String[] strArr = this.field_3_sheet_names;
        if (strArr == null) {
            return null;
        }
        return (String[]) strArr.clone();
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public String getURL() {
        String str = this.field_2_encoded_url;
        if (str == null || str.length() < 2) {
            return str;
        }
        char charAt = str.charAt(0);
        if (charAt != 0) {
            if (charAt == 1) {
                return decodeFileName(str);
            }
            if (charAt != 2) {
                return str;
            }
        }
        return str.substring(1);
    }

    public boolean isAddInFunctions() {
        return this.field_3_sheet_names == null && this._isAddInFunctions;
    }

    public boolean isExternalReferences() {
        return this.field_3_sheet_names != null;
    }

    public boolean isInternalReferences() {
        return this.field_3_sheet_names == null && !this._isAddInFunctions;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_number_of_sheets);
        if (!isExternalReferences()) {
            littleEndianOutput.writeShort(this._isAddInFunctions ? 14849 : 1025);
            return;
        }
        StringUtil.writeUnicodeString(littleEndianOutput, this.field_2_encoded_url);
        for (String str : this.field_3_sheet_names) {
            StringUtil.writeUnicodeString(littleEndianOutput, str);
        }
    }

    public void setNumberOfSheets(short s) {
        this.field_1_number_of_sheets = s;
    }

    public void setURL(String str) {
        this.field_2_encoded_url = this.field_2_encoded_url.charAt(0) + str;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.SUP_BOOK;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public SupBookRecord copy() {
        return new SupBookRecord(this);
    }

    private SupBookRecord(boolean z, short s) {
        this.field_1_number_of_sheets = s;
        this.field_2_encoded_url = null;
        this.field_3_sheet_names = null;
        this._isAddInFunctions = z;
    }

    public SupBookRecord(String str, String[] strArr) {
        this.field_1_number_of_sheets = (short) strArr.length;
        this.field_2_encoded_url = str;
        this.field_3_sheet_names = strArr;
        this._isAddInFunctions = false;
    }

    public SupBookRecord(RecordInputStream recordInputStream) {
        int remaining = recordInputStream.remaining();
        this.field_1_number_of_sheets = recordInputStream.readShort();
        if (remaining > 4) {
            this._isAddInFunctions = false;
            this.field_2_encoded_url = recordInputStream.readString();
            int i = this.field_1_number_of_sheets;
            String[] strArr = new String[i];
            for (int i2 = 0; i2 < i; i2++) {
                strArr[i2] = recordInputStream.readString();
            }
            this.field_3_sheet_names = strArr;
            return;
        }
        this.field_2_encoded_url = null;
        this.field_3_sheet_names = null;
        short readShort = recordInputStream.readShort();
        if (readShort == 1025) {
            this._isAddInFunctions = false;
            return;
        }
        if (readShort == 14849) {
            this._isAddInFunctions = true;
            if (this.field_1_number_of_sheets == 1) {
                return;
            }
            throw new IllegalArgumentException("Expected 0x0001 for number of sheets field in 'Add-In Functions' but got (" + ((int) this.field_1_number_of_sheets) + MotionUtils.f31762d);
        }
        throw new IllegalArgumentException("invalid EXTERNALBOOK code (" + Integer.toHexString(readShort) + MotionUtils.f31762d);
    }
}
