package com.onyx.galaxy.note.editor.action.template;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.doc.VirtualPageConfig;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.onyx.galaxy.note.category.data.TemplateChangeType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b*\u0010+J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR$\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u001b\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0012\u001a\u0004\b\u0019\u0010\u0014\"\u0004\b\u001a\u0010\u0016R\"\u0010\"\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010'\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u000e\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006,"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", GoogleApiAvailabilityLight.f29016b, "m", "", C6999h.f39688c, "I", "pageIndex", "", "i", Constants.HASIDCALL_INDEX_SIG, "isLoadDefaultPage", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "j", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "getCoverTemplateJsonBean", "()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "setCoverTemplateJsonBean", "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V", "coverTemplateJsonBean", C4921e.f26537n, "getPaperTemplateJsonBean", "setPaperTemplateJsonBean", "paperTemplateJsonBean", "Lcom/onyx/galaxy/note/category/data/TemplateChangeType;", "Lcom/onyx/galaxy/note/category/data/TemplateChangeType;", "getChangeType", "()Lcom/onyx/galaxy/note/category/data/TemplateChangeType;", "setChangeType", "(Lcom/onyx/galaxy/note/category/data/TemplateChangeType;)V", "changeType", "getHasPictureOrPDF", Constants.BOOLEAN_VALUE_SIG, "setHasPictureOrPDF", "(Z)V", "hasPictureOrPDF", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;IZ)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadPageTemplateJsonAction extends RxBaseAppAction<LoadPageTemplateJsonAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public final int pageIndex;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean isLoadDefaultPage;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public TemplateJsonBean coverTemplateJsonBean;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public TemplateJsonBean paperTemplateJsonBean;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public TemplateChangeType changeType;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean hasPictureOrPDF;

    /* renamed from: com.onyx.galaxy.note.editor.action.template.LoadPageTemplateJsonAction$a */
    /* loaded from: classes9.dex */
    public static final class C11995a<T, R> implements Function {
        public C11995a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadPageTemplateJsonAction apply(@NotNull LoadPageTemplateJsonAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadPageTemplateJsonAction.this.m45963l();
        }
    }

    public /* synthetic */ LoadPageTemplateJsonAction(EditorBundle editorBundle, int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, i, (i2 & 4) != 0 ? false : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoadPageTemplateJsonAction> create() {
        Observable<LoadPageTemplateJsonAction> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C11995a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final TemplateChangeType getChangeType() {
        return this.changeType;
    }

    @Nullable
    public final TemplateJsonBean getCoverTemplateJsonBean() {
        return this.coverTemplateJsonBean;
    }

    public final boolean getHasPictureOrPDF() {
        return this.hasPictureOrPDF;
    }

    @Nullable
    public final TemplateJsonBean getPaperTemplateJsonBean() {
        return this.paperTemplateJsonBean;
    }

    /* renamed from: l */
    public final LoadPageTemplateJsonAction m45963l() {
        if (this.isLoadDefaultPage) {
            m45965n();
        } else {
            m45964m();
        }
        this.hasPictureOrPDF = false;
        Iterator<VirtualPage> it2 = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPageList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            VirtualPage next = it2.next();
            Templates templates = Templates.INSTANCE;
            if (TemplateResourceConstant.INSTANCE.isPictureOrPDF(templates.getTemplateResourceType(templates.pageConfigToTemplateJson(next.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String())))) {
                this.hasPictureOrPDF = true;
                break;
            }
        }
        return this;
    }

    /* renamed from: m */
    public final void m45964m() {
        VirtualPageConfig virtualPageConfig;
        VirtualPageConfig virtualPageConfig2;
        VirtualPageConfig virtualPageConfig3;
        VirtualPage virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(this.pageIndex);
        VirtualPage coverPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getCoverPage();
        String str = null;
        this.coverTemplateJsonBean = (coverPage == null || (virtualPageConfig3 = coverPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()) == null) ? null : Templates.INSTANCE.pageConfigToTemplateJson(virtualPageConfig3);
        this.paperTemplateJsonBean = (virtualPage == null || (virtualPageConfig2 = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()) == null) ? null : Templates.INSTANCE.pageConfigToTemplateJson(virtualPageConfig2);
        if (virtualPage != null) {
            String pageId = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId();
            if (coverPage != null && (virtualPageConfig = coverPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()) != null) {
                str = virtualPageConfig.getPageId();
            }
            if (Intrinsics.areEqual(pageId, str)) {
                this.changeType = TemplateChangeType.CHANGE_COVER;
            }
        }
        if (coverPage == null) {
            this.changeType = TemplateChangeType.CHANGE_ALL;
        }
    }

    /* renamed from: n */
    public final void m45965n() {
        this.paperTemplateJsonBean = Templates.INSTANCE.getDefaultTemplate(getEditorBundle().getWorkBundle().getVirtualModelProvider().loadVirtualDocModel());
    }

    public final void setChangeType(@NotNull TemplateChangeType templateChangeType) {
        Intrinsics.checkNotNullParameter(templateChangeType, "<set-?>");
        this.changeType = templateChangeType;
    }

    public final void setCoverTemplateJsonBean(@Nullable TemplateJsonBean templateJsonBean) {
        this.coverTemplateJsonBean = templateJsonBean;
    }

    public final void setHasPictureOrPDF(boolean z) {
        this.hasPictureOrPDF = z;
    }

    public final void setPaperTemplateJsonBean(@Nullable TemplateJsonBean templateJsonBean) {
        this.paperTemplateJsonBean = templateJsonBean;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadPageTemplateJsonAction(@NotNull EditorBundle editorBundle, int i, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.pageIndex = i;
        this.isLoadDefaultPage = z;
        this.changeType = TemplateChangeType.CHANGE_ALL;
    }
}
