package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.note.DeleteQuoteEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowQuotePopupArgs;
import com.onyx.android.sdk.universal.editor.events.note.ShowShapeHighlightAnimationEvent;
import com.onyx.android.sdk.universal.editor.events.note.SplitScreenShowSourceEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.common.extension.PopupWindowKt;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupQuoteMenuBinding;
import com.onyx.galaxy.note.editor.view.popup.QuotePopup;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002R\u0014\u0010\u000b\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\nR\u0014\u0010\u000e\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\rR\u001b\u0010\u0014\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/QuotePopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Landroid/view/View;", Constants.ELEMNAME_ANCHOR_STRING, "", "show", GoogleApiAvailabilityLight.f29016b, "r", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;", "args", "Lcom/onyx/galaxy/note/databinding/PopupQuoteMenuBinding;", "s", "Lkotlin/Lazy;", "m", "()Lcom/onyx/galaxy/note/databinding/PopupQuoteMenuBinding;", "binding", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class QuotePopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final ShowQuotePopupArgs args;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuotePopup(@NotNull final Context context, @NotNull EditorBundle editorBundle, @NotNull ShowQuotePopupArgs args) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.editorBundle = editorBundle;
        this.args = args;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupQuoteMenuBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.QuotePopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupQuoteMenuBinding invoke() {
                return PopupQuoteMenuBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        m49333n();
    }

    /* renamed from: o */
    public static final void m49330o(QuotePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.editorBundle, new DeleteQuoteEvent(this$0.args.getHitTestVirtualPage(), this$0.args.getHitTestShape()));
        this$0.dismiss();
    }

    /* renamed from: p */
    public static final void m49331p(QuotePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49335r();
    }

    /* renamed from: m */
    public final PopupQuoteMenuBinding m49332m() {
        return (PopupQuoteMenuBinding) this.binding.getValue();
    }

    /* renamed from: n */
    public final void m49333n() {
        View root = m49332m().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m49332m().tvDelete.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.tbl
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QuotePopup.m49330o(QuotePopup.this, view);
            }
        });
        m49332m().tvJumpSource.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ubl
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QuotePopup.m49331p(QuotePopup.this, view);
            }
        });
    }

    /* renamed from: q */
    public final void m49334q() {
        EditorBundleKt.postEvent(this.editorBundle, new ShowShapeHighlightAnimationEvent(this.args.getHitTestShape()));
    }

    /* renamed from: r */
    public final void m49335r() {
        ExcerptCollectionModel excerptCollectionModel = this.args.getCom.onyx.android.sdk.data.common.sync.SyncConstant.LOCAL_EXCERPT_COLLECTION_DIR_NAME java.lang.String();
        EditorBundleKt.postEvent(this.editorBundle, new SplitScreenShowSourceEvent(excerptCollectionModel.getSourceDocId(), excerptCollectionModel.getSourceShapeId()));
        dismiss();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void show(@NotNull View anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        m49334q();
        View root = m49332m().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        PopupWindowKt.showAtShapeTop(this, anchor, root, this.args.getHitTestShape(), this.args.getHitTestVirtualPage(), (r16 & 16) != 0 ? 0 : 0, (r16 & 32) != 0 ? 0 : 0);
    }
}
