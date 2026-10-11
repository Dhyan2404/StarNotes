package org.apache.poi.smtp;

import java.nio.charset.StandardCharsets;

/* loaded from: classes12.dex */
public class QuotedPrintableCodec implements SMTPCodec {
    @Override // org.apache.poi.smtp.SMTPCodec
    public byte[] decode(String str) throws Exception {
        return org.apache.commons.codec.net.QuotedPrintableCodec.decodeQuotedPrintable(str.getBytes(StandardCharsets.UTF_8));
    }

    @Override // org.apache.poi.smtp.SMTPCodec
    public byte[] decode(byte[] bArr) throws Exception {
        return org.apache.commons.codec.net.QuotedPrintableCodec.decodeQuotedPrintable(bArr);
    }
}
