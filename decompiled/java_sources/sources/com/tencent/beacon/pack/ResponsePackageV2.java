package com.tencent.beacon.pack;

import com.tencent.beacon.base.util.C14954c;

/* loaded from: classes10.dex */
public final class ResponsePackageV2 extends AbstractResponseCommon implements Cloneable {
    public int result = 0;
    public String msg = "";

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            C14954c.m59393a(e);
            return null;
        }
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void readFrom(C15013a c15013a) {
        this.result = c15013a.m59715a(this.result, 0, true);
        this.srcGatewayIp = c15013a.m59720a(1, true);
        this.serverTime = c15013a.m59717a(this.serverTime, 2, true);
        this.msg = c15013a.m59720a(3, true);
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void writeTo(C15014b c15014b) {
        c15014b.m59744a(this.result, 0);
        c15014b.m59748a(this.srcGatewayIp, 1);
        c15014b.m59745a(this.serverTime, 2);
        c15014b.m59748a(this.msg, 3);
    }
}
