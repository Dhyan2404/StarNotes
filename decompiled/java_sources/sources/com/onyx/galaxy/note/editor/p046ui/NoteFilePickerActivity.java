package com.onyx.galaxy.note.editor.p046ui;

import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.filepicker.DocumentBean;
import com.onyx.android.sdk.filepicker.FilePickerActivity;
import com.onyx.android.sdk.filepicker.PickerManager;
import com.onyx.android.sdk.p039ui.IFullScreenStyle;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.onyx.galaxy.note.category.action.p127import.CheckPdfPasswordAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.editor.view.popup.SelectFilePagesToInsertPagePopup;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0016\u0010\b\u001a\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/NoteFilePickerActivity;", "Lcom/onyx/android/sdk/filepicker/FilePickerActivity;", "Lcom/onyx/android/sdk/ui/IFullScreenStyle;", "", "resultBack", "", "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "resultList", "e0", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteFilePickerActivity extends FilePickerActivity implements IFullScreenStyle {

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteFilePickerActivity$a */
    /* loaded from: classes9.dex */
    public static final class C12195a<T> implements Predicate {

        /* renamed from: e */
        public static final C12195a<T> f59100e = new C12195a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.getResultList().isEmpty();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.ui.NoteFilePickerActivity$b */
    /* loaded from: classes9.dex */
    public static final class C12196b<T> implements Consumer {
        public C12196b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteFilePickerActivity.this.m46816e0(it2.getResultList());
        }
    }

    /* renamed from: e0 */
    public final void m46816e0(List<DocumentFileEntry> resultList) {
        Map<String, ? extends Object> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, 3004));
        mutableMapOf.put(OnyxStatisticConstant.KEY_DOCUMENT_AMOUNT, Integer.valueOf(resultList.size()));
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_PICK_FILE_FINISHED, mutableMapOf);
    }

    @Override // com.onyx.android.sdk.filepicker.FilePickerActivity
    public void resultBack() {
        Object firstOrNull;
        List listOf;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) PickerManager.INSTANCE.getSelectFile());
        DocumentBean documentBean = (DocumentBean) firstOrNull;
        if (documentBean == null) {
            return;
        }
        final int intExtra = getIntent().getIntExtra("args", -1);
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(documentBean);
        Observable<CheckPdfPasswordAction> doOnNext = new CheckPdfPasswordAction(docManagerBundle, listOf).setActivityContext(this).build().filter(C12195a.f59100e).doOnNext(new C12196b()).doOnNext(new Consumer() { // from class: com.onyx.galaxy.note.editor.ui.NoteFilePickerActivity$resultBack$3
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull CheckPdfPasswordAction it2) {
                Object firstOrNull2;
                Intrinsics.checkNotNullParameter(it2, "it");
                firstOrNull2 = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) it2.getResultList());
                DocumentFileEntry documentFileEntry = (DocumentFileEntry) firstOrNull2;
                if (documentFileEntry == null) {
                    return;
                }
                EditorBundle docManagerBundle2 = DocCollectionBundle.INSTANCE.docManagerBundle();
                final NoteFilePickerActivity noteFilePickerActivity = NoteFilePickerActivity.this;
                new SelectFilePagesToInsertPagePopup(null, docManagerBundle2, noteFilePickerActivity, documentFileEntry, intExtra, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteFilePickerActivity$resultBack$3.1
                    {
                        super(0);
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        NoteFilePickerActivity.this.finish();
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }
                }).show();
                PickerManager.INSTANCE.clearSelect();
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }
}
