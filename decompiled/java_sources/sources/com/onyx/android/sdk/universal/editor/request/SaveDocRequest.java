package com.onyx.android.sdk.universal.editor.request;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/SaveDocRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "isDirtyVirtualDoc", Constants.BOOLEAN_VALUE_SIG, "setDirtyVirtualDoc", "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveDocRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    public boolean isDirtyVirtualDoc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveDocRequest(@NotNull WorkBundle workBundle) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        this.isDirtyVirtualDoc = CollectionKt.isNonBlank(workBundle.getVirtualPolicy().getDirtyVirtualPages());
        workBundle.getVirtualPolicy().save();
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "isDirtyVirtualDoc = " + this.isDirtyVirtualDoc, new Object[0]);
    }

    /* renamed from: isDirtyVirtualDoc, reason: from getter */
    public final boolean getIsDirtyVirtualDoc() {
        return this.isDirtyVirtualDoc;
    }

    public final void setDirtyVirtualDoc(boolean z) {
        this.isDirtyVirtualDoc = z;
    }
}
