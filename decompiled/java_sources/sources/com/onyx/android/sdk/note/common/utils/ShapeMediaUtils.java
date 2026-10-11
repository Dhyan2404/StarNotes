package com.onyx.android.sdk.note.common.utils;

import com.google.android.exoplayer2.util.FileTypes;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeMediaUtils;", "", "()V", "isSupportMediaFile", "", HuaweiYunQueryArgs.FILE_NAME, "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeMediaUtils {

    @NotNull
    public static final ShapeMediaUtils INSTANCE = new ShapeMediaUtils();

    public final boolean isSupportMediaFile(@NotNull String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        String lowerCase = fileName.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return StringUtils.endsWithIgnoreCase(lowerCase, FileTypes.f28338y) || StringUtils.endsWithIgnoreCase(lowerCase, FileTypes.f28321h) || StringUtils.endsWithIgnoreCase(lowerCase, ".mp3") || StringUtils.endsWithIgnoreCase(lowerCase, ".m4a");
    }
}
