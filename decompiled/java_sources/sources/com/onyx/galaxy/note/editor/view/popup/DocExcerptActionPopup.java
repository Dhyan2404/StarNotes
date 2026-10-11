package com.onyx.galaxy.note.editor.view.popup;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.note.DeleteExcerptByModelEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupDocExcerptActionBinding;
import com.onyx.galaxy.note.editor.view.popup.DocExcerptActionPopup;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 #2\u00020\u0001:\u0002$#B)\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0014¢\u0006\u0004\b!\u0010\"J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0015R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006%"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "setListener", "p", GoogleApiAvailabilityLight.f29016b, "m", "", "eventId", "s", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "r", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "model", "", Constants.HASIDCALL_INDEX_SIG, "full", "Lcom/onyx/galaxy/note/databinding/PopupDocExcerptActionBinding;", "t", "Lkotlin/Lazy;", C4921e.f26528e, "()Lcom/onyx/galaxy/note/databinding/PopupDocExcerptActionBinding;", "binding", "u", "Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Z)V", "Companion", "ActionListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DocExcerptActionPopup extends BasePopupWindow {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final ExcerptInfoBean model;

    /* renamed from: s */
    public final boolean full;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public ActionListener com.google.android.gms.common.internal.ServiceSpecificExtraArgs.CastExtraArgs.LISTENER java.lang.String;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;", "", "onDeleted", "", "onEdited", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface ActionListener {
        void onDeleted();

        void onEdited();
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$Companion;", "", "()V", "delete", "", "context", "Landroid/content/Context;", "doneAction", "Lkotlin/Function0;", "cancelAction", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void delete$default(Companion companion, Context context, Function0 function0, Function0 function02, int i, Object obj) {
            if ((i & 4) != 0) {
                function02 = null;
            }
            companion.delete(context, function0, function02);
        }

        public final void delete(@NotNull Context context, @NotNull final Function0<Unit> doneAction, @Nullable final Function0<Unit> cancelAction) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(doneAction, "doneAction");
            new CommonDialog.Builder(context).setTitle(C10651R.string.delete).setWarning(true).setMessage(C10651R.string.delete_excerpt_warning).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.DocExcerptActionPopup$Companion$delete$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                    invoke2(commonDialog, str);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull CommonDialog dialog, @NotNull String editTextStr) {
                    Intrinsics.checkNotNullParameter(dialog, "dialog");
                    Intrinsics.checkNotNullParameter(editTextStr, "editTextStr");
                    doneAction.invoke();
                }
            }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.DocExcerptActionPopup$Companion$delete$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Dialog dialog) {
                    invoke2(dialog);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Dialog dialog) {
                    Function0<Unit> function0 = cancelAction;
                    if (function0 != null) {
                        function0.invoke();
                    }
                }
            }).create().show();
        }

        public Companion() {
        }
    }

    public /* synthetic */ DocExcerptActionPopup(EditorBundle editorBundle, Context context, ExcerptInfoBean excerptInfoBean, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, context, excerptInfoBean, (i & 8) != 0 ? false : z);
    }

    /* renamed from: q */
    public static final void m48637q(DocExcerptActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48640n();
    }

    /* renamed from: r */
    public static final void m48638r(DocExcerptActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48639m();
    }

    /* renamed from: m */
    public final void m48639m() {
        INSTANCE.delete(getContext(), new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.DocExcerptActionPopup$delete$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                EditorBundle editorBundle;
                ExcerptInfoBean excerptInfoBean;
                List listOf;
                DocExcerptActionPopup.ActionListener actionListener;
                boolean z;
                editorBundle = DocExcerptActionPopup.this.editorBundle;
                excerptInfoBean = DocExcerptActionPopup.this.model;
                listOf = CollectionsKt__CollectionsJVMKt.listOf(excerptInfoBean);
                EditorBundleKt.postEvent(editorBundle, new DeleteExcerptByModelEvent(listOf));
                actionListener = DocExcerptActionPopup.this.com.google.android.gms.common.internal.ServiceSpecificExtraArgs.CastExtraArgs.LISTENER java.lang.String;
                if (actionListener != null) {
                    actionListener.onDeleted();
                }
                DocExcerptActionPopup.this.dismiss();
                DocExcerptActionPopup docExcerptActionPopup = DocExcerptActionPopup.this;
                z = docExcerptActionPopup.full;
                docExcerptActionPopup.m48643s(z ? OnyxStatisticConstant.ID_CLICK_EXCERPT_CONFIRM_FULL_POPUP : OnyxStatisticConstant.ID_CLICK_EXCERPT_CONFIRM_POPUP);
            }
        }, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.DocExcerptActionPopup$delete$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                boolean z;
                DocExcerptActionPopup docExcerptActionPopup = DocExcerptActionPopup.this;
                z = docExcerptActionPopup.full;
                docExcerptActionPopup.m48643s(z ? OnyxStatisticConstant.ID_CLICK_EXCERPT_CANCEL_FULL_POPUP : OnyxStatisticConstant.ID_CLICK_EXCERPT_CANCEL_POPUP);
            }
        });
        m48643s(this.full ? OnyxStatisticConstant.ID_CLICK_EXCERPT_DELETE_FULL_POPUP : OnyxStatisticConstant.ID_CLICK_EXCERPT_DELETE_POPUP);
        m48643s(this.full ? OnyxStatisticConstant.ID_VIEW_EXCERPT_DELETE_FULL_POPUP : OnyxStatisticConstant.ID_VIEW_EXCERPT_DELETE_POPUP);
        dismiss();
    }

    /* renamed from: n */
    public final void m48640n() {
        ActionListener actionListener = this.com.google.android.gms.common.internal.ServiceSpecificExtraArgs.CastExtraArgs.LISTENER java.lang.String;
        if (actionListener != null) {
            actionListener.onEdited();
        }
        dismiss();
        m48643s(this.full ? OnyxStatisticConstant.ID_CLICK_EXCERPT_EDIT_FULL_POPUP : OnyxStatisticConstant.ID_CLICK_EXCERPT_EDIT_POPUP);
    }

    /* renamed from: o */
    public final PopupDocExcerptActionBinding m48641o() {
        return (PopupDocExcerptActionBinding) this.binding.getValue();
    }

    /* renamed from: p */
    public final void m48642p() {
        View root = m48641o().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setOutsideTouchable(false);
        setFocusable(true);
        m48641o().edit.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.w6f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocExcerptActionPopup.m48637q(DocExcerptActionPopup.this, view);
            }
        });
        m48641o().delete.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.x6f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DocExcerptActionPopup.m48638r(DocExcerptActionPopup.this, view);
            }
        });
    }

    /* renamed from: s */
    public final void m48643s(String eventId) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, EditorBundleKt.docId(this.editorBundle));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    public final void setListener(@NotNull ActionListener r2) {
        Intrinsics.checkNotNullParameter(r2, "listener");
        this.com.google.android.gms.common.internal.ServiceSpecificExtraArgs.CastExtraArgs.LISTENER java.lang.String = r2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DocExcerptActionPopup(@NotNull EditorBundle editorBundle, @NotNull final Context context, @NotNull ExcerptInfoBean model, boolean z) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(model, "model");
        this.editorBundle = editorBundle;
        this.model = model;
        this.full = z;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupDocExcerptActionBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.DocExcerptActionPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupDocExcerptActionBinding invoke() {
                return PopupDocExcerptActionBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        m48642p();
        m48643s(z ? OnyxStatisticConstant.ID_VIEW_EXCERPT_FULL_POPUP : OnyxStatisticConstant.ID_VIEW_EXCERPT_POPUP);
    }
}
