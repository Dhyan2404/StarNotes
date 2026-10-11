package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: e */
    public TypedValue f1668e;

    /* renamed from: f */
    public TypedValue f1669f;

    /* renamed from: g */
    public TypedValue f1670g;

    /* renamed from: h */
    public TypedValue f1671h;

    /* renamed from: i */
    public TypedValue f1672i;

    /* renamed from: j */
    public TypedValue f1673j;

    /* renamed from: k */
    public final Rect f1674k;

    /* renamed from: l */
    public OnAttachListener f1675l;

    /* loaded from: classes3.dex */
    public interface OnAttachListener {
        void onAttachedFromWindow();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void dispatchFitSystemWindows(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f1672i == null) {
            this.f1672i = new TypedValue();
        }
        return this.f1672i;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f1673j == null) {
            this.f1673j = new TypedValue();
        }
        return this.f1673j;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f1670g == null) {
            this.f1670g = new TypedValue();
        }
        return this.f1670g;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f1671h == null) {
            this.f1671h = new TypedValue();
        }
        return this.f1671h;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f1668e == null) {
            this.f1668e = new TypedValue();
        }
        return this.f1668e;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f1669f == null) {
            this.f1669f = new TypedValue();
        }
        return this.f1669f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        OnAttachListener onAttachListener = this.f1675l;
        if (onAttachListener != null) {
            onAttachListener.onAttachedFromWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        OnAttachListener onAttachListener = this.f1675l;
        if (onAttachListener != null) {
            onAttachListener.onDetachedFromWindow();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ae  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(OnAttachListener onAttachListener) {
        this.f1675l = onAttachListener;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setDecorPadding(int i, int i2, int i3, int i4) {
        this.f1674k.set(i, i2, i3, i4);
        if (isLaidOut()) {
            requestLayout();
        }
    }

    public ContentFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1674k = new Rect();
    }
}
