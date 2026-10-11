package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.common.extension.PopupWindowKt;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupAudioActionBinding;
import com.onyx.galaxy.note.editor.view.popup.AudioActionPopup;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0015B!\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0006\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0005R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001b\u0010\u0010\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "q", "", Constants.HASIDCALL_INDEX_SIG, "existShape", "Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;", "r", "Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;", "actionListener", "Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;", "s", "Lkotlin/Lazy;", "p", "()Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;", "binding", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;ZLcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;)V", "ActionListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AudioActionPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    public final boolean existShape;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final ActionListener actionListener;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&J\b\u0010\u0007\u001a\u00020\u0003H&¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;", "", "audioLink", "", "audioRecognize", "delete", "gotoLink", "rename", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface ActionListener {
        void audioLink();

        void audioRecognize();

        void delete();

        void gotoLink();

        void rename();
    }

    public /* synthetic */ AudioActionPopup(Context context, boolean z, ActionListener actionListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? false : z, actionListener);
    }

    /* renamed from: r */
    public static final void m48514r(AudioActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.actionListener.audioRecognize();
        this$0.dismiss();
    }

    /* renamed from: s */
    public static final void m48515s(AudioActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.actionListener.audioLink();
        this$0.dismiss();
    }

    /* renamed from: t */
    public static final void m48516t(AudioActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.actionListener.gotoLink();
        this$0.dismiss();
    }

    /* renamed from: u */
    public static final void m48517u(AudioActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.actionListener.rename();
        this$0.dismiss();
    }

    /* renamed from: v */
    public static final void m48518v(AudioActionPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.actionListener.delete();
        this$0.dismiss();
    }

    /* renamed from: p */
    public final PopupAudioActionBinding m48519p() {
        return (PopupAudioActionBinding) this.binding.getValue();
    }

    /* renamed from: q */
    public final void m48520q() {
        View root = m48519p().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        PopupWindowKt.setDefaultAttribute(this);
        TintTextView audioRecognize = m48519p().audioRecognize;
        Intrinsics.checkNotNullExpressionValue(audioRecognize, "audioRecognize");
        ViewKt.click$default(audioRecognize, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.oh
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioActionPopup.m48514r(AudioActionPopup.this, view);
            }
        }, 1, null);
        TintTextView audioLink = m48519p().audioLink;
        Intrinsics.checkNotNullExpressionValue(audioLink, "audioLink");
        ViewKt.click$default(audioLink, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ph
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioActionPopup.m48515s(AudioActionPopup.this, view);
            }
        }, 1, null);
        TintTextView gotoLink = m48519p().gotoLink;
        Intrinsics.checkNotNullExpressionValue(gotoLink, "gotoLink");
        ViewKt.click$default(gotoLink, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qh
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioActionPopup.m48516t(AudioActionPopup.this, view);
            }
        }, 1, null);
        TintTextView rename = m48519p().rename;
        Intrinsics.checkNotNullExpressionValue(rename, "rename");
        ViewKt.click$default(rename, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.rh
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioActionPopup.m48517u(AudioActionPopup.this, view);
            }
        }, 1, null);
        TintTextView delete = m48519p().delete;
        Intrinsics.checkNotNullExpressionValue(delete, "delete");
        ViewKt.click$default(delete, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.sh
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AudioActionPopup.m48518v(AudioActionPopup.this, view);
            }
        }, 1, null);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(m48519p().audioLink, !this.existShape);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(m48519p().gotoLink, this.existShape);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioActionPopup(@NotNull final Context context, boolean z, @NotNull ActionListener actionListener) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(actionListener, "actionListener");
        this.existShape = z;
        this.actionListener = actionListener;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupAudioActionBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.AudioActionPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupAudioActionBinding invoke() {
                return PopupAudioActionBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        m48520q();
    }
}
