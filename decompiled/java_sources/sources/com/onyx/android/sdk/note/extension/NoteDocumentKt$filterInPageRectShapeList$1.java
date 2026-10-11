package com.onyx.android.sdk.note.extension;

import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import java.util.Map;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m61528d2 = {"<anonymous>", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", OcrValues.LANG_ITALIAN, "", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteDocumentKt$filterInPageRectShapeList$1 extends Lambda implements Function1<String, NotePage> {
    final /* synthetic */ Map<String, NotePage> $notePageMap;
    final /* synthetic */ NoteDocument $this_filterInPageRectShapeList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteDocumentKt$filterInPageRectShapeList$1(Map<String, NotePage> map, NoteDocument noteDocument) {
        super(1);
        this.$notePageMap = map;
        this.$this_filterInPageRectShapeList = noteDocument;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NotePage invoke$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (NotePage) tmp0.invoke(obj);
    }

    @Override // kotlin.jvm.functions.Function1
    @Nullable
    public final NotePage invoke(@NotNull String it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        Map<String, NotePage> map = this.$notePageMap;
        final NoteDocument noteDocument = this.$this_filterInPageRectShapeList;
        final Function1<String, NotePage> function1 = new Function1<String, NotePage>() { // from class: com.onyx.android.sdk.note.extension.NoteDocumentKt$filterInPageRectShapeList$1.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final NotePage invoke(@NotNull String pageId) {
                Intrinsics.checkNotNullParameter(pageId, "pageId");
                return NoteDocNotePage.INSTANCE.getNotePage(NoteDocument.this, pageId);
            }
        };
        return map.computeIfAbsent(it2, new Function() { // from class: com.onyx.android.sdk.note.extension.a
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NotePage invoke$lambda$0;
                invoke$lambda$0 = NoteDocumentKt$filterInPageRectShapeList$1.invoke$lambda$0(Function1.this, obj);
                return invoke$lambda$0;
            }
        });
    }
}
