package com.onyx.android.sdk.filepicker;

import android.webkit.MimeTypeMap;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.utils.ConfigLoader;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J%\u0010\n\u001a\u00020\t2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\n\u0010\u000bJ\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\fJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0010\u001a\u00020\u000eR\u001d\u0010\u0015\u001a\u0004\u0018\u00010\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0012\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/FilePickerUtils;", "", "Ljava/io/File;", "file", "", "getFileExtension", "", "types", HuaweiYunQueryArgs.QUERY_PARENT_MIMETYPE, "", Keywords.FUNC_CONTAINS_STRING, "([Ljava/lang/String;Ljava/lang/String;)Z", "", "getSupportDocumentType", "", "importFontMaxCount", "importLocalBackupMaxCount", "Lcom/onyx/android/sdk/filepicker/FilePickerConfig;", "a", "Lkotlin/Lazy;", "()Lcom/onyx/android/sdk/filepicker/FilePickerConfig;", "filePickerConfig", Constants.CONSTRUCTOR_NAME, "()V", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class FilePickerUtils {

    @NotNull
    public static final FilePickerUtils INSTANCE = new FilePickerUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy filePickerConfig;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<FilePickerConfig>() { // from class: com.onyx.android.sdk.filepicker.FilePickerUtils$filePickerConfig$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final FilePickerConfig invoke() {
                return (FilePickerConfig) ConfigLoader.INSTANCE.load(FilePickerConfig.class, PickerFileConst.PICKER_FILE_CONFIG_RAW_NAME);
            }
        });
        filePickerConfig = lazy;
    }

    /* renamed from: a */
    public final FilePickerConfig m33078a() {
        return (FilePickerConfig) filePickerConfig.getValue();
    }

    public final boolean contains(@NotNull String[] types, @Nullable String mimeType) {
        Intrinsics.checkNotNullParameter(types, "types");
        for (String str : types) {
            if (Intrinsics.areEqual(MimeTypeMap.getSingleton().getMimeTypeFromExtension(str), mimeType)) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final String getFileExtension(@NotNull File file) {
        int lastIndexOf$default;
        Intrinsics.checkNotNullParameter(file, "file");
        String name = file.getName();
        try {
            Intrinsics.checkNotNull(name);
            lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) name, ".", 0, false, 6, (Object) null);
            String substring = name.substring(lastIndexOf$default + 1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            return substring;
        } catch (Exception unused) {
            return "";
        }
    }

    @NotNull
    public final List<String> getSupportDocumentType() {
        List<String> supportDocumentType;
        FilePickerConfig m33078a = m33078a();
        return (m33078a == null || (supportDocumentType = m33078a.getSupportDocumentType()) == null) ? new ArrayList() : supportDocumentType;
    }

    public final int importFontMaxCount() {
        FilePickerConfig m33078a = m33078a();
        if (m33078a != null) {
            return m33078a.getImportFontMaxCount();
        }
        return 1;
    }

    public final int importLocalBackupMaxCount() {
        FilePickerConfig m33078a = m33078a();
        if (m33078a != null) {
            return m33078a.getImportLocalBackupMaxCount();
        }
        return 1;
    }
}
