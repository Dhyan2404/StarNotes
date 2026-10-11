package com.onyx.android.sdk.universal.editor.api;

import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.universal.editor.action.SaveDocumentAction;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m61528d2 = {"<anonymous>", "Lio/reactivex/rxjava3/core/Observable;", "", OcrValues.LANG_ITALIAN, "Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class DocListManagerApiSubscriber$activateDocument$2 extends Lambda implements Function1<DocListManagerApiSubscriber, Observable<? extends Object>> {
    final /* synthetic */ String $docId;
    final /* synthetic */ DocListManagerApiSubscriber this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DocListManagerApiSubscriber$activateDocument$2(DocListManagerApiSubscriber docListManagerApiSubscriber, String str) {
        super(1);
        this.this$0 = docListManagerApiSubscriber;
        this.$docId = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(DocListManagerApiSubscriber this$0, String docId, SaveDocumentAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(docId, "$docId");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m40569e(docId);
    }

    @Override // kotlin.jvm.functions.Function1
    @NotNull
    public final Observable<? extends Object> invoke(@NotNull DocListManagerApiSubscriber it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        Observable<SaveDocumentAction> build = new SaveDocumentAction(this.this$0.getEditorBundle()).build();
        C102961 c102961 = new Function1<SaveDocumentAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.api.DocListManagerApiSubscriber$activateDocument$2.1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SaveDocumentAction it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return Boolean.valueOf(it3.getIsDirty());
            }
        };
        final DocListManagerApiSubscriber docListManagerApiSubscriber = this.this$0;
        final String str = this.$docId;
        return RxjavaKt.doOnNextIf(build, c102961, new Consumer() { // from class: com.onyx.android.sdk.universal.editor.api.a
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                DocListManagerApiSubscriber$activateDocument$2.invoke$lambda$0(DocListManagerApiSubscriber.this, str, (SaveDocumentAction) obj);
            }
        });
    }
}
