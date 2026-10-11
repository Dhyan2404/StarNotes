package com.onyx.galaxy.note.p048ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.theme.utils.ResourceManager;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013B\u001b\b\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0012\u0010\u0016B#\b\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0018J(\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0014J\u0016\u0010\u000b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/PageIndicatorView;", "Landroid/view/View;", "", "w", C6999h.f39688c, "oldw", "oldh", "", "onSizeChanged", Keywords.FUNC_CURRENT_STRING, "total", "setIndicatorIndex", "Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;", "e", "Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;", ResourceManager.f46830c, "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attributeSet", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PageIndicatorView extends View {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final PageIndicatorDrawable drawable;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PageIndicatorView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // android.view.View
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
    }

    public final void setIndicatorIndex(int current, int total) {
        this.drawable.setIndicatorIndex(current, total);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PageIndicatorView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageIndicatorView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        PageIndicatorDrawable pageIndicatorDrawable = new PageIndicatorDrawable();
        this.drawable = pageIndicatorDrawable;
        setBackground(pageIndicatorDrawable);
    }
}
