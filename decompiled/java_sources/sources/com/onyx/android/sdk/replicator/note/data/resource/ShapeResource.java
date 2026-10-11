package com.onyx.android.sdk.replicator.note.data.resource;

import com.alibaba.fastjson2.annotation.JSONCreator;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import java.io.Serializable;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b&\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 72\u00020\u00012\u00020\u0002:\u00017B\u0007\b\u0017¢\u0006\u0002\u0010\u0003B#\b\u0016\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010/\u001a\u00020\u0000H\u0016J\n\u00100\u001a\u0004\u0018\u00010\u0005H\u0007J\b\u00101\u001a\u000202H\u0007J\b\u00103\u001a\u000202H\u0007J\b\u00104\u001a\u000202H\u0007J\b\u00105\u001a\u000202H\u0007J\u0006\u00106\u001a\u00020\u0005R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0012\"\u0004\b\u0019\u0010\u0014R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0014R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0012\"\u0004\b\u001f\u0010\u0014R\u001c\u0010 \u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0012\"\u0004\b\"\u0010\u0014R\u001a\u0010#\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001c\u0010(\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0012\"\u0004\b*\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010%\"\u0004\b,\u0010'R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u0012\"\u0004\b.\u0010\u0014¨\u00068"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;", "Ljava/io/Serializable;", "", "()V", CouchFieldKey.KEY_UNIQUE_ID, "", CouchFieldKey.KEY_LOCAL_PATH, "type", "", "(Ljava/lang/String;Ljava/lang/String;I)V", "audioDuration", "", "getAudioDuration", "()J", "setAudioDuration", "(J)V", "documentId", "getDocumentId", "()Ljava/lang/String;", "setDocumentId", "(Ljava/lang/String;)V", "fileExtension", "getFileExtension", "setFileExtension", "getLocalPath", "setLocalPath", "ossUrl", "getOssUrl", "setOssUrl", "relativePath", "getRelativePath", "setRelativePath", CouchFieldKey.KEY_REVISION_ID, "getRevisionId", "setRevisionId", "status", "getStatus", "()I", "setStatus", "(I)V", "title", "getTitle", "setTitle", "getType", "setType", "getUniqueId", "setUniqueId", "clone", "getPath", "isAudioResource", "", "isCloudExist", "isImageResource", "isLocalExist", "toPathString", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeResource implements Serializable, Cloneable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private long audioDuration;

    @Nullable
    private String documentId;

    @Nullable
    private String fileExtension;

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

    @Nullable
    private String uniqueId;

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rJ\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource$Companion;", "", "()V", "fromAudioInfoBean", "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;", "audioInfoBean", "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;", "isValidResource", "", "resource", "type", "", "searchLocalPath", "", "documentId", CouchFieldKey.KEY_LOCAL_PATH, "searchLocalPathByRelativePath", "relativePath", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ShapeResource fromAudioInfoBean(@NotNull AudioInfoBean audioInfoBean) {
            Intrinsics.checkNotNullParameter(audioInfoBean, "audioInfoBean");
            ShapeResource shapeResource = new ShapeResource();
            shapeResource.setTitle(FilenameUtils.getBaseName(audioInfoBean.getAudioPath()));
            shapeResource.setFileExtension(FilenameUtils.getExtension(audioInfoBean.getAudioPath()));
            shapeResource.setAudioDuration(audioInfoBean.getDuration());
            shapeResource.setLocalPath(audioInfoBean.getAudioPath());
            shapeResource.setType(2);
            return shapeResource;
        }

        public final boolean isValidResource(@Nullable ShapeResource resource, int type) {
            return resource != null && resource.getType() == type && resource.isLocalExist();
        }

        @Nullable
        public final String searchLocalPath(@NotNull String documentId, @NotNull String localPath) {
            Intrinsics.checkNotNullParameter(documentId, "documentId");
            Intrinsics.checkNotNullParameter(localPath, "localPath");
            return searchLocalPathByRelativePath(documentId, ResourcePaths.INSTANCE.relativePath(documentId, localPath));
        }

        @Nullable
        public final String searchLocalPathByRelativePath(@NotNull String documentId, @NotNull String relativePath) {
            Intrinsics.checkNotNullParameter(documentId, "documentId");
            Intrinsics.checkNotNullParameter(relativePath, "relativePath");
            if (StringUtils.isEmpty(relativePath)) {
                return null;
            }
            Paths paths = Paths.INSTANCE;
            ResourcePaths resourcePaths = ResourcePaths.INSTANCE;
            SyncConstant syncConstant = SyncConstant.INSTANCE;
            Path append = paths.append(resourcePaths.resourceDataDir(syncConstant.getFILES_PATH(), documentId), relativePath);
            if (Files.exists(append, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                return append.toAbsolutePath().toString();
            }
            Path append2 = paths.append(CommonPaths.INSTANCE.resource(paths.toPath(syncConstant.getFILES_PATH())), relativePath);
            if (Files.exists(append2, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                return append2.toAbsolutePath().toString();
            }
            Path path = paths.toPath(AppFilePaths.INSTANCE.filesDirAbsolutePath(relativePath));
            if (Files.exists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                return path.toAbsolutePath().toString();
            }
            return null;
        }

        private Companion() {
        }
    }

    @JSONCreator
    public ShapeResource() {
    }

    public final long getAudioDuration() {
        return this.audioDuration;
    }

    @Nullable
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    public final String getFileExtension() {
        return this.fileExtension;
    }

    @Nullable
    public final String getLocalPath() {
        return this.localPath;
    }

    @Nullable
    public final String getOssUrl() {
        return this.ossUrl;
    }

    @JSONField(deserialize = false, serialize = false)
    @Nullable
    public final String getPath() {
        if (StringUtils.isNotBlank(this.relativePath)) {
            Companion companion = INSTANCE;
            String str = this.documentId;
            Intrinsics.checkNotNull(str);
            String str2 = this.relativePath;
            Intrinsics.checkNotNull(str2);
            return companion.searchLocalPathByRelativePath(str, str2);
        }
        if (StringUtils.isEmpty(this.localPath) || FileUtils.INSTANCE.fileExist(this.localPath)) {
            return this.localPath;
        }
        Companion companion2 = INSTANCE;
        String str3 = this.documentId;
        Intrinsics.checkNotNull(str3);
        String str4 = this.localPath;
        Intrinsics.checkNotNull(str4);
        return companion2.searchLocalPath(str3, str4);
    }

    @Nullable
    public final String getRelativePath() {
        return this.relativePath;
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

    @Nullable
    public final String getUniqueId() {
        return this.uniqueId;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isAudioResource() {
        return this.type == 2;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isCloudExist() {
        return StringUtils.isNotBlank(this.ossUrl);
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isImageResource() {
        return this.type == 0;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isLocalExist() {
        String path = getPath();
        return StringUtils.isNotBlank(path) && FileUtils.INSTANCE.fileExist(path);
    }

    public final void setAudioDuration(long j) {
        this.audioDuration = j;
    }

    public final void setDocumentId(@Nullable String str) {
        this.documentId = str;
    }

    public final void setFileExtension(@Nullable String str) {
        this.fileExtension = str;
    }

    public final void setLocalPath(@Nullable String str) {
        this.localPath = str;
    }

    public final void setOssUrl(@Nullable String str) {
        this.ossUrl = str;
    }

    public final void setRelativePath(@Nullable String str) {
        this.relativePath = str;
    }

    public final void setRevisionId(@Nullable String str) {
        this.revisionId = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setUniqueId(@Nullable String str) {
        this.uniqueId = str;
    }

    @NotNull
    public final String toPathString() {
        StringBuilder sb = new StringBuilder();
        sb.append("localPath: ");
        sb.append(this.localPath);
        sb.append(", is exist: ");
        FileUtils fileUtils = FileUtils.INSTANCE;
        sb.append(fileUtils.fileExist(this.localPath));
        sb.append(", relativePath: ");
        sb.append(this.relativePath);
        sb.append(", path: ");
        sb.append(getPath());
        sb.append(", is exist: ");
        sb.append(fileUtils.fileExist(getPath()));
        return sb.toString();
    }

    public ShapeResource(@Nullable String str, @Nullable String str2, int i) {
        this.uniqueId = str;
        this.localPath = str2;
        this.type = i;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ShapeResource m72360clone() {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.resource.ShapeResource");
        return (ShapeResource) clone;
    }
}
