package org.apache.poi.hpbf.model.qcbits;

import org.apache.poi.util.IOUtils;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class QCTextBit extends QCBit {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 1000000;
    private static int MAX_RECORD_LENGTH = 1000000;

    public QCTextBit(String str, String str2, byte[] bArr) {
        super(str, str2, bArr);
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public String getText() {
        return StringUtil.getFromUnicodeLE(getData());
    }

    public void setText(String str) {
        byte[] safelyAllocate = IOUtils.safelyAllocate(str.length() * 2, MAX_RECORD_LENGTH);
        StringUtil.putUnicodeLE(str, safelyAllocate, 0);
        setData(safelyAllocate);
    }
}
