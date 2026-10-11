package com.onyx.galaxy.note.common.extension;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0004"}, m61528d2 = {"pageCountHint", "", "", "pageCountTips", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class IntExtKt {
    @NotNull
    public static final String pageCountHint(int i) {
        return ResManager.INSTANCE.getString(C10651R.string.input_note_page_number) + " 1-" + i;
    }

    @NotNull
    public static final String pageCountTips(int i) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(String.valueOf(ResManager.INSTANCE.getString(C10651R.string.input_note_correct_range_page_number)), Arrays.copyOf(new Object[]{1, Integer.valueOf(i)}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }
}
