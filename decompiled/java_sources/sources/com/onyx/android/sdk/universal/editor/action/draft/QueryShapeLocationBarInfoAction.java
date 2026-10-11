package com.onyx.android.sdk.universal.editor.action.draft;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.document.doc.NoteDocShapeLocation;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import kotlin.time.TimeSource;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0012\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\t\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "l", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "getCanNextShape", Constants.BOOLEAN_VALUE_SIG, "setCanNextShape", "(Z)V", "canNextShape", "i", "getCanPrevShape", "setCanPrevShape", "canPrevShape", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "j", "Ljava/util/List;", "visibleBoxList", "Landroid/graphics/RectF;", C4921e.f26537n, "Landroid/graphics/RectF;", "currentViewport", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nQueryShapeLocationBarInfoAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryShapeLocationBarInfoAction.kt\ncom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n1#1,58:1\n18#2,4:59\n50#2,7:63\n*S KotlinDebug\n*F\n+ 1 QueryShapeLocationBarInfoAction.kt\ncom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction\n*L\n45#1:59,4\n45#1:63,7\n*E\n"})
/* loaded from: classes8.dex */
public final class QueryShapeLocationBarInfoAction extends RxBaseAppAction<QueryShapeLocationBarInfoAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public boolean canNextShape;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean canPrevShape;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<BoxInfo> visibleBoxList;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final RectF currentViewport;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.draft.QueryShapeLocationBarInfoAction$a */
    /* loaded from: classes8.dex */
    public static final class C8673a<T> implements Consumer {
        public C8673a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull QueryShapeLocationBarInfoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            QueryShapeLocationBarInfoAction.this.m37654l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.draft.QueryShapeLocationBarInfoAction$b */
    /* loaded from: classes8.dex */
    public static final class C8674b<T> implements Consumer {
        public C8674b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull QueryShapeLocationBarInfoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            QueryShapeLocationBarInfoAction.this.m37655m();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QueryShapeLocationBarInfoAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.visibleBoxList = new ArrayList();
        this.currentViewport = new RectF();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<QueryShapeLocationBarInfoAction> create() {
        Observable<QueryShapeLocationBarInfoAction> doOnNext = Observable.just(this).doOnNext(new C8673a()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C8674b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    public final boolean getCanNextShape() {
        return this.canNextShape;
    }

    public final boolean getCanPrevShape() {
        return this.canPrevShape;
    }

    /* renamed from: l */
    public final void m37654l() {
        this.visibleBoxList.addAll(EditorBundleKt.virtualDocViewInfo(getEditorBundle()).getVisibleBoxInfoList());
        this.currentViewport.set(EditorBundleKt.viewport(getEditorBundle()).getBox());
    }

    /* renamed from: m */
    public final void m37655m() {
        if (isDisposed()) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), AnyKt.toSimpleNameString(this) + ", isDisposed", new Object[0]);
            return;
        }
        long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
        NoteDocument noteDoc = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc();
        NoteDocShapeLocation noteDocShapeLocation = NoteDocShapeLocation.INSTANCE;
        this.canNextShape = noteDocShapeLocation.hasNextShape(noteDoc, this.visibleBoxList, this.currentViewport);
        this.canPrevShape = noteDocShapeLocation.hasPrevShape(noteDoc, this.visibleBoxList, this.currentViewport);
        long m74119elapsedNowUwyO8pc = TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto);
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "QueryShapeLocationBarInfoAction, isDisposed = " + isDisposed() + ", canNextShape = " + this.canNextShape + ", canPrevShape = " + this.canPrevShape + " ---> " + ((Object) Duration.m74024toStringimpl(m74119elapsedNowUwyO8pc)), new Object[0]);
    }

    public final void setCanNextShape(boolean z) {
        this.canNextShape = z;
    }

    public final void setCanPrevShape(boolean z) {
        this.canPrevShape = z;
    }
}
