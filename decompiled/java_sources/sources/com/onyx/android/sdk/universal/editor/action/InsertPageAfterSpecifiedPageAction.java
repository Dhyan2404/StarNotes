package com.onyx.android.sdk.universal.editor.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.common.data.template.TemplateData;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.InsertPageArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\t\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/InsertPageAfterSpecifiedPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C4921e.f26528e, "p", "", GoogleApiAvailabilityLight.f29016b, "l", "m", "", C6999h.f39688c, "I", "specifiedPageIndex", "i", Constants.HASIDCALL_INDEX_SIG, "autoScrollToInsertPage", "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "j", "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "insertPageArgs", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;IZ)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class InsertPageAfterSpecifiedPageAction extends RxBaseAppAction<InsertPageAfterSpecifiedPageAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public final int specifiedPageIndex;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean autoScrollToInsertPage;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public InsertPageArgs insertPageArgs;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAfterSpecifiedPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C8215a<T, R> implements Function {
        public C8215a() {
        }

        /* renamed from: a */
        public final void m36822a(@NotNull InsertPageAfterSpecifiedPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InsertPageAfterSpecifiedPageAction.this.m36821p();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m36822a((InsertPageAfterSpecifiedPageAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAfterSpecifiedPageAction$b */
    /* loaded from: classes8.dex */
    public static final class C8216b<T, R> implements Function {
        public C8216b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPageAfterSpecifiedPageAction.this.m36820o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAfterSpecifiedPageAction$c */
    /* loaded from: classes8.dex */
    public static final class C8217c<T, R> implements Function {
        public C8217c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InsertPageAfterSpecifiedPageAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InsertPageAfterSpecifiedPageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.InsertPageAfterSpecifiedPageAction$d */
    /* loaded from: classes8.dex */
    public static final class C8218d<T, R> implements Function {

        /* renamed from: e */
        public static final C8218d<T, R> f47656e = new C8218d<>();

        /* renamed from: a */
        public final void m36825a(@NotNull InsertPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m36825a((InsertPageAction) obj);
            return Unit.INSTANCE;
        }
    }

    public /* synthetic */ InsertPageAfterSpecifiedPageAction(EditorBundle editorBundle, int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, i, (i2 & 4) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<InsertPageAfterSpecifiedPageAction> create() {
        Observable<InsertPageAfterSpecifiedPageAction> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C8215a()).flatMap(new C8216b()).map(new C8217c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final boolean m36817l() {
        TemplateJsonBean templateJsonBean = (TemplateJsonBean) MMKVNote.getTemplateOption$default(MMKVNote.INSTANCE, null, 0, 3, null).get();
        TemplateModel loadTemplateListById = KSyncBundle.INSTANCE.getUserTemplateProvider().loadTemplateListById(templateJsonBean.getUniqueId());
        if (loadTemplateListById == null) {
            return false;
        }
        loadTemplateListById.setSizeFormat(templateJsonBean.getSizeFormat());
        InsertPageArgs insertPageArgs = this.insertPageArgs;
        insertPageArgs.setTemplateJsonBean(templateJsonBean);
        insertPageArgs.setPageRect(Templates.INSTANCE.paperTemplateRect(loadTemplateListById));
        return true;
    }

    /* renamed from: m */
    public final void m36818m() {
        VirtualPage virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(this.specifiedPageIndex);
        if (virtualPage == null) {
            return;
        }
        if (getEditorBundle().getWorkBundle().getVirtualPolicy().isCoverPage(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId()) && (virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(this.specifiedPageIndex + 1)) == null) {
            return;
        }
        InsertPageArgs insertPageArgs = this.insertPageArgs;
        insertPageArgs.setTemplateJsonBean(Templates.INSTANCE.pageConfigToTemplateJson(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String()));
        insertPageArgs.setPageRect(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentOriginRectF());
    }

    /* renamed from: n */
    public final boolean m36819n() {
        TemplateData defaultTemplate;
        TemplateJsonBean defaultTemplate2;
        VirtualDocModel loadVirtualDocModel = getEditorBundle().getWorkBundle().getVirtualModelProvider().loadVirtualDocModel();
        if (loadVirtualDocModel == null || (defaultTemplate = loadVirtualDocModel.getDefaultTemplate()) == null || defaultTemplate.getContentPageSize().isEmpty() || (defaultTemplate2 = Templates.INSTANCE.getDefaultTemplate(loadVirtualDocModel)) == null) {
            return false;
        }
        InsertPageArgs insertPageArgs = this.insertPageArgs;
        insertPageArgs.setTemplateJsonBean(defaultTemplate2);
        insertPageArgs.setContentOriginRectF(RectFKt.copy(defaultTemplate.getContentPageSize()));
        insertPageArgs.setPageRect(defaultTemplate.getContentPageSize());
        InsertPageWithTemplateAction.INSTANCE.initTemplateRectByPreviousPage(getEditorBundle(), this.insertPageArgs);
        return true;
    }

    /* renamed from: o */
    public final Observable<Unit> m36820o() {
        Observable map = new InsertPageAction(getEditorBundle(), this.insertPageArgs).build().map(C8218d.f47656e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final void m36821p() {
        if (m36819n() || m36817l()) {
            return;
        }
        m36818m();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsertPageAfterSpecifiedPageAction(@NotNull EditorBundle editorBundle, int i, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.specifiedPageIndex = i;
        this.autoScrollToInsertPage = z;
        InsertPageArgs insertPageArgs = new InsertPageArgs();
        insertPageArgs.setInsertAt(i + 1);
        insertPageArgs.setAutoScrollToInsertPage(z);
        this.insertPageArgs = insertPageArgs;
    }
}
