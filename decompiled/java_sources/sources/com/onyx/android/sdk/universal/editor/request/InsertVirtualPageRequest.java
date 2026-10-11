package com.onyx.android.sdk.universal.editor.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.data.PageMarginArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\"\u0010\u0017\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0010\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "", C6997f.f39671c, "I", "pageIndex", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPage", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "autoApplyPageMargin", "i", "getScrollTo", Constants.BOOLEAN_VALUE_SIG, "setScrollTo", "(Z)V", "scrollTo", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class InsertVirtualPageRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    public final int pageIndex;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final VirtualPage virtualPage;

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean autoApplyPageMargin;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean scrollTo;

    public /* synthetic */ InsertVirtualPageRequest(WorkBundle workBundle, int i, VirtualPage virtualPage, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(workBundle, i, virtualPage, (i2 & 8) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        PageMarginArgs copyPageMarginConfig;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Debug.INSTANCE.m32035d(InsertVirtualPageRequest.class, "pageIndex = " + this.pageIndex, new Object[0]);
        workBundle.getVirtualPolicy().insertPage(this.pageIndex, this.virtualPage);
        String id = this.virtualPage.getBox().getId();
        if (this.autoApplyPageMargin && (copyPageMarginConfig = WorkBundleKt.copyPageMarginConfig(workBundle)) != null) {
            copyPageMarginConfig.setPageId(id);
            workBundle.getVirtualPolicy().updatePageMargin(copyPageMarginConfig);
        }
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(workBundle);
        obtainBoxManager.updateDataAndApplyScale(workBundle.getVirtualPolicy().boxInfoSnapshot());
        if (!this.scrollTo || obtainBoxManager.getEnableFreeMovePaper()) {
            id = "";
        } else {
            BoxManager.scrollTo$default(obtainBoxManager, id, 0.0f, 0.0f, 6, null);
        }
        WorkBundleKt.postVirtualDocViewInfo(workBundle, id);
    }

    public final boolean getScrollTo() {
        return this.scrollTo;
    }

    public final void setScrollTo(boolean z) {
        this.scrollTo = z;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsertVirtualPageRequest(@NotNull WorkBundle workBundle, int i, @NotNull VirtualPage virtualPage, boolean z) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        this.pageIndex = i;
        this.virtualPage = virtualPage;
        this.autoApplyPageMargin = z;
        this.scrollTo = true;
    }
}
