package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.universal.editor.events.note.SplitScreenType;
import com.onyx.android.sdk.universal.editor.events.note.StartSplitScreenEvent;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupTabNoteOptionsBinding;
import com.onyx.galaxy.note.editor.view.popup.NoteTabManagementPopup;
import com.onyx.galaxy.note.editor.view.popup.NoteTabOptionsPopup;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001b\u0010\u0013\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setTabListener", "", "s", C4921e.f26528e, "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "q", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "tabData", "r", "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;", "tabListener", "Lcom/onyx/galaxy/note/databinding/PopupTabNoteOptionsBinding;", "Lkotlin/Lazy;", GoogleApiAvailabilityLight.f29016b, "()Lcom/onyx/galaxy/note/databinding/PopupTabNoteOptionsBinding;", "binding", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteTabOptionsPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final NoteTabData tabData;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public NoteTabManagementPopup.TabManageListener tabListener;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteTabOptionsPopup(@NotNull final Context context, @NotNull NoteTabData tabData) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(tabData, "tabData");
        this.tabData = tabData;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupTabNoteOptionsBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.NoteTabOptionsPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupTabNoteOptionsBinding invoke() {
                return PopupTabNoteOptionsBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        m49121s();
        m49120o();
    }

    /* renamed from: p */
    public static final void m49116p(NoteTabOptionsPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteTabManagementPopup.TabManageListener tabManageListener = this$0.tabListener;
        if (tabManageListener != null) {
            tabManageListener.onCloseTab(this$0.tabData);
        }
        this$0.dismiss();
    }

    /* renamed from: q */
    public static final void m49117q(NoteTabOptionsPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DocCollectionBundle.INSTANCE.postEvent(new StartSplitScreenEvent(this$0.tabData.getUniqueId(), SplitScreenType.UP_DOWN));
        this$0.dismiss();
    }

    /* renamed from: r */
    public static final void m49118r(NoteTabOptionsPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DocCollectionBundle.INSTANCE.postEvent(new StartSplitScreenEvent(this$0.tabData.getUniqueId(), SplitScreenType.LEFT_RIGHT));
        this$0.dismiss();
    }

    /* renamed from: n */
    public final PopupTabNoteOptionsBinding m49119n() {
        return (PopupTabNoteOptionsBinding) this.binding.getValue();
    }

    /* renamed from: o */
    public final void m49120o() {
        m49119n().tvCloseNote.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.q2k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTabOptionsPopup.m49116p(NoteTabOptionsPopup.this, view);
            }
        });
        m49119n().tvUpDownSplit.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.r2k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTabOptionsPopup.m49117q(NoteTabOptionsPopup.this, view);
            }
        });
        m49119n().tvLeftRightSplit.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.s2k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTabOptionsPopup.m49118r(NoteTabOptionsPopup.this, view);
            }
        });
    }

    /* renamed from: s */
    public final void m49121s() {
        View root = m49119n().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
    }

    @NotNull
    public final NoteTabOptionsPopup setTabListener(@Nullable NoteTabManagementPopup.TabManageListener listener) {
        this.tabListener = listener;
        return this;
    }
}
