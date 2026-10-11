package com.onyx.android.sdk.universal.editor.request.doc;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/doc/OpenVirtualDocRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "getOpenDocArgs", "()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "openDocArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class OpenVirtualDocRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final OpenDocArgs openDocArgs;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenVirtualDocRequest(@NotNull WorkBundle workBundle, @NotNull OpenDocArgs openDocArgs) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(openDocArgs, "openDocArgs");
        this.openDocArgs = openDocArgs;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        workBundle.openVirtualDoc(this.openDocArgs);
    }

    @NotNull
    public final OpenDocArgs getOpenDocArgs() {
        return this.openDocArgs;
    }
}
