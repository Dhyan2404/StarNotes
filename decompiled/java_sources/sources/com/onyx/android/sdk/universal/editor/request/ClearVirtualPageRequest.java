package com.onyx.android.sdk.universal.editor.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR$\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "", C6997f.f39671c, "I", "getPageIndex", "()I", "setPageIndex", "(I)V", "pageIndex", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "getVirtualPage", "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "setVirtualPage", "(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V", "virtualPage", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nClearVirtualPageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClearVirtualPageRequest.kt\ncom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,30:1\n98#2,4:31\n*S KotlinDebug\n*F\n+ 1 ClearVirtualPageRequest.kt\ncom/onyx/android/sdk/universal/editor/request/ClearVirtualPageRequest\n*L\n23#1:31,4\n*E\n"})
/* loaded from: classes8.dex */
public final class ClearVirtualPageRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    public int pageIndex;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public VirtualPage virtualPage;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClearVirtualPageRequest(@NotNull WorkBundle workBundle) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        BoxInfo box;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        this.virtualPage = workBundle.getVirtualPolicy().getVirtualPage(this.pageIndex);
        Debug debug = Debug.INSTANCE;
        if (debug.getDebug()) {
            StringBuilder sb = new StringBuilder();
            sb.append("pageIndex = ");
            sb.append(this.pageIndex);
            sb.append(", ");
            VirtualPage virtualPage = this.virtualPage;
            sb.append((virtualPage == null || (box = virtualPage.getBox()) == null) ? null : box.getId());
            debug.m32035d(ClearVirtualPageRequest.class, sb.toString(), new Object[0]);
        }
        VirtualPage virtualPage2 = this.virtualPage;
        if (virtualPage2 != null) {
            workBundle.getVirtualPolicy().clearPage(virtualPage2);
            WorkBundleKt.postVirtualDocViewInfo$default(workBundle, null, 1, null);
        }
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @Nullable
    public final VirtualPage getVirtualPage() {
        return this.virtualPage;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public final void setVirtualPage(@Nullable VirtualPage virtualPage) {
        this.virtualPage = virtualPage;
    }
}
