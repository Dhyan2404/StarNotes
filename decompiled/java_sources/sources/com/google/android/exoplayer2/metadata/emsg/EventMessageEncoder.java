package com.google.android.exoplayer2.metadata.emsg;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class EventMessageEncoder {

    /* renamed from: a */
    public final ByteArrayOutputStream f24873a;

    /* renamed from: b */
    public final DataOutputStream f24874b;

    public EventMessageEncoder() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f24873a = byteArrayOutputStream;
        this.f24874b = new DataOutputStream(byteArrayOutputStream);
    }

    /* renamed from: a */
    public static void m19343a(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public byte[] encode(EventMessage eventMessage) {
        this.f24873a.reset();
        try {
            m19343a(this.f24874b, eventMessage.schemeIdUri);
            String str = eventMessage.value;
            if (str == null) {
                str = "";
            }
            m19343a(this.f24874b, str);
            this.f24874b.writeLong(eventMessage.durationMs);
            this.f24874b.writeLong(eventMessage.f24872id);
            this.f24874b.write(eventMessage.messageData);
            this.f24874b.flush();
            return this.f24873a.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
