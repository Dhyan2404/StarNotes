package com.onyx.android.sdk.universal.editor.request.page;

import android.graphics.Bitmap;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.doc.VirtualPageConfig;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6997f.f39671c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "boxInfo", "", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "renderTemplate", "Landroid/graphics/Bitmap;", "bitmap", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CreateVirtualPageBitmapRequest extends RxBaseAppRequest {
    public Bitmap bitmap;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo boxInfo;

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean renderTemplate;

    public /* synthetic */ CreateVirtualPageBitmapRequest(WorkBundle workBundle, BoxInfo boxInfo, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(workBundle, boxInfo, (i & 4) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        TemplateResourceWrapper templateResourceWrapper;
        VirtualPageConfig virtualPageConfig;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Bitmap createBitmapOrNull = BitmapUtils.INSTANCE.createBitmapOrNull(RectFKt.copy(this.boxInfo.getBox()));
        if (createBitmapOrNull == null) {
            return;
        }
        setBitmap(createBitmapOrNull);
        if (this.renderTemplate) {
            BitmapKt.clear$default(getBitmap(), 0, 1, null);
            return;
        }
        VirtualPage obtainVirtualPage = workBundle.getVirtualPolicy().obtainVirtualPage(this.boxInfo);
        String contentId = (obtainVirtualPage == null || (virtualPageConfig = obtainVirtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()) == null) ? null : virtualPageConfig.getContentId();
        if (contentId == null || contentId.length() == 0) {
            BitmapKt.clear$default(getBitmap(), 0, 1, null);
            return;
        }
        TemplateModel loadTemplateListById = KSyncBundle.INSTANCE.getUserTemplateProvider().loadTemplateListById(contentId);
        int curFillColor = (loadTemplateListById == null || (templateResourceWrapper = loadTemplateListById.getTemplateResourceWrapper()) == null) ? 0 : templateResourceWrapper.getCurFillColor();
        if (curFillColor == 0) {
            BitmapKt.clear$default(getBitmap(), 0, 1, null);
        } else {
            BitmapKt.clear(getBitmap(), curFillColor);
        }
    }

    @NotNull
    public final Bitmap getBitmap() {
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            return bitmap;
        }
        Intrinsics.throwUninitializedPropertyAccessException("bitmap");
        return null;
    }

    public final void setBitmap(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<set-?>");
        this.bitmap = bitmap;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateVirtualPageBitmapRequest(@NotNull WorkBundle workBundle, @NotNull BoxInfo boxInfo, boolean z) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        this.boxInfo = boxInfo;
        this.renderTemplate = z;
    }
}
