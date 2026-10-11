package com.onyx.android.sdk.replicator.note.data.point;

import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.util.AbstractMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010&\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\u001a\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\n\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u000b\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\bJ\u001c\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u000e2\u0006\u0010\f\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentUtils;", "", "()V", "POINT_FILE_NAME_SEGMENT_COUNT", "", "getPointCountBreakValue", "pointCount", "getPointFileName", "", CouchFieldKey.KEY_PAGE_ID, CouchFieldKey.KEY_REVISION_ID, "parseRevisionId", HuaweiYunQueryArgs.FILE_NAME, "parseRevisionPageId", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nPointDocumentUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointDocumentUtils.kt\ncom/onyx/android/sdk/replicator/note/data/point/PointDocumentUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,45:1\n37#2,2:46\n37#2,2:48\n*S KotlinDebug\n*F\n+ 1 PointDocumentUtils.kt\ncom/onyx/android/sdk/replicator/note/data/point/PointDocumentUtils\n*L\n29#1:46,2\n36#1:48,2\n*E\n"})
/* loaded from: classes8.dex */
public final class PointDocumentUtils {

    @NotNull
    public static final PointDocumentUtils INSTANCE = new PointDocumentUtils();
    private static final int POINT_FILE_NAME_SEGMENT_COUNT = 3;

    private PointDocumentUtils() {
    }

    public final int getPointCountBreakValue(int pointCount) {
        int roundToInt;
        int coerceAtLeast;
        roundToInt = MathKt__MathJVMKt.roundToInt((NumberUtils.FLOAT_ONE.floatValue() * pointCount) / 20000);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(1, roundToInt);
        return coerceAtLeast;
    }

    @NotNull
    public final String getPointFileName(@Nullable String pageUniqueId, @Nullable String revisionId) {
        return pageUniqueId + '#' + revisionId + "#points";
    }

    @Nullable
    public final String parseRevisionId(@NotNull String fileName) {
        List split$default;
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        split$default = StringsKt__StringsKt.split$default((CharSequence) fileName, new String[]{"#"}, false, 0, 6, (Object) null);
        String[] strArr = (String[]) split$default.toArray(new String[0]);
        if (strArr.length != 3) {
            return null;
        }
        return strArr[1];
    }

    @Nullable
    public final Map.Entry<String, String> parseRevisionPageId(@NotNull String fileName) {
        List split$default;
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        split$default = StringsKt__StringsKt.split$default((CharSequence) fileName, new String[]{"#"}, false, 0, 6, (Object) null);
        String[] strArr = (String[]) split$default.toArray(new String[0]);
        if (strArr.length != 3) {
            return null;
        }
        return new AbstractMap.SimpleEntry(strArr[1], strArr[0]);
    }
}
