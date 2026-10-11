package com.onyx.android.sdk.universal.editor.request.doc;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.document.doc.NoteDocBean;
import com.onyx.android.sdk.note.common.document.doc.NoteDocSave;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContent;
import com.onyx.android.sdk.reader.data.LoadReaderPageThumbnailArgs;
import com.onyx.android.sdk.reader.data.ReaderPageInfo;
import com.onyx.android.sdk.replicator.fts.model.FTSContentModel;
import com.onyx.android.sdk.replicator.fts.provider.FTSProvider;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.onyx.android.sdk.replicator.note.bean.PaperBean;
import com.onyx.android.sdk.replicator.note.data.constant.NoteScene;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocOptions;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.config.GlobalDocSettings;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0015¢\u0006\u0004\b5\u00106J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\u0012\u0010\u0011\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0016R\"\u0010\u0019\u001a\u00020\u00188\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010 \u001a\u00020\u001f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020'0&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010(R\u001d\u0010-\u001a\b\u0012\u0004\u0012\u00020*0&8\u0006¢\u0006\f\n\u0004\b\n\u0010(\u001a\u0004\b+\u0010,R$\u00104\u001a\u0004\u0018\u00010.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103¨\u00067"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", C4921e.f26537n, "j", "i", "l", C6999h.f39688c, C4921e.f26528e, "p", GoogleApiAvailabilityLight.f29016b, C6997f.f39671c, "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "templateJsonBean", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;", "docOptions", "m", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "noteCreateInfo", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getNoteModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "setNoteModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V", "Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;", "args", "Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;", "getArgs", "()Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;", "setArgs", "(Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V", "", "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;", "Ljava/util/List;", "ftsContentList", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "getReaderPathInfoList", "()Ljava/util/List;", "readerPathInfoList", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", "getToc", "()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", "setToc", "(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V", SyncConstant.LOCAL_TOC_DIR_NAME, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateVirtualDocRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateVirtualDocRequest.kt\ncom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1864#2,3:150\n1549#2:153\n1620#2,3:154\n1855#2,2:157\n*S KotlinDebug\n*F\n+ 1 CreateVirtualDocRequest.kt\ncom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest\n*L\n100#1:150,3\n117#1:153\n117#1:154,3\n129#1:157,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CreateVirtualDocRequest extends RxBaseAppRequest {
    public LoadReaderPageThumbnailArgs args;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final NoteCreateInfo noteCreateInfo;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<FTSContentModel> ftsContentList;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<ReaderPageInfo> readerPathInfoList;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public ReaderDocumentTableOfContent toc;
    public SyncNoteModel noteModel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateVirtualDocRequest(@NotNull WorkBundle workBundle, @NotNull NoteCreateInfo noteCreateInfo) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(noteCreateInfo, "noteCreateInfo");
        this.noteCreateInfo = noteCreateInfo;
        this.ftsContentList = new ArrayList();
        this.readerPathInfoList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        m41437f();
        m41441j();
        m41440i();
        m41443l();
        if (getAbort()) {
            return;
        }
        m41446o();
        m41442k(workBundle);
        m41445n();
    }

    /* renamed from: f */
    public final void m41437f() {
        m41438g(this.noteCreateInfo.getCoverJsonBean());
        Iterator<T> it2 = this.noteCreateInfo.getPaperBeanList().iterator();
        while (it2.hasNext()) {
            m41438g(((PaperBean) it2.next()).getPaperJsonBean());
        }
    }

    /* renamed from: g */
    public final void m41438g(TemplateJsonBean templateJsonBean) {
        Templates.INSTANCE.copyTemplateToDocumentDir(this.noteCreateInfo.getDocumentId(), templateJsonBean);
    }

    @NotNull
    public final LoadReaderPageThumbnailArgs getArgs() {
        LoadReaderPageThumbnailArgs loadReaderPageThumbnailArgs = this.args;
        if (loadReaderPageThumbnailArgs != null) {
            return loadReaderPageThumbnailArgs;
        }
        Intrinsics.throwUninitializedPropertyAccessException("args");
        return null;
    }

    @NotNull
    public final SyncNoteModel getNoteModel() {
        SyncNoteModel syncNoteModel = this.noteModel;
        if (syncNoteModel != null) {
            return syncNoteModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("noteModel");
        return null;
    }

    @NotNull
    public final List<ReaderPageInfo> getReaderPathInfoList() {
        return this.readerPathInfoList;
    }

    @Nullable
    public final ReaderDocumentTableOfContent getToc() {
        return this.toc;
    }

    /* renamed from: h */
    public final void m41439h() {
        if (NoteScene.INSTANCE.isPdfScribbleScene(getWorkBundle().getOpenDocArgs().getActiveScene())) {
            int i = 0;
            for (Object obj : this.readerPathInfoList) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                ReaderPageInfo readerPageInfo = (ReaderPageInfo) obj;
                VirtualPage virtualPage = getWorkBundle().getVirtualPolicy().getVirtualPage(i);
                if (virtualPage != null) {
                    List<FTSContentModel> list = this.ftsContentList;
                    FTSContentModel fTSContentModel = new FTSContentModel();
                    fTSContentModel.setType(TextContentType.PDF.name());
                    fTSContentModel.setPageUniqueId(virtualPage.getBox().getId());
                    fTSContentModel.setContent(readerPageInfo.getPageText());
                    CollectionKt.safeAdd(list, fTSContentModel);
                }
                i = i2;
            }
        }
    }

    /* renamed from: i */
    public final void m41440i() {
        NoteDocBean noteDocBean = getWorkBundle().getOpenDocArgs().toNoteDocBean();
        noteDocBean.setNoteCreateInfo(this.noteCreateInfo);
        getWorkBundle().getNoteBundle().getNoteDoc().handle(noteDocBean);
    }

    /* renamed from: j */
    public final void m41441j() {
        getWorkBundle().openVirtualDoc(OpenDocArgs.INSTANCE.createOpenDocArgs(this.noteCreateInfo));
    }

    /* renamed from: k */
    public final void m41442k(WorkBundle workBundle) {
        VirtualPage virtualPage = workBundle.getVirtualPolicy().getVirtualPage(0);
        if (virtualPage == null) {
            return;
        }
        RectF rectF = AppConfig.INSTANCE.getDEFAULT_SMALL_THUMBNAIL_SIZE().toRectF();
        RectF copy = RectFKt.copy(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentOriginRectF());
        RectFKt.scaleToPage(copy, rectF);
        setArgs(new LoadReaderPageThumbnailArgs(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath(), 0, RectKt.toSize(copy), RectFKt.copy(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentOriginRectF()), false, 16, null));
    }

    /* renamed from: l */
    public final void m41443l() {
        getWorkBundle().getOpenDocArgs().setReaderPathInfoList(this.readerPathInfoList);
        getWorkBundle().getOpenDocArgs().setToc(this.toc);
        getWorkBundle().getVirtualPolicy().onDocCreated();
        m41439h();
        WorkBundleKt.fillVirtualTocTree(getWorkBundle());
        getWorkBundle().getOpenDocArgs().setReaderPathInfoList(new ArrayList());
        getWorkBundle().getOpenDocArgs().setToc(null);
        m41444m(getWorkBundle().getDocOptions());
    }

    /* renamed from: m */
    public final void m41444m(VirtualDocOptions docOptions) {
        GlobalDocSettings globalDocSettings = GlobalDocSettings.INSTANCE;
        docOptions.setEnabledContinuousPage(globalDocSettings.isEnabledContinuousPage());
        docOptions.setLayoutType(Integer.valueOf(globalDocSettings.getLayoutType()));
        docOptions.setPageColumnCount(Integer.valueOf(globalDocSettings.getPageColumnCount()));
        docOptions.setScrollerVerticalGravity(globalDocSettings.getScrollerVerticalGravity());
        docOptions.setScrollerHorizontalGravity(globalDocSettings.getScrollerHorizontalGravity());
        docOptions.setEnabledAdaptiveStrokeWidth(globalDocSettings.isEnabledAdaptiveStrokeWidth());
    }

    /* renamed from: n */
    public final void m41445n() {
        setNoteModel(getWorkBundle().getNoteBundle().getNoteDoc().getNoteModel());
    }

    /* renamed from: o */
    public final void m41446o() {
        NoteDocSave.INSTANCE.save(getWorkBundle().getNoteBundle().getNoteDoc());
        getWorkBundle().getVirtualPolicy().save();
        m41447p();
    }

    /* renamed from: p */
    public final void m41447p() {
        int collectionSizeOrDefault;
        List<VirtualPage> virtualPageList = getWorkBundle().getVirtualPolicy().getVirtualPageList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(virtualPageList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = virtualPageList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualPage) it2.next()).getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId());
        }
        FTSProvider docFtsProvider = WorkBundleKt.getDocFtsProvider(getWorkBundle());
        docFtsProvider.saveFtsContent(this.ftsContentList);
        docFtsProvider.savePageStates(arrayList, TextContentType.PDF);
    }

    public final void setArgs(@NotNull LoadReaderPageThumbnailArgs loadReaderPageThumbnailArgs) {
        Intrinsics.checkNotNullParameter(loadReaderPageThumbnailArgs, "<set-?>");
        this.args = loadReaderPageThumbnailArgs;
    }

    public final void setNoteModel(@NotNull SyncNoteModel syncNoteModel) {
        Intrinsics.checkNotNullParameter(syncNoteModel, "<set-?>");
        this.noteModel = syncNoteModel;
    }

    public final void setToc(@Nullable ReaderDocumentTableOfContent readerDocumentTableOfContent) {
        this.toc = readerDocumentTableOfContent;
    }
}
