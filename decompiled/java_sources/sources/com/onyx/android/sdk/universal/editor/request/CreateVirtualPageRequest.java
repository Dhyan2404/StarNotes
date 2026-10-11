package com.onyx.android.sdk.universal.editor.request;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.reader.data.ReaderPageInfo;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.data.InsertPageArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\"\u0010\u000e\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0017\u001a\u00020\u00068\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/CreateVirtualPageRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "getInsertPageArgs", "()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "setInsertPageArgs", "(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V", "insertPageArgs", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", C6998g.f39679a, "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "getReaderPageInfo", "()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "setReaderPageInfo", "(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V", "readerPageInfo", "virtualPage", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "getVirtualPage", "()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "setVirtualPage", "(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CreateVirtualPageRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public InsertPageArgs insertPageArgs;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public ReaderPageInfo readerPageInfo;
    public VirtualPage virtualPage;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateVirtualPageRequest(@NotNull WorkBundle workBundle) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        this.insertPageArgs = new InsertPageArgs();
        this.readerPageInfo = new ReaderPageInfo();
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        int insertAt = this.insertPageArgs.getInsertAt();
        Debug.INSTANCE.m32035d(CreateVirtualPageRequest.class, "pageIndex = " + insertAt, new Object[0]);
        setVirtualPage(m41413f(workBundle));
    }

    /* renamed from: f */
    public final VirtualPage m41413f(WorkBundle workBundle) {
        VirtualPage createVirtualPageByReader$default;
        String str;
        if (this.readerPageInfo.isValid()) {
            VirtualPage.Companion companion = VirtualPage.INSTANCE;
            ReaderPageInfo readerPageInfo = this.readerPageInfo;
            TemplateJsonBean templateJsonBean = this.insertPageArgs.getTemplateJsonBean();
            String uniqueId = templateJsonBean != null ? templateJsonBean.getUniqueId() : null;
            if (uniqueId == null) {
                uniqueId = "";
            }
            String str2 = uniqueId;
            TemplateJsonBean templateJsonBean2 = this.insertPageArgs.getTemplateJsonBean();
            if (templateJsonBean2 == null || (str = templateJsonBean2.getContentType()) == null) {
                str = ContentConstants.TYPE_IMPORT_PDF;
            }
            String str3 = str;
            RectF copy = RectFKt.copy(this.insertPageArgs.getPageRect());
            TemplateJsonBean templateJsonBean3 = this.insertPageArgs.getTemplateJsonBean();
            createVirtualPageByReader$default = companion.createVirtualPageByReader(readerPageInfo, str2, str3, copy, templateJsonBean3 != null ? templateJsonBean3.getColorTheme() : 0);
        } else if (this.insertPageArgs.getTemplateJsonBean() != null) {
            VirtualPage.Companion companion2 = VirtualPage.INSTANCE;
            String documentId = workBundle.getOpenDocArgs().getDocumentId();
            RectF contentOriginRectF = this.insertPageArgs.getContentOriginRectF();
            if (contentOriginRectF == null) {
                contentOriginRectF = this.insertPageArgs.getPageRect();
            }
            RectF pageRect = this.insertPageArgs.getPageRect();
            TemplateJsonBean templateJsonBean4 = this.insertPageArgs.getTemplateJsonBean();
            Intrinsics.checkNotNull(templateJsonBean4);
            createVirtualPageByReader$default = companion2.createVirtualPage(documentId, contentOriginRectF, pageRect, templateJsonBean4);
        } else {
            VirtualPage.Companion companion3 = VirtualPage.INSTANCE;
            ReaderPageInfo readerPageInfo2 = this.readerPageInfo;
            TemplateJsonBean templateJsonBean5 = this.insertPageArgs.getTemplateJsonBean();
            createVirtualPageByReader$default = VirtualPage.Companion.createVirtualPageByReader$default(companion3, readerPageInfo2, null, null, null, templateJsonBean5 != null ? templateJsonBean5.getColorTheme() : 0, 14, null);
        }
        Templates.INSTANCE.copyVirtualPageTemplateAndUpdateConfig(workBundle.getOpenDocArgs().getDocumentId(), createVirtualPageByReader$default, this.insertPageArgs.getTemplateJsonBean());
        return createVirtualPageByReader$default;
    }

    @NotNull
    public final InsertPageArgs getInsertPageArgs() {
        return this.insertPageArgs;
    }

    @NotNull
    public final ReaderPageInfo getReaderPageInfo() {
        return this.readerPageInfo;
    }

    @NotNull
    public final VirtualPage getVirtualPage() {
        VirtualPage virtualPage = this.virtualPage;
        if (virtualPage != null) {
            return virtualPage;
        }
        Intrinsics.throwUninitializedPropertyAccessException("virtualPage");
        return null;
    }

    public final void setInsertPageArgs(@NotNull InsertPageArgs insertPageArgs) {
        Intrinsics.checkNotNullParameter(insertPageArgs, "<set-?>");
        this.insertPageArgs = insertPageArgs;
    }

    public final void setReaderPageInfo(@NotNull ReaderPageInfo readerPageInfo) {
        Intrinsics.checkNotNullParameter(readerPageInfo, "<set-?>");
        this.readerPageInfo = readerPageInfo;
    }

    public final void setVirtualPage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "<set-?>");
        this.virtualPage = virtualPage;
    }
}
