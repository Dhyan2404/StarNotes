package com.onyx.android.sdk.universal.p042ui.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;", "", "", "a", Constants.HASIDCALL_INDEX_SIG, "getLocalBackupResult", Constants.BOOLEAN_VALUE_SIG, "setLocalBackupResult", "(Z)V", "localBackupResult", "b", "getCloudBackupResult", "setCloudBackupResult", "cloudBackupResult", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ZZ)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AutoBackupResult {

    /* renamed from: a, reason: from kotlin metadata */
    public boolean localBackupResult;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean cloudBackupResult;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AutoBackupResult() {
        /*
            r3 = this;
            r0 = 3
            r1 = 0
            r2 = 0
            r3.<init>(r2, r2, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.p042ui.data.AutoBackupResult.<init>():void");
    }

    public final boolean getCloudBackupResult() {
        return this.cloudBackupResult;
    }

    public final boolean getLocalBackupResult() {
        return this.localBackupResult;
    }

    public final void setCloudBackupResult(boolean z) {
        this.cloudBackupResult = z;
    }

    public final void setLocalBackupResult(boolean z) {
        this.localBackupResult = z;
    }

    public AutoBackupResult(boolean z, boolean z2) {
        this.localBackupResult = z;
        this.cloudBackupResult = z2;
    }

    public /* synthetic */ AutoBackupResult(boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2);
    }
}
