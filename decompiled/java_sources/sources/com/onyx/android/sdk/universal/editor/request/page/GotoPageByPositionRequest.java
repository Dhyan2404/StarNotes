package com.onyx.android.sdk.universal.editor.request.page;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.reader.api.PageId;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/page/GotoPageByPositionRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "", C6997f.f39671c, Constants.STRING_SIG, "contentPath", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", C6998g.f39679a, "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "readerPosition", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GotoPageByPositionRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String contentPath;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ReaderPosition readerPosition;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GotoPageByPositionRequest(@NotNull WorkBundle workBundle, @NotNull String contentPath, @NotNull ReaderPosition readerPosition) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(contentPath, "contentPath");
        Intrinsics.checkNotNullParameter(readerPosition, "readerPosition");
        this.contentPath = contentPath;
        this.readerPosition = readerPosition;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Object obj;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        String strPosition = this.readerPosition.getStrPosition();
        Iterator<T> it2 = workBundle.getVirtualPolicy().getVirtualPageList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            VirtualPage virtualPage = (VirtualPage) obj;
            if (Intrinsics.areEqual(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath(), this.contentPath) && PageId.INSTANCE.equals(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPageId(), strPosition)) {
                break;
            }
        }
        VirtualPage virtualPage2 = (VirtualPage) obj;
        if (virtualPage2 != null) {
            BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(workBundle);
            workBundle.getVirtualPolicy().gotoPage(virtualPage2);
            BoxManager.scrollTo$default(obtainBoxManager, virtualPage2.getBox().getId(), 0.0f, 0.0f, 6, null);
            obtainBoxManager.alignCenter();
            WorkBundleKt.postVirtualDocViewInfo(workBundle, virtualPage2.getBox().getId());
        }
    }
}
