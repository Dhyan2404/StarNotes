package com.onyx.android.sdk.base.data.font;

import com.onyx.android.sdk.base.utils.FileUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004J\b\u0010\f\u001a\u0004\u0018\u00010\u0004J\b\u0010\r\u001a\u0004\u0018\u00010\u0004J\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006J\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004J\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004J\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0012\u001a\u00020\tJ\u0006\u0010\u0013\u001a\u00020\tJ\u0006\u0010\u0014\u001a\u00020\tJ\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0016\u001a\u00020\u00172\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u0018\u001a\u00020\u00172\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0019\u001a\u00020\u00172\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\u001a\u001a\u00020\u00172\b\u0010\n\u001a\u0004\u0018\u00010\u0004J\b\u0010\u001b\u001a\u00020\u0004H\u0016J\u0006\u0010\u001c\u001a\u00020\u0017R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/FontInfo;", "", "()V", "filePath", "", "fontType", "Lcom/onyx/android/sdk/base/data/font/FontType;", "id", "importFont", "", "name", "getFileBaseName", "getFilePath", "getFontName", "getFontType", "getFontTypeName", "getId", "getName", "isExist", "isImportFont", "isSystemFont", "setFilePath", "setFontType", "", "setId", "setImportFont", "setName", "toString", "useDefaultId", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FontInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final String DEFAULT_ID = "serif";

    @Nullable
    private String filePath;

    @Nullable
    private FontType fontType;

    @Nullable
    private String id;
    private boolean importFont;

    @Nullable
    private String name;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/FontInfo$Companion;", "", "()V", "DEFAULT_ID", "", "getDEFAULT_ID", "()Ljava/lang/String;", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getDEFAULT_ID() {
            return FontInfo.DEFAULT_ID;
        }

        private Companion() {
        }
    }

    @Nullable
    public final String getFileBaseName() {
        return FilenameUtils.getBaseName(this.filePath);
    }

    @Nullable
    public final String getFilePath() {
        return this.filePath;
    }

    @Nullable
    public final String getFontName() {
        String fileBaseName = getFileBaseName();
        return fileBaseName == null || fileBaseName.length() == 0 ? getName() : fileBaseName;
    }

    @Nullable
    public final FontType getFontType() {
        return this.fontType;
    }

    @Nullable
    public final String getFontTypeName() {
        if (getFontType() == null) {
            return null;
        }
        FontType fontType = getFontType();
        Intrinsics.checkNotNull(fontType);
        return fontType.name();
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    public final boolean isExist() {
        return FileUtils.INSTANCE.fileExist(this.id) || Intrinsics.areEqual(this.id, DEFAULT_ID);
    }

    /* renamed from: isImportFont, reason: from getter */
    public final boolean getImportFont() {
        return this.importFont;
    }

    public final boolean isSystemFont() {
        return this.fontType == FontType.SYSTEM || StringUtils.startsWith(this.filePath, "/system");
    }

    @NotNull
    public final FontInfo setFilePath(@Nullable String filePath) {
        this.filePath = filePath;
        return this;
    }

    public final void setFontType(@Nullable FontType fontType) {
        this.fontType = fontType;
    }

    public final void setId(@Nullable String id) {
        this.id = id;
    }

    public final void setImportFont(boolean importFont) {
        this.importFont = importFont;
    }

    public final void setName(@Nullable String name) {
        this.name = name;
    }

    @NotNull
    public String toString() {
        return "FontInfo{id='" + this.id + "', name='" + this.name + "', filePath='" + this.filePath + "', importFont=" + this.importFont + ", fontType=" + this.fontType + '}';
    }

    public final void useDefaultId() {
        setId(DEFAULT_ID);
    }
}
