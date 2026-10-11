package com.onyx.android.sdk.neohwr.fontmgr;

import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.path.AppPaths;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.data.utils.StringOption;
import com.onyx.android.sdk.neohwr.C7482R;
import java.io.File;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0004R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0006R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;", "", "()V", "DEFAULT_FONT_ASSET", "", "getDEFAULT_FONT_ASSET", "()Ljava/lang/String;", "DEFAULT_FONT_NAME", "getDEFAULT_FONT_NAME", "DEFAULT_FONT_THUMBNAIL_CONTENT", "getDEFAULT_FONT_THUMBNAIL_CONTENT", "DEFAULT_FONT_THUMBNAIL_TEXTBOX", "getDEFAULT_FONT_THUMBNAIL_TEXTBOX", "DEFAULT_FONT_THUMBNAIL_TITLE", "getDEFAULT_FONT_THUMBNAIL_TITLE", "KEY_FONT_PATH", "fontPath", "options", "Lcom/onyx/android/sdk/data/utils/StringOption;", "ensureDefaultFontPath", "getFontPath", "setFontPath", "", "path", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FontConfig {

    @NotNull
    private static final String DEFAULT_FONT_ASSET;

    @NotNull
    private static final String DEFAULT_FONT_NAME;

    @NotNull
    private static final String DEFAULT_FONT_THUMBNAIL_CONTENT;

    @NotNull
    private static final String DEFAULT_FONT_THUMBNAIL_TEXTBOX;

    @NotNull
    private static final String DEFAULT_FONT_THUMBNAIL_TITLE;

    @NotNull
    private static final String KEY_FONT_PATH;

    @NotNull
    private static final StringOption options;

    @NotNull
    public static final FontConfig INSTANCE = new FontConfig();

    @NotNull
    private static volatile String fontPath = "";

    static {
        ResManager resManager = ResManager.INSTANCE;
        DEFAULT_FONT_NAME = resManager.getStringSafely(C7482R.string.hwr_default_font_name);
        DEFAULT_FONT_ASSET = resManager.getStringSafely(C7482R.string.hwr_default_font_asset);
        DEFAULT_FONT_THUMBNAIL_TEXTBOX = resManager.getStringSafely(C7482R.string.hwr_default_font_thumbnail_textbox);
        DEFAULT_FONT_THUMBNAIL_TITLE = resManager.getStringSafely(C7482R.string.hwr_default_font_thumbnail_title);
        DEFAULT_FONT_THUMBNAIL_CONTENT = resManager.getStringSafely(C7482R.string.hwr_default_font_thumbnail_content);
        KEY_FONT_PATH = "InkBeautifyFont";
        options = new StringOption(MMKVUtils.INSTANCE.get(), "InkBeautifyFont", null, 4, null);
    }

    private FontConfig() {
    }

    @NotNull
    public final String ensureDefaultFontPath() {
        File file = new File(AppPaths.INSTANCE.appFontDir().toAbsolutePath().toString(), DEFAULT_FONT_NAME);
        if (!file.exists()) {
            InputStream open = ResManager.INSTANCE.getAppContext().getAssets().open(DEFAULT_FONT_ASSET);
            Intrinsics.checkNotNullExpressionValue(open, "open(...)");
            FileUtils.INSTANCE.copyInputStreamToFile(open, file);
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @NotNull
    public final String getDEFAULT_FONT_ASSET() {
        return DEFAULT_FONT_ASSET;
    }

    @NotNull
    public final String getDEFAULT_FONT_NAME() {
        return DEFAULT_FONT_NAME;
    }

    @NotNull
    public final String getDEFAULT_FONT_THUMBNAIL_CONTENT() {
        return DEFAULT_FONT_THUMBNAIL_CONTENT;
    }

    @NotNull
    public final String getDEFAULT_FONT_THUMBNAIL_TEXTBOX() {
        return DEFAULT_FONT_THUMBNAIL_TEXTBOX;
    }

    @NotNull
    public final String getDEFAULT_FONT_THUMBNAIL_TITLE() {
        return DEFAULT_FONT_THUMBNAIL_TITLE;
    }

    @NotNull
    public final String getFontPath() {
        boolean isBlank;
        boolean isBlank2;
        isBlank = StringsKt__StringsJVMKt.isBlank(fontPath);
        if ((!isBlank) && new File(fontPath).exists()) {
            return fontPath;
        }
        String str = options.get();
        if (str == null) {
            str = "";
        }
        isBlank2 = StringsKt__StringsJVMKt.isBlank(str);
        return ((isBlank2 ^ true) && FileUtils.INSTANCE.fileExist(str)) ? str : ensureDefaultFontPath();
    }

    public final void setFontPath(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (FileUtils.INSTANCE.fileExist(path)) {
            fontPath = path;
            options.put(path);
        }
    }
}
