package com.onyx.android.sdk.universal.editor.request;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.data.MovePageArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/MovePageRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;", "getMovePageArgs", "()Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;", "setMovePageArgs", "(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;)V", "movePageArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class MovePageRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public MovePageArgs movePageArgs;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MovePageRequest(@NotNull WorkBundle workBundle) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        this.movePageArgs = new MovePageArgs(0, 0, false, false, 15, null);
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        VirtualPage virtualPage;
        String str;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Debug.INSTANCE.m32035d(MovePageRequest.class, "movePageArgs = " + this.movePageArgs, new Object[0]);
        if (this.movePageArgs.getFromIndex() == this.movePageArgs.getToIndex() || (virtualPage = workBundle.getVirtualPolicy().getVirtualPage(this.movePageArgs.getFromIndex())) == null) {
            return;
        }
        workBundle.getVirtualPolicy().movePage(this.movePageArgs);
        WorkBundleKt.obtainBoxManager(workBundle).updateDataAndApplyScale(workBundle.getVirtualPolicy().boxInfoSnapshot());
        if (this.movePageArgs.getScrollToNewPosition()) {
            BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(workBundle);
            BoxManager.scrollTo$default(obtainBoxManager, virtualPage.getBox().getId(), 0.0f, 0.0f, 6, null);
            str = virtualPage.getBox().getId();
            obtainBoxManager.alignCenter();
        } else {
            str = "";
        }
        WorkBundleKt.postVirtualDocViewInfo(workBundle, str);
    }

    @NotNull
    public final MovePageArgs getMovePageArgs() {
        return this.movePageArgs;
    }

    public final void setMovePageArgs(@NotNull MovePageArgs movePageArgs) {
        Intrinsics.checkNotNullParameter(movePageArgs, "<set-?>");
        this.movePageArgs = movePageArgs;
    }
}
