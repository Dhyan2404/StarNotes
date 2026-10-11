package com.onyx.android.sdk.replicator.note.p035db.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u0005\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010!\u001a\n \"*\u0004\u0018\u00010\u00040\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001e\u0010\f\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\b¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", Constants.ATTRNAME_FORMAT, "", "getFormat", "()Ljava/lang/String;", "setFormat", "(Ljava/lang/String;)V", "inkContentThumbnail", "getInkContentThumbnail", "setInkContentThumbnail", "inkTitleThumbnail", "getInkTitleThumbnail", "setInkTitleThumbnail", CouchFieldKey.KEY_MD5, "getMd5", "setMd5", "name", "getName", "setName", "previewUrl", "getPreviewUrl", "setPreviewUrl", "state", "", "getState", "()B", "setState", "(B)V", "url", "getUrl", "setUrl", "toString", "kotlin.jvm.PlatformType", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class FontModel extends BaseReplicatorModel {
    private transient byte state;

    @NotNull
    private String name = "";

    @NotNull
    private String format = "";

    @NotNull
    private String url = "";

    @NotNull
    private String md5 = "";

    @NotNull
    private String previewUrl = "";

    @JSONField(alternateNames = {"previewUrl2"})
    @NotNull
    private String inkTitleThumbnail = "";

    @JSONField(alternateNames = {"previewUrl3"})
    @NotNull
    private String inkContentThumbnail = "";

    @NotNull
    public final String getFormat() {
        return this.format;
    }

    @NotNull
    public final String getInkContentThumbnail() {
        return this.inkContentThumbnail;
    }

    @NotNull
    public final String getInkTitleThumbnail() {
        return this.inkTitleThumbnail;
    }

    @NotNull
    public final String getMd5() {
        return this.md5;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getPreviewUrl() {
        return this.previewUrl;
    }

    public final byte getState() {
        return this.state;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public final void setFormat(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.format = str;
    }

    public final void setInkContentThumbnail(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.inkContentThumbnail = str;
    }

    public final void setInkTitleThumbnail(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.inkTitleThumbnail = str;
    }

    public final void setMd5(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.md5 = str;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setPreviewUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.previewUrl = str;
    }

    public final void setState(byte b) {
        this.state = b;
    }

    public final void setUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.url = str;
    }

    public String toString() {
        return FontModelExt.INSTANCE.getDisplayName(this);
    }
}
