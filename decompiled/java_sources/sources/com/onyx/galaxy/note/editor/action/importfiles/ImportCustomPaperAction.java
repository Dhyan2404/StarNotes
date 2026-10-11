package com.onyx.galaxy.note.editor.action.importfiles;

import android.app.Activity;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.filepicker.DocumentBean;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.onyx.galaxy.note.category.action.p127import.CheckPdfPasswordAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.TemplateDisplayType;
import com.onyx.galaxy.note.category.event.HandleCustomPaperDocumentsEvent;
import com.onyx.galaxy.note.category.view.popup.CustomTemplatePopupWindow;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B3\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0004\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001d\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00048\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/importfiles/ImportCustomPaperAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "resultList", "", "l", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "e", "Ljava/lang/ref/WeakReference;", "activityWeakReference", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", C6997f.f39671c, "Ljava/util/List;", "getFiles", "()Ljava/util/List;", "files", "", C6998g.f39679a, "I", "type", "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;", C6999h.f39688c, "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;", "templateDisplayType", Constants.CONSTRUCTOR_NAME, "(Ljava/lang/ref/WeakReference;Ljava/util/List;ILcom/onyx/galaxy/note/category/data/TemplateDisplayType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ImportCustomPaperAction extends RxBaseAction<ImportCustomPaperAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final WeakReference<Activity> activityWeakReference;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<DocumentBean> files;

    /* renamed from: g, reason: from kotlin metadata */
    public final int type;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final TemplateDisplayType templateDisplayType;

    /* renamed from: com.onyx.galaxy.note.editor.action.importfiles.ImportCustomPaperAction$a */
    /* loaded from: classes9.dex */
    public static final class C11934a<T> implements Predicate {

        /* renamed from: e */
        public static final C11934a<T> f58348e = new C11934a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.getResultList().isEmpty();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.importfiles.ImportCustomPaperAction$b */
    /* loaded from: classes9.dex */
    public static final class C11935b<T> implements Consumer {
        public C11935b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImportCustomPaperAction.this.m45869l(it2.getResultList());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.importfiles.ImportCustomPaperAction$c */
    /* loaded from: classes9.dex */
    public static final class C11936c<T> implements Consumer {
        public C11936c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocCollectionBundle.INSTANCE.postEvent(new HandleCustomPaperDocumentsEvent(it2.getResultList(), ImportCustomPaperAction.this.activityWeakReference));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.importfiles.ImportCustomPaperAction$d */
    /* loaded from: classes9.dex */
    public static final class C11937d<T, R> implements Function {
        public C11937d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ImportCustomPaperAction apply(@NotNull CheckPdfPasswordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ImportCustomPaperAction.this;
        }
    }

    public ImportCustomPaperAction(@NotNull WeakReference<Activity> activityWeakReference, @NotNull List<DocumentBean> files, int i, @NotNull TemplateDisplayType templateDisplayType) {
        Intrinsics.checkNotNullParameter(activityWeakReference, "activityWeakReference");
        Intrinsics.checkNotNullParameter(files, "files");
        Intrinsics.checkNotNullParameter(templateDisplayType, "templateDisplayType");
        this.activityWeakReference = activityWeakReference;
        this.files = files;
        this.type = i;
        this.templateDisplayType = templateDisplayType;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ImportCustomPaperAction> create() {
        Activity activity = this.activityWeakReference.get();
        if (activity == null) {
            Observable<ImportCustomPaperAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = new CheckPdfPasswordAction(DocCollectionBundle.INSTANCE.docManagerBundle(), this.files).setActivityContext(activity).build().filter(C11934a.f58348e).doOnNext(new C11935b()).doOnNext(new C11936c()).map(new C11937d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<DocumentBean> getFiles() {
        return this.files;
    }

    /* renamed from: l */
    public final void m45869l(List<DocumentFileEntry> resultList) {
        Map<String, ? extends Object> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(CustomTemplatePopupWindow.INSTANCE.getTriggerFrom(this.type, this.templateDisplayType))));
        mutableMapOf.put(OnyxStatisticConstant.KEY_DOCUMENT_AMOUNT, Integer.valueOf(resultList.size()));
        StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_PICK_FILE_FINISHED, mutableMapOf);
    }
}
