package com.tencent.beacon.base.net.p065a;

import android.text.TextUtils;
import com.tencent.beacon.base.net.call.JceRequestEntity;
import com.tencent.beacon.p073d.C14975h;
import com.tencent.beacon.pack.SocketRequestPackage;
import java.util.Map;

/* renamed from: com.tencent.beacon.base.net.a.d */
/* loaded from: classes10.dex */
public final class C14909d implements InterfaceC14908c<JceRequestEntity, SocketRequestPackage> {
    /* renamed from: b */
    private Map<String, String> m59130b(JceRequestEntity jceRequestEntity) {
        Map<String, String> header = jceRequestEntity.getHeader();
        if (!header.containsKey("sid")) {
            String m59507e = C14975h.m59499d().m59507e();
            if (!TextUtils.isEmpty(m59507e)) {
                header.put("sid", m59507e);
            }
        }
        return header;
    }

    @Override // com.tencent.beacon.base.net.p065a.InterfaceC14908c
    /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public SocketRequestPackage mo59122a(JceRequestEntity jceRequestEntity) {
        return new SocketRequestPackage(m59130b(jceRequestEntity), jceRequestEntity.getContent());
    }
}
