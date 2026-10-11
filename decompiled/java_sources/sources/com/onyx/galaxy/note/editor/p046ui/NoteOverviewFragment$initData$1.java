package com.onyx.galaxy.note.editor.p046ui;

import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.category.data.NotePageBean;
import com.onyx.galaxy.note.editor.view.adapter.NoteOverviewAdapter;
import com.onyx.galaxy.note.editor.viewmodel.NoteOverviewViewModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, m61528d2 = {"<anonymous>", "", OcrValues.LANG_ITALIAN, "", "Lcom/onyx/galaxy/note/category/data/NotePageBean;", "kotlin.jvm.PlatformType", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteOverviewFragment$initData$1 extends Lambda implements Function1<List<? extends NotePageBean>, Unit> {
    final /* synthetic */ NoteOverviewFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteOverviewFragment$initData$1(NoteOverviewFragment noteOverviewFragment) {
        super(1);
        this.this$0 = noteOverviewFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(NoteOverviewFragment this$0) {
        EditorBundle editorBundle;
        String str;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        editorBundle = this$0.editorBundle;
        if (editorBundle == null || (str = EditorBundleKt.docId(editorBundle)) == null) {
            str = "";
        }
        this$0.m46896X0(str);
        this$0.m46897y0();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends NotePageBean> list) {
        invoke2((List<NotePageBean>) list);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(List<NotePageBean> list) {
        NoteOverviewAdapter noteOverviewAdapter;
        NoteOverviewViewModel m46881B0;
        NoteOverviewAdapter noteOverviewAdapter2;
        EditorBundle editorBundle;
        NoteOverviewViewModel m46881B02;
        noteOverviewAdapter = this.this$0.adapter;
        m46881B0 = this.this$0.m46881B0();
        noteOverviewAdapter.setKeyword(m46881B0.getSearchKey());
        noteOverviewAdapter2 = this.this$0.adapter;
        final NoteOverviewFragment noteOverviewFragment = this.this$0;
        noteOverviewAdapter2.submitList(list, new Runnable() { // from class: com.onyx.galaxy.note.editor.ui.c
            @Override // java.lang.Runnable
            public final void run() {
                NoteOverviewFragment$initData$1.invoke$lambda$0(NoteOverviewFragment.this);
            }
        });
        editorBundle = this.this$0.editorBundle;
        if (editorBundle != null) {
            m46881B02 = this.this$0.m46881B0();
            m46881B02.loadNoteTabData(editorBundle);
        }
    }
}
