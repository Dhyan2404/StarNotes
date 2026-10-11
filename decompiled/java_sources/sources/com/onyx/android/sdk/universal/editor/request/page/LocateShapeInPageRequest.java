package com.onyx.android.sdk.universal.editor.request.page;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/page/LocateShapeInPageRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "", C6997f.f39671c, Constants.STRING_SIG, CouchFieldKey.KEY_TOC_PAGE_ID, "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LocateShapeInPageRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String pageId;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocateShapeInPageRequest(@NotNull WorkBundle workBundle, @NotNull String pageId, @NotNull Shape shape) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.pageId = pageId;
        this.shape = shape;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        VirtualPage virtualPage = workBundle.getVirtualPolicy().getVirtualPage(this.pageId);
        if (virtualPage == null) {
            return;
        }
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(workBundle);
        workBundle.getVirtualPolicy().gotoPage(virtualPage);
        BoxInfo copy = virtualPage.getBox().copy();
        copy.setScale(obtainBoxManager.getViewport().getActualScale());
        Matrix copy2 = MatrixKt.copy(this.shape.getShapeMatrix());
        RectF copy3 = RectFKt.copy(this.shape.getOriginRect());
        copy2.postConcat(BoxInfoUtils.INSTANCE.renderMatrix(copy));
        copy2.mapRect(copy3);
        float f = copy3.left;
        float f2 = copy3.top;
        if (copy3.height() <= obtainBoxManager.getViewport().height()) {
            float f3 = 2;
            f2 += (copy3.height() / f3) - (obtainBoxManager.getViewport().height() / f3);
        }
        if (copy3.width() <= obtainBoxManager.getViewport().width()) {
            float f4 = 2;
            f += (copy3.width() / f4) - (obtainBoxManager.getViewport().width() / f4);
        }
        obtainBoxManager.scrollTo(copy.getId(), f, f2);
        WorkBundleKt.postVirtualDocViewInfo(workBundle, copy.getId());
    }
}
