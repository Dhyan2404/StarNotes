package com.onyx.android.sdk.universal.editor.request;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.data.CopyPageArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR.\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0018\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;", "getCopyArgs", "()Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;", "setCopyArgs", "(Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;)V", "copyArgs", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "pagePair", "Lkotlin/Pair;", "getPagePair", "()Lkotlin/Pair;", "setPagePair", "(Lkotlin/Pair;)V", "getCopyPage", "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "copyPage", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CopyVirtualPageRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public CopyPageArgs copyArgs;
    public Pair<VirtualPage, VirtualPage> pagePair;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CopyVirtualPageRequest(@NotNull WorkBundle workBundle) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        this.copyArgs = new CopyPageArgs(0, 0, false, 7, null);
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Debug.INSTANCE.m32035d(CopyVirtualPageRequest.class, "copyArgs = " + this.copyArgs, new Object[0]);
        VirtualPage virtualPage = workBundle.getVirtualPolicy().getVirtualPage(this.copyArgs.getSrcIndex());
        Intrinsics.checkNotNull(virtualPage);
        VirtualPage copyPage = workBundle.getVirtualPolicy().copyPage(this.copyArgs);
        String id = copyPage.getBox().getId();
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(workBundle);
        obtainBoxManager.updateDataAndApplyScale(workBundle.getVirtualPolicy().boxInfoSnapshot());
        BoxManager.scrollTo$default(obtainBoxManager, id, 0.0f, 0.0f, 6, null);
        obtainBoxManager.alignCenter();
        WorkBundleKt.postVirtualDocViewInfo(workBundle, id);
        setPagePair(TuplesKt.m61535to(virtualPage, copyPage));
    }

    @NotNull
    public final CopyPageArgs getCopyArgs() {
        return this.copyArgs;
    }

    @NotNull
    public final VirtualPage getCopyPage() {
        return getPagePair().getFirst();
    }

    @NotNull
    public final Pair<VirtualPage, VirtualPage> getPagePair() {
        Pair<VirtualPage, VirtualPage> pair = this.pagePair;
        if (pair != null) {
            return pair;
        }
        Intrinsics.throwUninitializedPropertyAccessException("pagePair");
        return null;
    }

    public final void setCopyArgs(@NotNull CopyPageArgs copyPageArgs) {
        Intrinsics.checkNotNullParameter(copyPageArgs, "<set-?>");
        this.copyArgs = copyPageArgs;
    }

    public final void setPagePair(@NotNull Pair<VirtualPage, VirtualPage> pair) {
        Intrinsics.checkNotNullParameter(pair, "<set-?>");
        this.pagePair = pair;
    }
}
