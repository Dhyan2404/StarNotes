package com.onyx.android.sdk.data.serverconvert;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.C7373R;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004J\u0010\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\u0004J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/DocConvertUtils;", "", "()V", "filterSuffix", "", HuaweiYunQueryArgs.FILE_NAME, "generateSaveDocName", "originFileName", "convertFileName", "getDocType", "filePath", "subSuffix", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nDocConvertUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocConvertUtils.kt\ncom/onyx/android/sdk/data/serverconvert/DocConvertUtils\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,31:1\n3792#2:32\n4307#2,2:33\n*S KotlinDebug\n*F\n+ 1 DocConvertUtils.kt\ncom/onyx/android/sdk/data/serverconvert/DocConvertUtils\n*L\n9#1:32\n9#1:33,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DocConvertUtils {

    @NotNull
    public static final DocConvertUtils INSTANCE = new DocConvertUtils();

    private DocConvertUtils() {
    }

    private final String filterSuffix(String fileName) {
        int lastIndexOf$default;
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) fileName, ".", 0, false, 6, (Object) null);
        String substring = fileName.substring(0, lastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    private final String subSuffix(String fileName) {
        int lastIndexOf$default;
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) fileName, ".", 0, false, 6, (Object) null);
        String substring = fileName.substring(lastIndexOf$default, fileName.length());
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    @NotNull
    public final String generateSaveDocName(@NotNull String originFileName, @NotNull String convertFileName) {
        Intrinsics.checkNotNullParameter(originFileName, "originFileName");
        Intrinsics.checkNotNullParameter(convertFileName, "convertFileName");
        return filterSuffix(originFileName) + subSuffix(convertFileName);
    }

    @Nullable
    public final String getDocType(@NotNull String filePath) {
        boolean endsWith;
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        String[] stringArray = ResManager.INSTANCE.getStringArray(C7373R.array.support_server_convert_types);
        ArrayList arrayList = new ArrayList();
        for (String str : stringArray) {
            endsWith = StringsKt__StringsJVMKt.endsWith(filePath, str, true);
            if (endsWith) {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            return (String) arrayList.get(0);
        }
        return null;
    }
}
