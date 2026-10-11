package com.onyx.android.sdk.data.common.data;

import android.os.Environment;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.galaxy.note.datarepository.constants.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b!\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0019\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00040\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\u0016\u001a\n \u0013*\u0004\u0018\u00010\u00040\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0019\u0010\u0018\u001a\n \u0013*\u0004\u0018\u00010\u00040\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R\u0019\u0010\u001a\u001a\n \u0013*\u0004\u0018\u00010\u00040\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0015R\u0019\u0010\u001c\u001a\n \u0013*\u0004\u0018\u00010\u00040\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0015R\u0019\u0010\u001e\u001a\n \u0013*\u0004\u0018\u00010\u00040\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0015R\u0019\u0010 \u001a\n \u0013*\u0004\u0018\u00010\u00040\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0015R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/FunctionKey;", "", "()V", "ACCOUNT_CONFIGURATIONS", "", "CHECK_IN", "CLEAR_IMPORT_CACHE_FILE", "COLOR", "FONT", "HWR", "HWR_RESOURCE", "HWR_SEARCH", "HWR_SMART", "INK_BEAUTIFY", "INK_BEAUTIFY_FONT_DOWNLOADED", SyncConstant.MESSAGE_DB_NAME, "NOTIFICATION", "PAGE_THUMBNAIL", "PUBLIC_DCIM", "kotlin.jvm.PlatformType", "getPUBLIC_DCIM", "()Ljava/lang/String;", "PUBLIC_DOCUMENT", "getPUBLIC_DOCUMENT", "PUBLIC_DOWNLOAD", "getPUBLIC_DOWNLOAD", "PUBLIC_MUSIC", "getPUBLIC_MUSIC", "PUBLIC_PICTURE", "getPUBLIC_PICTURE", "PUBLIC_SCREENSHOT", "getPUBLIC_SCREENSHOT", "PUBLIC_VIDEO", "getPUBLIC_VIDEO", Constants.RESOURCE_TYPE_STICKER, "TEMP", Constants.RESOURCE_TYPE_TEMPLATE, "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FunctionKey {

    @NotNull
    public static final String ACCOUNT_CONFIGURATIONS = "account_configurations";

    @NotNull
    public static final String CHECK_IN = "check_in";

    @NotNull
    public static final String CLEAR_IMPORT_CACHE_FILE = "clear_import_cache_file";

    @NotNull
    public static final String COLOR = "color";

    @NotNull
    public static final String FONT = "font";

    @NotNull
    public static final String HWR = "hwr";

    @NotNull
    public static final String HWR_RESOURCE = "hwr_resource";

    @NotNull
    public static final String HWR_SEARCH = "hwr_search";

    @NotNull
    public static final String HWR_SMART = "hwr_smart";

    @NotNull
    public static final String INK_BEAUTIFY = "ink_beautify";

    @NotNull
    public static final String INK_BEAUTIFY_FONT_DOWNLOADED = "ink_beautify_font_downloaded";

    @NotNull
    public static final String MESSAGE = "message";

    @NotNull
    public static final String NOTIFICATION = "notification";

    @NotNull
    public static final String PAGE_THUMBNAIL = "page_thumbnail";
    private static final String PUBLIC_DOCUMENT;
    private static final String PUBLIC_DOWNLOAD;
    private static final String PUBLIC_MUSIC;
    private static final String PUBLIC_SCREENSHOT;
    private static final String PUBLIC_VIDEO;

    @NotNull
    public static final String STICKER = "sticker";

    @NotNull
    public static final String TEMP = "temp";

    @NotNull
    public static final String TEMPLATE = "template";

    @NotNull
    public static final FunctionKey INSTANCE = new FunctionKey();
    private static final String PUBLIC_DCIM = Environment.DIRECTORY_DCIM;
    private static final String PUBLIC_PICTURE = Environment.DIRECTORY_PICTURES;

    static {
        PUBLIC_SCREENSHOT = BuildKt.isApiLevelAbove(29) ? Environment.DIRECTORY_SCREENSHOTS : Environment.DIRECTORY_PICTURES;
        PUBLIC_MUSIC = Environment.DIRECTORY_MUSIC;
        PUBLIC_VIDEO = Environment.DIRECTORY_MOVIES;
        PUBLIC_DOCUMENT = Environment.DIRECTORY_DOCUMENTS;
        PUBLIC_DOWNLOAD = Environment.DIRECTORY_DOWNLOADS;
    }

    private FunctionKey() {
    }

    public final String getPUBLIC_DCIM() {
        return PUBLIC_DCIM;
    }

    public final String getPUBLIC_DOCUMENT() {
        return PUBLIC_DOCUMENT;
    }

    public final String getPUBLIC_DOWNLOAD() {
        return PUBLIC_DOWNLOAD;
    }

    public final String getPUBLIC_MUSIC() {
        return PUBLIC_MUSIC;
    }

    public final String getPUBLIC_PICTURE() {
        return PUBLIC_PICTURE;
    }

    public final String getPUBLIC_SCREENSHOT() {
        return PUBLIC_SCREENSHOT;
    }

    public final String getPUBLIC_VIDEO() {
        return PUBLIC_VIDEO;
    }
}
