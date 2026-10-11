package com.onyx.android.sdk.universal.editor.action.bkground;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.lite.extension.RectFKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.reader.data.ReaderPageInfo;
import com.onyx.android.sdk.reader.request.LoadReaderPageInfoRequest;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.doc.VirtualPageConfig;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B)\u0012\u0006\u0010,\u001a\u00020+\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u000e\b\u0002\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00070\u001e¢\u0006\u0004\b-\u0010.J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0000H\u0002J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J*\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000e\u001a\u00020\rH\u0002J\u0012\u0010\u0012\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\tH\u0002J\f\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002R\u0016\u0010\n\u001a\u0004\u0018\u00010\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00070\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u001a\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00070\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u001a\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00070\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010$R\u0018\u0010*\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010)¨\u0006/"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "s", GoogleApiAvailabilityLight.f29016b, "", "documentId", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "templateJsonBean", C4921e.f26528e, CouchFieldKey.KEY_TOC_PAGE_ID, "", "updatePageRect", "p", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "r", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPage", "v", "Landroid/graphics/RectF;", "pageRect", "u", "t", "m", "l", C6999h.f39688c, "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "", "i", "Ljava/util/List;", "pageIds", "", "j", "Ljava/util/Set;", "closeContentPathSet", C4921e.f26537n, "changedNotePageIdSet", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "readerPageInfo", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nModifyPagesTemplateAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModifyPagesTemplateAction.kt\ncom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,227:1\n1855#2,2:228\n1855#2,2:230\n766#2:233\n857#2,2:234\n1855#2,2:236\n1#3:232\n*S KotlinDebug\n*F\n+ 1 ModifyPagesTemplateAction.kt\ncom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction\n*L\n65#1:228,2\n85#1:230,2\n155#1:233\n155#1:234,2\n156#1:236,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ModifyPagesTemplateAction extends RxBaseAppAction<ModifyPagesTemplateAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final TemplateJsonBean templateJsonBean;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<String> pageIds;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Set<String> closeContentPathSet;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Set<String> changedNotePageIdSet;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public ReaderPageInfo readerPageInfo;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ModifyPagesTemplateAction$a */
    /* loaded from: classes8.dex */
    public static final class C8552a<T, R> implements Function {
        public C8552a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull ModifyPagesTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ModifyPagesTemplateAction.this.m37409l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ModifyPagesTemplateAction$b */
    /* loaded from: classes8.dex */
    public static final class C8553b<T, R> implements Function {
        public C8553b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ModifyPagesTemplateAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ModifyPagesTemplateAction.this.m37411n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ModifyPagesTemplateAction$c */
    /* loaded from: classes8.dex */
    public static final class C8554c<T> implements Consumer {
        public C8554c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ModifyPagesTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.readerBundle(ModifyPagesTemplateAction.this.getEditorBundle()).destroyReaderByPathSet(ModifyPagesTemplateAction.this.closeContentPathSet);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ModifyPagesTemplateAction$d */
    /* loaded from: classes8.dex */
    public static final class C8555d<T> implements Consumer {
        public C8555d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ModifyPagesTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ModifyPagesTemplateAction.this.m37415s();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.ModifyPagesTemplateAction$e */
    /* loaded from: classes8.dex */
    public static final class C8556e<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ LoadReaderPageInfoRequest f48130f;

        public C8556e(LoadReaderPageInfoRequest loadReaderPageInfoRequest) {
            this.f48130f = loadReaderPageInfoRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LoadReaderPageInfoRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ModifyPagesTemplateAction.this.readerPageInfo = this.f48130f.getReaderPageInfo();
        }
    }

    public /* synthetic */ ModifyPagesTemplateAction(EditorBundle editorBundle, TemplateJsonBean templateJsonBean, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, templateJsonBean, (i & 4) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }

    /* renamed from: q */
    public static /* synthetic */ void m37408q(ModifyPagesTemplateAction modifyPagesTemplateAction, String str, String str2, TemplateJsonBean templateJsonBean, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = true;
        }
        modifyPagesTemplateAction.m37413p(str, str2, templateJsonBean, z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ModifyPagesTemplateAction> create() {
        Observable<ModifyPagesTemplateAction> observeOn = Observable.just(this).flatMap(new C8552a()).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C8553b()).observeOn(EditorBundleKt.readerScheduler(getEditorBundle())).doOnNext(new C8554c()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C8555d()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final Observable<?> m37409l() {
        String relativePath;
        ContentConstants contentConstants = ContentConstants.INSTANCE;
        TemplateJsonBean templateJsonBean = this.templateJsonBean;
        String str = null;
        if (!contentConstants.isTemplatePDF(templateJsonBean != null ? templateJsonBean.getContentType() : null)) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        TemplateJsonBean templateJsonBean2 = this.templateJsonBean;
        if (templateJsonBean2 != null && (relativePath = templateJsonBean2.getRelativePath()) != null) {
            str = TemplatePaths.INSTANCE.templateResAbsolutePath(relativePath);
        }
        if (!FileUtils.INSTANCE.isFileExist(str)) {
            Observable<?> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        LoadReaderPageInfoRequest loadReaderPageInfoRequest = new LoadReaderPageInfoRequest(EditorBundleKt.readerBundle(getEditorBundle()));
        if (str == null) {
            str = "";
        }
        loadReaderPageInfoRequest.setPath(str);
        Observable doOnNext = RxBaseAppActionKt.submitRequestToReader(this, loadReaderPageInfoRequest).doOnNext(new C8556e(loadReaderPageInfoRequest));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return RxjavaKt.onErrorReturnItemWithLog(doOnNext, loadReaderPageInfoRequest);
    }

    /* renamed from: m */
    public final RectF m37410m(VirtualPage virtualPage, TemplateJsonBean templateJsonBean) {
        RectF rectF;
        CoverModel loadCoverById;
        String uniqueId = templateJsonBean.getUniqueId();
        RectF rectF2 = null;
        if (!getEditorBundle().getWorkBundle().getVirtualPolicy().isCoverPage(virtualPage.getBox().getId()) || (loadCoverById = KSyncBundle.INSTANCE.getUserCoverProvider().loadCoverById(uniqueId)) == null) {
            rectF = null;
        } else {
            loadCoverById.setSizeFormat(templateJsonBean.getSizeFormat());
            rectF = Templates.INSTANCE.coverTemplateRect(loadCoverById);
        }
        if (RectKt.isNullOrEmpty(rectF)) {
            TemplateModel loadTemplateListById = KSyncBundle.INSTANCE.getUserTemplateProvider().loadTemplateListById(uniqueId);
            if (loadTemplateListById != null) {
                loadTemplateListById.setSizeFormat(templateJsonBean.getSizeFormat());
                rectF2 = Templates.INSTANCE.paperTemplateRect(loadTemplateListById);
            }
            rectF = rectF2;
        }
        if (rectF != null) {
            RectFKt.rotateSize$default(rectF, virtualPage.getBox().getRotation(), 0.0f, 0.0f, 6, null);
            com.onyx.android.sdk.geometry.extension.RectFKt.scaleRect(rectF, virtualPage.getBox().getOriginRectF().width() / rectF.width());
        }
        return rectF;
    }

    /* renamed from: n */
    public final ModifyPagesTemplateAction m37411n() {
        TemplateJsonBean templateJsonBean = this.templateJsonBean;
        if (templateJsonBean == null || this.pageIds.isEmpty()) {
            return this;
        }
        String documentId = getEditorBundle().getWorkBundle().getOpenDocArgs().getDocumentId();
        if (WorkBundleKt.getWorkFeature(getEditorBundle().getWorkBundle()).supportMultiPage()) {
            Iterator<T> it2 = this.pageIds.iterator();
            while (it2.hasNext()) {
                m37408q(this, (String) it2.next(), documentId, templateJsonBean, false, 8, null);
            }
        } else {
            m37412o(documentId, templateJsonBean);
        }
        return this;
    }

    /* renamed from: o */
    public final void m37412o(String documentId, TemplateJsonBean templateJsonBean) {
        Object first;
        VirtualDocPolicy virtualPolicy = getEditorBundle().getWorkBundle().getVirtualPolicy();
        List<VirtualPage> virtualPageList = virtualPolicy.getVirtualPageList();
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) virtualPageList);
        VirtualPage virtualPage = (VirtualPage) first;
        m37413p(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId(), documentId, templateJsonBean, false);
        int size = virtualPageList.size();
        for (int i = 1; i < size; i++) {
            VirtualPage virtualPage2 = virtualPageList.get(i);
            String pageId = virtualPage2.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId();
            int colorTheme = virtualPage2.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getColorTheme();
            int colorTheme2 = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getColorTheme();
            virtualPage2.setConfig(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().copy());
            virtualPage2.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().setPageId(pageId);
            virtualPage2.updateBoxExtraInfo();
            virtualPolicy.updatePage(virtualPage2);
            if (colorTheme != colorTheme2) {
                this.changedNotePageIdSet.add(pageId);
            }
            WorkBundleKt.obtainBoxManager(getEditorBundle().getWorkBundle()).updateBoxInfoContentPath(pageId, virtualPage2.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath());
        }
    }

    /* renamed from: p */
    public final void m37413p(String pageId, String documentId, TemplateJsonBean templateJsonBean, boolean updatePageRect) {
        VirtualPage virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(pageId);
        if (virtualPage == null) {
            return;
        }
        this.closeContentPathSet.add(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath());
        int colorTheme = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getColorTheme();
        Templates templates = Templates.INSTANCE;
        VirtualPageConfig updatePageConfigByTemplate = templates.updatePageConfigByTemplate(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String(), this.templateJsonBean, documentId);
        int colorTheme2 = virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getColorTheme();
        BoxInfo contentInfo = virtualPage.getBox().getContentInfo();
        if (contentInfo != null) {
            contentInfo.setId(updatePageConfigByTemplate.getContentPageId());
        }
        templates.copyVirtualPageTemplateAndUpdateConfig(documentId, virtualPage, this.templateJsonBean);
        templates.saveTemplateToFileIfNeed(templateJsonBean, documentId, pageId);
        if (updatePageRect) {
            m37418v(virtualPage, templateJsonBean);
            ReaderPageInfo readerPageInfo = this.readerPageInfo;
            if (readerPageInfo != null) {
                VirtualPage createVirtualPageByReader$default = VirtualPage.Companion.createVirtualPageByReader$default(VirtualPage.INSTANCE, readerPageInfo, templateJsonBean.getUniqueId(), templateJsonBean.getContentType(), null, 0, 24, null);
                virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().setContentOriginRectF(createVirtualPageByReader$default.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentOriginRectF());
                BoxInfo contentInfo2 = virtualPage.getBox().getContentInfo();
                if (contentInfo2 != null) {
                    contentInfo2.setOriginRectF(createVirtualPageByReader$default.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentOriginRectF());
                }
            }
        }
        if (colorTheme != colorTheme2) {
            this.changedNotePageIdSet.add(pageId);
        }
        virtualPage.updateBoxExtraInfo();
        if (updatePageRect) {
            m37416t(virtualPage);
        }
        getEditorBundle().getWorkBundle().getVirtualPolicy().updatePage(virtualPage);
        WorkBundleKt.obtainBoxManager(getEditorBundle().getWorkBundle()).updateBoxInfoContentPath(pageId, virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath());
    }

    /* renamed from: r */
    public final void m37414r(NotePage notePage) {
        List mutableList;
        List distinct;
        if (notePage == null) {
            return;
        }
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) shapeTypes.filterMarkerShapes(notePage.getShapeList()));
        CollectionKt.safeAddAll(mutableList, shapeTypes.filterSubTypeMarkerShapes(notePage.getShapeList()));
        distinct = CollectionsKt___CollectionsKt.distinct(mutableList);
        ArrayList<Shape> arrayList = new ArrayList();
        for (Object obj : distinct) {
            if (ShapePersistOptionsKt.isBottom((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        for (Shape shape : arrayList) {
            ShapePersistOptionsKt.setUnderContent(shape, !ShapePersistOptionsKt.isUnderContent$default(shape, false, 1, null));
            NotePageShape.INSTANCE.saveShape(notePage, shape);
        }
    }

    /* renamed from: s */
    public final void m37415s() {
        for (String str : this.changedNotePageIdSet) {
            if (WorkBundleKt.getWorkFeature(getEditorBundle().getWorkBundle()).supportMultiPage()) {
                VirtualPage virtualPage = getEditorBundle().getWorkBundle().getVirtualPolicy().getVirtualPage(str);
                if (virtualPage != null) {
                    m37414r(getEditorBundle().getWorkBundle().getVirtualPolicy().getNotePage(virtualPage));
                }
            } else {
                m37414r(NoteDocNotePage.INSTANCE.getCacheNotePage(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc(), str));
            }
        }
    }

    /* renamed from: t */
    public final void m37416t(VirtualPage virtualPage) {
        BoxManager boxManager;
        WorkBundle workBundle = getEditorBundle().getWorkBundle();
        if (workBundle.getVirtualPolicy().getVirtualPageIndex(virtualPage.getBox().getId()) >= 0 && (boxManager = workBundle.getBoxManager()) != null) {
            boxManager.updateDataAndApplyScale(workBundle.getVirtualPolicy().boxInfoSnapshot());
            boxManager.scrollTo(virtualPage.getBox().getId(), 0.0f, 0.0f);
            boxManager.alignCenter();
        }
    }

    /* renamed from: u */
    public final void m37417u(VirtualPage virtualPage, RectF pageRect) {
        VirtualDocPolicy virtualPolicy = getEditorBundle().getWorkBundle().getVirtualPolicy();
        int virtualPageIndex = virtualPolicy.getVirtualPageIndex(virtualPage.getBox().getId());
        if (virtualPageIndex < 0) {
            return;
        }
        virtualPolicy.updateOriginPageRectF(virtualPageIndex, pageRect);
    }

    /* renamed from: v */
    public final void m37418v(VirtualPage virtualPage, TemplateJsonBean templateJsonBean) {
        RectF m37410m = m37410m(virtualPage, templateJsonBean);
        if (RectKt.isNullOrEmpty(m37410m)) {
            return;
        }
        m37417u(virtualPage, m37410m);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModifyPagesTemplateAction(@NotNull EditorBundle editorBundle, @Nullable TemplateJsonBean templateJsonBean, @NotNull List<String> pageIds) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        this.templateJsonBean = templateJsonBean;
        this.pageIds = pageIds;
        this.closeContentPathSet = new LinkedHashSet();
        this.changedNotePageIdSet = new LinkedHashSet();
    }
}
