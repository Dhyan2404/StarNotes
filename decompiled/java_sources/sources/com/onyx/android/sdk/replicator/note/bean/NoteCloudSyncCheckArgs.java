package com.onyx.android.sdk.replicator.note.bean;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;", "", "()V", "checkConfig", "", "getCheckConfig", Constants.BOOLEAN_VALUE_SIG, "setCheckConfig", "(Z)V", "checkPermission", "getCheckPermission", "setCheckPermission", "checkSpace", "getCheckSpace", "setCheckSpace", "checkWifi", "getCheckWifi", "setCheckWifi", "showNetworkErrorToast", "getShowNetworkErrorToast", "setShowNetworkErrorToast", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteCloudSyncCheckArgs {
    private boolean checkSpace;
    private boolean checkWifi;
    private boolean showNetworkErrorToast;
    private boolean checkPermission = true;
    private boolean checkConfig = true;

    public final boolean getCheckConfig() {
        return this.checkConfig;
    }

    public final boolean getCheckPermission() {
        return this.checkPermission;
    }

    public final boolean getCheckSpace() {
        return this.checkSpace;
    }

    public final boolean getCheckWifi() {
        return this.checkWifi;
    }

    public final boolean getShowNetworkErrorToast() {
        return this.showNetworkErrorToast;
    }

    public final void setCheckConfig(boolean z) {
        this.checkConfig = z;
    }

    public final void setCheckPermission(boolean z) {
        this.checkPermission = z;
    }

    public final void setCheckSpace(boolean z) {
        this.checkSpace = z;
    }

    public final void setCheckWifi(boolean z) {
        this.checkWifi = z;
    }

    public final void setShowNetworkErrorToast(boolean z) {
        this.showNetworkErrorToast = z;
    }
}
