package com.onyx.galaxy.note.datarepository.bean;

import android.net.Uri;
import androidx.core.content.FileProvider;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.model.TitleModel;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\"\u001a\u00020\u000bH\u0007J\b\u0010#\u001a\u00020\u000bH\u0007R$\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR \u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR \u0010\u0013\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001e\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001e\u0010\u001c\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\r\"\u0004\b\u001e\u0010\u000fR \u0010\u001f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\r\"\u0004\b!\u0010\u000f¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;", "", "()V", FileProvider.f5230t, "", "Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;", "getDisplayName", "()Ljava/util/List;", "setDisplayName", "(Ljava/util/List;)V", Constants.ATTRNAME_FORMAT, "", "getFormat", "()Ljava/lang/String;", "setFormat", "(Ljava/lang/String;)V", CouchFieldKey.KEY_MD5, "getMd5", "setMd5", "name", "getName", "setName", "size", "", "getSize", "()J", "setSize", "(J)V", CouchFieldKey.KEY_UNIQUE_ID, "getUniqueId", "setUniqueId", "value", "getValue", "setValue", "getDefaultName", "getFileName", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class AttachmentBean {

    @JSONField(name = FileProvider.f5230t)
    @NotNull
    private List<TitleModel> displayName;

    @JSONField(name = "size")
    private long size;

    @JSONField(name = CouchFieldKey.KEY_UNIQUE_ID)
    @NotNull
    private String uniqueId = "";

    @JSONField(name = "name")
    @Nullable
    private String name = "";

    @JSONField(name = Constants.ATTRNAME_FORMAT)
    @Nullable
    private String format = "";

    @JSONField(name = "value")
    @Nullable
    private String value = "";

    @JSONField(name = CouchFieldKey.KEY_MD5)
    @Nullable
    private String md5 = "";

    public AttachmentBean() {
        List<TitleModel> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.displayName = emptyList;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final String getDefaultName() {
        Object firstOrNull;
        String value;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.displayName);
        TitleModel titleModel = (TitleModel) firstOrNull;
        if (titleModel != null && (value = titleModel.getValue()) != null) {
            return value;
        }
        String str = this.name;
        return str == null ? "" : str;
    }

    @NotNull
    public final List<TitleModel> getDisplayName() {
        return this.displayName;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final String getFileName() {
        String str = this.name;
        if (StringKt.isNotBlank(str)) {
            return str;
        }
        String str2 = this.value;
        if (str2 == null) {
            str2 = "";
        }
        try {
            String lastPathSegment = Uri.parse(str2).getLastPathSegment();
            return lastPathSegment == null ? "" : lastPathSegment;
        } catch (Exception unused) {
            return "";
        }
    }

    @Nullable
    public final String getFormat() {
        return this.format;
    }

    @Nullable
    public final String getMd5() {
        return this.md5;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    public final long getSize() {
        return this.size;
    }

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
    }

    @Nullable
    public final String getValue() {
        return this.value;
    }

    public final void setDisplayName(@NotNull List<TitleModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.displayName = list;
    }

    public final void setFormat(@Nullable String str) {
        this.format = str;
    }

    public final void setMd5(@Nullable String str) {
        this.md5 = str;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setSize(long j) {
        this.size = j;
    }

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }

    public final void setValue(@Nullable String str) {
        this.value = str;
    }
}
