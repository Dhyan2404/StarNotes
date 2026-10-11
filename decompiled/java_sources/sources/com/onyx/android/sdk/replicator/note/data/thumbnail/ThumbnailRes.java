package com.onyx.android.sdk.replicator.note.data.thumbnail;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0086\b\u0018\u0000 !2\u00020\u0001:\u0001!B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J)\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\b\u0010\u001e\u001a\u00020\u001aH\u0007J\b\u0010\u001f\u001a\u00020\u001aH\u0007J\t\u0010 \u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;", "Ljava/io/Serializable;", "type", "", "value", "", "orientation", "Lcom/onyx/android/sdk/base/data/Orientation;", "(ILjava/lang/String;Lcom/onyx/android/sdk/base/data/Orientation;)V", "getOrientation", "()Lcom/onyx/android/sdk/base/data/Orientation;", "setOrientation", "(Lcom/onyx/android/sdk/base/data/Orientation;)V", "getType", "()I", "setType", "(I)V", "getValue", "()Ljava/lang/String;", "setValue", "(Ljava/lang/String;)V", "component1", "component2", "component3", "copy", "equals", "", Constants.ATTRVAL_OTHER, "", "hashCode", "isCoverThumbnail", "isPageThumbnail", "toString", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class ThumbnailRes implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int TYPE_COVER = 1;
    public static final int TYPE_PAGE = 0;

    @NotNull
    private Orientation orientation;
    private int type;

    @Nullable
    private String value;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes$Companion;", "", "()V", "TYPE_COVER", "", "TYPE_PAGE", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;", "type", "value", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ThumbnailRes create(int type, @Nullable String value) {
            ThumbnailRes thumbnailRes = new ThumbnailRes(0, null, null, 7, null);
            thumbnailRes.setType(type);
            thumbnailRes.setValue(value);
            return thumbnailRes;
        }

        private Companion() {
        }
    }

    public ThumbnailRes() {
        this(0, null, null, 7, null);
    }

    public static /* synthetic */ ThumbnailRes copy$default(ThumbnailRes thumbnailRes, int i, String str, Orientation orientation, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = thumbnailRes.type;
        }
        if ((i2 & 2) != 0) {
            str = thumbnailRes.value;
        }
        if ((i2 & 4) != 0) {
            orientation = thumbnailRes.orientation;
        }
        return thumbnailRes.copy(i, str, orientation);
    }

    /* renamed from: component1, reason: from getter */
    public final int getType() {
        return this.type;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getValue() {
        return this.value;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final Orientation getOrientation() {
        return this.orientation;
    }

    @NotNull
    public final ThumbnailRes copy(int type, @Nullable String value, @NotNull Orientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        return new ThumbnailRes(type, value, orientation);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ThumbnailRes)) {
            return false;
        }
        ThumbnailRes thumbnailRes = (ThumbnailRes) other;
        return this.type == thumbnailRes.type && Intrinsics.areEqual(this.value, thumbnailRes.value) && this.orientation == thumbnailRes.orientation;
    }

    @NotNull
    public final Orientation getOrientation() {
        return this.orientation;
    }

    public final int getType() {
        return this.type;
    }

    @Nullable
    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        int hashCode = Integer.hashCode(this.type) * 31;
        String str = this.value;
        return ((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.orientation.hashCode();
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isCoverThumbnail() {
        return this.type == 1 && StringUtils.isNotBlank(this.value);
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isPageThumbnail() {
        return this.type == 0 && StringUtils.isNotBlank(this.value);
    }

    public final void setOrientation(@NotNull Orientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "<set-?>");
        this.orientation = orientation;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setValue(@Nullable String str) {
        this.value = str;
    }

    @NotNull
    public String toString() {
        return "ThumbnailRes(type=" + this.type + ", value=" + this.value + ", orientation=" + this.orientation + ')';
    }

    public ThumbnailRes(int i, @Nullable String str, @NotNull Orientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        this.type = i;
        this.value = str;
        this.orientation = orientation;
    }

    public /* synthetic */ ThumbnailRes(int i, String str, Orientation orientation, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? Orientation.PORTRAIT : orientation);
    }
}
