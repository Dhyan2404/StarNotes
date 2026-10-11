package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010&\u001a\u00020'H\u0016J\u0006\u0010(\u001a\u00020\u000bJ\b\u0010)\u001a\u0004\u0018\u00010\u000bJ\b\u0010*\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020,J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010/\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u000bJ\u0010\u00100\u001a\u00020\u00002\b\u00101\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0019\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001bJ\u0010\u0010\"\u001a\u00020\u00002\b\u0010 \u001a\u0004\u0018\u00010\u000bJ\u000e\u0010%\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u001bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000fR\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\r\"\u0004\b\"\u0010\u000fR\u001a\u0010#\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001d\"\u0004\b%\u0010\u001f¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "Ljava/io/Serializable;", "()V", "audioDuration", "", "getAudioDuration", "()J", "setAudioDuration", "(J)V", "documentId", "", "getDocumentId", "()Ljava/lang/String;", "setDocumentId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_LOCAL_PATH, "getLocalPath", "setLocalPath", "ossUrl", "getOssUrl", "setOssUrl", "relativePath", CouchFieldKey.KEY_REVISION_ID, "getRevisionId", "setRevisionId", "status", "", "getStatus", "()I", "setStatus", "(I)V", "title", "getTitle", "setTitle", "type", "getType", "setType", "beforeSave", "", "ensureUniqueId", "getPath", "getRelativePath", "isEnabled", "", "isRemoved", "duration", EditorConstants.ARGS_DOC_ID, "setRelativePath", "path", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nResourceModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceModel.kt\ncom/onyx/android/sdk/replicator/note/db/model/ResourceModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,114:1\n1#2:115\n*E\n"})
/* loaded from: classes8.dex */
public final class ResourceModel extends BaseReplicatorModel implements Serializable {
    private long audioDuration;

    @Nullable
    private String documentId;

    @Nullable
    private String localPath;

    @Nullable
    private String ossUrl;

    @Nullable
    private String relativePath;

    @Nullable
    private String revisionId;
    private int status;

    @Nullable
    private String title;
    private int type;

    @Override // com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel
    public void beforeSave() {
        super.beforeSave();
        ensureUniqueId();
    }

    @NotNull
    public final String ensureUniqueId() {
        if (getUniqueId().length() == 0) {
            setUniqueId(UUIDUtils.INSTANCE.rawUUID());
        }
        return getUniqueId();
    }

    public final long getAudioDuration() {
        return this.audioDuration;
    }

    @Nullable
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    public final String getLocalPath() {
        return this.localPath;
    }

    @Nullable
    public final String getOssUrl() {
        return this.ossUrl;
    }

    @Nullable
    public final String getPath() {
        String str = this.documentId;
        if (str == null) {
            return null;
        }
        if (StringKt.isNotBlank(this.relativePath)) {
            ShapeResource.Companion companion = ShapeResource.INSTANCE;
            String str2 = this.relativePath;
            return companion.searchLocalPathByRelativePath(str, str2 != null ? str2 : "");
        }
        String str3 = this.localPath;
        if ((str3 == null || str3.length() == 0) || FileUtils.INSTANCE.fileExist(this.localPath)) {
            return this.localPath;
        }
        ShapeResource.Companion companion2 = ShapeResource.INSTANCE;
        String str4 = this.localPath;
        return companion2.searchLocalPath(str, str4 != null ? str4 : "");
    }

    @Nullable
    public final String getRelativePath() {
        if (StringKt.isNotBlank(this.relativePath)) {
            return this.relativePath;
        }
        String path = getPath();
        if (path == null) {
            return null;
        }
        String str = this.documentId;
        String relativePath = str != null ? ResourcePaths.INSTANCE.relativePath(str, path) : null;
        this.relativePath = relativePath;
        return relativePath;
    }

    @Nullable
    public final String getRevisionId() {
        return this.revisionId;
    }

    public final int getStatus() {
        return this.status;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    public final boolean isEnabled() {
        return this.status == 0;
    }

    public final boolean isRemoved() {
        return this.status == 1;
    }

    /* renamed from: setAudioDuration, reason: collision with other method in class */
    public final void m72386setAudioDuration(long j) {
        this.audioDuration = j;
    }

    /* renamed from: setDocumentId, reason: collision with other method in class */
    public final void m72387setDocumentId(@Nullable String str) {
        this.documentId = str;
    }

    /* renamed from: setLocalPath, reason: collision with other method in class */
    public final void m72388setLocalPath(@Nullable String str) {
        this.localPath = str;
    }

    /* renamed from: setOssUrl, reason: collision with other method in class */
    public final void m72389setOssUrl(@Nullable String str) {
        this.ossUrl = str;
    }

    @NotNull
    public final ResourceModel setRelativePath(@Nullable String path) {
        this.relativePath = path;
        return this;
    }

    /* renamed from: setRevisionId, reason: collision with other method in class */
    public final void m72390setRevisionId(@Nullable String str) {
        this.revisionId = str;
    }

    /* renamed from: setStatus, reason: collision with other method in class */
    public final void m72391setStatus(int i) {
        this.status = i;
    }

    /* renamed from: setTitle, reason: collision with other method in class */
    public final void m72392setTitle(@Nullable String str) {
        this.title = str;
    }

    /* renamed from: setType, reason: collision with other method in class */
    public final void m72393setType(int i) {
        this.type = i;
    }

    @NotNull
    public final ResourceModel setAudioDuration(long duration) {
        this.audioDuration = duration;
        return this;
    }

    @NotNull
    public final ResourceModel setDocumentId(@Nullable String docId) {
        this.documentId = docId;
        return this;
    }

    @NotNull
    public final ResourceModel setLocalPath(@Nullable String localPath) {
        this.localPath = localPath;
        return this;
    }

    @NotNull
    public final ResourceModel setOssUrl(@Nullable String ossUrl) {
        this.ossUrl = ossUrl;
        return this;
    }

    @NotNull
    public final ResourceModel setRevisionId(@Nullable String revisionId) {
        this.revisionId = revisionId;
        return this;
    }

    @NotNull
    public final ResourceModel setStatus(int status) {
        this.status = status;
        return this;
    }

    @NotNull
    public final ResourceModel setTitle(@Nullable String title) {
        this.title = title;
        return this;
    }

    @NotNull
    public final ResourceModel setType(int type) {
        this.type = type;
        return this;
    }
}
