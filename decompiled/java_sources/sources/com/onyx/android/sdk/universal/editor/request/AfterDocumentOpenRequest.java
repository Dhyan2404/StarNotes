package com.onyx.android.sdk.universal.editor.request;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.genericshape.GeoFactory;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.ImageAttr;
import com.onyx.android.sdk.genericshape.Properties;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocOptions;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.data.VirtualDocOpenResultInfo;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\bH\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\u0012\u0010\u0013\u001a\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002R$\u0010\u0019\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/AfterDocumentOpenRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;", "virtualDocModel", C6999h.f39688c, "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "boxManager", "i", "model", "j", C4921e.f26537n, "", "coverPageId", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;", "getVirtualDocOpenResultInfo", "()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;", "setVirtualDocOpenResultInfo", "(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V", "virtualDocOpenResultInfo", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AfterDocumentOpenRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public VirtualDocOpenResultInfo virtualDocOpenResultInfo;

    public /* synthetic */ AfterDocumentOpenRequest(WorkBundle workBundle, VirtualDocOpenResultInfo virtualDocOpenResultInfo, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(workBundle, (i & 2) != 0 ? null : virtualDocOpenResultInfo);
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        m41401h(workBundle, m41400g(workBundle).getVirtualDocModel());
    }

    /* renamed from: f */
    public final void m41399f(String coverPageId) {
        VirtualPage virtualPage;
        Properties properties;
        ImageAttr imageAttr;
        String relativePath;
        if ((coverPageId == null || coverPageId.length() == 0) || (virtualPage = getWorkBundle().getVirtualPolicy().getVirtualPage(coverPageId)) == null || !Intrinsics.areEqual(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentType(), ContentConstants.TYPE_GEO_LAYOUT)) {
            return;
        }
        try {
            String contentPath = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath();
            FileUtils fileUtils = FileUtils.INSTANCE;
            if (fileUtils.fileExist(contentPath)) {
                String documentId = getWorkBundle().getOpenDocArgs().getDocumentId();
                GeoLayout parseGeoLayout = GeoFactory.INSTANCE.parseGeoLayout(fileUtils.readContentOfFileSafely(contentPath));
                if (parseGeoLayout != null && (properties = parseGeoLayout.getProperties()) != null && (imageAttr = properties.getImageAttr()) != null && (relativePath = imageAttr.getRelativePath()) != null) {
                    TemplatePaths templatePaths = TemplatePaths.INSTANCE;
                    String docTemplateResAbsolutePath = templatePaths.docTemplateResAbsolutePath(relativePath, documentId);
                    if (fileUtils.fileExist(docTemplateResAbsolutePath)) {
                        return;
                    }
                    String obj = Paths.INSTANCE.append(templatePaths.docTemplateResDir(documentId), fileUtils.getFileName(docTemplateResAbsolutePath)).toAbsolutePath().toString();
                    if (fileUtils.fileExist(obj)) {
                        onyx.org.apache.commons.io.FileUtils.copyFile(new File(obj), new File(docTemplateResAbsolutePath));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    public final VirtualDocOpenResultInfo m41400g(WorkBundle workBundle) {
        VirtualDocOpenResultInfo virtualDocOpenResultInfo = this.virtualDocOpenResultInfo;
        return virtualDocOpenResultInfo == null ? workBundle.getVirtualPolicy().onDocOpened() : virtualDocOpenResultInfo;
    }

    @Nullable
    public final VirtualDocOpenResultInfo getVirtualDocOpenResultInfo() {
        return this.virtualDocOpenResultInfo;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005e  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m41401h(com.onyx.android.sdk.universal.editor.WorkBundle r6, com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocModel r7) {
        /*
            r5 = this;
            if (r7 == 0) goto Lb
            com.onyx.android.sdk.replicator.note.db.model.VirtualDocOptions r0 = r7.getDocOptions()
            if (r0 == 0) goto Lb
            r6.setDocOptions(r0)
        Lb:
            com.onyx.android.sdk.geometry.boxmanager.BoxManager r0 = com.onyx.android.sdk.universal.editor.extension.WorkBundleKt.initBoxManagerBySettings(r6)
            com.onyx.android.sdk.universal.editor.data.OpenDocArgs r1 = r6.getOpenDocArgs()
            com.onyx.android.sdk.base.data.Size r1 = r1.getViewSize()
            android.graphics.RectF r1 = r1.toRectF()
            r0.setViewport(r1)
            r1 = 0
            r0.setFirstVisibleIndex(r1)
            com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy r2 = r6.getVirtualPolicy()
            java.util.List r2 = r2.boxInfoSnapshot()
            r0.setData(r2)
            r2 = 0
            if (r7 == 0) goto L35
            java.lang.String r3 = r7.getViewportId()
            goto L36
        L35:
            r3 = r2
        L36:
            if (r3 != 0) goto L3a
            java.lang.String r3 = ""
        L3a:
            r0.updateCurrentMinScale(r3)
            r3 = 1
            if (r7 == 0) goto L54
            java.lang.String r4 = r7.getViewportId()
            int r4 = r4.length()
            if (r4 != 0) goto L4c
            r4 = r3
            goto L4d
        L4c:
            r4 = r1
        L4d:
            if (r4 == 0) goto L50
            goto L54
        L50:
            r5.m41403j(r7)
            goto L57
        L54:
            r5.m41402i(r6, r0)
        L57:
            if (r7 == 0) goto L5e
            java.lang.String r7 = r7.getCoverPageId()
            goto L5f
        L5e:
            r7 = r2
        L5f:
            r5.m41399f(r7)
            com.onyx.android.sdk.replicator.note.db.model.VirtualDocOptions r5 = r6.getDocOptions()
            r5.setAlignCenterAfterOpen(r1)
            com.onyx.android.sdk.universal.editor.config.DocumentState r5 = com.onyx.android.sdk.universal.editor.config.DocumentState.OPENED
            r6.setDocumentState(r5)
            com.onyx.android.sdk.universal.editor.extension.WorkBundleKt.postVirtualDocViewInfo$default(r6, r2, r3, r2)
            com.onyx.android.sdk.universal.editor.extension.WorkBundleKt.postDocumentState(r6)
            com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy r5 = r6.getVirtualPolicy()
            java.lang.String r6 = r0.getCurrentBoxId()
            r5.updatePageIdOnInit(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.request.AfterDocumentOpenRequest.m41401h(com.onyx.android.sdk.universal.editor.WorkBundle, com.onyx.android.sdk.replicator.note.db.model.VirtualDocModel):void");
    }

    /* renamed from: i */
    public final void m41402i(WorkBundle workBundle, BoxManager boxManager) {
        m41404k();
        boxManager.alignCenter();
    }

    /* renamed from: j */
    public final void m41403j(VirtualDocModel model) {
        boolean scrollTo;
        VirtualDocOptions docOptions = model.getDocOptions();
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(getWorkBundle());
        if (docOptions.getAlignCenterAfterOpen()) {
            m41404k();
            scrollTo = BoxManager.scrollTo$default(obtainBoxManager, model.getViewportId(), 0.0f, 0.0f, 6, null);
            obtainBoxManager.alignCenter();
        } else {
            float actualScale = model.getActualScale();
            Range<Float> scaleRange = WorkBundleKt.scaleRange(getWorkBundle());
            Intrinsics.checkNotNullExpressionValue(scaleRange, "scaleRange(...)");
            obtainBoxManager.initScaleWithinRange(actualScale, scaleRange);
            scrollTo = obtainBoxManager.scrollTo(model.getViewportId(), model.getOffsetX(), model.getOffsetY());
        }
        if (scrollTo) {
            return;
        }
        Debug.INSTANCE.m32059w(AfterDocumentOpenRequest.class, "restoreViewport fail, auto align center", new Object[0]);
        obtainBoxManager.alignCenter();
    }

    /* renamed from: k */
    public final void m41404k() {
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(getWorkBundle());
        RectF copy = RectFKt.copy(obtainBoxManager.getViewport().getBox());
        if (WorkBundleKt.getWorkFeature(getWorkBundle()).supportAutoScaleToViewport()) {
            obtainBoxManager.scaleToViewportWithAspectScaleCheck(copy);
        } else {
            obtainBoxManager.initScale(1.0f);
        }
    }

    public final void setVirtualDocOpenResultInfo(@Nullable VirtualDocOpenResultInfo virtualDocOpenResultInfo) {
        this.virtualDocOpenResultInfo = virtualDocOpenResultInfo;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AfterDocumentOpenRequest(@NotNull WorkBundle workBundle, @Nullable VirtualDocOpenResultInfo virtualDocOpenResultInfo) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        this.virtualDocOpenResultInfo = virtualDocOpenResultInfo;
    }
}
