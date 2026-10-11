package com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean;

import com.google.api.client.googleapis.notifications.ResourceStates;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b,\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u00065"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunConstant;", "", "()V", "APK_CATEGORY", "", "ASYNC", "AUDIO_CATEGORY", "AUTHENTICATION_FAIL", "AUTO_INIT", "", "BLOCK_LIST", "CLOUD_STORAGE_CAPACITY_FULL", "CREATE", "CREATE_FILE_STRATEGY_CONFLICT", "CREATE_FILE_STRATEGY_OVERRIDE", "CREATE_FILE_STRATEGY_PATH_BLOCKLIST_RENAME", "CREATE_FILE_STRATEGY_PATH_RENAME", "CREATE_FOLDER_RETRY_COUNT", "DOCUMENT_CATEGORY", "ERRNO_TOKEN_INVALID", "FILE", "FILE_MANAGER", "FILE_METAS", "FILE_OR_FOLDER_EXIST", "FILE_OR_FOLDER_NAME_ERROR", "IMAGE_CATEGORY", "IS_DIR", "JUSTIFY", "LIST", "LIST_ALL", "OPERATION_COPY", "OPERATION_DELETE", "OPERATION_MOVE", "OPERATION_RENAME", "ORDER_ASC", "ORDER_DESC", "PATH", "PRE_CREATE", "QUERY_FOLDER_MAX_LIMIT", "QUERY_MAX_LIMIT", "RTYPE", "SEARCH", "SIZE", ResourceStates.SYNC, "TMP_FILE", "TORRENT_CATEGORY", "TYPE_DIR", "TYPE_FILE", "UINFO", "UNKNOWN_CATEGORY", "UPLOAD", "UPLOAD_ID", "VIDEO_CATEGORY", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BaiduYunConstant {
    public static final int APK_CATEGORY = 5;
    public static final int ASYNC = 2;
    public static final int AUDIO_CATEGORY = 2;
    public static final int AUTHENTICATION_FAIL = -6;

    @NotNull
    public static final String AUTO_INIT = "autoinit";

    @NotNull
    public static final String BLOCK_LIST = "block_list";
    public static final int CLOUD_STORAGE_CAPACITY_FULL = -10;

    @NotNull
    public static final String CREATE = "create";
    public static final int CREATE_FILE_STRATEGY_CONFLICT = 0;
    public static final int CREATE_FILE_STRATEGY_OVERRIDE = 3;
    public static final int CREATE_FILE_STRATEGY_PATH_BLOCKLIST_RENAME = 2;
    public static final int CREATE_FILE_STRATEGY_PATH_RENAME = 1;
    public static final int CREATE_FOLDER_RETRY_COUNT = 3;
    public static final int DOCUMENT_CATEGORY = 4;
    public static final int ERRNO_TOKEN_INVALID = 31045;

    @NotNull
    public static final String FILE = "file";

    @NotNull
    public static final String FILE_MANAGER = "filemanager";

    @NotNull
    public static final String FILE_METAS = "filemetas";
    public static final int FILE_OR_FOLDER_EXIST = -8;
    public static final int FILE_OR_FOLDER_NAME_ERROR = -7;
    public static final int IMAGE_CATEGORY = 3;

    @NotNull
    public static final BaiduYunConstant INSTANCE = new BaiduYunConstant();

    @NotNull
    public static final String IS_DIR = "isdir";
    public static final int JUSTIFY = 1;

    @NotNull
    public static final String LIST = "list";

    @NotNull
    public static final String LIST_ALL = "listall";

    @NotNull
    public static final String OPERATION_COPY = "copy";

    @NotNull
    public static final String OPERATION_DELETE = "delete";

    @NotNull
    public static final String OPERATION_MOVE = "move";

    @NotNull
    public static final String OPERATION_RENAME = "rename";
    public static final int ORDER_ASC = 0;
    public static final int ORDER_DESC = 1;

    @NotNull
    public static final String PATH = "path";

    @NotNull
    public static final String PRE_CREATE = "precreate";
    public static final int QUERY_FOLDER_MAX_LIMIT = 200;
    public static final int QUERY_MAX_LIMIT = 1000;

    @NotNull
    public static final String RTYPE = "rtype";

    @NotNull
    public static final String SEARCH = "search";

    @NotNull
    public static final String SIZE = "size";
    public static final int SYNC = 0;

    @NotNull
    public static final String TMP_FILE = "tmpfile";
    public static final int TORRENT_CATEGORY = 7;
    public static final int TYPE_DIR = 1;
    public static final int TYPE_FILE = 0;

    @NotNull
    public static final String UINFO = "uinfo";
    public static final int UNKNOWN_CATEGORY = 6;

    @NotNull
    public static final String UPLOAD = "upload";

    @NotNull
    public static final String UPLOAD_ID = "uploadid";
    public static final int VIDEO_CATEGORY = 1;
}
