package com.tencent.beacon.event.immediate;

/* loaded from: classes10.dex */
public class Beacon2MsfTransferArgs extends BeaconTransferArgs {

    /* renamed from: d */
    private String f93117d;

    public Beacon2MsfTransferArgs(byte[] bArr) {
        super(bArr);
        this.f93117d = "trpc.Beacon.BeaconLogServerLC.blslongconnection.SsoProcess";
    }

    @Override // com.tencent.beacon.event.immediate.BeaconTransferArgs
    public String getCommand() {
        return this.f93117d;
    }

    @Override // com.tencent.beacon.event.immediate.BeaconTransferArgs
    public void setCommand(String str) {
        this.f93117d = str;
    }
}
