package com.onyx.android.sdk.note.common.data.excerpt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, m61528d2 = {"toUpdateTextExcerptArgs", "Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;", "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;", "sdk-note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SaveExcerptArgsKt {
    @NotNull
    public static final UpdateTextExcerptShapeArgs toUpdateTextExcerptArgs(@NotNull SaveTextExcerptArgs saveTextExcerptArgs) {
        Intrinsics.checkNotNullParameter(saveTextExcerptArgs, "<this>");
        UpdateTextExcerptShapeArgs updateTextExcerptShapeArgs = new UpdateTextExcerptShapeArgs();
        updateTextExcerptShapeArgs.setQuote(saveTextExcerptArgs.getQuote());
        updateTextExcerptShapeArgs.setDisplayRectFList(saveTextExcerptArgs.getDisplayRectFList());
        updateTextExcerptShapeArgs.setStartPosition(saveTextExcerptArgs.getStartPosition());
        updateTextExcerptShapeArgs.setEndPosition(saveTextExcerptArgs.getEndPosition());
        updateTextExcerptShapeArgs.setWritingMode(saveTextExcerptArgs.getCom.sunia.HTREnginev2.gon.T java.lang.String());
        updateTextExcerptShapeArgs.setVirtualPageBoxInfo(saveTextExcerptArgs.getVirtualPageBoxInfo());
        return updateTextExcerptShapeArgs;
    }
}
