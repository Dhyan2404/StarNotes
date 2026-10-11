package com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b&\u0010'R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u0011\u0010#\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b\"\u0010\u0016R\u0011\u0010%\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b$\u0010\u001e¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;", "", "", "a", Constants.STRING_SIG, "getBaiduName", "()Ljava/lang/String;", "setBaiduName", "(Ljava/lang/String;)V", "baiduName", "b", "getNetdiskName", "setNetdiskName", "netdiskName", "c", "getAvatarUrl", "setAvatarUrl", "avatarUrl", "", "d", "I", "getVipType", "()I", "setVipType", "(I)V", "vipType", "", "e", "J", "getUk", "()J", "setUk", "(J)V", "uk", "getLimitUploadSizeOnce", "limitUploadSizeOnce", "getLimitUploadFileSize", "limitUploadFileSize", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunUserBean {

    /* renamed from: a, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.BAIDUYUN_BAIDU_NAME})
    @Nullable
    public String baiduName;

    /* renamed from: b, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.BAIDUYUN_NETDISK_NAME})
    @Nullable
    public String netdiskName;

    /* renamed from: c, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.BAIDUYUN_AVATAR_URL})
    @Nullable
    public String avatarUrl;

    /* renamed from: d, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.BAIDUYUN_VIP_TYPE})
    public int vipType;

    /* renamed from: e, reason: from kotlin metadata */
    public long uk;

    @Nullable
    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    @Nullable
    public final String getBaiduName() {
        return this.baiduName;
    }

    public final long getLimitUploadFileSize() {
        long j;
        int i;
        int i2 = this.vipType;
        if (i2 != 0) {
            if (i2 != 1) {
                i = i2 == 2 ? 20 : 10;
            }
            j = i;
            return j * 1073741824;
        }
        j = 4;
        return j * 1073741824;
    }

    public final int getLimitUploadSizeOnce() {
        return 4194304;
    }

    @Nullable
    public final String getNetdiskName() {
        return this.netdiskName;
    }

    public final long getUk() {
        return this.uk;
    }

    public final int getVipType() {
        return this.vipType;
    }

    public final void setAvatarUrl(@Nullable String str) {
        this.avatarUrl = str;
    }

    public final void setBaiduName(@Nullable String str) {
        this.baiduName = str;
    }

    public final void setNetdiskName(@Nullable String str) {
        this.netdiskName = str;
    }

    public final void setUk(long j) {
        this.uk = j;
    }

    public final void setVipType(int i) {
        this.vipType = i;
    }
}
