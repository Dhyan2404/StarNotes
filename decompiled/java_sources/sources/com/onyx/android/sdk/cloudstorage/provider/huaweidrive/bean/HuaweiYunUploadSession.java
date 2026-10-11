package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0086\b\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u001b\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0019\u0010\u001aJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u001f\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0004HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R$\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;", "", "", "component1", "", "component2", "sliceSize", "location", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "J", "getSliceSize", "()J", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getLocation", "()Ljava/lang/String;", "setLocation", "(Ljava/lang/String;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(JLjava/lang/String;)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class HuaweiYunUploadSession {

    @NotNull
    public static final String HEADER_KEY_UPLOAD_URL = "Location";

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final long sliceSize;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public String location;

    public HuaweiYunUploadSession(long j, @Nullable String str) {
        this.sliceSize = j;
        this.location = str;
    }

    public static /* synthetic */ HuaweiYunUploadSession copy$default(HuaweiYunUploadSession huaweiYunUploadSession, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = huaweiYunUploadSession.sliceSize;
        }
        if ((i & 2) != 0) {
            str = huaweiYunUploadSession.location;
        }
        return huaweiYunUploadSession.copy(j, str);
    }

    /* renamed from: component1, reason: from getter */
    public final long getSliceSize() {
        return this.sliceSize;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getLocation() {
        return this.location;
    }

    @NotNull
    public final HuaweiYunUploadSession copy(long sliceSize, @Nullable String location) {
        return new HuaweiYunUploadSession(sliceSize, location);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HuaweiYunUploadSession)) {
            return false;
        }
        HuaweiYunUploadSession huaweiYunUploadSession = (HuaweiYunUploadSession) other;
        return this.sliceSize == huaweiYunUploadSession.sliceSize && Intrinsics.areEqual(this.location, huaweiYunUploadSession.location);
    }

    @Nullable
    public final String getLocation() {
        return this.location;
    }

    public final long getSliceSize() {
        return this.sliceSize;
    }

    public int hashCode() {
        int hashCode = Long.hashCode(this.sliceSize) * 31;
        String str = this.location;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final void setLocation(@Nullable String str) {
        this.location = str;
    }

    @NotNull
    public String toString() {
        return "HuaweiYunUploadSession(sliceSize=" + this.sliceSize + ", location=" + this.location + ')';
    }

    public /* synthetic */ HuaweiYunUploadSession(long j, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, (i & 2) != 0 ? null : str);
    }
}
