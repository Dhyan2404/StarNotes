package com.onyx.android.sdk.data.account.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0005J\u001a\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0007\u001a\u0004\b\u0002\u0010\u0005\"\u0004\b\u0006\u0010\u0004¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/FormatCheckResult;", "", "isValid", "", "(Ljava/lang/Boolean;)V", "()Ljava/lang/Boolean;", "setValid", "Ljava/lang/Boolean;", "component1", "copy", "(Ljava/lang/Boolean;)Lcom/onyx/android/sdk/data/account/bean/FormatCheckResult;", "equals", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class FormatCheckResult {

    @Nullable
    private Boolean isValid;

    public FormatCheckResult(@Nullable Boolean bool) {
        this.isValid = bool;
    }

    public static /* synthetic */ FormatCheckResult copy$default(FormatCheckResult formatCheckResult, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            bool = formatCheckResult.isValid;
        }
        return formatCheckResult.copy(bool);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final Boolean getIsValid() {
        return this.isValid;
    }

    @NotNull
    public final FormatCheckResult copy(@Nullable Boolean isValid) {
        return new FormatCheckResult(isValid);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof FormatCheckResult) && Intrinsics.areEqual(this.isValid, ((FormatCheckResult) other).isValid);
    }

    public int hashCode() {
        Boolean bool = this.isValid;
        if (bool == null) {
            return 0;
        }
        return bool.hashCode();
    }

    @Nullable
    public final Boolean isValid() {
        return this.isValid;
    }

    public final void setValid(@Nullable Boolean bool) {
        this.isValid = bool;
    }

    @NotNull
    public String toString() {
        return "FormatCheckResult(isValid=" + this.isValid + ')';
    }
}
