package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupTipsLayoutBinding;
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
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0002H\u0002R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u001b\u0010\u000e\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "onShow", "l", "Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;", "q", "Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;", "tipContext", "Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;", "r", "Lkotlin/Lazy;", C4921e.f26537n, "()Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;)V", "TipContext", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTipsPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TipsPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TipsPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,79:1\n256#2,2:80\n256#2,2:82\n65#2,4:84\n37#2:88\n53#2:89\n72#2:90\n*S KotlinDebug\n*F\n+ 1 TipsPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TipsPopup\n*L\n49#1:80,2\n50#1:82,2\n56#1:84,4\n56#1:88\n56#1:89\n56#1:90\n*E\n"})
/* loaded from: classes9.dex */
public final class TipsPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final TipContext tipContext;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TipsPopup(@NotNull TipContext tipContext) {
        super(tipContext.getContext(), tipContext.getDockType());
        Lazy lazy;
        Intrinsics.checkNotNullParameter(tipContext, "tipContext");
        this.tipContext = tipContext;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupTipsLayoutBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.TipsPopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupTipsLayoutBinding invoke() {
                return PopupTipsLayoutBinding.inflate(LayoutInflater.from(TipsPopup.this.getContext()));
            }
        });
        this.binding = lazy;
        m49690l();
    }

    /* renamed from: k */
    public final PopupTipsLayoutBinding m49689k() {
        return (PopupTipsLayoutBinding) this.binding.getValue();
    }

    /* renamed from: l */
    public final void m49690l() {
        TintLinearLayout root = m49689k().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setOutsideTouchable(true);
        setFocusable(true);
        m49689k().tvContent.setText(this.tipContext.getText());
        TintImageView topArrowView = m49689k().topArrowView;
        Intrinsics.checkNotNullExpressionValue(topArrowView, "topArrowView");
        DockType arrowOrientation = this.tipContext.getArrowOrientation();
        DockType dockType = DockType.TOP;
        topArrowView.setVisibility(arrowOrientation == dockType ? 0 : 8);
        TintImageView arrowView = m49689k().arrowView;
        Intrinsics.checkNotNullExpressionValue(arrowView, "arrowView");
        arrowView.setVisibility(this.tipContext.getArrowOrientation() != dockType ? 0 : 8);
        m49689k().flyContent.getLayoutParams().width = this.tipContext.getContentWidth();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onShow() {
        float f;
        TintImageView arrowView;
        super.onShow();
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        if (!contentView.isLaidOut() || contentView.isLayoutRequested()) {
            contentView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.onyx.galaxy.note.editor.view.popup.TipsPopup$onShow$$inlined$doOnLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(@NotNull View view, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                    float f2;
                    TintImageView arrowView2;
                    view.removeOnLayoutChangeListener(this);
                    ViewLocator viewLocator = ViewLocator.INSTANCE;
                    View contentView2 = TipsPopup.this.getContentView();
                    Intrinsics.checkNotNullExpressionValue(contentView2, "getContentView(...)");
                    Rect rectInActivity = viewLocator.rectInActivity(contentView2);
                    float abs = Math.abs(TipsPopup.this.m49689k().arrowView.getMeasuredWidth() - TipsPopup.this.tipContext.getAnchorView().getMeasuredWidth()) / 2.0f;
                    if (TipsPopup.this.tipContext.getArrowOrientation() == DockType.TOP) {
                        f2 = (viewLocator.rectInActivity(TipsPopup.this.tipContext.getAnchorView()).left - rectInActivity.left) + abs;
                        arrowView2 = TipsPopup.this.m49689k().topArrowView;
                        Intrinsics.checkNotNullExpressionValue(arrowView2, "topArrowView");
                    } else {
                        f2 = (viewLocator.rectInActivity(TipsPopup.this.tipContext.getAnchorView()).left - rectInActivity.left) + abs;
                        arrowView2 = TipsPopup.this.m49689k().arrowView;
                        Intrinsics.checkNotNullExpressionValue(arrowView2, "arrowView");
                    }
                    if (ContextKt.isLayoutDirectionRtl(TipsPopup.this.getContext())) {
                        arrowView2.setTranslationX(-f2);
                    } else {
                        arrowView2.setTranslationX(f2);
                    }
                }
            });
            return;
        }
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        View contentView2 = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView2, "getContentView(...)");
        Rect rectInActivity = viewLocator.rectInActivity(contentView2);
        float abs = Math.abs(m49689k().arrowView.getMeasuredWidth() - this.tipContext.getAnchorView().getMeasuredWidth()) / 2.0f;
        if (this.tipContext.getArrowOrientation() == DockType.TOP) {
            f = (viewLocator.rectInActivity(this.tipContext.getAnchorView()).left - rectInActivity.left) + abs;
            arrowView = m49689k().topArrowView;
            Intrinsics.checkNotNullExpressionValue(arrowView, "topArrowView");
        } else {
            f = (viewLocator.rectInActivity(this.tipContext.getAnchorView()).left - rectInActivity.left) + abs;
            arrowView = m49689k().arrowView;
            Intrinsics.checkNotNullExpressionValue(arrowView, "arrowView");
        }
        if (ContextKt.isLayoutDirectionRtl(getContext())) {
            arrowView.setTranslationX(-f);
        } else {
            arrowView.setTranslationX(f);
        }
    }

    @Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u001a\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u000b¢\u0006\u0004\b0\u00101J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\bHÆ\u0003J\t\u0010\n\u001a\u00020\u0004HÆ\u0003J\t\u0010\f\u001a\u00020\u000bHÆ\u0003JG\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u000bHÆ\u0001J\t\u0010\u0015\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0016\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\u000e\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u0017\u0010\u0010\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0017\u0010\u0011\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b*\u0010\u001f\u001a\u0004\b+\u0010!R\u0017\u0010\u0012\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/¨\u00062"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;", "", "Landroid/content/Context;", "component1", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "component2", "", "component3", "Landroid/view/View;", "component4", "component5", "", "component6", "context", "dockType", "text", "anchorView", "arrowOrientation", "contentWidth", "copy", "", "toString", "hashCode", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "equals", "a", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "b", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "getDockType", "()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "c", "Ljava/lang/CharSequence;", "getText", "()Ljava/lang/CharSequence;", "d", "Landroid/view/View;", "getAnchorView", "()Landroid/view/View;", "e", "getArrowOrientation", C6997f.f39671c, "I", "getContentWidth", "()I", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/lang/CharSequence;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final /* data */ class TipContext {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final Context context;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        @NotNull
        public final DockType dockType;

        /* renamed from: c, reason: from kotlin metadata and from toString */
        @Nullable
        public final CharSequence text;

        /* renamed from: d, reason: from kotlin metadata and from toString */
        @NotNull
        public final View anchorView;

        /* renamed from: e, reason: from kotlin metadata and from toString */
        @NotNull
        public final DockType arrowOrientation;

        /* renamed from: f, reason: from kotlin metadata and from toString */
        public final int contentWidth;

        public TipContext(@NotNull Context context, @NotNull DockType dockType, @Nullable CharSequence charSequence, @NotNull View anchorView, @NotNull DockType arrowOrientation, int i) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(dockType, "dockType");
            Intrinsics.checkNotNullParameter(anchorView, "anchorView");
            Intrinsics.checkNotNullParameter(arrowOrientation, "arrowOrientation");
            this.context = context;
            this.dockType = dockType;
            this.text = charSequence;
            this.anchorView = anchorView;
            this.arrowOrientation = arrowOrientation;
            this.contentWidth = i;
        }

        public static /* synthetic */ TipContext copy$default(TipContext tipContext, Context context, DockType dockType, CharSequence charSequence, View view, DockType dockType2, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                context = tipContext.context;
            }
            if ((i2 & 2) != 0) {
                dockType = tipContext.dockType;
            }
            DockType dockType3 = dockType;
            if ((i2 & 4) != 0) {
                charSequence = tipContext.text;
            }
            CharSequence charSequence2 = charSequence;
            if ((i2 & 8) != 0) {
                view = tipContext.anchorView;
            }
            View view2 = view;
            if ((i2 & 16) != 0) {
                dockType2 = tipContext.arrowOrientation;
            }
            DockType dockType4 = dockType2;
            if ((i2 & 32) != 0) {
                i = tipContext.contentWidth;
            }
            return tipContext.copy(context, dockType3, charSequence2, view2, dockType4, i);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final Context getContext() {
            return this.context;
        }

        @NotNull
        /* renamed from: component2, reason: from getter */
        public final DockType getDockType() {
            return this.dockType;
        }

        @Nullable
        /* renamed from: component3, reason: from getter */
        public final CharSequence getText() {
            return this.text;
        }

        @NotNull
        /* renamed from: component4, reason: from getter */
        public final View getAnchorView() {
            return this.anchorView;
        }

        @NotNull
        /* renamed from: component5, reason: from getter */
        public final DockType getArrowOrientation() {
            return this.arrowOrientation;
        }

        /* renamed from: component6, reason: from getter */
        public final int getContentWidth() {
            return this.contentWidth;
        }

        @NotNull
        public final TipContext copy(@NotNull Context context, @NotNull DockType dockType, @Nullable CharSequence text, @NotNull View anchorView, @NotNull DockType arrowOrientation, int contentWidth) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(dockType, "dockType");
            Intrinsics.checkNotNullParameter(anchorView, "anchorView");
            Intrinsics.checkNotNullParameter(arrowOrientation, "arrowOrientation");
            return new TipContext(context, dockType, text, anchorView, arrowOrientation, contentWidth);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TipContext)) {
                return false;
            }
            TipContext tipContext = (TipContext) other;
            return Intrinsics.areEqual(this.context, tipContext.context) && this.dockType == tipContext.dockType && Intrinsics.areEqual(this.text, tipContext.text) && Intrinsics.areEqual(this.anchorView, tipContext.anchorView) && this.arrowOrientation == tipContext.arrowOrientation && this.contentWidth == tipContext.contentWidth;
        }

        @NotNull
        public final View getAnchorView() {
            return this.anchorView;
        }

        @NotNull
        public final DockType getArrowOrientation() {
            return this.arrowOrientation;
        }

        public final int getContentWidth() {
            return this.contentWidth;
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        @NotNull
        public final DockType getDockType() {
            return this.dockType;
        }

        @Nullable
        public final CharSequence getText() {
            return this.text;
        }

        public int hashCode() {
            int hashCode = ((this.context.hashCode() * 31) + this.dockType.hashCode()) * 31;
            CharSequence charSequence = this.text;
            return ((((((hashCode + (charSequence == null ? 0 : charSequence.hashCode())) * 31) + this.anchorView.hashCode()) * 31) + this.arrowOrientation.hashCode()) * 31) + Integer.hashCode(this.contentWidth);
        }

        @NotNull
        public String toString() {
            return "TipContext(context=" + this.context + ", dockType=" + this.dockType + ", text=" + ((Object) this.text) + ", anchorView=" + this.anchorView + ", arrowOrientation=" + this.arrowOrientation + ", contentWidth=" + this.contentWidth + ')';
        }

        public /* synthetic */ TipContext(Context context, DockType dockType, CharSequence charSequence, View view, DockType dockType2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(context, (i2 & 2) != 0 ? DockType.BOTTOM : dockType, charSequence, view, (i2 & 16) != 0 ? DockType.BOTTOM : dockType2, (i2 & 32) != 0 ? -2 : i);
        }
    }
}
