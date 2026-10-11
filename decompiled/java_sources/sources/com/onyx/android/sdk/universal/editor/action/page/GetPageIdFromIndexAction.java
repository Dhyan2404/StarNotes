package com.onyx.android.sdk.universal.editor.action.page;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/GetPageIdFromIndexAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6999h.f39688c, "Ljava/util/List;", "pageIndexList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGetPageIdFromIndexAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetPageIdFromIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/GetPageIdFromIndexAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,36:1\n1855#2,2:37\n*S KotlinDebug\n*F\n+ 1 GetPageIdFromIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/GetPageIdFromIndexAction\n*L\n29#1:37,2\n*E\n"})
/* loaded from: classes8.dex */
public final class GetPageIdFromIndexAction extends RxBaseAppAction<List<? extends String>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> pageIndexList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.GetPageIdFromIndexAction$a */
    /* loaded from: classes8.dex */
    public static final class C9667a<T, R> implements Function {
        public C9667a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull GetPageIdFromIndexAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GetPageIdFromIndexAction.this.m39462l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetPageIdFromIndexAction(@NotNull EditorBundle editorBundle, @NotNull List<Integer> pageIndexList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageIndexList, "pageIndexList");
        this.pageIndexList = pageIndexList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<String>> create() {
        Observable<List<String>> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C9667a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<String> m39462l() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.pageIndexList.iterator();
        while (it2.hasNext()) {
            VirtualPage virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(((Number) it2.next()).intValue());
            if (virtualPage != null) {
                CollectionKt.safeAdd(arrayList, virtualPage.getBox().getId());
            }
        }
        return arrayList;
    }
}
