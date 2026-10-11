package com.onyx.galaxy.note.editor.action.export;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.SaveDocumentAction;
import com.onyx.android.sdk.universal.editor.action.doc.LoadNoteModelAction;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/export/LoadCurNoteExportArgsAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class LoadCurNoteExportArgsAction extends RxBaseAppAction<NoteExportArgs> {

    /* renamed from: com.onyx.galaxy.note.editor.action.export.LoadCurNoteExportArgsAction$a */
    /* loaded from: classes9.dex */
    public static final class C11919a<T, R> implements Function {
        public C11919a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadNoteModelAction apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadNoteModelAction(LoadCurNoteExportArgsAction.this.getEditorBundle(), EditorBundleKt.docId(LoadCurNoteExportArgsAction.this.getEditorBundle()));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.export.LoadCurNoteExportArgsAction$b */
    /* loaded from: classes9.dex */
    public static final class C11920b<T, R> implements Function {

        /* renamed from: e */
        public static final C11920b<T, R> f58318e = new C11920b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SyncNoteModel> apply(@NotNull LoadNoteModelAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.export.LoadCurNoteExportArgsAction$c */
    /* loaded from: classes9.dex */
    public static final class C11921c<T, R> implements Function {

        /* renamed from: e */
        public static final C11921c<T, R> f58319e = new C11921c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteExportArgs apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new NoteExportArgs(it2, new ArrayList(), null, false, 12, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadCurNoteExportArgsAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<NoteExportArgs> create() {
        SaveDocumentAction saveDocumentAction = new SaveDocumentAction(getEditorBundle());
        saveDocumentAction.setForceSave(true);
        Observable<NoteExportArgs> map = saveDocumentAction.build().map(new C11919a()).flatMap(C11920b.f58318e).map(C11921c.f58319e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
