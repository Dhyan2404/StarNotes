package com.onyx.android.sdk.universal.editor.action.page;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/UpdateVirtualPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "", C6999h.f39688c, "Ljava/util/Collection;", "pageIds", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Collection;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateVirtualPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateVirtualPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/UpdateVirtualPageAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,33:1\n1855#2,2:34\n*S KotlinDebug\n*F\n+ 1 UpdateVirtualPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/UpdateVirtualPageAction\n*L\n27#1:34,2\n*E\n"})
/* loaded from: classes8.dex */
public final class UpdateVirtualPageAction extends RxBaseAppAction<UpdateVirtualPageAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Collection<String> pageIds;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.UpdateVirtualPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C9763a<T, R> implements Function {
        public C9763a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateVirtualPageAction apply(@NotNull UpdateVirtualPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateVirtualPageAction.this.m39617l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateVirtualPageAction(@NotNull EditorBundle editorBundle, @NotNull Collection<String> pageIds) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        this.pageIds = pageIds;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateVirtualPageAction> create() {
        Observable<UpdateVirtualPageAction> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C9763a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final UpdateVirtualPageAction m39617l() {
        Iterator<T> it2 = this.pageIds.iterator();
        while (it2.hasNext()) {
            VirtualPage virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage((String) it2.next());
            if (virtualPage != null) {
                getEditorBundle().getWorkBundle().getVirtualPolicy().updatePage(virtualPage);
            }
        }
        return this;
    }
}
