package com.onyx.galaxy.note.common.extension;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.InsertPageFrom;
import com.onyx.android.sdk.data.InsertPageTo;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b\u001a*\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u00062\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r\u0018\u00010\f¨\u0006\u000e"}, m61528d2 = {"reportInsertPageEvent", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "targetPageIndex", "", "noteId", "", "from", "Lcom/onyx/android/sdk/data/InsertPageFrom;", "reportNoteEvent", "eventId", Constant.MAP_TAG, "", "", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nStatisticsExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatisticsExt.kt\ncom/onyx/galaxy/note/common/extension/StatisticsExtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,40:1\n1#2:41\n*E\n"})
/* loaded from: classes9.dex */
public final class StatisticsExtKt {
    public static final void reportInsertPageEvent(@NotNull EditorBundle editorBundle, int i, @NotNull String noteId, @NotNull InsertPageFrom from) {
        Map mutableMapOf;
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(noteId, "noteId");
        Intrinsics.checkNotNullParameter(from, "from");
        int currentPageIndex = i - EditorBundleKt.currentPageIndex(editorBundle);
        Pair[] pairArr = new Pair[3];
        String desc = (currentPageIndex != 0 ? currentPageIndex != 1 ? InsertPageTo.LAST : InsertPageTo.AFTER : InsertPageTo.BEFORE).getDesc();
        if (desc == null) {
            desc = "";
        }
        pairArr[0] = TuplesKt.m61535to(OnyxStatisticConstant.KEY_ADD_PAGE_TO, desc);
        String desc2 = from.getDesc();
        pairArr[1] = TuplesKt.m61535to(OnyxStatisticConstant.KEY_ADD_PAGE_FROM, desc2 != null ? desc2 : "");
        pairArr[2] = TuplesKt.m61535to(OnyxStatisticConstant.KEY_ADD_PAGE_NAME, noteId);
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(pairArr);
        reportNoteEvent(editorBundle, OnyxStatisticConstant.ID_NOTE_CLICK_ADD_PAGE_ADD, mutableMapOf);
    }

    public static final void reportNoteEvent(@NotNull EditorBundle editorBundle, @NotNull String eventId, @Nullable Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(editorBundle, "<this>");
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (map != null) {
            linkedHashMap.putAll(map);
        }
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(editorBundle));
        Debug.INSTANCE.m32035d(editorBundle.getClass(), eventId + ' ' + linkedHashMap, new Object[0]);
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    public static /* synthetic */ void reportNoteEvent$default(EditorBundle editorBundle, String str, Map map, int i, Object obj) {
        if ((i & 2) != 0) {
            map = null;
        }
        reportNoteEvent(editorBundle, str, map);
    }
}
