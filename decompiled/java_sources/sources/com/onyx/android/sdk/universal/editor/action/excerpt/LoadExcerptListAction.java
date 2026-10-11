package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteExcerptProviderKt;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.LoadExcerptListAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u0010\u0010\u0011J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J$\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "data", GoogleApiAvailabilityLight.f29016b, "", C6999h.f39688c, Constants.STRING_SIG, "getKeyword", "()Ljava/lang/String;", "keyword", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadExcerptListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadExcerptListAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n766#2:66\n857#2,2:67\n1855#2,2:69\n766#2:71\n857#2,2:72\n1855#2,2:74\n1855#2,2:76\n2634#2:78\n1#3:79\n*S KotlinDebug\n*F\n+ 1 LoadExcerptListAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptListAction\n*L\n43#1:66\n43#1:67,2\n47#1:69,2\n50#1:71\n50#1:72,2\n51#1:74,2\n52#1:76,2\n62#1:78\n62#1:79\n*E\n"})
/* loaded from: classes8.dex */
public final class LoadExcerptListAction extends RxBaseAppAction<List<? extends ExcerptInfoBean>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String keyword;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadExcerptListAction(@NotNull EditorBundle editorBundle, @NotNull String keyword) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        this.keyword = keyword;
    }

    /* renamed from: m */
    public static final void m37839m(LoadExcerptListAction this$0, List it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        RxBaseAction.execute$default(new SaveExcerptOrderedListAction(this$0.getEditorBundle(), it2), null, null, null, 7, null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<ExcerptInfoBean>> create() {
        return RxjavaKt.doOnNextIf(DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, List<? extends ExcerptInfoBean>>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.LoadExcerptListAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<ExcerptInfoBean> invoke(@NotNull NoteBundle it2) {
                List<ExcerptInfoBean> m37840n;
                Intrinsics.checkNotNullParameter(it2, "it");
                List<ExcerptInfoBean> loadExcerptList = NoteExcerptProviderKt.loadExcerptList(it2.getNoteDoc(), LoadExcerptListAction.this.getKeyword());
                LoadExcerptListAction loadExcerptListAction = LoadExcerptListAction.this;
                m37840n = loadExcerptListAction.m37840n(loadExcerptListAction.getEditorBundle(), loadExcerptList);
                return m37840n;
            }
        }), new Function1<List<? extends ExcerptInfoBean>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.LoadExcerptListAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends ExcerptInfoBean> list) {
                return invoke2((List<ExcerptInfoBean>) list);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<ExcerptInfoBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(EditorBundleKt.getUiFeature(LoadExcerptListAction.this.getEditorBundle()).supportMultiPage() && CollectionKt.contains(it2, new Function1<ExcerptInfoBean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.LoadExcerptListAction$create$2.1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull ExcerptInfoBean it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        return Boolean.valueOf(it3.getOrderIndex() < 0.0f);
                    }
                }));
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.xzi
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                LoadExcerptListAction.m37839m(LoadExcerptListAction.this, (List) obj);
            }
        });
    }

    @NotNull
    public final String getKeyword() {
        return this.keyword;
    }

    /* renamed from: n */
    public final List<ExcerptInfoBean> m37840n(EditorBundle editorBundle, List<ExcerptInfoBean> data) {
        List<ExcerptInfoBean> mutableList;
        int i;
        if (!EditorBundleKt.getUiFeature(editorBundle).supportMultiPage()) {
            return data;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = data.iterator();
        while (true) {
            boolean z = false;
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            ExcerptInfoBean excerptInfoBean = (ExcerptInfoBean) next;
            if (excerptInfoBean.getOrderIndex() >= 0.0f || (excerptInfoBean.getOrderIndex() < 0.0f && excerptInfoBean.getPageIndex() < 0)) {
                z = true;
            }
            if (z) {
                arrayList.add(next);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        VirtualDocPolicy virtualPolicy = editorBundle.getWorkBundle().getVirtualPolicy();
        if (mutableList.size() == data.size()) {
            for (ExcerptInfoBean excerptInfoBean2 : data) {
                excerptInfoBean2.setPageIndex(virtualPolicy.getVirtualPageIndex(excerptInfoBean2.getPageUniqueId()));
            }
            return data;
        }
        List<ExcerptInfoBean> list = data;
        ArrayList<ExcerptInfoBean> arrayList2 = new ArrayList();
        for (Object obj : list) {
            ExcerptInfoBean excerptInfoBean3 = (ExcerptInfoBean) obj;
            if (excerptInfoBean3.getOrderIndex() < 0.0f && excerptInfoBean3.getPageIndex() >= 0) {
                arrayList2.add(obj);
            }
        }
        for (ExcerptInfoBean excerptInfoBean4 : list) {
            excerptInfoBean4.setPageIndex(virtualPolicy.getVirtualPageIndex(excerptInfoBean4.getPageUniqueId()));
        }
        for (ExcerptInfoBean excerptInfoBean5 : arrayList2) {
            int size = mutableList.size() - 1;
            while (true) {
                if (-1 >= size) {
                    i = 0;
                    break;
                }
                if (mutableList.get(size).getPageIndex() <= excerptInfoBean5.getPageIndex()) {
                    i = size + 1;
                    break;
                }
                size--;
            }
            mutableList.add(i, excerptInfoBean5);
        }
        Iterator<T> it3 = mutableList.iterator();
        while (it3.hasNext()) {
            ((ExcerptInfoBean) it3.next()).resetOrderIndex();
        }
        return mutableList;
    }
}
