package com.onyx.android.sdk.universal.editor.action;

import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.note.request.OpenNoteDocumentRequest;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(m61527d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m61528d2 = {"<anonymous>", "", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class OpenDocumentAction$openNoteDocument$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ OpenDocumentAction this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenDocumentAction$openNoteDocument$1(OpenDocumentAction openDocumentAction) {
        super(0);
        this.this$0 = openDocumentAction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(OpenDocumentAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.updateUiDrawingArgs(this$0.getEditorBundle());
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        OpenNoteDocumentRequest openNoteDocumentRequest = new OpenNoteDocumentRequest(EditorBundleKt.noteBundle(this.this$0.getEditorBundle()));
        openNoteDocumentRequest.setNoteDocBean(this.this$0.getOpenDocArgs().toNoteDocBean());
        openNoteDocumentRequest.execute2();
        final OpenDocumentAction openDocumentAction = this.this$0;
        RxjavaKt.runInUI(new Runnable() { // from class: com.onyx.android.sdk.universal.editor.action.c
            @Override // java.lang.Runnable
            public final void run() {
                OpenDocumentAction$openNoteDocument$1.invoke$lambda$0(OpenDocumentAction.this);
            }
        });
    }
}
