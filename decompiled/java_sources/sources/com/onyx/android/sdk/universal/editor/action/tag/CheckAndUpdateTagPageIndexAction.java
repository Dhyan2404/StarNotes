package com.onyx.android.sdk.universal.editor.action.tag;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.NotePageTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/tag/CheckAndUpdateTagPageIndexAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCheckAndUpdateTagPageIndexAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckAndUpdateTagPageIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/tag/CheckAndUpdateTagPageIndexAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1603#2,9:59\n1855#2:68\n1856#2:70\n1612#2:71\n1#3:69\n*S KotlinDebug\n*F\n+ 1 CheckAndUpdateTagPageIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/tag/CheckAndUpdateTagPageIndexAction\n*L\n43#1:59,9\n43#1:68\n43#1:70\n43#1:71\n43#1:69\n*E\n"})
/* loaded from: classes8.dex */
public final class CheckAndUpdateTagPageIndexAction extends RxBaseAppAction<CheckAndUpdateTagPageIndexAction> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CheckAndUpdateTagPageIndexAction$a */
    /* loaded from: classes8.dex */
    public static final class C10168a<T> implements Consumer {
        public C10168a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CheckAndUpdateTagPageIndexAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckAndUpdateTagPageIndexAction.this.m40356l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckAndUpdateTagPageIndexAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CheckAndUpdateTagPageIndexAction> create() {
        Observable<CheckAndUpdateTagPageIndexAction> doOnNext = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C10168a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final void m40356l() {
        VirtualDocPolicy virtualPolicy = getEditorBundle().getWorkBundle().getVirtualPolicy();
        NoteProvider userNoteProvider = KSyncBundle.INSTANCE.getUserNoteProvider();
        List<PageTagModel> loadPageTagList = NotePageTagProviderKt.loadPageTagList(userNoteProvider, NotePageTagProviderKt.createEnabledPageTagQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression("documentId", EditorBundleKt.docId(getEditorBundle()))));
        if (loadPageTagList.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (PageTagModel pageTagModel : loadPageTagList) {
            int pageIndex = pageTagModel.getPageIndex();
            int virtualPageIndex = virtualPolicy.getVirtualPageIndex(pageTagModel.getPageUniqueId());
            if (virtualPageIndex < 0 || pageIndex == virtualPageIndex) {
                pageTagModel = null;
            } else {
                pageTagModel.setPageIndex(virtualPageIndex);
            }
            if (pageTagModel != null) {
                arrayList.add(pageTagModel);
            }
        }
        if (!arrayList.isEmpty()) {
            NotePageTagProviderKt.savePageTagModels(userNoteProvider, arrayList);
        }
    }
}
