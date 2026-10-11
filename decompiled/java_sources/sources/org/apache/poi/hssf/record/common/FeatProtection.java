package org.apache.poi.hssf.record.common;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.common.FeatProtection;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class FeatProtection implements SharedFeature {
    public static final long HAS_SELF_RELATIVE_SECURITY_FEATURE = 1;
    public static final long NO_SELF_RELATIVE_SECURITY_FEATURE = 0;
    private int fSD;
    private int passwordVerifier;
    private byte[] securityDescriptor;
    private String title;

    public FeatProtection() {
        this.securityDescriptor = new byte[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return this.securityDescriptor;
    }

    @Override // org.apache.poi.hssf.record.common.SharedFeature
    public int getDataSize() {
        return StringUtil.getEncodedSize(this.title) + 8 + this.securityDescriptor.length;
    }

    public int getFSD() {
        return this.fSD;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("FSD", new Supplier() { // from class: com.sunia.HTREnginev2.k9g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(FeatProtection.this.getFSD());
            }
        }, "passwordVerifier", new Supplier() { // from class: com.sunia.HTREnginev2.l9g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(FeatProtection.this.getPasswordVerifier());
            }
        }, "title", new Supplier() { // from class: com.sunia.HTREnginev2.m9g
            @Override // java.util.function.Supplier
            public final Object get() {
                return FeatProtection.this.getTitle();
            }
        }, "securityDescriptor", new Supplier() { // from class: com.sunia.HTREnginev2.n9g
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = FeatProtection.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
    }

    public int getPasswordVerifier() {
        return this.passwordVerifier;
    }

    public String getTitle() {
        return this.title;
    }

    @Override // org.apache.poi.hssf.record.common.SharedFeature
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeInt(this.fSD);
        littleEndianOutput.writeInt(this.passwordVerifier);
        StringUtil.writeUnicodeString(littleEndianOutput, this.title);
        littleEndianOutput.write(this.securityDescriptor);
    }

    public void setPasswordVerifier(int i) {
        this.passwordVerifier = i;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    @Override // org.apache.poi.hssf.record.common.SharedFeature
    public FeatProtection copy() {
        return new FeatProtection(this);
    }

    public FeatProtection(FeatProtection featProtection) {
        this.fSD = featProtection.fSD;
        this.passwordVerifier = featProtection.passwordVerifier;
        this.title = featProtection.title;
        byte[] bArr = featProtection.securityDescriptor;
        this.securityDescriptor = bArr == null ? null : (byte[]) bArr.clone();
    }

    public FeatProtection(RecordInputStream recordInputStream) {
        this.fSD = recordInputStream.readInt();
        this.passwordVerifier = recordInputStream.readInt();
        this.title = StringUtil.readUnicodeString(recordInputStream);
        this.securityDescriptor = recordInputStream.readRemainder();
    }
}
