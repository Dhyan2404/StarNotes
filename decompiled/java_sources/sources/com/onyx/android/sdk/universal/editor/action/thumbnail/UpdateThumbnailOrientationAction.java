package com.onyx.android.sdk.universal.editor.action.thumbnail;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.data.thumbnail.ThumbnailRes;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B#\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\f¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/base/data/Orientation;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/Orientation;", "getOrientation", "()Lcom/onyx/android/sdk/base/data/Orientation;", "setOrientation", "(Lcom/onyx/android/sdk/base/data/Orientation;)V", "orientation", "", "i", Constants.HASIDCALL_INDEX_SIG, "getEnableSaveNoteModel", Constants.BOOLEAN_VALUE_SIG, "setEnableSaveNoteModel", "(Z)V", "enableSaveNoteModel", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/Orientation;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateThumbnailOrientationAction extends RxBaseAppAction<UpdateThumbnailOrientationAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Orientation orientation;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean enableSaveNoteModel;

    public /* synthetic */ UpdateThumbnailOrientationAction(EditorBundle editorBundle, Orientation orientation, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i & 2) != 0 ? Orientation.PORTRAIT : orientation, (i & 4) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateThumbnailOrientationAction> create() {
        return DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, UpdateThumbnailOrientationAction>() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateThumbnailOrientationAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final UpdateThumbnailOrientationAction invoke(@NotNull NoteBundle noteBundle) {
                Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
                SyncNoteModel noteModel = noteBundle.getNoteDoc().getNoteModel();
                final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                ThumbnailRes thumbnailRes = (ThumbnailRes) AnyKt.getOrElse(noteModel.getThumbnailRes(), new Function0<ThumbnailRes>() { // from class: com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateThumbnailOrientationAction$create$1$thumbnailRes$1
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final ThumbnailRes invoke() {
                        Ref.BooleanRef.this.element = true;
                        return ThumbnailRes.INSTANCE.create(1, "");
                    }
                });
                if (thumbnailRes.getOrientation() != UpdateThumbnailOrientationAction.this.getOrientation()) {
                    booleanRef.element = true;
                    thumbnailRes.setOrientation(UpdateThumbnailOrientationAction.this.getOrientation());
                }
                noteModel.setThumbnailRes(thumbnailRes);
                if (UpdateThumbnailOrientationAction.this.getEnableSaveNoteModel() && booleanRef.element) {
                    NoteModelProviderKt.saveNote(KSyncBundle.INSTANCE.getUserNoteProvider(), noteModel);
                }
                Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(UpdateThumbnailOrientationAction.this), "isNeedUpdateNoteModel = " + booleanRef.element + ", orientation = " + UpdateThumbnailOrientationAction.this.getOrientation(), new Object[0]);
                return UpdateThumbnailOrientationAction.this;
            }
        });
    }

    public final boolean getEnableSaveNoteModel() {
        return this.enableSaveNoteModel;
    }

    @NotNull
    public final Orientation getOrientation() {
        return this.orientation;
    }

    public final void setEnableSaveNoteModel(boolean z) {
        this.enableSaveNoteModel = z;
    }

    public final void setOrientation(@NotNull Orientation orientation) {
        Intrinsics.checkNotNullParameter(orientation, "<set-?>");
        this.orientation = orientation;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateThumbnailOrientationAction(@NotNull EditorBundle editorBundle, @NotNull Orientation orientation, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        this.orientation = orientation;
        this.enableSaveNoteModel = z;
    }
}
