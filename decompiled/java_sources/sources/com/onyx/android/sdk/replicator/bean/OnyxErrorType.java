package com.onyx.android.sdk.replicator.bean;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b0\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b2\u00103J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\b\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\fR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\b\u001a\u0004\b\u0013\u0010\n\"\u0004\b\u0014\u0010\fR\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\b\u001a\u0004\b\u0017\u0010\n\"\u0004\b\u0018\u0010\fR\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\b\u001a\u0004\b\u001b\u0010\n\"\u0004\b\u001c\u0010\fR\"\u0010!\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\b\u001a\u0004\b\u001f\u0010\n\"\u0004\b \u0010\fR\"\u0010%\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\b\u001a\u0004\b#\u0010\n\"\u0004\b$\u0010\fR\"\u0010)\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\b\u001a\u0004\b'\u0010\n\"\u0004\b(\u0010\fR\"\u0010-\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\b\u001a\u0004\b+\u0010\n\"\u0004\b,\u0010\fR\"\u00101\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010\b\u001a\u0004\b/\u0010\n\"\u0004\b0\u0010\f¨\u00064"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;", "", "", "type", "", "isNetworkError", "canRetryError", "a", "I", "getNONE", "()I", "setNONE", "(I)V", "NONE", "b", "getUSER_STORAGE_TOO_LOW", "setUSER_STORAGE_TOO_LOW", "USER_STORAGE_TOO_LOW", "c", "getPUSH_DATA_ERROR", "setPUSH_DATA_ERROR", "PUSH_DATA_ERROR", "d", "getPULL_DATA_ERROR", "setPULL_DATA_ERROR", "PULL_DATA_ERROR", "e", "getNETWORK_ERROR", "setNETWORK_ERROR", "NETWORK_ERROR", C6997f.f39671c, "getTIMEOUT_ERROR", "setTIMEOUT_ERROR", "TIMEOUT_ERROR", C6998g.f39679a, "getEMPTY_SYNC_GATEWAY", "setEMPTY_SYNC_GATEWAY", "EMPTY_SYNC_GATEWAY", C6999h.f39688c, "getTHUMBNAIL_CLOUD_FILE_NOT_EXIST", "setTHUMBNAIL_CLOUD_FILE_NOT_EXIST", "THUMBNAIL_CLOUD_FILE_NOT_EXIST", "i", "getREMOVE_DATA_ERROR", "setREMOVE_DATA_ERROR", "REMOVE_DATA_ERROR", "j", "getUNKNOWN_ERROR", "setUNKNOWN_ERROR", "UNKNOWN_ERROR", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class OnyxErrorType {

    /* renamed from: a, reason: from kotlin metadata */
    public static int NONE;

    @NotNull
    public static final OnyxErrorType INSTANCE = new OnyxErrorType();

    /* renamed from: b, reason: from kotlin metadata */
    public static int USER_STORAGE_TOO_LOW = 1;

    /* renamed from: c, reason: from kotlin metadata */
    public static int PUSH_DATA_ERROR = 2;

    /* renamed from: d, reason: from kotlin metadata */
    public static int PULL_DATA_ERROR = 3;

    /* renamed from: e, reason: from kotlin metadata */
    public static int NETWORK_ERROR = 4;

    /* renamed from: f, reason: from kotlin metadata */
    public static int TIMEOUT_ERROR = 5;

    /* renamed from: g, reason: from kotlin metadata */
    public static int EMPTY_SYNC_GATEWAY = 6;

    /* renamed from: h, reason: from kotlin metadata */
    public static int THUMBNAIL_CLOUD_FILE_NOT_EXIST = 7;

    /* renamed from: i, reason: from kotlin metadata */
    public static int REMOVE_DATA_ERROR = 8;

    /* renamed from: j, reason: from kotlin metadata */
    public static int UNKNOWN_ERROR = 9;

    public final boolean canRetryError(int type) {
        return type == PUSH_DATA_ERROR || type == PULL_DATA_ERROR || type == REMOVE_DATA_ERROR;
    }

    public final int getEMPTY_SYNC_GATEWAY() {
        return EMPTY_SYNC_GATEWAY;
    }

    public final int getNETWORK_ERROR() {
        return NETWORK_ERROR;
    }

    public final int getNONE() {
        return NONE;
    }

    public final int getPULL_DATA_ERROR() {
        return PULL_DATA_ERROR;
    }

    public final int getPUSH_DATA_ERROR() {
        return PUSH_DATA_ERROR;
    }

    public final int getREMOVE_DATA_ERROR() {
        return REMOVE_DATA_ERROR;
    }

    public final int getTHUMBNAIL_CLOUD_FILE_NOT_EXIST() {
        return THUMBNAIL_CLOUD_FILE_NOT_EXIST;
    }

    public final int getTIMEOUT_ERROR() {
        return TIMEOUT_ERROR;
    }

    public final int getUNKNOWN_ERROR() {
        return UNKNOWN_ERROR;
    }

    public final int getUSER_STORAGE_TOO_LOW() {
        return USER_STORAGE_TOO_LOW;
    }

    public final boolean isNetworkError(int type) {
        return type == TIMEOUT_ERROR || type == NETWORK_ERROR;
    }

    public final void setEMPTY_SYNC_GATEWAY(int i) {
        EMPTY_SYNC_GATEWAY = i;
    }

    public final void setNETWORK_ERROR(int i) {
        NETWORK_ERROR = i;
    }

    public final void setNONE(int i) {
        NONE = i;
    }

    public final void setPULL_DATA_ERROR(int i) {
        PULL_DATA_ERROR = i;
    }

    public final void setPUSH_DATA_ERROR(int i) {
        PUSH_DATA_ERROR = i;
    }

    public final void setREMOVE_DATA_ERROR(int i) {
        REMOVE_DATA_ERROR = i;
    }

    public final void setTHUMBNAIL_CLOUD_FILE_NOT_EXIST(int i) {
        THUMBNAIL_CLOUD_FILE_NOT_EXIST = i;
    }

    public final void setTIMEOUT_ERROR(int i) {
        TIMEOUT_ERROR = i;
    }

    public final void setUNKNOWN_ERROR(int i) {
        UNKNOWN_ERROR = i;
    }

    public final void setUSER_STORAGE_TOO_LOW(int i) {
        USER_STORAGE_TOO_LOW = i;
    }
}
