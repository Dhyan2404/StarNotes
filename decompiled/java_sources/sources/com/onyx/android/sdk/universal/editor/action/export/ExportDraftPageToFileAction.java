package com.onyx.android.sdk.universal.editor.action.export;

import android.graphics.Bitmap;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.data.render.NoteThumbnailRenderArgs;
import com.onyx.android.sdk.note.request.RenderNotePageThumbnailRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.data.ExportDraftPageArgs;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/export/ExportDraftPageToFileAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "noteExportArgs", "", "i", "I", "pageIndex", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nExportDraftPageToFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportDraftPageToFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportDraftPageToFileAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n288#2,2:50\n*S KotlinDebug\n*F\n+ 1 ExportDraftPageToFileAction.kt\ncom/onyx/android/sdk/universal/editor/action/export/ExportDraftPageToFileAction\n*L\n32#1:50,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ExportDraftPageToFileAction extends RxBaseAppAction<String> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final NoteExportArgs noteExportArgs;

    /* renamed from: i, reason: from kotlin metadata */
    public final int pageIndex;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportDraftPageToFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C8959a<T, R> implements Function {
        public C8959a() {
        }

        /* renamed from: a */
        public final void m38099a(@NotNull ExportDraftPageToFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ExportDraftPageToFileAction.this.m38098l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m38099a((ExportDraftPageToFileAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.export.ExportDraftPageToFileAction$b */
    /* loaded from: classes8.dex */
    public static final class C8960b<T, R> implements Function {

        /* renamed from: e */
        public static final C8960b<T, R> f48772e = new C8960b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return "";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExportDraftPageToFileAction(@NotNull EditorBundle editorBundle, @NotNull NoteExportArgs noteExportArgs, int i) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(noteExportArgs, "noteExportArgs");
        this.noteExportArgs = noteExportArgs;
        this.pageIndex = i;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        Observable<String> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C8959a()).map(C8960b.f48772e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m38098l() {
        Object obj;
        BoxInfo noteInfo;
        ExportDraftPageArgs exportDraftPageArgs = this.noteExportArgs.getExportDraftPageArgs();
        if (exportDraftPageArgs == null) {
            return;
        }
        String str = exportDraftPageArgs.getPageIndexMap().get(Integer.valueOf(this.pageIndex));
        Iterator<T> it2 = exportDraftPageArgs.getBoxInfoList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            BoxInfo noteInfo2 = ((BoxInfo) next).getNoteInfo();
            if (Intrinsics.areEqual(str, noteInfo2 != null ? noteInfo2.getId() : null)) {
                obj = next;
                break;
            }
        }
        BoxInfo boxInfo = (BoxInfo) obj;
        if (boxInfo == null || (noteInfo = boxInfo.getNoteInfo()) == null) {
            return;
        }
        RectF copy = RectFKt.copy(noteInfo.getBox());
        copy.offset(-exportDraftPageArgs.getPageRectF().left, -exportDraftPageArgs.getPageRectF().top);
        String id = noteInfo.getId();
        float actualScale = noteInfo.getActualScale();
        Bitmap viewportBitmap = exportDraftPageArgs.getViewportBitmap();
        Intrinsics.checkNotNull(viewportBitmap);
        NoteThumbnailRenderArgs noteThumbnailRenderArgs = new NoteThumbnailRenderArgs(copy, boxInfo, id, actualScale, viewportBitmap, null, 32, null);
        AppConfig appConfig = AppConfig.INSTANCE;
        noteThumbnailRenderArgs.setShowTape(appConfig.getRenderTapeInImage());
        noteThumbnailRenderArgs.setRenderReferenceShape(this.noteExportArgs.getExportedDraftShapeIds() != null);
        noteThumbnailRenderArgs.setRenderedShapeIds(this.noteExportArgs.getExportedDraftShapeIds());
        noteThumbnailRenderArgs.setShowExcerptIndicator(appConfig.getRenderExcerptIndicatorInPdf());
        noteThumbnailRenderArgs.setRenderOutOfPageShape(false);
        new RenderNotePageThumbnailRequest(EditorBundleKt.noteBundle(getEditorBundle()), noteThumbnailRenderArgs).execute2();
    }
}
