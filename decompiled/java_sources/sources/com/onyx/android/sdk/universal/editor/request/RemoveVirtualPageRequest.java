package com.onyx.android.sdk.universal.editor.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0011\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u001c\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/RemoveVirtualPageRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "", C6997f.f39671c, "I", "getPageIndex", "()I", "setPageIndex", "(I)V", "pageIndex", "", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "isCoverPage", Constants.BOOLEAN_VALUE_SIG, "setCoverPage", "(Z)V", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "getVirtualPage", "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "setVirtualPage", "(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V", "virtualPage", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RemoveVirtualPageRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    public int pageIndex;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean isCoverPage;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public VirtualPage virtualPage;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoveVirtualPageRequest(@NotNull WorkBundle workBundle) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Debug.INSTANCE.m32035d(RemoveVirtualPageRequest.class, "pageIndex = " + this.pageIndex, new Object[0]);
        VirtualPage virtualPage = workBundle.getVirtualPolicy().getVirtualPage(this.pageIndex);
        this.virtualPage = virtualPage;
        if (virtualPage == null) {
            return;
        }
        this.isCoverPage = workBundle.getVirtualPolicy().isCoverPage(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId());
        workBundle.getVirtualPolicy().removePage(virtualPage);
        workBundle.getVirtualPolicy().deleteBookmark(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId());
        WorkBundleKt.obtainBoxManager(workBundle).updateDataAndApplyScale(workBundle.getVirtualPolicy().boxInfoSnapshot());
        WorkBundleKt.postVirtualDocViewInfo$default(workBundle, null, 1, null);
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @Nullable
    public final VirtualPage getVirtualPage() {
        return this.virtualPage;
    }

    /* renamed from: isCoverPage, reason: from getter */
    public final boolean getIsCoverPage() {
        return this.isCoverPage;
    }

    public final void setCoverPage(boolean z) {
        this.isCoverPage = z;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public final void setVirtualPage(@Nullable VirtualPage virtualPage) {
        this.virtualPage = virtualPage;
    }
}
