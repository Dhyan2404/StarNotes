package com.onyx.android.sdk.data.common.sync;

import com.onyx.android.sdk.base.utils.ResManager;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b?\n\u0002\u0010\t\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010U\u001a\u00020\u0004J\u000e\u0010V\u001a\u00020\u00042\u0006\u0010W\u001a\u00020\u0004J\u0006\u0010X\u001a\u00020YJ\u0016\u0010Z\u001a\u00020\u00042\u0006\u0010[\u001a\u00020\u00042\u0006\u0010W\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010!\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010G\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010I\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010J\u001a\u00020\u0019X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010K\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010L\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010O\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010P\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010R\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020\u0019X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u00020\u0019X\u0086T¢\u0006\u0002\n\u0000¨\u0006\\"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/sync/SyncConstant;", "", "()V", "APP_DIR_NAME", "", "ARCHIVED_SHAPE_DIR_NAME", "BACKUP_DIR_NAME", "COLLECTION_CLOUD_FILE_BEAN", "COLLECTION_NOTE_CLOUD_RECORD", "COLLECTION_ONYX_ACCOUNT_MODEL", "COLLECTION_PROVIDER_ACCOUNT_MODEL", "COLLECTION_PROVIDER_ONYX_STATISTIC_MODEL", SyncConstant.COLLECTION_PROVIDER_ONYX_STATISTIC_NOTE_MODEL, SyncConstant.COLLECTION_PROVIDER_ONYX_STATISTIC_NOTE_RECORD_MODEL, "CONFIG_BACKUP_FILE_EXTENSION", "CONFIG_BACKUP_NAME", "CONTENT_DIR_NAME", "COUCH_DATABASE_DIR_NAME", "COUCH_DB_FULL_NAME_SPLIT_CHAR", "COUCH_ID_SPLIT_CHAR", "COUCH_SYNC_COOKIE_DEFAULT_NAME", "COVER_DIR_NAME", "DATA_DIR_NAME", "DATA_REPOSITORY_DIR_NAME", "DELETE_OSS_FILE_COUNT_ONCE", "", "DOCUMENT_DIR_NAME", "DOC_TAG_DIR_NAME", "EMBED_DATA_DIR_NAME", "EMBED_PDF_DIR_NAME", "EXPORT_DIR_NAME", "EXPORT_NOTE_FOLDER", "EXPORT_USER_DATA", "FILES_PATH", "getFILES_PATH", "()Ljava/lang/String;", "FILE_LOCKS_NAME", "IMPORT_CACHE_DIR_NAME", "JSON_DIR_NAME", "LOCAL_APP_DATA_DB_NAME", "LOCAL_BOOKMARK_DIR_NAME", "LOCAL_CACHE_DIR_NAME", "LOCAL_COVER_RES_NAME", "LOCAL_DB_DIR_NAME", "LOCAL_DEBUG_DATA_DIR_NAME", "LOCAL_DOC_DIR_NAME", "LOCAL_EXCERPT_COLLECTION_DIR_NAME", "LOCAL_EXCERPT_DIR_NAME", "LOCAL_EXTRA_DIR_NAME", "LOCAL_FONT_NAME", "LOCAL_FTS_CONTENT_DIR_NAME", "LOCAL_FTS_PAGE_STATE_DIR_NAME", "LOCAL_LINK_DIR_NAME", "LOCAL_NOTE_DIR_NAME", "LOCAL_PAGE_DIR_NAME", "LOCAL_POINT_DIR_NAME", "LOCAL_RESOURCE_DIR_NAME", "LOCAL_STASH_DIR_NAME", "LOCAL_TAG_DIR_NAME", "LOCAL_TEMPLATE_RES_NAME", "LOCAL_TOC_DIR_NAME", "LOCAL_VIRTUAL_DIR_NAME", "LOG_DIR_NAME", "MESSAGE_DB_NAME", "NETDISK_DIR_NAME", "NOTE_CONTENT_DB_NAME", "NOTE_PAGE_CLONE_DIR", "NOTE_TREE_DB_NAME", "OSS_BOOK_DIR_NAME", "OSS_POINT_DIR_NAME", "OSS_RESOURCE_DIR_NAME", "OSS_THUMBNAIL_DIR_NAME", "PAGE_TAG_DIR_NAME", "PB_DIR_NAME", "PRINT_WAIT_TIME_LOG_THRESHOLD", "REAL_EXTERNAL_FILES_PATH_FOR_BELOW_ANDROID11", "RECORD_DB_NAME", "SHAPE_DIR_NAME", "SHARE_RESOURCE_DIR_NAME", "TEMPLATE_DIR_NAME", "TEMP_DIR_NAME", "THUMBNAIL_DIR_NAME", "USER_DATA_DB_NAME", "WAIT_STOP_INTERVAL", "WAIT_STOP_TIMEOUT", "appDocDir", "appDocPath", "documentId", "appFreeSpace", "", "docDirFilePath", "dirPath", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SyncConstant {

    @NotNull
    public static final String APP_DIR_NAME = "app";

    @NotNull
    public static final String ARCHIVED_SHAPE_DIR_NAME = "archivedShape";

    @NotNull
    public static final String BACKUP_DIR_NAME = "Backup";

    @NotNull
    public static final String COLLECTION_CLOUD_FILE_BEAN = "CLOUD_FILE_BEAN";

    @NotNull
    public static final String COLLECTION_NOTE_CLOUD_RECORD = "NOTE_CLOUD_RECORD";

    @NotNull
    public static final String COLLECTION_ONYX_ACCOUNT_MODEL = "ONYX_ACCOUNT_MODEL";

    @NotNull
    public static final String COLLECTION_PROVIDER_ACCOUNT_MODEL = "PROVIDER_ACCOUNT_MODEL";

    @NotNull
    public static final String COLLECTION_PROVIDER_ONYX_STATISTIC_MODEL = "PROVIDER_ONYX_STATISTIC_MODEL";

    @NotNull
    public static final String COLLECTION_PROVIDER_ONYX_STATISTIC_NOTE_MODEL = "COLLECTION_PROVIDER_ONYX_STATISTIC_NOTE_MODEL";

    @NotNull
    public static final String COLLECTION_PROVIDER_ONYX_STATISTIC_NOTE_RECORD_MODEL = "COLLECTION_PROVIDER_ONYX_STATISTIC_NOTE_RECORD_MODEL";

    @NotNull
    public static final String CONFIG_BACKUP_FILE_EXTENSION = ".cblite2.zip";

    @NotNull
    public static final String CONFIG_BACKUP_NAME = "config-backup";

    @NotNull
    public static final String CONTENT_DIR_NAME = "content";

    @NotNull
    public static final String COUCH_DATABASE_DIR_NAME = "couch";

    @NotNull
    public static final String COUCH_DB_FULL_NAME_SPLIT_CHAR = "-";

    @NotNull
    public static final String COUCH_ID_SPLIT_CHAR = "#";

    @NotNull
    public static final String COUCH_SYNC_COOKIE_DEFAULT_NAME = "SyncGatewaySession";

    @NotNull
    public static final String COVER_DIR_NAME = "cover";

    @NotNull
    public static final String DATA_DIR_NAME = "data";

    @NotNull
    public static final String DATA_REPOSITORY_DIR_NAME = "dataRepository";
    public static final int DELETE_OSS_FILE_COUNT_ONCE = 1000;

    @NotNull
    public static final String DOCUMENT_DIR_NAME = "document";

    @NotNull
    public static final String DOC_TAG_DIR_NAME = "docTag";

    @NotNull
    public static final String EMBED_DATA_DIR_NAME = "embed";

    @NotNull
    public static final String EMBED_PDF_DIR_NAME = "pdf";

    @NotNull
    public static final String EXPORT_DIR_NAME = "export";

    @NotNull
    public static final String EXPORT_NOTE_FOLDER = "noteFolder";

    @NotNull
    public static final String EXPORT_USER_DATA = "userData";

    @NotNull
    private static final String FILES_PATH;

    @NotNull
    public static final String FILE_LOCKS_NAME = ".locks";

    @NotNull
    public static final String IMPORT_CACHE_DIR_NAME = "importCache";

    @NotNull
    public static final SyncConstant INSTANCE = new SyncConstant();

    @NotNull
    public static final String JSON_DIR_NAME = "json";

    @NotNull
    public static final String LOCAL_APP_DATA_DB_NAME = "APP_DATA";

    @NotNull
    public static final String LOCAL_BOOKMARK_DIR_NAME = "bookmark";

    @NotNull
    public static final String LOCAL_CACHE_DIR_NAME = "cache";

    @NotNull
    public static final String LOCAL_COVER_RES_NAME = "coverRes";

    @NotNull
    public static final String LOCAL_DB_DIR_NAME = "db";

    @NotNull
    public static final String LOCAL_DEBUG_DATA_DIR_NAME = "debug";

    @NotNull
    public static final String LOCAL_DOC_DIR_NAME = "doc";

    @NotNull
    public static final String LOCAL_EXCERPT_COLLECTION_DIR_NAME = "excerptCollection";

    @NotNull
    public static final String LOCAL_EXCERPT_DIR_NAME = "excerpt";

    @NotNull
    public static final String LOCAL_EXTRA_DIR_NAME = "extra";

    @NotNull
    public static final String LOCAL_FONT_NAME = "font";

    @NotNull
    public static final String LOCAL_FTS_CONTENT_DIR_NAME = "ftsContent";

    @NotNull
    public static final String LOCAL_FTS_PAGE_STATE_DIR_NAME = "ftsPageState";

    @NotNull
    public static final String LOCAL_LINK_DIR_NAME = "link";

    @NotNull
    public static final String LOCAL_NOTE_DIR_NAME = "note";

    @NotNull
    public static final String LOCAL_PAGE_DIR_NAME = "page";

    @NotNull
    public static final String LOCAL_POINT_DIR_NAME = "point";

    @NotNull
    public static final String LOCAL_RESOURCE_DIR_NAME = "resource";

    @NotNull
    public static final String LOCAL_STASH_DIR_NAME = "stash";

    @NotNull
    public static final String LOCAL_TAG_DIR_NAME = "tag";

    @NotNull
    public static final String LOCAL_TEMPLATE_RES_NAME = "templateRes";

    @NotNull
    public static final String LOCAL_TOC_DIR_NAME = "toc";

    @NotNull
    public static final String LOCAL_VIRTUAL_DIR_NAME = "virtual";

    @NotNull
    public static final String LOG_DIR_NAME = "log";

    @NotNull
    public static final String MESSAGE_DB_NAME = "MESSAGE";

    @NotNull
    public static final String NETDISK_DIR_NAME = "NetDisk";

    @NotNull
    public static final String NOTE_CONTENT_DB_NAME = "NOTE_CONTENT";

    @NotNull
    public static final String NOTE_PAGE_CLONE_DIR = "note_page_clone";

    @NotNull
    public static final String NOTE_TREE_DB_NAME = "NOTE_TREE";

    @NotNull
    public static final String OSS_BOOK_DIR_NAME = "book";

    @NotNull
    public static final String OSS_POINT_DIR_NAME = "point";

    @NotNull
    public static final String OSS_RESOURCE_DIR_NAME = "resource";

    @NotNull
    public static final String OSS_THUMBNAIL_DIR_NAME = "thumbnail";

    @NotNull
    public static final String PAGE_TAG_DIR_NAME = "pageTag";

    @NotNull
    public static final String PB_DIR_NAME = "pb";
    public static final int PRINT_WAIT_TIME_LOG_THRESHOLD = 1000;

    @NotNull
    public static final String REAL_EXTERNAL_FILES_PATH_FOR_BELOW_ANDROID11 = "data/media/0/Android/data/com.onyx.android.ksync";

    @NotNull
    public static final String RECORD_DB_NAME = "RECORD_DATA";

    @NotNull
    public static final String SHAPE_DIR_NAME = "shape";

    @NotNull
    public static final String SHARE_RESOURCE_DIR_NAME = "shareResource";

    @NotNull
    public static final String TEMPLATE_DIR_NAME = "template";

    @NotNull
    public static final String TEMP_DIR_NAME = "temp";

    @NotNull
    public static final String THUMBNAIL_DIR_NAME = "thumbnail";

    @NotNull
    public static final String USER_DATA_DB_NAME = "USER_DATA";
    public static final int WAIT_STOP_INTERVAL = 300;
    public static final int WAIT_STOP_TIMEOUT = 30000;

    static {
        String absolutePath = ResManager.INSTANCE.getAppContext().getFilesDir().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        FILES_PATH = absolutePath;
    }

    private SyncConstant() {
    }

    @NotNull
    public final String appDocDir() {
        return FILES_PATH + File.separator + "document";
    }

    @NotNull
    public final String appDocPath(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return appDocDir() + File.separator + documentId;
    }

    public final long appFreeSpace() {
        return ResManager.INSTANCE.getAppContext().getFilesDir().getFreeSpace();
    }

    @NotNull
    public final String docDirFilePath(@NotNull String dirPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return dirPath + File.separator + documentId;
    }

    @NotNull
    public final String getFILES_PATH() {
        return FILES_PATH;
    }
}
