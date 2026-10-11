package com.onyx.android.sdk.universal.editor.action.annotation;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.replicator.note.data.annotation.AnnotationInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.events.note.AnnotationSelectionInfo;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u000b¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;", "getInfo", "()Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;", PrivilegedApp.f6532i, "Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;", "i", "Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;", "getAnnotationInfo", "()Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;", "annotationInfo", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateAnnotationAction extends RxBaseAppAction<UpdateAnnotationAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final AnnotationSelectionInfo info;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final AnnotationInfoBean annotationInfo;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.annotation.UpdateAnnotationAction$a */
    /* loaded from: classes8.dex */
    public static final class C8421a<T, R> implements Function {
        public C8421a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull UpdateAnnotationAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateAnnotationAction updateAnnotationAction = UpdateAnnotationAction.this;
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay(updateAnnotationAction, updateAnnotationAction.getInfo().getVirtualPageBoxInfo(), UpdateAnnotationAction.this.getInfo().getAnnotation());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.annotation.UpdateAnnotationAction$b */
    /* loaded from: classes8.dex */
    public static final class C8422b<T, R> implements Function {
        public C8422b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateAnnotationAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateAnnotationAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.annotation.UpdateAnnotationAction$c */
    /* loaded from: classes8.dex */
    public static final class C8423c<T, R> implements Function {
        public C8423c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateAnnotationAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateAnnotationAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateAnnotationAction(@NotNull EditorBundle editorBundle, @NotNull AnnotationSelectionInfo info, @NotNull AnnotationInfoBean annotationInfo) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(annotationInfo, "annotationInfo");
        this.info = info;
        this.annotationInfo = annotationInfo;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateAnnotationAction> create() {
        Observable<UpdateAnnotationAction> map = m37147l().flatMap(new C8421a()).map(new C8422b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final AnnotationInfoBean getAnnotationInfo() {
        return this.annotationInfo;
    }

    @NotNull
    public final AnnotationSelectionInfo getInfo() {
        return this.info;
    }

    /* renamed from: l */
    public final Observable<UpdateAnnotationAction> m37147l() {
        Observable<UpdateAnnotationAction> map = DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.annotation.UpdateAnnotationAction$updateAnnotation$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                invoke2(noteBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ShapePersistOptionsKt.setAnnotationInfoBean(UpdateAnnotationAction.this.getInfo().getAnnotation(), UpdateAnnotationAction.this.getAnnotationInfo());
                NoteDocNotePage noteDocNotePage = NoteDocNotePage.INSTANCE;
                NoteDocument noteDoc = it2.getNoteDoc();
                BoxInfo noteInfo = UpdateAnnotationAction.this.getInfo().getVirtualPageBoxInfo().getNoteInfo();
                NotePage notePage = noteDocNotePage.getNotePage(noteDoc, noteInfo != null ? noteInfo.getId() : null);
                if (notePage == null) {
                    return;
                }
                NotePageShape.INSTANCE.saveShape(notePage, UpdateAnnotationAction.this.getInfo().getAnnotation());
                it2.postAddShapeEvent(UpdateAnnotationAction.this.getInfo().getAnnotation());
            }
        }).map(new C8423c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
