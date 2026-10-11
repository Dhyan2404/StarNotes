package com.onyx.android.sdk.data.couchbase.utils;

import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/utils/CouchDirUtils;", "", "()V", "KSYNC_COUCH_DATABASE_DIR_NAME", "", "getCouchDirPath", "getUserDocCountDir", "Ljava/nio/file/Path;", EditorConstants.ARGS_DOC_ID, Constant.TAG_USER_ID, "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CouchDirUtils {

    @NotNull
    public static final CouchDirUtils INSTANCE = new CouchDirUtils();

    @NotNull
    private static final String KSYNC_COUCH_DATABASE_DIR_NAME = "couch";

    private CouchDirUtils() {
    }

    public static /* synthetic */ Path getUserDocCountDir$default(CouchDirUtils couchDirUtils, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = AccountDataBundle.INSTANCE.getSyncUserId();
        }
        return couchDirUtils.getUserDocCountDir(str, str2);
    }

    @NotNull
    public final String getCouchDirPath() {
        Path path = Paths.get(AppFilePaths.INSTANCE.getFILES_PATH(), (String[]) Arrays.copyOf(new String[]{"couch"}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        Intrinsics.checkNotNullExpressionValue(Files.createDirectories(path, (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0)), "createDirectories(this, *attributes)");
        return path.toAbsolutePath().toString();
    }

    @NotNull
    public final Path getUserDocCountDir(@NotNull String docId, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Path path = Paths.get(getCouchDirPath(), (String[]) Arrays.copyOf(new String[]{userId, docId}, 2));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        return path;
    }
}
