package com.onyx.android.sdk.cloudstorage.provider.googledriver;

import com.google.android.gms.actions.SearchIntents;
import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.auth.oauth2.CredentialRefreshListener;
import com.google.api.client.auth.oauth2.StoredCredential;
import com.google.api.client.auth.oauth2.TokenErrorResponse;
import com.google.api.client.auth.oauth2.TokenResponse;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.gson.GsonFactory;
import com.google.api.client.util.DateTime;
import com.google.api.client.util.store.DataStoreFactory;
import com.google.api.services.drive.Drive;
import com.google.api.services.drive.DriveRequest;
import com.google.api.services.drive.model.File;
import com.google.api.services.drive.model.FileList;
import com.google.api.services.drive.model.User;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.common.utils.CloudStorageMMKVHelper;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.constans.Constants;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.data.UploadFileContent;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.utils.CustomFileDataStoreFactory;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.cache.TimedCache;
import com.onyx.android.sdk.data.config.cloudnote.ConfigConstant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import io.reactivex.rxjava3.functions.Predicate;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import onyx.org.apache.commons.io.FileExistsException;
import onyx.org.apache.commons.io.FilenameUtils;
import onyx.org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.text.translate.LookupTranslator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¹\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0007*\u0001\u0004\u0018\u0000 e2\u00020\u0001:\u0001eB\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\bJ\u0016\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u001aJ \u0010\u001b\u001a\u00020\u001c2\n\u0010\u001d\u001a\u0006\u0012\u0002\b\u00030\u001e2\n\u0010\u001f\u001a\u0006\u0012\u0002\b\u00030\u001eH\u0002J0\u0010 \u001a\u0004\u0018\u00010\f2\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010!\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\b2\u0006\u0010#\u001a\u00020\b2\u0006\u0010$\u001a\u00020\u001cJ2\u0010%\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010\b2\u0006\u0010'\u001a\u00020\b2\u0006\u0010(\u001a\u00020\b2\b\u0010)\u001a\u0004\u0018\u00010*J \u0010+\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010\b2\u0006\u0010,\u001a\u00020\bJ\u0016\u0010-\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010!\u001a\u00020\bJ\u001c\u0010.\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\b2\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\b00JR\u00101\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010\b2\u0006\u0010'\u001a\u00020\b2\u0006\u0010(\u001a\u00020\b2(\u00102\u001a$\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u000204\u0012\b\u0012\u000605R\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0603J\u0016\u00107\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010!\u001a\u00020\bJ,\u00108\u001a\b\u0012\u0004\u0012\u00020\f092\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u001a2\u000e\u0010:\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010;J\u0018\u0010<\u001a\u0004\u0018\u00010\f2\u0006\u0010=\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\bJ\u001a\u0010>\u001a\u0004\u0018\u00010\f2\u0006\u0010?\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\bH\u0002J\u0016\u0010@\u001a\u00020A2\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u001aJ\b\u0010B\u001a\u00020\bH\u0002J \u0010C\u001a\u00020A2\u0006\u0010\u0017\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010\b2\u0006\u0010(\u001a\u00020\bJ4\u0010C\u001a\u00020A2\u0006\u0010\u0017\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010\b2\u0006\u0010,\u001a\u00020\b2\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0EJ(\u0010C\u001a\u00020A2\u0006\u0010\u0017\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010\b2\u0006\u0010'\u001a\u00020\b2\u0006\u0010(\u001a\u00020\bJ \u0010F\u001a\u00020A2\u0006\u0010\u0017\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010\b2\u0006\u0010,\u001a\u00020\bJ\u000e\u0010G\u001a\u00020H2\u0006\u0010\u0017\u001a\u00020\bJ\u000e\u0010I\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\bJ\u001a\u0010J\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010K\u001a\u00020\bH\u0002J\u0016\u0010L\u001a\u00020M2\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010N\u001a\u00020OJ\b\u0010P\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010Q\u001a\u00020\b2\u0006\u0010,\u001a\u00020\bH\u0002J\u0010\u0010R\u001a\u00020\b2\u0006\u0010,\u001a\u00020\bH\u0002J\u0010\u0010S\u001a\u00020\b2\u0006\u0010&\u001a\u00020\bH\u0002J\u001c\u0010T\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010\b2\b\u0010,\u001a\u0004\u0018\u00010\bH\u0002J\u000e\u0010U\u001a\u00020V2\u0006\u0010\u0017\u001a\u00020\bJ\u0018\u0010W\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010\bJ\u0010\u0010X\u001a\u00020\b2\u0006\u0010Y\u001a\u00020\bH\u0002J \u0010Z\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010K\u001a\u00020\b2\u0006\u0010=\u001a\u00020\fH\u0002J\u001e\u0010[\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\\\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\bJ(\u0010]\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010\b2\u0006\u0010'\u001a\u00020\b2\u0006\u0010(\u001a\u00020\bJ2\u0010]\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010\b2\u0006\u0010'\u001a\u00020\b2\u0006\u0010(\u001a\u00020\b2\b\u0010)\u001a\u0004\u0018\u00010*J\u001c\u0010^\u001a\b\u0012\u0004\u0012\u00020\f0_2\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010`\u001a\u00020\bJ\u0016\u0010a\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010!\u001a\u00020\bJ\u001e\u0010b\u001a\u00020\u001c2\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\f0;2\u0006\u0010c\u001a\u00020\fH\u0002J0\u0010d\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010!\u001a\u00020\b2\u0006\u0010'\u001a\u00020\b2\u0006\u0010(\u001a\u00020\b2\b\u0010)\u001a\u0004\u0018\u00010*R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;", "", "()V", "credentialRefreshListener", "com/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$credentialRefreshListener$1", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$credentialRefreshListener$1;", "driveMap", "", "", "Lcom/google/api/services/drive/Drive;", "folderMemoryCache", "Lcom/onyx/android/sdk/data/cache/TimedCache;", "Lcom/google/api/services/drive/model/File;", "httpTransport", "Lcom/google/api/client/http/javanet/NetHttpTransport;", "onProviderAuthFailFunc", "Lkotlin/Function0;", "", "getOnProviderAuthFailFunc", "()Lkotlin/jvm/functions/Function0;", "setOnProviderAuthFailFunc", "(Lkotlin/jvm/functions/Function0;)V", "buildDrive", "accountId", "configRootParent", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "containsAny", "", "coll1", "", "coll2", "copy", "fileId", "newName", "targetFolderId", "cut", "createFile", CouchFieldKey.KEY_PARENT_ID, HuaweiYunQueryArgs.FILE_NAME, "filePath", "progressListener", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$ProgressListener;", "createFolder", "name", "delete", "ensureParentFolderCreated", "parentsTitle", "", "executeDriveRequest", "func", "Lkotlin/Function3;", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;", "Lcom/google/api/services/drive/Drive$Files;", "Lcom/google/api/services/drive/DriveRequest;", "fetch", "fetchAllList", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "predicate", "Lio/reactivex/rxjava3/functions/Predicate;", "fetchFileFullInfo", "file", "fetchFolderFullInfo", "folder", "fetchList", "Lcom/google/api/services/drive/model/FileList;", "filterSpecificMimeType", "findFiles", "queryFunc", "Lkotlin/Function1;", "findFolders", "getCredential", "Lcom/google/api/client/auth/oauth2/Credential;", "getDrive", "getFolderFromMemoryCache", CouchFieldKey.KEY_UNIQUE_ID, "getGoogleAuthorizationCodeFlow", "Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeFlow;", "refreshListener", "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;", "getHttpTransport", "getNameEqualQuery", "getNameMatchQuery", "getParentQuery", "getQuery", "getUser", "Lcom/google/api/services/drive/model/User;", "normalizeParentId", "normalizeQuery", SearchIntents.EXTRA_QUERY, "putFolderMemoryCache", "rename", "id", "saveFile", "searchFiles", "", "search", "softDelete", "testSafety", "item", "updateFile", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGoogleDriveManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleDriveManager.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,968:1\n288#2,2:969\n1549#2:971\n1620#2,3:972\n288#2,2:975\n*S KotlinDebug\n*F\n+ 1 GoogleDriveManager.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager\n*L\n435#1:969,2\n585#1:971\n585#1:972,3\n626#1:975,2\n*E\n"})
/* loaded from: classes7.dex */
public final class GoogleDriveManager {

    @NotNull
    private static final String COMMA_DELIMITER = ", ";

    @NotNull
    private static final String CREATED_TIME = "createdTime";

    @NotNull
    private static final String DRIVE_SPACE = "drive";

    @NotNull
    private static final String FILES_FILED;

    @NotNull
    private static final String FILE_FILED = "id, name, fileExtension, parents, size, createdTime, md5Checksum, mimeType, modifiedTime";

    @NotNull
    private static final String FOLDER = "folder";

    @NotNull
    private static final String FOLDER_MIME_TYPE = "application/vnd.google-apps.folder";

    @NotNull
    private static final String IN_PARENTS_FORMAT = "'%s' in parents";

    @NotNull
    private static final JsonFactory JSON_FACTORY;

    @NotNull
    private static final String MIMETYPE_EQUAL_QUERY_FORMAT = "mimeType='%s'";

    @NotNull
    private static final String MIMETYPE_NOT_EQUAL_QUERY_FORMAT = "mimeType!='%s'";

    @NotNull
    private static final String MODIFIED_TIME = "modifiedTime";

    @NotNull
    private static final String NAME_CONTAINS_QUERY_FORMAT = "name contains '%s'";

    @NotNull
    private static final String NAME_EQUAL_QUERY_FORMAT = "name='%s'";

    @NotNull
    private static final String NEXTPAGE_TOKEN = "nextPageToken";

    @NotNull
    private static final String NOT_IN_TRASH_QUERY = "trashed=false";

    @NotNull
    private static final Set<String> SCOPES;

    @NotNull
    private static final List<String> filterGoogleSpecificMimeType;

    @NotNull
    private static final Map<String, String> googleEscapeCharMap;

    @NotNull
    private static final LookupTranslator googleEscapeTranslator;

    @Nullable
    private static String rootFolderId;

    @Nullable
    private NetHttpTransport httpTransport;

    @Nullable
    private Function0<Unit> onProviderAuthFailFunc;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final GoogleDriveManager ourInstance = new GoogleDriveManager();

    @NotNull
    private final Map<String, Drive> driveMap = new LinkedHashMap();

    @NotNull
    private final TimedCache<String, File> folderMemoryCache = new TimedCache<>(600000);

    @NotNull
    private final GoogleDriveManager$credentialRefreshListener$1 credentialRefreshListener = new CredentialRefreshListener() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager$credentialRefreshListener$1
        @Override // com.google.api.client.auth.oauth2.CredentialRefreshListener
        public void onTokenErrorResponse(@Nullable Credential credential, @Nullable TokenErrorResponse tokenErrorResponse) {
            Function0<Unit> onProviderAuthFailFunc = GoogleDriveManager.this.getOnProviderAuthFailFunc();
            if (onProviderAuthFailFunc != null) {
                onProviderAuthFailFunc.invoke();
            }
        }

        @Override // com.google.api.client.auth.oauth2.CredentialRefreshListener
        public void onTokenResponse(@Nullable Credential credential, @Nullable TokenResponse tokenResponse) {
        }
    };

    @Metadata(m61527d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u0004J\u0006\u0010)\u001a\u00020'J\u000e\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u0004J\u0006\u0010-\u001a\u00020.J\u0016\u0010/\u001a\u00020\u00042\u0006\u00100\u001a\u0002012\u0006\u0010(\u001a\u00020\u0004J\u0016\u00102\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0004J\"\u00104\u001a\u00020\u00042\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u000207062\u0006\u00108\u001a\u000207J \u00109\u001a\u00020\u00042\u0006\u0010:\u001a\u00020;2\u0006\u00108\u001a\u0002072\u0006\u0010(\u001a\u00020\u0004H\u0002J\u000e\u0010<\u001a\u00020\u00042\u0006\u0010=\u001a\u00020>J&\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00040\u001c2\u0006\u0010:\u001a\u00020;2\u0006\u0010(\u001a\u00020\u00042\u0006\u0010@\u001a\u00020\u0004H\u0002J\u000e\u0010A\u001a\u00020B2\u0006\u0010(\u001a\u00020\u0004J\u000e\u0010C\u001a\u00020B2\u0006\u0010(\u001a\u00020\u0004J\u000e\u0010D\u001a\u00020E2\u0006\u00108\u001a\u000207J\u000e\u0010F\u001a\u00020E2\u0006\u0010(\u001a\u00020\u0004J\u0016\u0010G\u001a\u00020'2\u0006\u0010H\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u0004J,\u0010J\u001a\b\u0012\u0004\u0012\u00020K0\u001c2\u0006\u0010:\u001a\u00020;2\b\u0010L\u001a\u0004\u0018\u00010\u00042\f\u0010M\u001a\b\u0012\u0004\u0012\u00020K0\u001cJ\u001e\u0010N\u001a\u00020K2\u0006\u0010:\u001a\u00020;2\u0006\u00108\u001a\u0002072\u0006\u0010(\u001a\u00020\u0004J*\u0010O\u001a\b\u0012\u0004\u0012\u00020K0P2\u0006\u0010:\u001a\u00020;2\f\u0010Q\u001a\b\u0012\u0004\u0012\u0002070\u001c2\u0006\u0010(\u001a\u00020\u0004J>\u0010O\u001a\b\u0012\u0004\u0012\u00020K0P2\u0006\u0010:\u001a\u00020;2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u000207062\f\u0010R\u001a\b\u0012\u0004\u0012\u0002070\u001c2\u0006\u0010(\u001a\u00020\u0004J \u0010S\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002070\u001e2\f\u0010R\u001a\b\u0012\u0004\u0012\u0002070\u001cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010!\u001a\u00020\"¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0010\u0010%\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006T"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;", "", "()V", "COMMA_DELIMITER", "", "CREATED_TIME", "DRIVE_SPACE", "FILES_FILED", "FILE_FILED", "FOLDER", "FOLDER_MIME_TYPE", "IN_PARENTS_FORMAT", "JSON_FACTORY", "Lcom/google/api/client/json/JsonFactory;", "getJSON_FACTORY", "()Lcom/google/api/client/json/JsonFactory;", "MIMETYPE_EQUAL_QUERY_FORMAT", "MIMETYPE_NOT_EQUAL_QUERY_FORMAT", "MODIFIED_TIME", "NAME_CONTAINS_QUERY_FORMAT", "NAME_EQUAL_QUERY_FORMAT", "NEXTPAGE_TOKEN", "NOT_IN_TRASH_QUERY", "SCOPES", "", "getSCOPES", "()Ljava/util/Set;", "filterGoogleSpecificMimeType", "", "googleEscapeCharMap", "", "googleEscapeTranslator", "Lorg/apache/commons/text/translate/LookupTranslator;", "ourInstance", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;", "getOurInstance", "()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;", "rootFolderId", "cleanTokenFile", "", "accountId", "clearDefaultTokenFile", "createFileContent", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;", "filePath", "getClientSecrets", "Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;", "getCloudFileLocalDir", "providerType", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "getCloudFileLocalPath", "cloudPath", "getCloudFilePath", "folderMap", "", "Lcom/google/api/services/drive/model/File;", "file", "getFilePathName", "cloudStorageRecordProvider", "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;", "getOrderBy", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "getParentFolderList", CouchFieldKey.KEY_UNIQUE_ID, "getTokenDirectory", "Ljava/io/File;", "getTokenStoredFile", "isDir", "", "isTokenExist", "migrateTokenStoredFile", "oldAccountId", "newAccountId", "setFileInfoPath", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", CouchFieldKey.KEY_PARENT_ID, "fileInfoList", "toCloudFile", "toCloudFiles", "", "fileList", "list", "toFolderMap", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nGoogleDriveManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleDriveManager.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,968:1\n1#2:969\n1855#3,2:970\n*S KotlinDebug\n*F\n+ 1 GoogleDriveManager.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion\n*L\n852#1:970,2\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes7.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[SortBy.values().length];
                try {
                    iArr[SortBy.Name.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SortBy.CreationTime.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final String getFilePathName(CloudStorageRecordProvider cloudStorageRecordProvider, File file, String accountId) throws Exception {
            String str = java.io.File.separator + file.getName();
            Intrinsics.checkNotNullExpressionValue(str, "toString(...)");
            return str;
        }

        private final List<String> getParentFolderList(CloudStorageRecordProvider cloudStorageRecordProvider, String accountId, String uniqueId) throws Exception {
            Object firstOrNull;
            File fetchFolderFullInfo;
            ArrayList arrayList = new ArrayList();
            while (StringKt.isNotBlank(uniqueId)) {
                if (GoogleDriveManager.rootFolderId == null) {
                    GoogleDriveManager.rootFolderId = getOurInstance().fetch(accountId, "root").getId();
                }
                if (StringKt.equals(GoogleDriveManager.rootFolderId, uniqueId)) {
                    break;
                }
                CloudFileBean queryFileInfo = cloudStorageRecordProvider.queryFileInfo(uniqueId);
                if (queryFileInfo != null) {
                    String name = queryFileInfo.getName();
                    Intrinsics.checkNotNull(name);
                    arrayList.add(name);
                    uniqueId = queryFileInfo.getParentId();
                } else {
                    File folderFromMemoryCache = getOurInstance().getFolderFromMemoryCache(accountId, uniqueId);
                    boolean z = folderFromMemoryCache != null;
                    if (folderFromMemoryCache == null) {
                        folderFromMemoryCache = getOurInstance().fetch(accountId, uniqueId);
                    }
                    if (!z && (fetchFolderFullInfo = getOurInstance().fetchFolderFullInfo(folderFromMemoryCache, accountId)) != null) {
                        folderFromMemoryCache = fetchFolderFullInfo;
                    }
                    getOurInstance().putFolderMemoryCache(accountId, uniqueId, folderFromMemoryCache);
                    String name2 = folderFromMemoryCache.getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                    arrayList.add(name2);
                    List<String> parents = folderFromMemoryCache.getParents();
                    if (parents != null) {
                        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) parents);
                        uniqueId = (String) firstOrNull;
                    } else {
                        uniqueId = null;
                    }
                }
            }
            return arrayList;
        }

        public final void cleanTokenFile(@NotNull String accountId) {
            Intrinsics.checkNotNullParameter(accountId, "accountId");
            FileUtils.INSTANCE.deleteFile(getTokenStoredFile(accountId));
        }

        public final void clearDefaultTokenFile() {
            cleanTokenFile(ConfigConstant.GOOGLE_DRIVE_USER);
        }

        @NotNull
        public final UploadFileContent createFileContent(@NotNull String filePath) {
            Intrinsics.checkNotNullParameter(filePath, "filePath");
            java.io.File file = new java.io.File(filePath);
            FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
            String extension = FilenameUtils.getExtension(file.getAbsolutePath());
            Intrinsics.checkNotNullExpressionValue(extension, "getExtension(...)");
            String mimeType = fileExtensionUtils.mimeType(extension);
            if (mimeType == null) {
                mimeType = "application/octet-stream";
            }
            return new UploadFileContent(mimeType, file);
        }

        @NotNull
        public final GoogleClientSecrets getClientSecrets() throws IOException {
            InputStream inputStream = IOUtils.toInputStream(CloudStorageMMKVHelper.INSTANCE.getGoogleDriveClientInfo(), "UTF-8");
            try {
                GoogleClientSecrets load = GoogleClientSecrets.load(GoogleDriveManager.INSTANCE.getJSON_FACTORY(), new InputStreamReader(inputStream));
                Intrinsics.checkNotNullExpressionValue(load, "load(...)");
                CloseableKt.closeFinally(inputStream, null);
                return load;
            } finally {
            }
        }

        @NotNull
        public final String getCloudFileLocalDir(@NotNull Provider providerType, @NotNull String accountId) {
            Intrinsics.checkNotNullParameter(providerType, "providerType");
            Intrinsics.checkNotNullParameter(accountId, "accountId");
            String absolutePath = new java.io.File(Constants.INSTANCE.getNETDISK_PATH(), providerType.getTitle() + java.io.File.separator + FileUtils.INSTANCE.fixNotAllowFileName(accountId, -1)).getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            return absolutePath;
        }

        @NotNull
        public final String getCloudFileLocalPath(@NotNull String cloudPath, @NotNull String accountId) {
            Intrinsics.checkNotNullParameter(cloudPath, "cloudPath");
            Intrinsics.checkNotNullParameter(accountId, "accountId");
            return FileUtils.INSTANCE.combinePath(getCloudFileLocalDir(Provider.GOOGLE_DRIVE, accountId), cloudPath);
        }

        @NotNull
        public final String getCloudFilePath(@NotNull Map<String, File> folderMap, @NotNull File file) {
            boolean z;
            Intrinsics.checkNotNullParameter(folderMap, "folderMap");
            Intrinsics.checkNotNullParameter(file, "file");
            String name = file.getName();
            do {
                Iterator it2 = CollectionKt.ensureList(file.getParents()).iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z = false;
                        break;
                    }
                    String str = (String) it2.next();
                    if (folderMap.containsKey(str)) {
                        File file2 = folderMap.get(str);
                        Intrinsics.checkNotNull(file2);
                        file = file2;
                        name = file.getName() + java.io.File.separator + StringKt.safelyGetStr(name);
                        z = true;
                        break;
                    }
                }
            } while (z);
            Intrinsics.checkNotNull(name);
            return name;
        }

        @NotNull
        public final JsonFactory getJSON_FACTORY() {
            return GoogleDriveManager.JSON_FACTORY;
        }

        @NotNull
        public final String getOrderBy(@NotNull CloudFileQueryArgs queryArgs) {
            CharSequence trim;
            String sb;
            Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("folder");
            trim = StringsKt__StringsKt.trim((CharSequence) ", ");
            sb2.append(trim.toString());
            String sb3 = sb2.toString();
            int i = WhenMappings.$EnumSwitchMapping$0[queryArgs.getSortBy().ordinal()];
            if (i == 1) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(sb3);
                String name = SortBy.Name.name();
                Locale locale = Locale.getDefault();
                Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
                String lowerCase = name.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                sb4.append(lowerCase);
                sb = sb4.toString();
            } else if (i != 2) {
                sb = sb3 + GoogleDriveManager.MODIFIED_TIME;
            } else {
                sb = sb3 + "createdTime";
            }
            StringBuilder sb5 = new StringBuilder();
            sb5.append(sb);
            sb5.append(' ');
            String name2 = queryArgs.getOrder().name();
            Locale locale2 = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale2, "getDefault(...)");
            String lowerCase2 = name2.toLowerCase(locale2);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
            sb5.append(lowerCase2);
            return sb5.toString();
        }

        @NotNull
        public final GoogleDriveManager getOurInstance() {
            return GoogleDriveManager.ourInstance;
        }

        @NotNull
        public final Set<String> getSCOPES() {
            return GoogleDriveManager.SCOPES;
        }

        @NotNull
        public final java.io.File getTokenDirectory(@NotNull String accountId) {
            Intrinsics.checkNotNullParameter(accountId, "accountId");
            return new java.io.File(ResManager.INSTANCE.getAppContext().getFilesDir(), accountId);
        }

        @NotNull
        public final java.io.File getTokenStoredFile(@NotNull String accountId) {
            Intrinsics.checkNotNullParameter(accountId, "accountId");
            return new java.io.File(getTokenDirectory(accountId), StoredCredential.class.getSimpleName());
        }

        public final boolean isDir(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "file");
            return file.getMimeType().equals(GoogleDriveManager.FOLDER_MIME_TYPE);
        }

        public final boolean isTokenExist(@NotNull String accountId) {
            Intrinsics.checkNotNullParameter(accountId, "accountId");
            java.io.File tokenStoredFile = getTokenStoredFile(accountId);
            if (FileUtils.INSTANCE.fileExist(tokenStoredFile)) {
                try {
                    HashMap hashMap = (HashMap) com.google.api.client.util.IOUtils.deserialize(new FileInputStream(tokenStoredFile));
                    if (hashMap != null) {
                        return hashMap.isEmpty() ^ true;
                    }
                    return false;
                } catch (IOException e) {
                    Debug.INSTANCE.m32045e(GoogleDriveManager.class, e);
                }
            }
            return false;
        }

        public final void migrateTokenStoredFile(@NotNull String oldAccountId, @NotNull String newAccountId) {
            Intrinsics.checkNotNullParameter(oldAccountId, "oldAccountId");
            Intrinsics.checkNotNullParameter(newAccountId, "newAccountId");
            if (Intrinsics.areEqual(oldAccountId, newAccountId)) {
                return;
            }
            java.io.File tokenStoredFile = getTokenStoredFile(oldAccountId);
            FileUtils fileUtils = FileUtils.INSTANCE;
            if (fileUtils.fileExist(tokenStoredFile)) {
                try {
                    HashMap hashMap = (HashMap) com.google.api.client.util.IOUtils.deserialize(new FileInputStream(tokenStoredFile));
                    Intrinsics.checkNotNull(hashMap);
                    hashMap.put(newAccountId, hashMap.remove(oldAccountId));
                    java.io.File tokenStoredFile2 = getTokenStoredFile(newAccountId);
                    java.io.File parentFile = tokenStoredFile2.getParentFile();
                    if (parentFile != null) {
                        fileUtils.mkdirs(parentFile);
                    }
                    com.google.api.client.util.IOUtils.serialize(hashMap, new FileOutputStream(tokenStoredFile2));
                    fileUtils.deleteFile(tokenStoredFile);
                    getOurInstance().driveMap.remove(oldAccountId);
                } catch (IOException e) {
                    Debug.INSTANCE.m32045e(GoogleDriveManager.class, e);
                }
            }
        }

        @NotNull
        public final List<CloudFileBean> setFileInfoPath(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @Nullable String parentId, @NotNull List<CloudFileBean> fileInfoList) {
            Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "cloudStorageRecordProvider");
            Intrinsics.checkNotNullParameter(fileInfoList, "fileInfoList");
            CloudFileBean queryFileInfo = cloudStorageRecordProvider.queryFileInfo(parentId);
            if (queryFileInfo != null) {
                for (CloudFileBean cloudFileBean : fileInfoList) {
                    FileUtils fileUtils = FileUtils.INSTANCE;
                    cloudFileBean.setCloudFilePath(fileUtils.combinePath(queryFileInfo.getCloudFilePath(), cloudFileBean.getName()));
                    cloudFileBean.setLocalFilePath(fileUtils.combinePath(queryFileInfo.getLocalFilePath(), cloudFileBean.getName()));
                }
            }
            return fileInfoList;
        }

        @NotNull
        public final CloudFileBean toCloudFile(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull File file, @NotNull String accountId) throws Exception {
            Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "cloudStorageRecordProvider");
            Intrinsics.checkNotNullParameter(file, "file");
            Intrinsics.checkNotNullParameter(accountId, "accountId");
            Long size = file.getSize() == null ? 0L : file.getSize();
            String filePathName = getFilePathName(cloudStorageRecordProvider, file, accountId);
            CloudFileBean create = CloudFileBean.INSTANCE.create(Provider.GOOGLE_DRIVE);
            String id = file.getId();
            Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
            create.setUniqueId(id);
            Companion companion = GoogleDriveManager.INSTANCE;
            create.setDir(companion.isDir(file));
            create.setName(file.getName());
            create.setCloudFilePath(filePathName);
            create.setLocalFilePath(companion.getCloudFileLocalPath(filePathName, accountId));
            create.setAccountId(accountId);
            create.setMd5(file.getMd5Checksum());
            Intrinsics.checkNotNull(size);
            create.setSize(size.longValue());
            create.setThumbnail(file.getThumbnailLink());
            DateTime modifiedTime = file.getModifiedTime();
            create.setUpdatedAt(modifiedTime != null ? modifiedTime.getValue() : 0L);
            DateTime createdTime = file.getCreatedTime();
            create.setCreatedAt(createdTime != null ? createdTime.getValue() : 0L);
            return create;
        }

        @NotNull
        public final List<CloudFileBean> toCloudFiles(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull Map<String, File> folderMap, @NotNull List<File> list, @NotNull String accountId) throws Exception {
            Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "cloudStorageRecordProvider");
            Intrinsics.checkNotNullParameter(folderMap, "folderMap");
            Intrinsics.checkNotNullParameter(list, "list");
            Intrinsics.checkNotNullParameter(accountId, "accountId");
            ArrayList arrayList = new ArrayList();
            for (File file : list) {
                CloudFileBean cloudFile = toCloudFile(cloudStorageRecordProvider, file, accountId);
                String cloudFilePath = getCloudFilePath(folderMap, file);
                cloudFile.setCloudFilePath(cloudFilePath);
                cloudFile.setLocalFilePath(getCloudFileLocalPath(cloudFilePath, accountId));
                arrayList.add(cloudFile);
            }
            return arrayList;
        }

        @NotNull
        public final Map<String, File> toFolderMap(@NotNull List<File> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            ArrayList<File> arrayList = new ArrayList();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (File file : list) {
                if (!isDir(file)) {
                    break;
                }
                arrayList.add(file);
            }
            for (File file2 : arrayList) {
                String id = file2.getId();
                Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
                linkedHashMap.put(id, file2);
            }
            return linkedHashMap;
        }

        private Companion() {
        }

        @NotNull
        public final List<CloudFileBean> toCloudFiles(@NotNull CloudStorageRecordProvider cloudStorageRecordProvider, @NotNull List<File> fileList, @NotNull String accountId) throws Exception {
            Intrinsics.checkNotNullParameter(cloudStorageRecordProvider, "cloudStorageRecordProvider");
            Intrinsics.checkNotNullParameter(fileList, "fileList");
            Intrinsics.checkNotNullParameter(accountId, "accountId");
            ArrayList arrayList = new ArrayList();
            Iterator<File> it2 = fileList.iterator();
            while (it2.hasNext()) {
                CollectionKt.safeAdd(arrayList, toCloudFile(cloudStorageRecordProvider, it2.next(), accountId));
            }
            return arrayList;
        }
    }

    static {
        Set<String> of;
        List<String> mutableListOf;
        Map<String, String> mutableMapOf;
        of = SetsKt__SetsJVMKt.setOf("https://www.googleapis.com/auth/drive.file");
        SCOPES = of;
        GsonFactory defaultInstance = GsonFactory.getDefaultInstance();
        Intrinsics.checkNotNullExpressionValue(defaultInstance, "getDefaultInstance(...)");
        JSON_FACTORY = defaultInstance;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("files(%s)", Arrays.copyOf(new Object[]{FILE_FILED}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        FILES_FILED = format;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf("application/vnd.google-apps.audio", "application/vnd.google-apps.document", "application/vnd.google-apps.drive-sdk", "application/vnd.google-apps.drawing", "application/vnd.google-apps.form", "application/vnd.google-apps.fusiontable", "application/vnd.google-apps.jam", "application/vnd.google-apps.map", "application/vnd.google-apps.photo", "application/vnd.google-apps.presentation", "application/vnd.google-apps.script", "application/vnd.google-apps.shortcut", "application/vnd.google-apps.site", "application/vnd.google-apps.spreadsheet", "application/vnd.google-apps.unknown", "application/vnd.google-apps.video");
        filterGoogleSpecificMimeType = mutableListOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(CloudStorageConstants.SINGLE_QUOTES, "\\'"));
        googleEscapeCharMap = mutableMapOf;
        googleEscapeTranslator = new LookupTranslator(Collections.unmodifiableMap(mutableMapOf));
    }

    private final boolean containsAny(Collection<?> coll1, Collection<?> coll2) {
        boolean contains;
        boolean contains2;
        if (coll1.size() < coll2.size()) {
            Iterator<?> it2 = coll1.iterator();
            while (it2.hasNext()) {
                contains2 = CollectionsKt___CollectionsKt.contains(coll2, it2.next());
                if (contains2) {
                    return true;
                }
            }
            return false;
        }
        Iterator<?> it3 = coll2.iterator();
        while (it3.hasNext()) {
            contains = CollectionsKt___CollectionsKt.contains(coll1, it3.next());
            if (contains) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File fetchFolderFullInfo(File folder, String accountId) throws Exception {
        String name = folder.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        Object obj = null;
        List<File> files = findFolders(accountId, null, name).getFiles();
        Intrinsics.checkNotNullExpressionValue(files, "getFiles(...)");
        Iterator<T> it2 = files.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (((File) next).getId().equals(folder.getId())) {
                obj = next;
                break;
            }
        }
        return (File) obj;
    }

    private final String filterSpecificMimeType() {
        int collectionSizeOrDefault;
        List<String> list = filterGoogleSpecificMimeType;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (String str : list) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(MIMETYPE_NOT_EQUAL_QUERY_FORMAT, Arrays.copyOf(new Object[]{str}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            arrayList.add(format);
        }
        String join = StringUtils.join(arrayList, CloudStorageConstants.OPERATION_AND);
        Intrinsics.checkNotNullExpressionValue(join, "join(...)");
        return join;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File getFolderFromMemoryCache(String accountId, String uniqueId) {
        return this.folderMemoryCache.get(accountId + '-' + uniqueId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getGoogleAuthorizationCodeFlow$lambda$4(HttpRequest httpRequest) {
        httpRequest.setConnectTimeout(60000);
        httpRequest.setReadTimeout(60000);
    }

    private final String getNameEqualQuery(String name) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(NAME_EQUAL_QUERY_FORMAT, Arrays.copyOf(new Object[]{googleEscapeTranslator.translate(name)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    private final String getNameMatchQuery(String name) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(NAME_CONTAINS_QUERY_FORMAT, Arrays.copyOf(new Object[]{googleEscapeTranslator.translate(name)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    private final String getParentQuery(String parentId) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(IN_PARENTS_FORMAT, Arrays.copyOf(new Object[]{parentId}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    private final String getQuery(String parentId, String name) {
        String str = "";
        if (StringKt.isNotBlank(parentId)) {
            str = "" + CloudStorageConstants.OPERATION_AND + getParentQuery(parentId);
        }
        if (StringKt.isNotBlank(name)) {
            str = str + CloudStorageConstants.OPERATION_AND + getNameEqualQuery(name);
        }
        return normalizeQuery((str + CloudStorageConstants.OPERATION_AND + filterSpecificMimeType()) + " and trashed=false");
    }

    private final String normalizeQuery(String query) {
        boolean startsWith$default;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(query, CloudStorageConstants.OPERATION_AND, false, 2, null);
        return startsWith$default ? new Regex(CloudStorageConstants.OPERATION_AND).replaceFirst(query, "") : query;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void putFolderMemoryCache(String accountId, String uniqueId, File file) {
        this.folderMemoryCache.put(accountId + '-' + uniqueId, file);
    }

    private final boolean testSafety(Predicate<File> predicate, File item) {
        try {
            return predicate.test(item);
        } catch (Exception unused) {
            return false;
        }
    }

    @NotNull
    public final Drive buildDrive(@NotNull String accountId) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Debug.INSTANCE.m32035d(GoogleDriveManager.class, "build drive for:" + accountId, new Object[0]);
        Drive build = new Drive.Builder(getHttpTransport(), JSON_FACTORY, new CredentialAdapter(getCredential(accountId))).setApplicationName(ResManager.INSTANCE.getAppContext().getPackageName()).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    public final void configRootParent(@NotNull String accountId, @NotNull CloudFileQueryArgs queryArgs) throws Exception {
        List<String> listOf;
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        listOf = CollectionsKt__CollectionsJVMKt.listOf("");
        File ensureParentFolderCreated = ensureParentFolderCreated(accountId, listOf);
        String parentId = queryArgs.getParentId();
        if (parentId == null || parentId.length() == 0) {
            queryArgs.setParentId(ensureParentFolderCreated.getId());
        }
    }

    @Nullable
    public final File copy(@NotNull String accountId, @NotNull String fileId, @NotNull String newName, @NotNull String targetFolderId, boolean cut) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(fileId, "fileId");
        Intrinsics.checkNotNullParameter(newName, "newName");
        Intrinsics.checkNotNullParameter(targetFolderId, "targetFolderId");
        File file = new File();
        file.setName(FileUtils.INSTANCE.combinePath(FilenameUtils.getBaseName(newName) + System.currentTimeMillis(), FilenameUtils.getExtension(newName)));
        File execute = getDrive(accountId).files().copy(fileId, file).setFields2(FILE_FILED).execute();
        File file2 = new File();
        file2.setName(newName);
        File execute2 = getDrive(accountId).files().update(execute.getId(), file2).setAddParents(targetFolderId).setRemoveParents(StringUtils.join(execute.getParents(), ", ")).setFields2(FILE_FILED).execute();
        if (cut) {
            delete(accountId, fileId);
        }
        return execute2;
    }

    @NotNull
    public final File createFile(@NotNull String accountId, @Nullable String parentId, @NotNull String fileName, @NotNull String filePath, @Nullable final UploadFileContent.ProgressListener progressListener) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        return executeDriveRequest(accountId, parentId, fileName, filePath, new Function3<File, UploadFileContent, Drive.Files, Drive.Files.Create>() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager$createFile$func$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public final Drive.Files.Create invoke(@NotNull File file, @NotNull UploadFileContent fileContent, @NotNull Drive.Files files) {
                Intrinsics.checkNotNullParameter(file, "file");
                Intrinsics.checkNotNullParameter(fileContent, "fileContent");
                Intrinsics.checkNotNullParameter(files, "files");
                fileContent.setProgressListener(UploadFileContent.ProgressListener.this);
                return files.create(file, fileContent);
            }
        });
    }

    @NotNull
    public final File createFolder(@NotNull String accountId, @Nullable String parentId, @NotNull String name) throws Exception {
        List<String> listOf;
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(name, "name");
        File file = new File();
        file.setName(name);
        file.setMimeType(FOLDER_MIME_TYPE);
        if (StringKt.isNotBlank(parentId)) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(parentId);
            file.setParents(listOf);
        }
        File execute = getDrive(accountId).files().create(file).setFields2(FILE_FILED).execute();
        Intrinsics.checkNotNullExpressionValue(execute, "execute(...)");
        return execute;
    }

    public final void delete(@NotNull String accountId, @NotNull String fileId) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(fileId, "fileId");
        getDrive(accountId).files().delete(fileId).execute();
    }

    @NotNull
    public final File ensureParentFolderCreated(@NotNull String accountId, @NotNull List<String> parentsTitle) throws Exception {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(parentsTitle, "parentsTitle");
        if (parentsTitle.size() == 1) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) parentsTitle);
            if (Intrinsics.areEqual(firstOrNull, "")) {
                return fetch(accountId, "root");
            }
        }
        File file = null;
        for (String str : parentsTitle) {
            String id = file != null ? file.getId() : null;
            FileList findFolders = findFolders(accountId, id, str);
            file = CollectionKt.isNullOrEmpty(findFolders.getFiles()) ? createFolder(accountId, id, str) : findFolders.getFiles().get(0);
        }
        Intrinsics.checkNotNull(file);
        return file;
    }

    @NotNull
    public final File executeDriveRequest(@NotNull String accountId, @Nullable String parentId, @NotNull String fileName, @NotNull String filePath, @NotNull Function3<? super File, ? super UploadFileContent, ? super Drive.Files, ? extends DriveRequest<File>> func) throws Exception {
        List<String> listOf;
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(func, "func");
        File file = new File();
        file.setName(fileName);
        if (StringKt.isNotBlank(parentId)) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(parentId);
            file.setParents(listOf);
        }
        UploadFileContent createFileContent = INSTANCE.createFileContent(filePath);
        Drive.Files files = getDrive(accountId).files();
        Intrinsics.checkNotNullExpressionValue(files, "files(...)");
        DriveRequest<File> invoke = func.invoke(file, createFileContent, files);
        invoke.setFields2(FILE_FILED);
        File execute = invoke.execute();
        Intrinsics.checkNotNullExpressionValue(execute, "execute(...)");
        return execute;
    }

    @NotNull
    public final File fetch(@NotNull String accountId, @NotNull String fileId) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(fileId, "fileId");
        File execute = getDrive(accountId).files().get(fileId).execute();
        Intrinsics.checkNotNullExpressionValue(execute, "execute(...)");
        return execute;
    }

    @NotNull
    public final QueryListResult<File> fetchAllList(@NotNull String accountId, @NotNull CloudFileQueryArgs queryArgs, @Nullable Predicate<File> predicate) throws Exception {
        List<String> listOf;
        Set mutableSetOf;
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        queryArgs.setSortBy(SortBy.CreationTime);
        queryArgs.setOrder(SortOrder.Asc);
        listOf = CollectionsKt__CollectionsJVMKt.listOf("");
        File ensureParentFolderCreated = ensureParentFolderCreated(accountId, listOf);
        Debug.INSTANCE.m32035d(GoogleDriveManager.class, "root folder.name:" + ensureParentFolderCreated.getName() + ",id:" + ensureParentFolderCreated.getId(), new Object[0]);
        QueryListResult<File> queryListResult = new QueryListResult<>();
        mutableSetOf = SetsKt__SetsKt.mutableSetOf(ensureParentFolderCreated.getId());
        boolean z = false;
        while (!z) {
            FileList fetchList = fetchList(accountId, queryArgs);
            Iterator it2 = CollectionKt.ensureList(fetchList.getFiles()).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                File file = (File) it2.next();
                if (!CollectionKt.isNullOrEmpty(file.getParents())) {
                    Companion companion = INSTANCE;
                    Intrinsics.checkNotNull(file);
                    if (companion.isDir(file)) {
                        List<String> parents = file.getParents();
                        Intrinsics.checkNotNullExpressionValue(parents, "getParents(...)");
                        if (containsAny(parents, mutableSetOf)) {
                            mutableSetOf.add(file.getId());
                        }
                    }
                    if (predicate != null && !testSafety(predicate, file)) {
                        z = true;
                        break;
                    }
                    Collection<?> parents2 = file.getParents();
                    Intrinsics.checkNotNullExpressionValue(parents2, "getParents(...)");
                    if (containsAny(parents2, mutableSetOf)) {
                        CollectionKt.safeAdd(queryListResult.ensureList(), file);
                    }
                }
            }
            String cursor = queryArgs.getCursor();
            if ((cursor == null || cursor.length() == 0) || CollectionKt.isNullOrEmpty(fetchList.getFiles())) {
                break;
            }
        }
        queryListResult.setFetchSource(1);
        queryListResult.setCount(queryListResult.ensureList().size());
        return queryListResult;
    }

    @Nullable
    public final File fetchFileFullInfo(@NotNull File file, @NotNull String accountId) throws Exception {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        Object obj = null;
        List<File> files = findFiles(accountId, null, name).getFiles();
        Intrinsics.checkNotNullExpressionValue(files, "getFiles(...)");
        Iterator<T> it2 = files.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (((File) next).getId().equals(file.getId())) {
                obj = next;
                break;
            }
        }
        return (File) obj;
    }

    /* JADX WARN: Type inference failed for: r3v8, types: [com.google.api.services.drive.Drive$Files$List] */
    @NotNull
    public final FileList fetchList(@NotNull String accountId, @NotNull CloudFileQueryArgs queryArgs) throws Exception {
        List listOf;
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{NEXTPAGE_TOKEN, FILES_FILED});
        FileList execute = getDrive(accountId).files().list().setOrderBy(INSTANCE.getOrderBy(queryArgs)).setPageSize(Integer.valueOf(queryArgs.getLimit())).setPageToken(queryArgs.getCursor()).setSpaces("drive").setFields2(StringUtils.join(listOf, ", ")).setQ(getQuery(queryArgs.getParentId(), queryArgs.getQuery())).execute();
        queryArgs.setCursor(execute.getNextPageToken());
        Intrinsics.checkNotNull(execute);
        return execute;
    }

    @NotNull
    public final FileList findFiles(@NotNull String accountId, @Nullable String parentId, @NotNull String name, @NotNull Function1<? super String, String> queryFunc) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(queryFunc, "queryFunc");
        FileList execute = getDrive(accountId).files().list().setQ(queryFunc.invoke(getQuery(parentId, name))).setSpaces("drive").setFields2(FILES_FILED).execute();
        Intrinsics.checkNotNullExpressionValue(execute, "execute(...)");
        return execute;
    }

    @NotNull
    public final FileList findFolders(@NotNull String accountId, @Nullable String parentId, @NotNull String name) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(name, "name");
        return findFiles(accountId, parentId, name, new Function1<String, String>() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager$findFolders$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull String query) {
                Intrinsics.checkNotNullParameter(query, "query");
                StringBuilder sb = new StringBuilder();
                sb.append(query);
                sb.append(CloudStorageConstants.OPERATION_AND);
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format("mimeType='%s'", Arrays.copyOf(new Object[]{"application/vnd.google-apps.folder"}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                sb.append(format);
                return sb.toString();
            }
        });
    }

    @NotNull
    public final Credential getCredential(@NotNull String accountId) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Credential loadCredential = getGoogleAuthorizationCodeFlow(accountId, this.credentialRefreshListener).loadCredential(accountId);
        Intrinsics.checkNotNullExpressionValue(loadCredential, "loadCredential(...)");
        return loadCredential;
    }

    @NotNull
    public final Drive getDrive(@NotNull String accountId) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        if (this.driveMap.get(accountId) == null) {
            this.driveMap.put(accountId, buildDrive(accountId));
        }
        Drive drive = this.driveMap.get(accountId);
        Intrinsics.checkNotNull(drive);
        return drive;
    }

    @NotNull
    public final GoogleAuthorizationCodeFlow getGoogleAuthorizationCodeFlow(@NotNull String accountId, @NotNull CredentialRefreshListener refreshListener) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(refreshListener, "refreshListener");
        NetHttpTransport httpTransport = getHttpTransport();
        JsonFactory jsonFactory = JSON_FACTORY;
        Companion companion = INSTANCE;
        GoogleAuthorizationCodeFlow build = new GoogleAuthorizationCodeFlow.Builder(httpTransport, jsonFactory, companion.getClientSecrets(), SCOPES).setDataStoreFactory((DataStoreFactory) new CustomFileDataStoreFactory(companion.getTokenDirectory(accountId))).setAccessType("offline").addRefreshListener(refreshListener).setRequestInitializer(new HttpRequestInitializer() { // from class: com.sunia.HTREnginev2.i4h
            @Override // com.google.api.client.http.HttpRequestInitializer
            public final void initialize(HttpRequest httpRequest) {
                GoogleDriveManager.getGoogleAuthorizationCodeFlow$lambda$4(httpRequest);
            }
        }).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    @Nullable
    public final NetHttpTransport getHttpTransport() throws GeneralSecurityException, IOException {
        if (this.httpTransport == null) {
            this.httpTransport = GoogleNetHttpTransport.newTrustedTransport();
        }
        return this.httpTransport;
    }

    @Nullable
    public final Function0<Unit> getOnProviderAuthFailFunc() {
        return this.onProviderAuthFailFunc;
    }

    @NotNull
    public final User getUser(@NotNull String accountId) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        User user = getDrive(accountId).about().get().setFields2("user(displayName, kind, emailAddress, permissionId)").execute().getUser();
        Intrinsics.checkNotNullExpressionValue(user, "getUser(...)");
        return user;
    }

    @NotNull
    public final String normalizeParentId(@NotNull String accountId, @Nullable String parentId) throws Exception {
        List<String> listOf;
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        if (parentId == null || parentId.length() == 0) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf("");
            parentId = ensureParentFolderCreated(accountId, listOf).getId();
        }
        Intrinsics.checkNotNull(parentId);
        return parentId;
    }

    @NotNull
    public final File rename(@NotNull String accountId, @NotNull String id, @NotNull String newName) throws Exception {
        FileList findFiles;
        Object firstOrNull;
        Object firstOrNull2;
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(newName, "newName");
        File execute = getDrive(accountId).files().get(id).execute();
        Companion companion = INSTANCE;
        Intrinsics.checkNotNull(execute);
        String str = null;
        if (companion.isDir(execute)) {
            List<String> parents = execute.getParents();
            if (parents != null) {
                firstOrNull2 = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) parents);
                str = (String) firstOrNull2;
            }
            findFiles = findFolders(accountId, str, newName);
        } else {
            List<String> parents2 = execute.getParents();
            if (parents2 != null) {
                firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) parents2);
                str = (String) firstOrNull;
            }
            findFiles = findFiles(accountId, str, newName, newName);
        }
        if (CollectionKt.isNonBlank(findFiles.getFiles())) {
            throw new FileExistsException(newName);
        }
        File file = new File();
        file.setName(newName);
        File execute2 = getDrive(accountId).files().update(id, file).setFields2(FILE_FILED).execute();
        Intrinsics.checkNotNullExpressionValue(execute2, "execute(...)");
        return execute2;
    }

    @NotNull
    public final File saveFile(@NotNull String accountId, @Nullable String parentId, @NotNull String fileName, @NotNull String filePath) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        return saveFile(accountId, parentId, fileName, filePath, null);
    }

    @NotNull
    public final List<File> searchFiles(@NotNull String accountId, @NotNull String search) throws Exception {
        List listOf;
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(search, "search");
        String str = getNameMatchQuery(search) + " and trashed=false";
        Debug.INSTANCE.m32035d(GoogleDriveManager.class, "search params:" + str, new Object[0]);
        ArrayList arrayList = new ArrayList();
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{NEXTPAGE_TOKEN, FILES_FILED});
        String join = StringUtils.join(listOf, ", ");
        String str2 = null;
        do {
            FileList execute = getDrive(accountId).files().list().setQ(str).setPageToken(str2).setSpaces("drive").setFields2(join).execute();
            if (execute == null || CollectionKt.isNullOrEmpty(execute.getFiles())) {
                break;
            }
            CollectionKt.safeAddAll(arrayList, execute.getFiles());
            str2 = execute.getNextPageToken();
        } while (!(str2 == null || str2.length() == 0));
        return arrayList;
    }

    public final void setOnProviderAuthFailFunc(@Nullable Function0<Unit> function0) {
        this.onProviderAuthFailFunc = function0;
    }

    public final void softDelete(@NotNull String accountId, @NotNull String fileId) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(fileId, "fileId");
        File file = new File();
        file.setTrashed(Boolean.TRUE);
        getDrive(accountId).files().update(fileId, file).execute();
    }

    @NotNull
    public final File updateFile(@NotNull String accountId, @NotNull final String fileId, @NotNull String fileName, @NotNull String filePath, @Nullable final UploadFileContent.ProgressListener progressListener) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(fileId, "fileId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        return executeDriveRequest(accountId, null, fileName, filePath, new Function3<File, UploadFileContent, Drive.Files, Drive.Files.Update>() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager$updateFile$func$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public final Drive.Files.Update invoke(@NotNull File file, @NotNull UploadFileContent fileContent, @NotNull Drive.Files files) {
                Intrinsics.checkNotNullParameter(file, "file");
                Intrinsics.checkNotNullParameter(fileContent, "fileContent");
                Intrinsics.checkNotNullParameter(files, "files");
                fileContent.setProgressListener(UploadFileContent.ProgressListener.this);
                return files.update(fileId, file, fileContent);
            }
        });
    }

    @NotNull
    public final File saveFile(@NotNull String accountId, @Nullable String parentId, @NotNull String fileName, @NotNull String filePath, @Nullable UploadFileContent.ProgressListener progressListener) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        FileList findFiles = findFiles(accountId, parentId, fileName, filePath);
        if (CollectionKt.isNullOrEmpty(findFiles.getFiles())) {
            return createFile(accountId, parentId, fileName, filePath, progressListener);
        }
        String id = findFiles.getFiles().get(0).getId();
        Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
        return updateFile(accountId, id, fileName, filePath, progressListener);
    }

    @NotNull
    public final FileList findFiles(@NotNull String accountId, @Nullable String parentId, @NotNull String filePath) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        String name = FilenameUtils.getName(filePath);
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return findFiles(accountId, parentId, name, filePath);
    }

    @NotNull
    public final FileList findFiles(@NotNull String accountId, @Nullable String parentId, @NotNull String fileName, @NotNull final String filePath) throws Exception {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        return findFiles(accountId, parentId, fileName, new Function1<String, String>() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager$findFiles$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull String query) {
                Intrinsics.checkNotNullParameter(query, "query");
                StringBuilder sb = new StringBuilder();
                sb.append(query);
                sb.append(CloudStorageConstants.OPERATION_AND);
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
                String extension = FilenameUtils.getExtension(filePath);
                Intrinsics.checkNotNullExpressionValue(extension, "getExtension(...)");
                String format = String.format("mimeType='%s'", Arrays.copyOf(new Object[]{fileExtensionUtils.mimeType(extension)}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                sb.append(format);
                return sb.toString();
            }
        });
    }
}
