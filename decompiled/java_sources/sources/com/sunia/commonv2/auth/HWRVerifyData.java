package com.sunia.commonv2.auth;

/* loaded from: classes10.dex */
public class HWRVerifyData {
    public String appid;
    private String lastLicenseFlag;
    public String offlineStr;
    public String publicKey;
    public String savePath;
    public HWRDeviceIdType deviceIdType = HWRDeviceIdType.ANDROID_ID;
    public int urlType = HWRURLType.PROD.getValue();

    public HWRVerifyData() {
    }

    public String getAppid() {
        return this.appid;
    }

    public HWRDeviceIdType getDeviceIdType() {
        return this.deviceIdType;
    }

    public String getLastLicenseFlag() {
        return this.lastLicenseFlag;
    }

    public String getOfflineStr() {
        return this.offlineStr;
    }

    public String getPublicKey() {
        return this.publicKey;
    }

    public String getSavePath() {
        return this.savePath;
    }

    public void setAppid(String str) {
        this.appid = str;
    }

    public void setDeviceIdType(HWRDeviceIdType hWRDeviceIdType) {
        this.deviceIdType = hWRDeviceIdType;
    }

    public void setLastLicenseFlag(String str) {
        this.lastLicenseFlag = str;
    }

    public void setOfflineStr(String str) {
        this.offlineStr = str;
    }

    public void setPublicKey(String str) {
        this.publicKey = str;
    }

    public void setSavePath(String str) {
        this.savePath = str;
    }

    public void setUrlType(HWRURLType hWRURLType) {
        this.urlType = hWRURLType.getValue();
    }

    public HWRVerifyData(String str, String str2, String str3, String str4) {
        this.appid = str;
        this.publicKey = str2;
        this.savePath = str3;
        this.offlineStr = str4;
    }
}
