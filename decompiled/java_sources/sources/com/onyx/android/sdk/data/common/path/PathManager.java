package com.onyx.android.sdk.data.common.path;

import android.content.Context;
import android.os.Environment;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.data.DataScope;
import com.onyx.android.sdk.data.common.data.StorageLocation;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u0004J$\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u0004J8\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u0004J\u0006\u0010\u000e\u001a\u00020\u0004J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0010\u001a\u00020\u0004¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/path/PathManager;", "", "()V", "getAndCreateFile", "", "location", "Lcom/onyx/android/sdk/data/common/data/StorageLocation;", "scope", "Lcom/onyx/android/sdk/data/common/data/DataScope;", "func", "name", "ext", "getDirectory", "getFile", "getRandomCacheFile", "getRootDir", "funcKey", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PathManager {

    @NotNull
    public static final PathManager INSTANCE = new PathManager();

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[StorageLocation.values().length];
            try {
                iArr[StorageLocation.CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StorageLocation.PRIVATE_FILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StorageLocation.EXTERNAL_FILE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[StorageLocation.PUBLIC_FILE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[DataScope.values().length];
            try {
                iArr2[DataScope.APP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[DataScope.USER.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    private PathManager() {
    }

    public static /* synthetic */ String getAndCreateFile$default(PathManager pathManager, StorageLocation storageLocation, DataScope dataScope, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            storageLocation = StorageLocation.CACHE;
        }
        if ((i & 2) != 0) {
            dataScope = DataScope.APP;
        }
        DataScope dataScope2 = dataScope;
        if ((i & 4) != 0) {
            str = "temp";
        }
        String str4 = str;
        if ((i & 8) != 0) {
            str2 = UUIDUtils.INSTANCE.shortUUID();
        }
        String str5 = str2;
        if ((i & 16) != 0) {
            str3 = "";
        }
        return pathManager.getAndCreateFile(storageLocation, dataScope2, str4, str5, str3);
    }

    public static /* synthetic */ String getDirectory$default(PathManager pathManager, StorageLocation storageLocation, DataScope dataScope, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            storageLocation = StorageLocation.CACHE;
        }
        if ((i & 2) != 0) {
            dataScope = DataScope.APP;
        }
        if ((i & 4) != 0) {
            str = "temp";
        }
        return pathManager.getDirectory(storageLocation, dataScope, str);
    }

    public static /* synthetic */ String getFile$default(PathManager pathManager, StorageLocation storageLocation, DataScope dataScope, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            storageLocation = StorageLocation.CACHE;
        }
        if ((i & 2) != 0) {
            dataScope = DataScope.APP;
        }
        DataScope dataScope2 = dataScope;
        if ((i & 4) != 0) {
            str = "temp";
        }
        String str4 = str;
        if ((i & 8) != 0) {
            str2 = UUIDUtils.INSTANCE.shortUUID();
        }
        String str5 = str2;
        if ((i & 16) != 0) {
            str3 = "";
        }
        return pathManager.getFile(storageLocation, dataScope2, str4, str5, str3);
    }

    public static /* synthetic */ String getRootDir$default(PathManager pathManager, StorageLocation storageLocation, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        return pathManager.getRootDir(storageLocation, str);
    }

    @NotNull
    public final String getAndCreateFile(@NotNull StorageLocation location, @NotNull DataScope scope, @NotNull String func, @NotNull String name, @NotNull String ext) {
        Intrinsics.checkNotNullParameter(location, "location");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(func, "func");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(ext, "ext");
        String file = getFile(location, scope, func, name, ext);
        FileUtils.INSTANCE.ensureFileExists(file);
        return file;
    }

    @NotNull
    public final String getDirectory(@NotNull StorageLocation location, @NotNull DataScope scope, @NotNull String func) {
        String str;
        Intrinsics.checkNotNullParameter(location, "location");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(func, "func");
        String syncUserId = AccountDataBundle.INSTANCE.getSyncUserId();
        String rootDir = getRootDir(location, func);
        if (location == StorageLocation.PUBLIC_FILE) {
            return rootDir;
        }
        int i = WhenMappings.$EnumSwitchMapping$1[scope.ordinal()];
        if (i == 1) {
            str = scope.getDirName() + '/' + func;
        } else if (i != 2) {
            str = DataScope.OTHERS.getDirName() + '/' + scope + '/' + func;
        } else {
            str = scope.getDirName() + '/' + syncUserId + '/' + func;
        }
        Path path = Paths.get(rootDir, (String[]) Arrays.copyOf(new String[]{str}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        return path.toString();
    }

    @NotNull
    public final String getFile(@NotNull StorageLocation location, @NotNull DataScope scope, @NotNull String func, @NotNull String name, @NotNull String ext) {
        String trimEnd;
        Intrinsics.checkNotNullParameter(location, "location");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(func, "func");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(ext, "ext");
        String directory = getDirectory(location, scope, func);
        trimEnd = StringsKt__StringsKt.trimEnd(name + '.' + ext, '.');
        Path path = Paths.get(directory, (String[]) Arrays.copyOf(new String[]{trimEnd}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        return path.toString();
    }

    @NotNull
    public final String getRandomCacheFile() {
        return getFile$default(this, null, null, null, null, null, 31, null);
    }

    @NotNull
    public final String getRootDir(@NotNull StorageLocation location, @NotNull String funcKey) {
        String absolutePath;
        Intrinsics.checkNotNullParameter(location, "location");
        Intrinsics.checkNotNullParameter(funcKey, "funcKey");
        Context appContext = ResManager.INSTANCE.getAppContext();
        int i = WhenMappings.$EnumSwitchMapping$0[location.ordinal()];
        if (i == 1) {
            String absolutePath2 = appContext.getCacheDir().getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
            return absolutePath2;
        }
        if (i == 2) {
            String absolutePath3 = appContext.getFilesDir().getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath3, "getAbsolutePath(...)");
            return absolutePath3;
        }
        if (i == 3) {
            File externalFilesDir = appContext.getExternalFilesDir("");
            absolutePath = externalFilesDir != null ? externalFilesDir.getAbsolutePath() : null;
            if (absolutePath == null) {
                return "";
            }
        } else if (i != 4) {
            File externalFilesDir2 = appContext.getExternalFilesDir("");
            absolutePath = externalFilesDir2 != null ? externalFilesDir2.getAbsolutePath() : null;
            if (absolutePath == null) {
                return "";
            }
        } else {
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(funcKey);
            absolutePath = externalStoragePublicDirectory != null ? externalStoragePublicDirectory.getAbsolutePath() : null;
            if (absolutePath == null) {
                return "";
            }
        }
        return absolutePath;
    }
}
