package com.onyx.android.sdk.universal.editor.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/CheckViewSizeChangedRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/base/data/Size;", C6997f.f39671c, "Lcom/onyx/android/sdk/base/data/Size;", "getNewSize", "()Lcom/onyx/android/sdk/base/data/Size;", "setNewSize", "(Lcom/onyx/android/sdk/base/data/Size;)V", "newSize", "", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "getNeedUpdateViewSize", Constants.BOOLEAN_VALUE_SIG, "setNeedUpdateViewSize", "(Z)V", "needUpdateViewSize", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/base/data/Size;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CheckViewSizeChangedRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Size newSize;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean needUpdateViewSize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckViewSizeChangedRequest(@NotNull WorkBundle workBundle, @NotNull Size newSize) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(newSize, "newSize");
        this.newSize = newSize;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Size viewSize = workBundle.getOpenDocArgs().getViewSize();
        this.needUpdateViewSize = !Intrinsics.areEqual(viewSize, this.newSize);
        Debug.INSTANCE.m32059w(CheckViewSizeChangedRequest.class, "needUpdateViewSize = " + this.needUpdateViewSize + " , oldViewSize = " + viewSize + ", newSize = " + this.newSize, new Object[0]);
    }

    public final boolean getNeedUpdateViewSize() {
        return this.needUpdateViewSize;
    }

    @NotNull
    public final Size getNewSize() {
        return this.newSize;
    }

    public final void setNeedUpdateViewSize(boolean z) {
        this.needUpdateViewSize = z;
    }

    public final void setNewSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "<set-?>");
        this.newSize = size;
    }
}
