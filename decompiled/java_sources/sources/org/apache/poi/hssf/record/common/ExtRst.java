package org.apache.poi.hssf.record.common;

import java.util.Arrays;
import java.util.Map;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import java.util.stream.Stream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.common.ExtRst;
import org.apache.poi.hssf.record.common.PhRun;
import org.apache.poi.hssf.record.cont.ContinuableRecordOutput;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.StringUtil;

@Internal
/* loaded from: classes12.dex */
public class ExtRst implements Comparable<ExtRst>, GenericRecord {
    private static final Logger LOG = LogManager.getLogger((Class<?>) ExtRst.class);
    private byte[] extraData;
    private short formattingFontIndex;
    private short formattingOptions;
    private int numberOfRuns;
    private PhRun[] phRuns;
    private String phoneticText;
    private short reserved;

    public ExtRst() {
        populateEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Short.valueOf(this.reserved);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return this.extraData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ PhRun[] lambda$new$0(int i) {
        return new PhRun[i];
    }

    private void populateEmpty() {
        this.reserved = (short) 1;
        this.phoneticText = "";
        this.phRuns = new PhRun[0];
        this.extraData = new byte[0];
    }

    public ExtRst copy() {
        return new ExtRst(this);
    }

    public boolean equals(Object obj) {
        return (obj instanceof ExtRst) && compareTo((ExtRst) obj) == 0;
    }

    public int getDataSize() {
        return (this.phoneticText.length() * 2) + 10 + (this.phRuns.length * 6) + this.extraData.length;
    }

    public short getFormattingFontIndex() {
        return this.formattingFontIndex;
    }

    public short getFormattingOptions() {
        return this.formattingOptions;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("reserved", new Supplier() { // from class: com.sunia.HTREnginev2.g3g
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = ExtRst.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "formattingFontIndex", new Supplier() { // from class: com.sunia.HTREnginev2.h3g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtRst.this.getFormattingFontIndex());
            }
        }, "formattingOptions", new Supplier() { // from class: com.sunia.HTREnginev2.i3g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtRst.this.getFormattingOptions());
            }
        }, "numberOfRuns", new Supplier() { // from class: com.sunia.HTREnginev2.j3g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExtRst.this.getNumberOfRuns());
            }
        }, "phoneticText", new Supplier() { // from class: com.sunia.HTREnginev2.k3g
            @Override // java.util.function.Supplier
            public final Object get() {
                return ExtRst.this.getPhoneticText();
            }
        }, "phRuns", new Supplier() { // from class: com.sunia.HTREnginev2.l3g
            @Override // java.util.function.Supplier
            public final Object get() {
                return ExtRst.this.getPhRuns();
            }
        }, "extraData", new Supplier() { // from class: com.sunia.HTREnginev2.m3g
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = ExtRst.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        });
    }

    public int getNumberOfRuns() {
        return this.numberOfRuns;
    }

    public PhRun[] getPhRuns() {
        return this.phRuns;
    }

    public String getPhoneticText() {
        return this.phoneticText;
    }

    public int hashCode() {
        return Arrays.deepHashCode(new Object[]{Short.valueOf(this.reserved), Short.valueOf(this.formattingFontIndex), Short.valueOf(this.formattingOptions), Integer.valueOf(this.numberOfRuns), this.phoneticText, this.phRuns});
    }

    public void serialize(ContinuableRecordOutput continuableRecordOutput) {
        int dataSize = getDataSize();
        continuableRecordOutput.writeContinueIfRequired(8);
        continuableRecordOutput.writeShort(this.reserved);
        continuableRecordOutput.writeShort(dataSize);
        continuableRecordOutput.writeShort(this.formattingFontIndex);
        continuableRecordOutput.writeShort(this.formattingOptions);
        continuableRecordOutput.writeContinueIfRequired(6);
        continuableRecordOutput.writeShort(this.numberOfRuns);
        continuableRecordOutput.writeShort(this.phoneticText.length());
        continuableRecordOutput.writeShort(this.phoneticText.length());
        continuableRecordOutput.writeContinueIfRequired(this.phoneticText.length() * 2);
        StringUtil.putUnicodeLE(this.phoneticText, continuableRecordOutput);
        for (PhRun phRun : this.phRuns) {
            phRun.serialize(continuableRecordOutput);
        }
        continuableRecordOutput.write(this.extraData);
    }

    @Override // java.lang.Comparable
    public int compareTo(ExtRst extRst) {
        int i = this.reserved - extRst.reserved;
        if (i != 0) {
            return i;
        }
        int i2 = this.formattingFontIndex - extRst.formattingFontIndex;
        if (i2 != 0) {
            return i2;
        }
        int i3 = this.formattingOptions - extRst.formattingOptions;
        if (i3 != 0) {
            return i3;
        }
        int i4 = this.numberOfRuns - extRst.numberOfRuns;
        if (i4 != 0) {
            return i4;
        }
        int compareTo = this.phoneticText.compareTo(extRst.phoneticText);
        if (compareTo != 0) {
            return compareTo;
        }
        int length = this.phRuns.length - extRst.phRuns.length;
        if (length != 0) {
            return length;
        }
        int i5 = 0;
        while (true) {
            PhRun[] phRunArr = this.phRuns;
            if (i5 < phRunArr.length) {
                PhRun phRun = phRunArr[i5];
                int i6 = phRun.phoneticTextFirstCharacterOffset;
                PhRun phRun2 = extRst.phRuns[i5];
                int i7 = i6 - phRun2.phoneticTextFirstCharacterOffset;
                if (i7 != 0) {
                    return i7;
                }
                int i8 = phRun.realTextFirstCharacterOffset - phRun2.realTextFirstCharacterOffset;
                if (i8 != 0) {
                    return i8;
                }
                int i9 = phRun.realTextLength - phRun2.realTextLength;
                if (i9 != 0) {
                    return i9;
                }
                i5++;
            } else {
                return Arrays.hashCode(this.extraData) - Arrays.hashCode(extRst.extraData);
            }
        }
    }

    public ExtRst(ExtRst extRst) {
        this();
        this.reserved = extRst.reserved;
        this.formattingFontIndex = extRst.formattingFontIndex;
        this.formattingOptions = extRst.formattingOptions;
        this.numberOfRuns = extRst.numberOfRuns;
        this.phoneticText = extRst.phoneticText;
        PhRun[] phRunArr = extRst.phRuns;
        this.phRuns = phRunArr == null ? null : (PhRun[]) Stream.of((Object[]) phRunArr).map(new Function() { // from class: com.sunia.HTREnginev2.n3g
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new PhRun((PhRun) obj);
            }
        }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.o3g
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                PhRun[] lambda$new$0;
                lambda$new$0 = ExtRst.lambda$new$0(i);
                return lambda$new$0;
            }
        });
    }

    public ExtRst(LittleEndianInput littleEndianInput, int i) {
        short readShort = littleEndianInput.readShort();
        this.reserved = readShort;
        if (readShort == -1) {
            populateEmpty();
            return;
        }
        int i2 = 0;
        if (readShort != 1) {
            LOG.atWarn().log("ExtRst has wrong magic marker, expecting 1 but found {} - ignoring", Unbox.box(this.reserved));
            while (i2 < i - 2) {
                littleEndianInput.readByte();
                i2++;
            }
            populateEmpty();
            return;
        }
        short readShort2 = littleEndianInput.readShort();
        this.formattingFontIndex = littleEndianInput.readShort();
        this.formattingOptions = littleEndianInput.readShort();
        this.numberOfRuns = littleEndianInput.readUShort();
        short readShort3 = littleEndianInput.readShort();
        short readShort4 = littleEndianInput.readShort();
        if (readShort3 == 0 && readShort4 > 0) {
            readShort4 = 0;
        }
        if (readShort3 == readShort4) {
            String readUnicodeLE = StringUtil.readUnicodeLE(littleEndianInput, readShort3);
            this.phoneticText = readUnicodeLE;
            int length = ((readShort2 - 4) - 6) - (readUnicodeLE.length() * 2);
            int i3 = length / 6;
            this.phRuns = new PhRun[i3];
            int i4 = 0;
            while (true) {
                PhRun[] phRunArr = this.phRuns;
                if (i4 >= phRunArr.length) {
                    break;
                }
                phRunArr[i4] = new PhRun(littleEndianInput);
                i4++;
            }
            int i5 = length - (i3 * 6);
            if (i5 < 0) {
                LOG.atWarn().log("ExtRst overran by {} bytes", Unbox.box(-i5));
                i5 = 0;
            }
            this.extraData = IOUtils.safelyAllocate(i5, HSSFWorkbook.getMaxRecordLength());
            while (true) {
                byte[] bArr = this.extraData;
                if (i2 >= bArr.length) {
                    return;
                }
                bArr[i2] = littleEndianInput.readByte();
                i2++;
            }
        } else {
            throw new IllegalStateException("The two length fields of the Phonetic Text don't agree! " + ((int) readShort3) + " vs " + ((int) readShort4));
        }
    }
}
