package com.onyx.android.sdk.universal.editor.doc;

import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u001d\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;", "", "", "component1", "component2", CouchFieldKey.KEY_CONTENT_TYPE, "relativePath", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getContentType", "()Ljava/lang/String;", "setContentType", "(Ljava/lang/String;)V", "b", "getRelativePath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class VirtualPageRelativePathInfo {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String contentType;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String relativePath;

    public VirtualPageRelativePathInfo(@NotNull String contentType, @NotNull String relativePath) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        this.contentType = contentType;
        this.relativePath = relativePath;
    }

    public static /* synthetic */ VirtualPageRelativePathInfo copy$default(VirtualPageRelativePathInfo virtualPageRelativePathInfo, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = virtualPageRelativePathInfo.contentType;
        }
        if ((i & 2) != 0) {
            str2 = virtualPageRelativePathInfo.relativePath;
        }
        return virtualPageRelativePathInfo.copy(str, str2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getContentType() {
        return this.contentType;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getRelativePath() {
        return this.relativePath;
    }

    @NotNull
    public final VirtualPageRelativePathInfo copy(@NotNull String contentType, @NotNull String relativePath) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        return new VirtualPageRelativePathInfo(contentType, relativePath);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VirtualPageRelativePathInfo)) {
            return false;
        }
        VirtualPageRelativePathInfo virtualPageRelativePathInfo = (VirtualPageRelativePathInfo) other;
        return Intrinsics.areEqual(this.contentType, virtualPageRelativePathInfo.contentType) && Intrinsics.areEqual(this.relativePath, virtualPageRelativePathInfo.relativePath);
    }

    @NotNull
    public final String getContentType() {
        return this.contentType;
    }

    @NotNull
    public final String getRelativePath() {
        return this.relativePath;
    }

    public int hashCode() {
        return (this.contentType.hashCode() * 31) + this.relativePath.hashCode();
    }

    public final void setContentType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentType = str;
    }

    @NotNull
    public String toString() {
        return "VirtualPageRelativePathInfo(contentType=" + this.contentType + ", relativePath=" + this.relativePath + ')';
    }

    public /* synthetic */ VirtualPageRelativePathInfo(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ContentConstants.TYPE_GEO_LAYOUT : str, str2);
    }
}
