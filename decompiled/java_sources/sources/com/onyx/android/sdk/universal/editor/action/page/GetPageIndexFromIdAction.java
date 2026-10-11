package com.onyx.android.sdk.universal.editor.action.page;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
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

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/GetPageIndexFromIdAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6999h.f39688c, "Ljava/util/List;", "pageIdList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGetPageIndexFromIdAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetPageIndexFromIdAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/GetPageIndexFromIdAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n1855#2,2:38\n*S KotlinDebug\n*F\n+ 1 GetPageIndexFromIdAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/GetPageIndexFromIdAction\n*L\n29#1:38,2\n*E\n"})
/* loaded from: classes8.dex */
public final class GetPageIndexFromIdAction extends RxBaseAppAction<List<? extends Integer>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> pageIdList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.GetPageIndexFromIdAction$a */
    /* loaded from: classes8.dex */
    public static final class C9668a<T, R> implements Function {
        public C9668a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Integer> apply(@NotNull GetPageIndexFromIdAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GetPageIndexFromIdAction.this.m39464l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetPageIndexFromIdAction(@NotNull EditorBundle editorBundle, @NotNull List<String> pageIdList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        this.pageIdList = pageIdList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<Integer>> create() {
        Observable<List<Integer>> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C9668a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<Integer> m39464l() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.pageIdList.iterator();
        while (it2.hasNext()) {
            int virtualPageIndex = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPageIndex((String) it2.next());
            if (virtualPageIndex >= 0) {
                CollectionKt.safeAdd(arrayList, Integer.valueOf(virtualPageIndex));
            }
        }
        return arrayList;
    }
}
