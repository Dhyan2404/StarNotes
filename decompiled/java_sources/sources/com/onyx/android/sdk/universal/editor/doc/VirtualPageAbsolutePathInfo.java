package com.onyx.android.sdk.universal.editor.doc;

import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u001d\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageAbsolutePathInfo;", "", "", "component1", "component2", CouchFieldKey.KEY_CONTENT_TYPE, "absolutePath", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getContentType", "()Ljava/lang/String;", "setContentType", "(Ljava/lang/String;)V", "b", "getAbsolutePath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class VirtualPageAbsolutePathInfo {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String contentType;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String absolutePath;

    public VirtualPageAbsolutePathInfo(@NotNull String contentType, @NotNull String absolutePath) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(absolutePath, "absolutePath");
        this.contentType = contentType;
        this.absolutePath = absolutePath;
    }

    public static /* synthetic */ VirtualPageAbsolutePathInfo copy$default(VirtualPageAbsolutePathInfo virtualPageAbsolutePathInfo, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = virtualPageAbsolutePathInfo.contentType;
        }
        if ((i & 2) != 0) {
            str2 = virtualPageAbsolutePathInfo.absolutePath;
        }
        return virtualPageAbsolutePathInfo.copy(str, str2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getContentType() {
        return this.contentType;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getAbsolutePath() {
        return this.absolutePath;
    }

    @NotNull
    public final VirtualPageAbsolutePathInfo copy(@NotNull String contentType, @NotNull String absolutePath) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(absolutePath, "absolutePath");
        return new VirtualPageAbsolutePathInfo(contentType, absolutePath);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VirtualPageAbsolutePathInfo)) {
            return false;
        }
        VirtualPageAbsolutePathInfo virtualPageAbsolutePathInfo = (VirtualPageAbsolutePathInfo) other;
        return Intrinsics.areEqual(this.contentType, virtualPageAbsolutePathInfo.contentType) && Intrinsics.areEqual(this.absolutePath, virtualPageAbsolutePathInfo.absolutePath);
    }

    @NotNull
    public final String getAbsolutePath() {
        return this.absolutePath;
    }

    @NotNull
    public final String getContentType() {
        return this.contentType;
    }

    public int hashCode() {
        return (this.contentType.hashCode() * 31) + this.absolutePath.hashCode();
    }

    public final void setContentType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentType = str;
    }

    @NotNull
    public String toString() {
        return "VirtualPageAbsolutePathInfo(contentType=" + this.contentType + ", absolutePath=" + this.absolutePath + ')';
    }

    public /* synthetic */ VirtualPageAbsolutePathInfo(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ContentConstants.TYPE_GEO_LAYOUT : str, str2);
    }
}
