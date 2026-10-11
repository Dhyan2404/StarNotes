package com.onyx.android.sdk.data.account.bean;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0013\u0010\f\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;", "", "()V", "read", "", "getRead", Constants.BOOLEAN_VALUE_SIG, "setRead", "(Z)V", "write", "getWrite", "setWrite", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AccountPermissionOperate {
    private boolean read;
    private boolean write;

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(AccountPermissionOperate.class, other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.onyx.android.sdk.data.account.bean.AccountPermissionOperate");
        AccountPermissionOperate accountPermissionOperate = (AccountPermissionOperate) other;
        return this.read == accountPermissionOperate.read && this.write == accountPermissionOperate.write;
    }

    public final boolean getRead() {
        return this.read;
    }

    public final boolean getWrite() {
        return this.write;
    }

    public int hashCode() {
        return (Boolean.hashCode(this.read) * 31) + Boolean.hashCode(this.write);
    }

    public final void setRead(boolean z) {
        this.read = z;
    }

    public final void setWrite(boolean z) {
        this.write = z;
    }
}
