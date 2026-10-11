package org.apache.poi.smtp;

import java.nio.charset.StandardCharsets;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes12.dex */
public class Base64Codec implements SMTPCodec {
    @Override // org.apache.poi.smtp.SMTPCodec
    public byte[] decode(String str) throws Exception {
        return Base64.decodeBase64(str.getBytes(StandardCharsets.UTF_8));
    }

    @Override // org.apache.poi.smtp.SMTPCodec
    public byte[] decode(byte[] bArr) throws Exception {
        return Base64.decodeBase64(bArr);
    }
}
