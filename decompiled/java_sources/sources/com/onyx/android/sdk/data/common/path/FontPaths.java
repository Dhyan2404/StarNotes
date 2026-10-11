package com.onyx.android.sdk.data.common.path;

import com.onyx.android.sdk.base.utils.FileUtils;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/path/FontPaths;", "", "()V", "fileNameMap", "", "", "resolveLocalFont", "originFont", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FontPaths {

    @NotNull
    public static final FontPaths INSTANCE = new FontPaths();

    @NotNull
    private static final Map<String, String> fileNameMap;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        fileNameMap = linkedHashMap;
        linkedHashMap.put("明月流光", "DefaultFont");
    }

    private FontPaths() {
    }

    @Nullable
    public final String resolveLocalFont(@NotNull String originFont) {
        Intrinsics.checkNotNullParameter(originFont, "originFont");
        if (originFont.length() == 0) {
            return null;
        }
        try {
            String baseName = FilenameUtils.getBaseName(originFont);
            String str = fileNameMap.get(baseName);
            if (str != null) {
                baseName = str;
            }
            String extension = FilenameUtils.getExtension(originFont);
            FileUtils fileUtils = FileUtils.INSTANCE;
            String obj = AppPaths.INSTANCE.appFontDir().toAbsolutePath().toString();
            Intrinsics.checkNotNull(baseName);
            Intrinsics.checkNotNull(extension);
            return fileUtils.getFile(obj, baseName, extension);
        } catch (Exception unused) {
            return null;
        }
    }
}
