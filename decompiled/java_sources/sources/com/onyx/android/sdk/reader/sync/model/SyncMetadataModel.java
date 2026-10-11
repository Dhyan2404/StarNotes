package com.onyx.android.sdk.reader.sync.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\t\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\bG\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u0011\u0010\u0012\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0006R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0006\"\u0004\b\u0016\u0010\bR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0006\"\u0004\b\u0019\u0010\bR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\bR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001c\u0010#\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0006\"\u0004\b%\u0010\bR\u001a\u0010&\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010 \"\u0004\b(\u0010\"R\u001c\u0010)\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0006\"\u0004\b+\u0010\bR\u001a\u0010,\u001a\u00020-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001a\u00102\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010 \"\u0004\b4\u0010\"R\u001a\u00105\u001a\u00020-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010/\"\u0004\b7\u00101R\u001a\u00108\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010 \"\u0004\b:\u0010\"R\u001c\u0010;\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010\u0006\"\u0004\b=\u0010\bR\u001c\u0010>\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\u0006\"\u0004\b@\u0010\bR\u0011\u0010A\u001a\u00020B8F¢\u0006\u0006\u001a\u0004\bA\u0010CR\u0011\u0010D\u001a\u00020B8F¢\u0006\u0006\u001a\u0004\bD\u0010CR\u0011\u0010E\u001a\u00020B8F¢\u0006\u0006\u001a\u0004\bE\u0010CR\u0011\u0010F\u001a\u00020B8F¢\u0006\u0006\u001a\u0004\bF\u0010CR\u001c\u0010G\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010\u0006\"\u0004\bI\u0010\bR\u001a\u0010J\u001a\u00020-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010/\"\u0004\bL\u00101R\u001a\u0010M\u001a\u00020-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bN\u0010/\"\u0004\bO\u00101R\u001c\u0010P\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010\u0006\"\u0004\bR\u0010\bR\u001a\u0010S\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bT\u0010 \"\u0004\bU\u0010\"R\u001c\u0010V\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010\u0006\"\u0004\bX\u0010\bR\u001c\u0010Y\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bZ\u0010\u0006\"\u0004\b[\u0010\bR\u001a\u0010\\\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u0010 \"\u0004\b^\u0010\"R\u001c\u0010_\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b`\u0010\u0006\"\u0004\ba\u0010\bR\u001c\u0010b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bc\u0010\u0006\"\u0004\bd\u0010\bR\u001c\u0010e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bf\u0010\u0006\"\u0004\bg\u0010\bR\u001a\u0010h\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bi\u0010 \"\u0004\bj\u0010\"R\u001a\u0010k\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bl\u0010 \"\u0004\bm\u0010\"R\u001c\u0010n\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bo\u0010\u0006\"\u0004\bp\u0010\bR\u001a\u0010q\u001a\u00020-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\br\u0010/\"\u0004\bs\u00101R\u001a\u0010t\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bu\u0010 \"\u0004\bv\u0010\"R\u001c\u0010w\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bx\u0010\u0006\"\u0004\by\u0010\bR\u001c\u0010z\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b{\u0010\u0006\"\u0004\b|\u0010\bR\u001c\u0010}\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b~\u0010\u0006\"\u0004\b\u007f\u0010\bR\u001f\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0081\u0001\u0010\u0006\"\u0005\b\u0082\u0001\u0010\bR\u001f\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0084\u0001\u0010\u0006\"\u0005\b\u0085\u0001\u0010\bR\u001d\u0010\u0086\u0001\u001a\u00020\u001eX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0087\u0001\u0010 \"\u0005\b\u0088\u0001\u0010\"¨\u0006\u0089\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "ISBN", "", "getISBN", "()Ljava/lang/String;", "setISBN", "(Ljava/lang/String;)V", "authors", "getAuthors", "setAuthors", "cloudId", "getCloudId", "setCloudId", "coverUrl", "getCoverUrl", "setCoverUrl", "debugInfo", "getDebugInfo", "description", "getDescription", "setDescription", "digest", "getDigest", "setDigest", "downloadInfo", "getDownloadInfo", "setDownloadInfo", "drmType", "", "getDrmType", "()I", "setDrmType", "(I)V", "encoding", "getEncoding", "setEncoding", "encryptionType", "getEncryptionType", "setEncryptionType", "extraAttributes", "getExtraAttributes", "setExtraAttributes", "favorite", "", "getFavorite", "()J", "setFavorite", "(J)V", "fetchSource", "getFetchSource", "setFetchSource", CouchFieldKey.KEY_FILE_ORIGIN_SIZE, "getFileOriginSize", "setFileOriginSize", CouchFieldKey.KEY_FILE_SYNC_STATUS, "getFileSyncStatus", "setFileSyncStatus", CouchFieldKey.KEY_HASH_TAG, "getHashTag", "setHashTag", "idString", "getIdString", "setIdString", "isDisabled", "", Constants.BOOLEAN_VALUE_SIG, "isEnabled", "isFileDisabledSync", "isUserDataDisabledSync", "language", "getLanguage", "setLanguage", "lastAccess", "getLastAccess", "setLastAccess", "lastModified", "getLastModified", "setLastModified", "location", "getLocation", "setLocation", CouchFieldKey.KEY_MODE_TYPE, "getModeType", "setModeType", "name", "getName", "setName", CouchFieldKey.KEY_NATIVE_ABSOLUTE_PATH, "getNativeAbsolutePath", "setNativeAbsolutePath", "ordinal", "getOrdinal", "setOrdinal", CouchFieldKey.KEY_PARENT_ID, "getParentId", "setParentId", "progress", "getProgress", "setProgress", "publisher", "getPublisher", "setPublisher", "rating", "getRating", "setRating", "readingStatus", "getReadingStatus", "setReadingStatus", "series", "getSeries", "setSeries", "size", "getSize", "setSize", "status", "getStatus", "setStatus", "storageId", "getStorageId", "setStorageId", "tags", "getTags", "setTags", "title", "getTitle", "setTitle", "type", "getType", "setType", "uniqueCloudId", "getUniqueCloudId", "setUniqueCloudId", CouchFieldKey.KEY_USER_DATA_SYNC_STATUS, "getUserDataSyncStatus", "setUserDataSyncStatus", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SyncMetadataModel extends BaseReplicatorModel {

    @Nullable
    private String ISBN;

    @Nullable
    private String authors;

    @Nullable
    private String cloudId;

    @Nullable
    private String coverUrl;

    @Nullable
    private String description;

    @Nullable
    private String digest;

    @Nullable
    private String downloadInfo;
    private int drmType;

    @Nullable
    private String encoding;
    private int encryptionType;

    @Nullable
    private String extraAttributes;
    private long favorite;
    private int fetchSource;
    private long fileOriginSize;

    @Nullable
    private String hashTag;

    @Nullable
    private String idString;

    @Nullable
    private String language;
    private long lastAccess;
    private long lastModified;

    @Nullable
    private String location;

    @Nullable
    private String name;

    @Nullable
    private String nativeAbsolutePath;
    private int ordinal;

    @Nullable
    private String parentId;

    @Nullable
    private String progress;

    @Nullable
    private String publisher;
    private int rating;
    private int readingStatus;

    @Nullable
    private String series;
    private long size;
    private int status;

    @Nullable
    private String storageId;

    @Nullable
    private String tags;

    @Nullable
    private String title;

    @Nullable
    private String type;

    @Nullable
    private String uniqueCloudId;
    private int modeType = 4;
    private int fileSyncStatus = 1;
    private int userDataSyncStatus = 1;

    @Nullable
    public final String getAuthors() {
        return this.authors;
    }

    @Nullable
    public final String getCloudId() {
        return this.cloudId;
    }

    @Nullable
    public final String getCoverUrl() {
        return this.coverUrl;
    }

    @NotNull
    public final String getDebugInfo() {
        return "path = " + this.nativeAbsolutePath + ", docId = " + getUniqueId() + ", create = " + getCreatedAt() + ", uniqueCloudId = " + this.uniqueCloudId + ", update = " + getUpdatedAt() + ", status = " + this.status;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final String getDigest() {
        return this.digest;
    }

    @Nullable
    public final String getDownloadInfo() {
        return this.downloadInfo;
    }

    public final int getDrmType() {
        return this.drmType;
    }

    @Nullable
    public final String getEncoding() {
        return this.encoding;
    }

    public final int getEncryptionType() {
        return this.encryptionType;
    }

    @Nullable
    public final String getExtraAttributes() {
        return this.extraAttributes;
    }

    public final long getFavorite() {
        return this.favorite;
    }

    public final int getFetchSource() {
        return this.fetchSource;
    }

    public final long getFileOriginSize() {
        return this.fileOriginSize;
    }

    public final int getFileSyncStatus() {
        return this.fileSyncStatus;
    }

    @Nullable
    public final String getHashTag() {
        return this.hashTag;
    }

    @Nullable
    public final String getISBN() {
        return this.ISBN;
    }

    @Nullable
    public final String getIdString() {
        return this.idString;
    }

    @Nullable
    public final String getLanguage() {
        return this.language;
    }

    public final long getLastAccess() {
        return this.lastAccess;
    }

    public final long getLastModified() {
        return this.lastModified;
    }

    @Nullable
    public final String getLocation() {
        return this.location;
    }

    public final int getModeType() {
        return this.modeType;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getNativeAbsolutePath() {
        return this.nativeAbsolutePath;
    }

    public final int getOrdinal() {
        return this.ordinal;
    }

    @Nullable
    public final String getParentId() {
        return this.parentId;
    }

    @Nullable
    public final String getProgress() {
        return this.progress;
    }

    @Nullable
    public final String getPublisher() {
        return this.publisher;
    }

    public final int getRating() {
        return this.rating;
    }

    public final int getReadingStatus() {
        return this.readingStatus;
    }

    @Nullable
    public final String getSeries() {
        return this.series;
    }

    public final long getSize() {
        return this.size;
    }

    public final int getStatus() {
        return this.status;
    }

    @Nullable
    public final String getStorageId() {
        return this.storageId;
    }

    @Nullable
    public final String getTags() {
        return this.tags;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final String getType() {
        return this.type;
    }

    @Nullable
    public final String getUniqueCloudId() {
        return this.uniqueCloudId;
    }

    public final int getUserDataSyncStatus() {
        return this.userDataSyncStatus;
    }

    public final boolean isDisabled() {
        return !isEnabled();
    }

    public final boolean isEnabled() {
        return this.status == 0;
    }

    public final boolean isFileDisabledSync() {
        return this.fileSyncStatus == 1;
    }

    public final boolean isUserDataDisabledSync() {
        return this.userDataSyncStatus == 1;
    }

    public final void setAuthors(@Nullable String str) {
        this.authors = str;
    }

    public final void setCloudId(@Nullable String str) {
        this.cloudId = str;
    }

    public final void setCoverUrl(@Nullable String str) {
        this.coverUrl = str;
    }

    public final void setDescription(@Nullable String str) {
        this.description = str;
    }

    public final void setDigest(@Nullable String str) {
        this.digest = str;
    }

    public final void setDownloadInfo(@Nullable String str) {
        this.downloadInfo = str;
    }

    public final void setDrmType(int i) {
        this.drmType = i;
    }

    public final void setEncoding(@Nullable String str) {
        this.encoding = str;
    }

    public final void setEncryptionType(int i) {
        this.encryptionType = i;
    }

    public final void setExtraAttributes(@Nullable String str) {
        this.extraAttributes = str;
    }

    public final void setFavorite(long j) {
        this.favorite = j;
    }

    public final void setFetchSource(int i) {
        this.fetchSource = i;
    }

    public final void setFileOriginSize(long j) {
        this.fileOriginSize = j;
    }

    public final void setFileSyncStatus(int i) {
        this.fileSyncStatus = i;
    }

    public final void setHashTag(@Nullable String str) {
        this.hashTag = str;
    }

    public final void setISBN(@Nullable String str) {
        this.ISBN = str;
    }

    public final void setIdString(@Nullable String str) {
        this.idString = str;
    }

    public final void setLanguage(@Nullable String str) {
        this.language = str;
    }

    public final void setLastAccess(long j) {
        this.lastAccess = j;
    }

    public final void setLastModified(long j) {
        this.lastModified = j;
    }

    public final void setLocation(@Nullable String str) {
        this.location = str;
    }

    public final void setModeType(int i) {
        this.modeType = i;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setNativeAbsolutePath(@Nullable String str) {
        this.nativeAbsolutePath = str;
    }

    public final void setOrdinal(int i) {
        this.ordinal = i;
    }

    public final void setParentId(@Nullable String str) {
        this.parentId = str;
    }

    public final void setProgress(@Nullable String str) {
        this.progress = str;
    }

    public final void setPublisher(@Nullable String str) {
        this.publisher = str;
    }

    public final void setRating(int i) {
        this.rating = i;
    }

    public final void setReadingStatus(int i) {
        this.readingStatus = i;
    }

    public final void setSeries(@Nullable String str) {
        this.series = str;
    }

    public final void setSize(long j) {
        this.size = j;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setStorageId(@Nullable String str) {
        this.storageId = str;
    }

    public final void setTags(@Nullable String str) {
        this.tags = str;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public final void setType(@Nullable String str) {
        this.type = str;
    }

    public final void setUniqueCloudId(@Nullable String str) {
        this.uniqueCloudId = str;
    }

    public final void setUserDataSyncStatus(int i) {
        this.userDataSyncStatus = i;
    }
}
