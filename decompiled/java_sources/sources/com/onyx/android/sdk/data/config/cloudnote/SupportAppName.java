package com.onyx.android.sdk.data.config.cloudnote;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import com.onyx.android.sdk.pay.constants.Constants;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/config/cloudnote/SupportAppName;", "", "()V", "ALI_YUN", "", "BAIDU_YUN", "DROP_BOX", "EMAIL", "EVER_NOTE", "GOOGLE_DRIVE", "HUAWEI_YUN", "JD_SHOP", "NETDISK_NAME", "NETDISK_PATH", "Ljava/io/File;", "getNETDISK_PATH", "()Ljava/io/File;", "NUT_STORE", "ONE_DRIVE", "ONE_NOTE", "ONYX", HwrRecognizerConstant.RECOGNIZER_UNKNOWN, "WEBDAV", Constants.PAY_TYPE_WECHAT, "YNote", "ZOTERO", "isNoteApp", "", "appName", "isThirdNoteApp", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SupportAppName {

    @NotNull
    public static final String ALI_YUN = "ali_yun";

    @NotNull
    public static final String BAIDU_YUN = "baidu_yun";

    @NotNull
    public static final String DROP_BOX = "dropbox";

    @NotNull
    public static final String EMAIL = "email";

    @NotNull
    public static final String EVER_NOTE = "evernote";

    @NotNull
    public static final String GOOGLE_DRIVE = "googledrive";

    @NotNull
    public static final String HUAWEI_YUN = "huawei_yun";

    @NotNull
    public static final String JD_SHOP = "jd_shop";

    @NotNull
    public static final String NETDISK_NAME = "NetDisk";

    @NotNull
    public static final String NUT_STORE = "nut_store";

    @NotNull
    public static final String ONE_DRIVE = "onedrive";

    @NotNull
    public static final String ONE_NOTE = "onenote";

    @NotNull
    public static final String ONYX = "onyx";

    @NotNull
    public static final String UNKNOWN = "unknown";

    @NotNull
    public static final String WEBDAV = "webdav";

    @NotNull
    public static final String WECHAT = "wechat";

    @NotNull
    public static final String YNote = "youdao";

    @NotNull
    public static final String ZOTERO = "zotero";

    @NotNull
    public static final SupportAppName INSTANCE = new SupportAppName();

    @Nullable
    private static final File NETDISK_PATH = ResManager.INSTANCE.getAppContext().getExternalFilesDir("NetDisk");

    private SupportAppName() {
    }

    @Nullable
    public final File getNETDISK_PATH() {
        return NETDISK_PATH;
    }

    public final boolean isNoteApp(@Nullable String appName) {
        if (appName == null || appName.length() == 0) {
            return false;
        }
        return Intrinsics.areEqual(appName, "onyx") || isThirdNoteApp(appName);
    }

    public final boolean isThirdNoteApp(@NotNull String appName) {
        Intrinsics.checkNotNullParameter(appName, "appName");
        return Intrinsics.areEqual(appName, "youdao") || Intrinsics.areEqual(appName, "evernote") || Intrinsics.areEqual(appName, "dropbox") || Intrinsics.areEqual(appName, "onenote") || Intrinsics.areEqual(appName, "baidu_yun") || Intrinsics.areEqual(appName, "googledrive") || Intrinsics.areEqual(appName, "onedrive") || Intrinsics.areEqual(appName, "nut_store") || Intrinsics.areEqual(appName, "webdav") || Intrinsics.areEqual(appName, "ali_yun") || Intrinsics.areEqual(appName, ZOTERO);
    }
}
