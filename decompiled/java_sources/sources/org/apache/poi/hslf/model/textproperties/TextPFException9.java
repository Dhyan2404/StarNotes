package org.apache.poi.hslf.model.textproperties;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hslf.model.textproperties.TextPFException9;
import org.apache.poi.sl.usermodel.AutoNumberingScheme;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class TextPFException9 implements GenericRecord {
    private static final AutoNumberingScheme DEFAULT_AUTONUMBER_SCHEME = AutoNumberingScheme.arabicPeriod;
    private static final Short DEFAULT_START_NUMBER = 1;
    private final AutoNumberingScheme autoNumberScheme;
    private final Short autoNumberStartNumber;
    private final Short bulletBlipRef;
    private final Short fBulletHasAutoNumber;
    private final byte mask3;
    private final byte mask4;
    private final int recordLength;

    public TextPFException9(byte[] bArr, int i) {
        byte b = bArr[i + 2];
        this.mask3 = b;
        byte b2 = bArr[i + 3];
        this.mask4 = b2;
        int i2 = 4;
        int i3 = i + 4;
        if ((b & Byte.MIN_VALUE) == 0) {
            this.bulletBlipRef = null;
        } else {
            this.bulletBlipRef = Short.valueOf(LittleEndian.getShort(bArr, i3));
            i3 += 2;
            i2 = 6;
        }
        if ((b2 & 2) == 0) {
            this.fBulletHasAutoNumber = null;
        } else {
            this.fBulletHasAutoNumber = Short.valueOf(LittleEndian.getShort(bArr, i3));
            i3 += 2;
            i2 += 2;
        }
        if ((b2 & 1) == 0) {
            this.autoNumberScheme = null;
            this.autoNumberStartNumber = null;
        } else {
            this.autoNumberScheme = AutoNumberingScheme.forNativeID(LittleEndian.getShort(bArr, i3));
            this.autoNumberStartNumber = Short.valueOf(LittleEndian.getShort(bArr, i3 + 2));
            i2 += 4;
        }
        this.recordLength = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasBulletAutoNumber() {
        Short sh = 1;
        return sh.equals(this.fBulletHasAutoNumber);
    }

    public AutoNumberingScheme getAutoNumberScheme() {
        AutoNumberingScheme autoNumberingScheme = this.autoNumberScheme;
        if (autoNumberingScheme != null) {
            return autoNumberingScheme;
        }
        if (hasBulletAutoNumber()) {
            return DEFAULT_AUTONUMBER_SCHEME;
        }
        return null;
    }

    public Short getAutoNumberStartNumber() {
        Short sh = this.autoNumberStartNumber;
        if (sh != null) {
            return sh;
        }
        if (hasBulletAutoNumber()) {
            return DEFAULT_START_NUMBER;
        }
        return null;
    }

    public Short getBulletBlipRef() {
        return this.bulletBlipRef;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("bulletBlipRef", new Supplier() { // from class: com.sunia.HTREnginev2.udn
            @Override // java.util.function.Supplier
            public final Object get() {
                return TextPFException9.this.getBulletBlipRef();
            }
        }, "bulletHasAutoNumber", new Supplier() { // from class: com.sunia.HTREnginev2.vdn
            @Override // java.util.function.Supplier
            public final Object get() {
                boolean hasBulletAutoNumber;
                hasBulletAutoNumber = TextPFException9.this.hasBulletAutoNumber();
                return Boolean.valueOf(hasBulletAutoNumber);
            }
        }, "autoNumberScheme", new Supplier() { // from class: com.sunia.HTREnginev2.wdn
            @Override // java.util.function.Supplier
            public final Object get() {
                return TextPFException9.this.getAutoNumberScheme();
            }
        }, "autoNumberStartNumber", new Supplier() { // from class: com.sunia.HTREnginev2.xdn
            @Override // java.util.function.Supplier
            public final Object get() {
                return TextPFException9.this.getAutoNumberStartNumber();
            }
        });
    }

    public int getRecordLength() {
        return this.recordLength;
    }

    public Short getfBulletHasAutoNumber() {
        return this.fBulletHasAutoNumber;
    }

    public String toString() {
        return "Record length: " + this.recordLength + " bytes\nbulletBlipRef: " + this.bulletBlipRef + "\nfBulletHasAutoNumber: " + this.fBulletHasAutoNumber + "\nautoNumberScheme: " + this.autoNumberScheme + "\nautoNumberStartNumber: " + this.autoNumberStartNumber + "\n";
    }
}
