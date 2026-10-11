package com.onyx.android.sdk.universal.editor.doc;

import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0086\b\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB!\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J'\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0002HÆ\u0001J\t\u0010\u000b\u001a\u00020\u0002HÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0018\u0010\u0014R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0012\u001a\u0004\b\u001a\u0010\u0014¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;", "", "", "toPathKey", "component1", "component2", "component3", CouchFieldKey.KEY_CONTENT_TYPE, "relativePath", "absolutePath", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getContentType", "()Ljava/lang/String;", "setContentType", "(Ljava/lang/String;)V", "b", "getRelativePath", "c", "getAbsolutePath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class VirtualPagePathInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String contentType;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String relativePath;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final String absolutePath;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo$Companion;", "", "()V", "toPathKey", "", "virtualPageModel", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String toPathKey(@NotNull VirtualPageModel virtualPageModel) {
            Intrinsics.checkNotNullParameter(virtualPageModel, "virtualPageModel");
            return virtualPageModel.getContentType() + virtualPageModel.getContentRelativePath();
        }

        public Companion() {
        }
    }

    public VirtualPagePathInfo(@NotNull String contentType, @NotNull String relativePath, @NotNull String absolutePath) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        Intrinsics.checkNotNullParameter(absolutePath, "absolutePath");
        this.contentType = contentType;
        this.relativePath = relativePath;
        this.absolutePath = absolutePath;
    }

    public static /* synthetic */ VirtualPagePathInfo copy$default(VirtualPagePathInfo virtualPagePathInfo, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = virtualPagePathInfo.contentType;
        }
        if ((i & 2) != 0) {
            str2 = virtualPagePathInfo.relativePath;
        }
        if ((i & 4) != 0) {
            str3 = virtualPagePathInfo.absolutePath;
        }
        return virtualPagePathInfo.copy(str, str2, str3);
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
    /* renamed from: component3, reason: from getter */
    public final String getAbsolutePath() {
        return this.absolutePath;
    }

    @NotNull
    public final VirtualPagePathInfo copy(@NotNull String contentType, @NotNull String relativePath, @NotNull String absolutePath) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        Intrinsics.checkNotNullParameter(absolutePath, "absolutePath");
        return new VirtualPagePathInfo(contentType, relativePath, absolutePath);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VirtualPagePathInfo)) {
            return false;
        }
        VirtualPagePathInfo virtualPagePathInfo = (VirtualPagePathInfo) other;
        return Intrinsics.areEqual(this.contentType, virtualPagePathInfo.contentType) && Intrinsics.areEqual(this.relativePath, virtualPagePathInfo.relativePath) && Intrinsics.areEqual(this.absolutePath, virtualPagePathInfo.absolutePath);
    }

    @NotNull
    public final String getAbsolutePath() {
        return this.absolutePath;
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
        return (((this.contentType.hashCode() * 31) + this.relativePath.hashCode()) * 31) + this.absolutePath.hashCode();
    }

    public final void setContentType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentType = str;
    }

    @NotNull
    public final String toPathKey() {
        return this.contentType + this.relativePath;
    }

    @NotNull
    public String toString() {
        return "VirtualPagePathInfo(contentType=" + this.contentType + ", relativePath=" + this.relativePath + ", absolutePath=" + this.absolutePath + ')';
    }

    public /* synthetic */ VirtualPagePathInfo(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ContentConstants.TYPE_GEO_LAYOUT : str, str2, str3);
    }
}
