package com.tencent.beacon.base.net.call;

import com.tencent.beacon.base.net.C14937c;
import com.tencent.beacon.base.net.C14950d;
import com.tencent.beacon.base.net.NetException;
import com.tencent.beacon.base.net.RequestType;
import com.tencent.beacon.base.net.p066b.C14935d;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.pack.ResponsePackage;

/* renamed from: com.tencent.beacon.base.net.call.h */
/* loaded from: classes10.dex */
public class C14947h implements Callback<byte[]> {

    /* renamed from: a */
    final /* synthetic */ Callback f92898a;

    /* renamed from: b */
    final /* synthetic */ C14948i f92899b;

    public C14947h(C14948i c14948i, Callback callback) {
        this.f92899b = c14948i;
        this.f92898a = callback;
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onResponse(byte[] bArr) throws NetException {
        JceRequestEntity jceRequestEntity;
        ResponsePackage mo59122a;
        JceRequestEntity jceRequestEntity2;
        byte[] bArr2;
        long j;
        C14954c.m59391a("[BeaconNet]", "raw response size: " + bArr.length, new Object[0]);
        jceRequestEntity = this.f92899b.f92900a;
        if (jceRequestEntity.getType() == RequestType.EVENT) {
            mo59122a = C14937c.m59312d().f92867f.m59126b().mo59122a(bArr);
            if (mo59122a == null) {
                throw new NetException("ResponsePackageV2 == null");
            }
            bArr2 = null;
        } else {
            mo59122a = C14937c.m59312d().f92866e.m59118b().mo59122a(bArr);
            if (mo59122a == null) {
                throw new NetException("responsePackage == null");
            }
            ResponsePackage responsePackage = mo59122a;
            int i = responsePackage.cmd;
            jceRequestEntity2 = this.f92899b.f92900a;
            if (i != jceRequestEntity2.getResponseCmd()) {
                throw new NetException("responsePackage.cmd != requestEntity.responseCmd");
            }
            if (responsePackage.result != 0) {
                throw new NetException("responsePackage.result != OK(0)");
            }
            bArr2 = responsePackage.sBuffer;
            if (bArr2 == null || bArr2.length <= 0) {
                throw new NetException("responsePackage.buffer == null");
            }
        }
        j = this.f92899b.f92901b;
        C14935d.m59296a(j, mo59122a.serverTime, mo59122a.srcGatewayIp);
        Callback callback = this.f92898a;
        if (callback != null) {
            callback.onResponse(bArr2);
        }
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    public void onFailure(C14950d c14950d) {
        Callback callback = this.f92898a;
        if (callback != null) {
            callback.onFailure(c14950d);
        }
    }
}
