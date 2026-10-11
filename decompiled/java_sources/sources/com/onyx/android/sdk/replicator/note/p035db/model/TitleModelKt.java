package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.base.utils.LocaleUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001¨\u0006\u0005"}, m61528d2 = {"getLocalTitle", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;", "defaultTitle", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TitleModelKt {
    @NotNull
    public static final String getLocalTitle(@NotNull List<TitleModel> list, @Nullable String str) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (list.isEmpty()) {
            return str == null ? "" : str;
        }
        String localMappingServiceLanguage = LocaleUtils.INSTANCE.getLocalMappingServiceLanguage();
        for (TitleModel titleModel : list) {
            if (Intrinsics.areEqual(titleModel.getLocale(), localMappingServiceLanguage)) {
                return titleModel.getValue();
            }
        }
        return str == null ? "" : str;
    }
}
