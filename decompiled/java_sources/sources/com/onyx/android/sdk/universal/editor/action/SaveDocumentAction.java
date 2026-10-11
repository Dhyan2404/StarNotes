package com.onyx.android.sdk.universal.editor.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.request.SaveAndClearDirtyNotePageRequest;
import com.onyx.android.sdk.note.request.SaveNoteModelRequest;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SaveNoteTreeEvent;
import com.onyx.android.sdk.replicator.event.SyncNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.bean.SyncNoteTreeBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.SaveDocumentAction;
import com.onyx.android.sdk.universal.editor.action.export.ExportPageToBitmapAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.flush.DeleteStashShapeAction;
import com.onyx.android.sdk.universal.editor.action.tag.UpdateDocPageTagAction;
import com.onyx.android.sdk.universal.editor.action.thumbnail.CheckNeedUpdateCoverThumbnailAction;
import com.onyx.android.sdk.universal.editor.action.thumbnail.ComputeCoverThumbnailPageIndexAction;
import com.onyx.android.sdk.universal.editor.action.thumbnail.SaveThumbnailAction;
import com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateThumbnailOrientationAction;
import com.onyx.android.sdk.universal.editor.events.note.SavedDocumentEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.SaveDocRequest;
import com.onyx.android.sdk.universal.editor.request.p041pb.ExportToPBFromDBRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*J\f\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\f\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\f\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0002J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R$\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00128\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\"\u0010\u001e\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0017\u001a\u0004\b\u001b\u0010\u0019\"\u0004\b\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u0017R\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010&\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010\u0017¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", "u", "t", "s", "m", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "", "p", "q", "w", "y", "r", "v", C4921e.f26528e, "z", "", GoogleApiAvailabilityLight.f29016b, BaiduYunConstant.CREATE, "<set-?>", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "isDirty", Constants.BOOLEAN_VALUE_SIG, "i", "getForceSave", "setForceSave", "(Z)V", "forceSave", "j", "isOwner", "", C4921e.f26537n, Constants.INTEGER_SIG, "coverPageIndex", "l", "isNeedUpdateCoverThumbnail", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveDocumentAction extends RxBaseAppAction<SaveDocumentAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public boolean isDirty;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean forceSave;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isOwner;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public Integer coverPageIndex;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean isNeedUpdateCoverThumbnail;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$a */
    /* loaded from: classes8.dex */
    public static final class C8377a<T> implements Consumer {
        public C8377a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveDocumentAction.this.m37088q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$a0 */
    /* loaded from: classes8.dex */
    public static final class C8378a0<T, R> implements Function {
        public C8378a0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveDocumentAction apply(@NotNull UpdateDocPageTagAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$b */
    /* loaded from: classes8.dex */
    public static final class C8379b<T> implements Consumer {
        public C8379b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.postEvent(new SavedDocumentEvent(it2, SaveDocumentAction.this.getIsDirty()));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$b0 */
    /* loaded from: classes8.dex */
    public static final class C8380b0<T, R> implements Function {
        public C8380b0() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends BoxInfo> m37100a(int i) {
            return ExportPageToBitmapAction.INSTANCE.getPageBoxInfo(SaveDocumentAction.this.getEditorBundle(), null, Integer.valueOf(i));
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m37100a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$c */
    /* loaded from: classes8.dex */
    public static final class C8381c<T> implements Consumer {
        public C8381c() {
        }

        /* renamed from: a */
        public final void m37101a(int i) {
            SaveDocumentAction.this.coverPageIndex = Integer.valueOf(i);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m37101a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$c0 */
    /* loaded from: classes8.dex */
    public static final class C8382c0<T, R> implements Function {

        /* renamed from: e */
        public static final C8382c0<T, R> f47856e = new C8382c0<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Orientation apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RectKt.getOrientation(it2.getBox());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$d */
    /* loaded from: classes8.dex */
    public static final class C8383d<T, R> implements Function {
        public C8383d() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m37103a(int i) {
            return new CheckNeedUpdateCoverThumbnailAction(SaveDocumentAction.this.getEditorBundle(), i).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m37103a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$d0 */
    /* loaded from: classes8.dex */
    public static final class C8384d0<T, R> implements Function {
        public C8384d0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateThumbnailOrientationAction> apply(@NotNull Orientation it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new UpdateThumbnailOrientationAction(SaveDocumentAction.this.getEditorBundle(), it2, false).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$e */
    /* loaded from: classes8.dex */
    public static final class C8385e<T> implements Consumer {
        public C8385e() {
        }

        /* renamed from: a */
        public final void m37105a(boolean z) {
            SaveDocumentAction.this.isNeedUpdateCoverThumbnail = z;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m37105a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$e0 */
    /* loaded from: classes8.dex */
    public static final class C8386e0<T, R> implements Function {
        public C8386e0() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveDocumentAction apply(@NotNull UpdateThumbnailOrientationAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$f */
    /* loaded from: classes8.dex */
    public static final class C8387f<T, R> implements Function {
        public C8387f() {
        }

        @NotNull
        /* renamed from: a */
        public final SaveDocumentAction m37107a(boolean z) {
            return SaveDocumentAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m37107a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$g */
    /* loaded from: classes8.dex */
    public static final class C8388g<T, R> implements Function {
        public C8388g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveDocumentAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$h */
    /* loaded from: classes8.dex */
    public static final class C8389h<T, R> implements Function {
        public C8389h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveDocumentAction> apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this.m37086o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$i */
    /* loaded from: classes8.dex */
    public static final class C8390i<T, R> implements Function {
        public C8390i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveDocumentAction> apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this.m37094w();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$j */
    /* loaded from: classes8.dex */
    public static final class C8391j<T, R> implements Function {
        public C8391j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this.m37092u();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$k */
    /* loaded from: classes8.dex */
    public static final class C8392k<T, R> implements Function {
        public C8392k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveDocumentAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this.m37095y();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$l */
    /* loaded from: classes8.dex */
    public static final class C8393l<T, R> implements Function {
        public C8393l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveDocumentAction> apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this.m37091t();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$m */
    /* loaded from: classes8.dex */
    public static final class C8394m<T, R> implements Function {
        public C8394m() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveDocumentAction> apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this.m37090s();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$n */
    /* loaded from: classes8.dex */
    public static final class C8395n<T, R> implements Function {
        public C8395n() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveDocumentAction> apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this.m37089r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$o */
    /* loaded from: classes8.dex */
    public static final class C8396o<T, R> implements Function {
        public C8396o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveDocumentAction> apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this.m37093v();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$p */
    /* loaded from: classes8.dex */
    public static final class C8397p<T, R> implements Function {
        public C8397p() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this.m37084m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$q */
    /* loaded from: classes8.dex */
    public static final class C8398q<T, R> implements Function {
        public C8398q() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveDocumentAction apply(@NotNull DeleteStashShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$r */
    /* loaded from: classes8.dex */
    public static final class C8399r<T, R> implements Function {
        public C8399r() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveDocumentAction apply(@NotNull ExportToPBFromDBRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$s */
    /* loaded from: classes8.dex */
    public static final class C8400s<T> implements Consumer {
        public C8400s() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SaveAndClearDirtyNotePageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveDocumentAction saveDocumentAction = SaveDocumentAction.this;
            saveDocumentAction.isDirty = saveDocumentAction.getIsDirty() || it2.getDirty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$t */
    /* loaded from: classes8.dex */
    public static final class C8401t<T, R> implements Function {
        public C8401t() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveDocumentAction apply(@NotNull SaveAndClearDirtyNotePageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$u */
    /* loaded from: classes8.dex */
    public static final class C8402u<T, R> implements Function {
        public C8402u() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull SaveDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this.m37096z();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$v */
    /* loaded from: classes8.dex */
    public static final class C8403v<T, R> implements Function {
        public C8403v() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveNoteModelRequest> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveDocumentAction saveDocumentAction = SaveDocumentAction.this;
            return RxBaseAppActionKt.submitRequestToNote(saveDocumentAction, new SaveNoteModelRequest(EditorBundleKt.noteBundle(saveDocumentAction.getEditorBundle())));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$w */
    /* loaded from: classes8.dex */
    public static final class C8404w<T> implements Consumer {
        public C8404w() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SaveNoteModelRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveDocumentAction saveDocumentAction = SaveDocumentAction.this;
            saveDocumentAction.isDirty = saveDocumentAction.getIsDirty() || it2.getDirty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$x */
    /* loaded from: classes8.dex */
    public static final class C8405x<T> implements Consumer {
        public C8405x() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SaveNoteModelRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SaveDocumentAction.this.m37087p(it2.getNoteModel());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$y */
    /* loaded from: classes8.dex */
    public static final class C8406y<T, R> implements Function {
        public C8406y() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveDocumentAction apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$z */
    /* loaded from: classes8.dex */
    public static final class C8407z<T, R> implements Function {
        public C8407z() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveDocumentAction apply(@NotNull SaveDocRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveDocumentAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveDocumentAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.isOwner = EditorBundleKt.isOwner(editorBundle);
    }

    /* renamed from: x */
    public static final void m37083x(SaveDocumentAction this$0, SaveDocRequest it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.isDirty = true;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveDocumentAction> create() {
        if (EditorBundleKt.isDocumentOpen(getEditorBundle()) && m37085n()) {
            Observable<SaveDocumentAction> map = Observable.just(this).flatMap(new C8389h()).flatMap(new C8390i()).flatMap(new C8391j()).flatMap(new C8392k()).flatMap(new C8393l()).flatMap(new C8394m()).flatMap(new C8395n()).flatMap(new C8396o()).flatMap(new C8397p()).map(new C8388g());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        Observable<SaveDocumentAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    public final boolean getForceSave() {
        return this.forceSave;
    }

    /* renamed from: isDirty, reason: from getter */
    public final boolean getIsDirty() {
        return this.isDirty;
    }

    /* renamed from: m */
    public final Observable<?> m37084m() {
        Observable<?> doOnNext = DocCommonActionsKt.createNoteObservable(getEditorBundle(), new Function1<NoteBundle, SyncNoteModel>() { // from class: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$afterDocumentSaved$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final SyncNoteModel invoke(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getNoteDoc().getNoteModel();
            }
        }).doOnNext(new C8377a()).doOnNext(new C8379b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: n */
    public final boolean m37085n() {
        return this.forceSave || this.isOwner;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: o */
    public final Observable<SaveDocumentAction> m37086o() {
        Observable map = new ComputeCoverThumbnailPageIndexAction(getEditorBundle(), null, 2, 0 == true ? 1 : 0).build().doOnNext(new C8381c()).flatMap(new C8383d()).doOnNext(new C8385e()).map(new C8387f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, this);
    }

    /* renamed from: p */
    public final void m37087p(SyncNoteModel noteModel) {
        List<? extends SyncNoteModel> mutableListOf;
        if (this.isDirty) {
            SyncNoteTreeBean syncNoteTreeBean = new SyncNoteTreeBean();
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(noteModel);
            syncNoteTreeBean.setNoteModels(mutableListOf);
            KSyncBundle.INSTANCE.post(new SaveNoteTreeEvent(syncNoteTreeBean));
        }
    }

    /* renamed from: q */
    public final void m37088q(SyncNoteModel noteModel) {
        List<? extends SyncNoteModel> mutableListOf;
        if (this.isDirty) {
            SyncNoteTreeBean syncNoteTreeBean = new SyncNoteTreeBean();
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(noteModel);
            syncNoteTreeBean.setNoteModels(mutableListOf);
            KSyncBundle.INSTANCE.post(new SyncNoteTreeEvent(syncNoteTreeBean));
        }
    }

    /* renamed from: r */
    public final Observable<SaveDocumentAction> m37089r() {
        if (this.isOwner) {
            Observable<R> map = new DeleteStashShapeAction(getEditorBundle(), EditorBundleKt.docId(getEditorBundle()), null, 4, null).build().map(new C8398q());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return RxjavaKt.onErrorReturnItemWithLog(map, this);
        }
        Observable<SaveDocumentAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: s */
    public final Observable<SaveDocumentAction> m37090s() {
        Observable<SaveDocumentAction> map = RxBaseAppActionKt.submitRequestToNote(this, new ExportToPBFromDBRequest(EditorBundleKt.noteBundle(getEditorBundle()))).map(new C8399r());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setForceSave(boolean z) {
        this.forceSave = z;
    }

    /* renamed from: t */
    public final Observable<SaveDocumentAction> m37091t() {
        Observable<SaveDocumentAction> map = RxBaseAppActionKt.submitRequestToNote(this, new SaveAndClearDirtyNotePageRequest(EditorBundleKt.noteBundle(getEditorBundle()))).doOnNext(new C8400s()).map(new C8401t());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: u */
    public final Observable<?> m37092u() {
        Observable<?> doOnNext = Observable.just(this).flatMap(new C8402u()).flatMap(new C8403v()).doOnNext(new C8404w()).doOnNext(new C8405x());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: v */
    public final Observable<SaveDocumentAction> m37093v() {
        if (!this.isNeedUpdateCoverThumbnail) {
            Observable<SaveDocumentAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        SaveThumbnailAction saveThumbnailAction = new SaveThumbnailAction(getEditorBundle());
        saveThumbnailAction.setPageIndex(this.coverPageIndex);
        Observable<R> map = saveThumbnailAction.build().map(new C8406y());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, this);
    }

    /* renamed from: w */
    public final Observable<SaveDocumentAction> m37094w() {
        final SaveDocRequest saveDocRequest = new SaveDocRequest(getEditorBundle().getWorkBundle());
        Observable<SaveDocumentAction> map = RxjavaKt.doOnNextIf(RxBaseAppActionKt.submitRequestToCore(this, saveDocRequest), new Function1<SaveDocRequest, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.SaveDocumentAction$saveVirtualDoc$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull SaveDocRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(SaveDocRequest.this.getIsDirtyVirtualDoc());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.p0m
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SaveDocumentAction.m37083x(SaveDocumentAction.this, (SaveDocRequest) obj);
            }
        }).map(new C8407z());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: y */
    public final Observable<SaveDocumentAction> m37095y() {
        UpdateDocPageTagAction updateDocPageTagAction = new UpdateDocPageTagAction(getEditorBundle());
        Observable<SaveDocumentAction> map = RxjavaKt.onErrorReturnItemWithLog(updateDocPageTagAction.build(), updateDocPageTagAction).map(new C8378a0());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: z */
    public final Observable<?> m37096z() {
        if (!this.isNeedUpdateCoverThumbnail) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        this.isDirty = true;
        Observable map = new ComputeCoverThumbnailPageIndexAction(getEditorBundle(), this.coverPageIndex).build().flatMap(new C8380b0()).map(C8382c0.f47856e).flatMap(new C8384d0()).map(new C8386e0());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, this);
    }
}
