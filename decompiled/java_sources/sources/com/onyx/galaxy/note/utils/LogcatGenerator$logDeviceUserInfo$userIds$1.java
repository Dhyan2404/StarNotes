package com.onyx.galaxy.note.utils;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import java.io.File;
import java.io.FilenameFilter;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m61528d2 = {"<anonymous>", "", OcrValues.LANG_ITALIAN, "Ljava/io/File;", "kotlin.jvm.PlatformType", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class LogcatGenerator$logDeviceUserInfo$userIds$1 extends Lambda implements Function1<File, CharSequence> {
    public static final LogcatGenerator$logDeviceUserInfo$userIds$1 INSTANCE = new LogcatGenerator$logDeviceUserInfo$userIds$1();

    public LogcatGenerator$logDeviceUserInfo$userIds$1() {
        super(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean invoke$lambda$0(String str, File file, String str2) {
        boolean startsWith$default;
        Intrinsics.checkNotNull(str2);
        Intrinsics.checkNotNull(str);
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str2, str, false, 2, null);
        return !startsWith$default;
    }

    @Override // kotlin.jvm.functions.Function1
    @NotNull
    public final CharSequence invoke(File file) {
        final String name = file.getName();
        return name + ':' + CollectionKt.getSize(file.listFiles(new FilenameFilter() { // from class: com.onyx.galaxy.note.utils.a
            @Override // java.io.FilenameFilter
            public final boolean accept(File file2, String str) {
                boolean invoke$lambda$0;
                invoke$lambda$0 = LogcatGenerator$logDeviceUserInfo$userIds$1.invoke$lambda$0(name, file2, str);
                return invoke$lambda$0;
            }
        }));
    }
}
