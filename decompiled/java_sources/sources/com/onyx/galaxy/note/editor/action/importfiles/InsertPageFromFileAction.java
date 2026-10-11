package com.onyx.galaxy.note.editor.action.importfiles;

import android.app.Activity;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.filepicker.DocumentBean;
import com.onyx.android.sdk.filepicker.PickerManager;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.onyx.galaxy.note.category.action.p127import.CheckPdfPasswordAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.editor.view.popup.SelectFilePagesToInsertPagePopup;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.lang.ref.WeakReference;
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

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B3\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0004\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001d\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00048\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "resultList", "", "l", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "e", "Ljava/lang/ref/WeakReference;", "activityWeakReference", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", C6997f.f39671c, "Ljava/util/List;", "getFiles", "()Ljava/util/List;", "files", "", C6998g.f39679a, "I", "insertPageIndex", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "needFinish", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/ref/WeakReference;Ljava/util/List;IZ)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class InsertPageFromFileAction extends RxBaseAction<InsertPageFromFileAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final WeakReference<Activity> activityWeakReference;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<DocumentBean> files;

    /* renamed from: g, reason: from kotlin metadata */
    public final int insertPageIndex;

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean needFinish;

    /* renamed from: com.onyx.galaxy.note.editor.action.importfiles.InsertPageFromFileAction$a */
    /* loaded from: classes9.dex */
    public static final class C11938a<T> implements Predicate {

        /* renamed from: e */
        public static final C11938a<T> f58356e = new C11938a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.getResultList().isEmpty();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.importfiles.InsertPageFromFileAction$b */
    /* loaded from: classes9.dex */
    public static final class C11939b<T> implements Consumer {
        public C11939b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertPageFromFileAction.this.m45874l(it2.getResultList());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.importfiles.InsertPageFromFileAction$c */
    /* loaded from: classes9.dex */
    public static final class C11940c<T, R> implements Function {
        public C11940c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertPageFromFileAction apply(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPageFromFileAction.this;
        }
    }

    public InsertPageFromFileAction(@NotNull WeakReference<Activity> activityWeakReference, @NotNull List<DocumentBean> files, int i, boolean z) {
        Intrinsics.checkNotNullParameter(activityWeakReference, "activityWeakReference");
        Intrinsics.checkNotNullParameter(files, "files");
        this.activityWeakReference = activityWeakReference;
        this.files = files;
        this.insertPageIndex = i;
        this.needFinish = z;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<InsertPageFromFileAction> create() {
        Object firstOrNull;
        List listOf;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.files);
        DocumentBean documentBean = (DocumentBean) firstOrNull;
        if (documentBean == null) {
            Observable<InsertPageFromFileAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final Activity activity = this.activityWeakReference.get();
        if (activity == null) {
            Observable<InsertPageFromFileAction> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        EditorBundle docManagerBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(documentBean);
        Observable map = new CheckPdfPasswordAction(docManagerBundle, listOf).setActivityContext(activity).build().filter(C11938a.f58356e).doOnNext(new C11939b()).doOnNext(new Consumer() { // from class: com.onyx.galaxy.note.editor.action.importfiles.InsertPageFromFileAction$create$3
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull CheckPdfPasswordAction it2) {
                Object firstOrNull2;
                int i;
                Intrinsics.checkNotNullParameter(it2, "it");
                firstOrNull2 = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) it2.getResultList());
                DocumentFileEntry documentFileEntry = (DocumentFileEntry) firstOrNull2;
                if (documentFileEntry == null) {
                    return;
                }
                EditorBundle docManagerBundle2 = DocCollectionBundle.INSTANCE.docManagerBundle();
                Activity activity2 = activity;
                i = this.insertPageIndex;
                final InsertPageFromFileAction insertPageFromFileAction = this;
                new SelectFilePagesToInsertPagePopup(null, docManagerBundle2, activity2, documentFileEntry, i, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.action.importfiles.InsertPageFromFileAction$create$3.1
                    {
                        super(0);
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        boolean z;
                        WeakReference weakReference;
                        z = InsertPageFromFileAction.this.needFinish;
                        if (z) {
                            weakReference = InsertPageFromFileAction.this.activityWeakReference;
                            Activity activity3 = (Activity) weakReference.get();
                            if (activity3 != null) {
                                activity3.finish();
                            }
                        }
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }
                }).show();
                PickerManager.INSTANCE.clearSelect();
            }
        }).map(new C11940c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<DocumentBean> getFiles() {
        return this.files;
    }

    /* renamed from: l */
    public final void m45874l(List<DocumentFileEntry> resultList) {
        Map<String, ? extends Object> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, 3004));
        mutableMapOf.put(OnyxStatisticConstant.KEY_DOCUMENT_AMOUNT, Integer.valueOf(resultList.size()));
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_PICK_FILE_FINISHED, mutableMapOf);
    }
}
