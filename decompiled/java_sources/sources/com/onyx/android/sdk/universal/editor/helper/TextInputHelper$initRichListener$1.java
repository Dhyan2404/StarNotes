package com.onyx.android.sdk.universal.editor.helper;

import com.onyx.android.sdk.textbox.data.TransformType;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.onyx.android.sdk.universal.editor.events.note.HideEditTextShapeSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.helper.TextInputHelper;
import com.onyx.android.sdk.universal.editor.helper.TextInputHelper$initRichListener$1;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, m61528d2 = {"com/onyx/android/sdk/universal/editor/helper/TextInputHelper$initRichListener$1", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;", "onTransformFinish", "", "type", "Lcom/onyx/android/sdk/textbox/data/TransformType;", "onTransformStart", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TextInputHelper$initRichListener$1 implements TextBoxView.OnTransformListener {

    /* renamed from: a */
    public final /* synthetic */ TextInputHelper f52503a;

    public TextInputHelper$initRichListener$1(TextInputHelper textInputHelper) {
        this.f52503a = textInputHelper;
    }

    /* renamed from: b */
    public static final void m41311b(TextInputHelper this$0, TransformType type) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(type, "$type");
        this$0.m41283M(type, false);
    }

    @Override // com.onyx.android.sdk.textbox.widget.TextBoxView.OnTransformListener
    public void onTransformFinish(@NotNull final TransformType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        TextBoxView textBoxView = this.f52503a.getTextBoxView();
        final TextInputHelper textInputHelper = this.f52503a;
        textBoxView.post(new Runnable() { // from class: com.sunia.HTREnginev2.edn
            @Override // java.lang.Runnable
            public final void run() {
                TextInputHelper$initRichListener$1.m41311b(TextInputHelper.this, type);
            }
        });
    }

    @Override // com.onyx.android.sdk.textbox.widget.TextBoxView.OnTransformListener
    public void onTransformStart(@NotNull TransformType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (this.f52503a.getTextBoxView().isReadOnly()) {
            EditorBundleKt.postEvent(this.f52503a.getEditorBundle(), new HideEditTextShapeSelectionMenuEvent());
        }
    }
}
