package org.apache.poi.smtp;

import java.nio.charset.StandardCharsets;

/* loaded from: classes12.dex */
public class EmptyCodec implements SMTPCodec {
    @Override // org.apache.poi.smtp.SMTPCodec
    public byte[] decode(byte[] bArr) throws Exception {
        return bArr;
    }

    @Override // org.apache.poi.smtp.SMTPCodec
    public byte[] decode(String str) throws Exception {
        return str.getBytes(StandardCharsets.UTF_8);
    }
}
