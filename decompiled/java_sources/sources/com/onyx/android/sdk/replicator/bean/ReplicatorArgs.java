package com.onyx.android.sdk.replicator.bean;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0002HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;", "", "", "component1", Constant.TAG_USER_ID, "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ReplicatorArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String userId;

    public ReplicatorArgs(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.userId = userId;
    }

    public static /* synthetic */ ReplicatorArgs copy$default(ReplicatorArgs replicatorArgs, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = replicatorArgs.userId;
        }
        return replicatorArgs.copy(str);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    @NotNull
    public final ReplicatorArgs copy(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new ReplicatorArgs(userId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ReplicatorArgs) && Intrinsics.areEqual(this.userId, ((ReplicatorArgs) other).userId);
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return this.userId.hashCode();
    }

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    @NotNull
    public String toString() {
        return "ReplicatorArgs(userId=" + this.userId + ')';
    }
}
