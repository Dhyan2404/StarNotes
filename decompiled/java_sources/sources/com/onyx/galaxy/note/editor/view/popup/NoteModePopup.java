package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.universal.editor.config.EditorTouchMode;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupNoteModeBinding;
import com.onyx.galaxy.note.editor.view.popup.NoteModePopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0017B!\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u001b\u0010\u0010\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", C4921e.f26528e, "s", "Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;", "q", "Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;", "getListener", "()Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;", "r", "Lkotlin/Lazy;", GoogleApiAvailabilityLight.f29016b, "()Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;", "binding", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "NoteModeListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteModePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteModePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/NoteModePopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,71:1\n256#2,2:72\n256#2,2:74\n256#2,2:76\n*S KotlinDebug\n*F\n+ 1 NoteModePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/NoteModePopup\n*L\n65#1:72,2\n67#1:74,2\n69#1:76,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteModePopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final NoteModeListener listener;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;", "", "onNoteMode", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE, "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface NoteModeListener {
        void onNoteMode(@NotNull EditorTouchMode mode);
    }

    public /* synthetic */ NoteModePopup(Context context, NoteModeListener noteModeListener, DockType dockType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, noteModeListener, (i & 4) != 0 ? DockType.BOTTOM : dockType);
    }

    /* renamed from: p */
    public static final void m49072p(NoteModePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.listener.onNoteMode(EditorTouchMode.READING);
        this$0.dismiss();
    }

    /* renamed from: q */
    public static final void m49073q(NoteModePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.listener.onNoteMode(EditorTouchMode.STYLUS_SCRIBBLE);
        this$0.dismiss();
    }

    /* renamed from: r */
    public static final void m49074r(NoteModePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.listener.onNoteMode(EditorTouchMode.FINGER_SCRIBBLE);
        this$0.dismiss();
    }

    @NotNull
    public final NoteModeListener getListener() {
        return this.listener;
    }

    /* renamed from: n */
    public final PopupNoteModeBinding m49075n() {
        return (PopupNoteModeBinding) this.binding.getValue();
    }

    /* renamed from: o */
    public final void m49076o() {
        TintLinearLayout llyReadingMode = m49075n().llyReadingMode;
        Intrinsics.checkNotNullExpressionValue(llyReadingMode, "llyReadingMode");
        ViewKt.click$default(llyReadingMode, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.wyj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteModePopup.m49072p(NoteModePopup.this, view);
            }
        }, 1, null);
        TintLinearLayout llyStylusMode = m49075n().llyStylusMode;
        Intrinsics.checkNotNullExpressionValue(llyStylusMode, "llyStylusMode");
        ViewKt.click$default(llyStylusMode, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xyj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteModePopup.m49073q(NoteModePopup.this, view);
            }
        }, 1, null);
        TintLinearLayout llyFingerMode = m49075n().llyFingerMode;
        Intrinsics.checkNotNullExpressionValue(llyFingerMode, "llyFingerMode");
        ViewKt.click$default(llyFingerMode, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yyj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteModePopup.m49074r(NoteModePopup.this, view);
            }
        }, 1, null);
    }

    /* renamed from: s */
    public final void m49077s() {
        EditorTouchMode editTouchMode$default = MMKVNote.getEditTouchMode$default(MMKVNote.INSTANCE, null, 1, null);
        m49075n().llyReadingMode.setEnabled(!editTouchMode$default.isReadingMode());
        TintImageView ivReadingModeSelected = m49075n().ivReadingModeSelected;
        Intrinsics.checkNotNullExpressionValue(ivReadingModeSelected, "ivReadingModeSelected");
        ivReadingModeSelected.setVisibility(editTouchMode$default.isReadingMode() ? 0 : 8);
        m49075n().llyStylusMode.setEnabled(!editTouchMode$default.isStylusMode());
        TintImageView ivStylusModeSelected = m49075n().ivStylusModeSelected;
        Intrinsics.checkNotNullExpressionValue(ivStylusModeSelected, "ivStylusModeSelected");
        ivStylusModeSelected.setVisibility(editTouchMode$default.isStylusMode() ? 0 : 8);
        m49075n().llyFingerMode.setEnabled(true ^ editTouchMode$default.isFingerMode());
        TintImageView ivFingerModeSelected = m49075n().ivFingerModeSelected;
        Intrinsics.checkNotNullExpressionValue(ivFingerModeSelected, "ivFingerModeSelected");
        ivFingerModeSelected.setVisibility(editTouchMode$default.isFingerMode() ? 0 : 8);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteModePopup(@NotNull final Context context, @NotNull NoteModeListener listener, @NotNull DockType dockType) {
        super(context, dockType);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        this.listener = listener;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupNoteModeBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.NoteModePopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupNoteModeBinding invoke() {
                PopupNoteModeBinding inflate = PopupNoteModeBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        View root = m49075n().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setBackgroundDrawable(null);
        m49076o();
        m49077s();
    }
}
