package com.onyx.android.sdk.universal.editor.request.page;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/page/GotoPageByIdRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "", C6997f.f39671c, Constants.STRING_SIG, "getPageId", "()Ljava/lang/String;", CouchFieldKey.KEY_TOC_PAGE_ID, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GotoPageByIdRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String pageId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GotoPageByIdRequest(@NotNull WorkBundle workBundle, @NotNull String pageId) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        this.pageId = pageId;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Debug.INSTANCE.m32035d(GotoPageByIdRequest.class, "pageId = " + this.pageId, new Object[0]);
        VirtualPage virtualPage = workBundle.getVirtualPolicy().getVirtualPage(this.pageId);
        if (virtualPage == null) {
            return;
        }
        workBundle.getVirtualPolicy().gotoPage(virtualPage);
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(workBundle);
        BoxInfo box = virtualPage.getBox();
        BoxManager.scrollTo$default(obtainBoxManager, box.getId(), 0.0f, 0.0f, 6, null);
        obtainBoxManager.alignCenter();
        WorkBundleKt.postVirtualDocViewInfo(workBundle, box.getId());
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }
}
