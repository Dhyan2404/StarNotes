package com.tencent.beacon.p059a.p063d;

import com.tencent.beacon.p059a.p061b.C14882j;
import java.nio.MappedByteBuffer;
import org.json.JSONObject;

/* renamed from: com.tencent.beacon.a.d.e */
/* loaded from: classes10.dex */
public class RunnableC14900e implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C14902g f92646a;

    public RunnableC14900e(C14902g c14902g) {
        this.f92646a = c14902g;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        JSONObject jSONObject;
        long j;
        MappedByteBuffer mappedByteBuffer;
        MappedByteBuffer mappedByteBuffer2;
        MappedByteBuffer mappedByteBuffer3;
        MappedByteBuffer mappedByteBuffer4;
        long j2;
        try {
            obj = this.f92646a.f92649a;
            synchronized (obj) {
                jSONObject = this.f92646a.f92651c;
                byte[] m59095a = C14902g.m59095a(jSONObject.toString().getBytes("ISO8859-1"));
                if (m59095a == null) {
                    return;
                }
                long length = m59095a.length + 10;
                j = this.f92646a.f92653e;
                if (length > j) {
                    this.f92646a.f92653e = m59095a.length + 10;
                    C14902g c14902g = this.f92646a;
                    j2 = c14902g.f92653e;
                    c14902g.m59092a(j2);
                }
                mappedByteBuffer = this.f92646a.f92652d;
                mappedByteBuffer.putInt(0, m59095a.length);
                mappedByteBuffer2 = this.f92646a.f92652d;
                mappedByteBuffer2.position(10);
                mappedByteBuffer3 = this.f92646a.f92652d;
                mappedByteBuffer3.put(m59095a);
                mappedByteBuffer4 = this.f92646a.f92652d;
                mappedByteBuffer4.force();
            }
        } catch (Exception e) {
            C14882j.m58961e().m58954a("504", "[properties] write to file error!", e);
        }
    }
}
