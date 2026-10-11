package com.onyx.galaxy.note.editor.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.HorizontalScrollView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.editor.view.HorizontalTabScrollView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001$B'\b\u0007\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\b\b\u0002\u0010!\u001a\u00020\u0006¢\u0006\u0004\b\"\u0010#J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J(\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0014J(\u0010\u0010\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0002R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006%"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/HorizontalTabScrollView;", "Landroid/widget/HorizontalScrollView;", "Lcom/onyx/galaxy/note/editor/view/HorizontalTabScrollView$OnScrollToEndListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "setOnScrollToEndListener", "", "w", C6999h.f39688c, "oldw", "oldh", "onSizeChanged", "l", "t", "oldl", "oldt", "onScrollChanged", "b", "", "c", "e", "Lcom/onyx/galaxy/note/editor/view/HorizontalTabScrollView$OnScrollToEndListener;", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "isAtEnd", "Ljava/lang/Runnable;", C6998g.f39679a, "Ljava/lang/Runnable;", "scrollCheck", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "OnScrollToEndListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class HorizontalTabScrollView extends HorizontalScrollView {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public OnScrollToEndListener listener;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean isAtEnd;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Runnable scrollCheck;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/HorizontalTabScrollView$OnScrollToEndListener;", "", "onScrollToEndStateUpdate", "", "isAtEnd", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface OnScrollToEndListener {
        void onScrollToEndStateUpdate(boolean isAtEnd);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public HorizontalTabScrollView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: d */
    public static final void m47335d(HorizontalTabScrollView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47336b();
    }

    /* renamed from: b */
    public final void m47336b() {
        boolean z = !(getChildAt(0).getWidth() > getWidth()) || m47337c();
        this.isAtEnd = z;
        OnScrollToEndListener onScrollToEndListener = this.listener;
        if (onScrollToEndListener != null) {
            onScrollToEndListener.onScrollToEndStateUpdate(z);
        }
    }

    /* renamed from: c */
    public final boolean m47337c() {
        return !canScrollHorizontally(ViewExtKt.isLayoutDirectionRtl(this) ? -1 : 1);
    }

    @Override // android.view.View
    public void onScrollChanged(int l, int t, int oldl, int oldt) {
        super.onScrollChanged(l, t, oldl, oldt);
        post(this.scrollCheck);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        post(this.scrollCheck);
    }

    public final void setOnScrollToEndListener(@NotNull OnScrollToEndListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public HorizontalTabScrollView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ HorizontalTabScrollView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public HorizontalTabScrollView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.scrollCheck = new Runnable() { // from class: com.sunia.HTREnginev2.ozh
            @Override // java.lang.Runnable
            public final void run() {
                HorizontalTabScrollView.m47335d(HorizontalTabScrollView.this);
            }
        };
    }
}
