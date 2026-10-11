package com.onyx.galaxy.note.editor.view.toolbar;

import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m61528d2 = {"<anonymous>", "", OcrValues.LANG_ITALIAN, "", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ShapeAndToolContainer$setViewDragCallback$1$onViewMaxReleased$1 extends Lambda implements Function1<Long, Unit> {
    final /* synthetic */ EditorBundle $editorBundle;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShapeAndToolContainer$setViewDragCallback$1$onViewMaxReleased$1(EditorBundle editorBundle) {
        super(1);
        this.$editorBundle = editorBundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "$editorBundle");
        editorBundle.getUiBundle().getUiStateInfo().setDragAppendingPage(false);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
        invoke(l.longValue());
        return Unit.INSTANCE;
    }

    public final void invoke(long j) {
        Observable<?> appendPage = EditorBundleKt.appendPage(this.$editorBundle);
        final EditorBundle editorBundle = this.$editorBundle;
        Observable<?> doFinally = appendPage.doFinally(new Action() { // from class: com.onyx.galaxy.note.editor.view.toolbar.a
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ShapeAndToolContainer$setViewDragCallback$1$onViewMaxReleased$1.invoke$lambda$0(EditorBundle.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        RxjavaKt.subscribeWithDefault$default(doFinally, null, null, null, 7, null);
    }
}
