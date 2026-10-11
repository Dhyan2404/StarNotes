package com.onyx.android.sdk.cloudstorage.provider.onedrive;

import com.dropbox.core.android.AuthActivity;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0016\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriverConstants;", "", "()V", AuthActivity.EXTRA_ACCESS_TOKEN, "", "CLOUD_QUERY_FILTER", "CONFLICT_BEHAVIOR_FAIL", "CONFLICT_BEHAVIOR_RENAME", "CONFLICT_BEHAVIOR_REPLACE", "ERROR_CODES", "ERROR_DESCRIPTION", "EXPIRES_IN", "FILE_QUERY_LIMIT", "", "FILTER", "FOLDER_QUERY_LIMIT", "GRAPH_CONFLICT_BEHAVIOR", "GRAPH_DOWNLOAD_URL", "GRAPH_UPLOAD_PROPERTIES", "LAST_MODIFIED_DATE_TIME", "ODATA_COUNT", "ODATA_NEXT_LINK", "ODATA_TYPE", "OPERATION_STATUS_COMPLETED", "OPERATION_STATUS_PROGRESS", "ORDERBY", "ORGANIZATION_ACCOUNT_SUFFIX", "PARENT_REFERENCE", "QUERY_FILE_ONLY", "QUERY_FOLDER_ONLY", "QUERY_MAX_LIMIT", AuthActivity.EXTRA_REFRESH_TOKEN, "SKIPTOKEN", "TOKEN_TYPE", "TOP", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OneDriverConstants {

    @NotNull
    public static final String ACCESS_TOKEN = "access_token";

    @NotNull
    public static final String CLOUD_QUERY_FILTER = "file ne null or folder ne null";

    @NotNull
    public static final String CONFLICT_BEHAVIOR_FAIL = "fail";

    @NotNull
    public static final String CONFLICT_BEHAVIOR_RENAME = "rename";

    @NotNull
    public static final String CONFLICT_BEHAVIOR_REPLACE = "replace";

    @NotNull
    public static final String ERROR_CODES = "error_codes";

    @NotNull
    public static final String ERROR_DESCRIPTION = "error_description";

    @NotNull
    public static final String EXPIRES_IN = "expires_in";
    public static final int FILE_QUERY_LIMIT = 1000;

    @NotNull
    public static final String FILTER = "filter";
    public static final int FOLDER_QUERY_LIMIT = 100;

    @NotNull
    public static final String GRAPH_CONFLICT_BEHAVIOR = "@microsoft.graph.conflictBehavior";

    @NotNull
    public static final String GRAPH_DOWNLOAD_URL = "@microsoft.graph.downloadUrl";

    @NotNull
    public static final String GRAPH_UPLOAD_PROPERTIES = "microsoft.graph.driveItemUploadableProperties";

    @NotNull
    public static final OneDriverConstants INSTANCE = new OneDriverConstants();

    @NotNull
    public static final String LAST_MODIFIED_DATE_TIME = "lastModifiedDateTime";

    @NotNull
    public static final String ODATA_COUNT = "@odata.count";

    @NotNull
    public static final String ODATA_NEXT_LINK = "@odata.nextLink";

    @NotNull
    public static final String ODATA_TYPE = "@odata.type";

    @NotNull
    public static final String OPERATION_STATUS_COMPLETED = "completed";

    @NotNull
    public static final String OPERATION_STATUS_PROGRESS = "inProgress";

    @NotNull
    public static final String ORDERBY = "orderby";

    @NotNull
    public static final String ORGANIZATION_ACCOUNT_SUFFIX = "onmicrosoft.com";

    @NotNull
    public static final String PARENT_REFERENCE = "parentReference";

    @NotNull
    public static final String QUERY_FILE_ONLY = "file ne null";

    @NotNull
    public static final String QUERY_FOLDER_ONLY = "folder ne null";
    public static final int QUERY_MAX_LIMIT = 1000;

    @NotNull
    public static final String REFRESH_TOKEN = "refresh_token";

    @NotNull
    public static final String SKIPTOKEN = "$skipToken";

    @NotNull
    public static final String TOKEN_TYPE = "token_type";

    @NotNull
    public static final String TOP = "top";
}
