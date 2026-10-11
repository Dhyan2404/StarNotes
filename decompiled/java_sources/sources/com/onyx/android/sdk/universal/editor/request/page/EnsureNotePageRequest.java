package com.onyx.android.sdk.universal.editor.request.page;

import android.graphics.Rect;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/page/EnsureNotePageRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6997f.f39671c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "getNotePage", "()Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "setNotePage", "(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EnsureNotePageRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;
    public NotePage notePage;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnsureNotePageRequest(@NotNull WorkBundle workBundle, @NotNull BoxInfo virtualBoxInfo) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        this.virtualBoxInfo = virtualBoxInfo;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        VirtualPage obtainVirtualPage = workBundle.getVirtualPolicy().obtainVirtualPage(this.virtualBoxInfo);
        VirtualDocPolicy virtualPolicy = workBundle.getVirtualPolicy();
        Intrinsics.checkNotNull(obtainVirtualPage);
        setNotePage(virtualPolicy.ensureNotePage(obtainVirtualPage));
        if (getNotePage().getPageInfo().getWidth() <= 0 || getNotePage().getPageInfo().getHeight() <= 0) {
            Rect rect = RectKt.toRect(obtainVirtualPage.getBox().getOriginRectFWithMargin());
            Intrinsics.checkNotNull(rect);
            getNotePage().getPageInfo().setWidth(rect.width());
            getNotePage().getPageInfo().setHeight(rect.height());
        }
    }

    @NotNull
    public final NotePage getNotePage() {
        NotePage notePage = this.notePage;
        if (notePage != null) {
            return notePage;
        }
        Intrinsics.throwUninitializedPropertyAccessException("notePage");
        return null;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    public final void setNotePage(@NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(notePage, "<set-?>");
        this.notePage = notePage;
    }
}
