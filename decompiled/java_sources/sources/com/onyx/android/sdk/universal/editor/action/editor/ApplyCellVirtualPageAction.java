package com.onyx.android.sdk.universal.editor.action.editor;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.boxmanager.DraftBoxManager;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyCellVirtualPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "cellVirtualPage", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ApplyCellVirtualPageAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final VirtualPage cellVirtualPage;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.editor.ApplyCellVirtualPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C8680a<T, R> implements Function {

        /* renamed from: e */
        public static final C8680a<T, R> f48334e = new C8680a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplyCellVirtualPageAction(@NotNull EditorBundle editorBundle, @NotNull VirtualPage cellVirtualPage) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(cellVirtualPage, "cellVirtualPage");
        this.cellVirtualPage = cellVirtualPage;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = DocCommonActionsKt.createCoreObservable(getEditorBundle(), new Function1<WorkBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.editor.ApplyCellVirtualPageAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(WorkBundle workBundle) {
                invoke2(workBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull WorkBundle workBundle) {
                VirtualPage virtualPage;
                VirtualPage virtualPage2;
                VirtualPage virtualPage3;
                Intrinsics.checkNotNullParameter(workBundle, "workBundle");
                BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(workBundle);
                DraftBoxManager draftBoxManager = obtainBoxManager instanceof DraftBoxManager ? (DraftBoxManager) obtainBoxManager : null;
                if (draftBoxManager == null) {
                    return;
                }
                VirtualDocPolicy virtualPolicy = workBundle.getVirtualPolicy();
                virtualPage = ApplyCellVirtualPageAction.this.cellVirtualPage;
                VirtualPage virtualPage4 = virtualPolicy.getVirtualPage(virtualPage.getBox().getCellInfoCopy());
                if (virtualPage4 == null || !EditorBundleKt.isOwner(ApplyCellVirtualPageAction.this.getEditorBundle())) {
                    if (virtualPage4 != null) {
                        workBundle.getVirtualPolicy().removePage(virtualPage4);
                    }
                    VirtualDocPolicy virtualPolicy2 = workBundle.getVirtualPolicy();
                    virtualPage2 = ApplyCellVirtualPageAction.this.cellVirtualPage;
                    virtualPolicy2.addPage(virtualPage2);
                    workBundle.getVirtualPolicy().save();
                    virtualPage3 = ApplyCellVirtualPageAction.this.cellVirtualPage;
                    draftBoxManager.updateBoxInfo(virtualPage3.getBox());
                    WorkBundleKt.postVirtualDocViewInfo$default(workBundle, null, 1, null);
                }
            }
        }).map(C8680a.f48334e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
