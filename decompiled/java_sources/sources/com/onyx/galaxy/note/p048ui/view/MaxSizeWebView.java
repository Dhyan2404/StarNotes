package com.onyx.galaxy.note.p048ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017B\u001b\b\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0016\u0010\u0018B#\b\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0019\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u001aJ\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0014J\u0012\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u000f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\fR\u0016\u0010\u0011\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\fR\u0016\u0010\u0013\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\f¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/MaxSizeWebView;", "Lcom/onyx/galaxy/note/ui/view/OnyxWebView;", "", "widthSpec", "heightSpec", "", "onMeasure", "Landroid/util/AttributeSet;", "attrs", C4921e.f26537n, "", C6998g.f39679a, "F", "basicWidth", C6999h.f39688c, "basicHeight", "i", "maxScreenRatioX", "j", "maxScreenRatioY", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class MaxSizeWebView extends OnyxWebView {

    /* renamed from: g, reason: from kotlin metadata */
    public float basicWidth;

    /* renamed from: h, reason: from kotlin metadata */
    public float basicHeight;

    /* renamed from: i, reason: from kotlin metadata */
    public float maxScreenRatioX;

    /* renamed from: j, reason: from kotlin metadata */
    public float maxScreenRatioY;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MaxSizeWebView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: k */
    public final void m51442k(AttributeSet attrs) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.MaxSizeWebView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        if (obtainStyledAttributes.hasValue(C10651R.styleable.MaxSizeWebView_basicWidth)) {
            this.basicWidth = obtainStyledAttributes.getDimension(C10651R.styleable.MaxSizeWebView_basicWidth, 0.0f);
        }
        if (obtainStyledAttributes.hasValue(C10651R.styleable.MaxSizeWebView_basicHeight)) {
            this.basicHeight = obtainStyledAttributes.getDimension(C10651R.styleable.MaxSizeWebView_basicHeight, 0.0f);
        }
        if (obtainStyledAttributes.hasValue(C10651R.styleable.MaxSizeWebView_maxScreenRatioX)) {
            this.maxScreenRatioX = obtainStyledAttributes.getFloat(C10651R.styleable.MaxSizeWebView_maxScreenRatioX, 0.0f);
        }
        if (obtainStyledAttributes.hasValue(C10651R.styleable.MaxSizeWebView_maxScreenRatioY)) {
            this.maxScreenRatioY = obtainStyledAttributes.getFloat(C10651R.styleable.MaxSizeWebView_maxScreenRatioY, 0.0f);
        }
        obtainStyledAttributes.recycle();
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    public void onMeasure(int widthSpec, int heightSpec) {
        super.onMeasure(widthSpec, heightSpec);
        ResManager resManager = ResManager.INSTANCE;
        int dimens = resManager.getDimens(C7384R.dimen.dp_100);
        int dimens2 = resManager.getDimens(C7384R.dimen.dp_24);
        int width = resManager.getScreenContentSize().getWidth();
        int height = resManager.getScreenContentSize().getHeight();
        float f = this.maxScreenRatioX;
        if (f > 0.0f) {
            int i = (int) ((width * f) - this.basicWidth);
            if (i <= 0) {
                setMeasuredDimension(dimens, getMeasuredHeight());
            } else if (getMeasuredWidth() > i) {
                setMeasuredDimension(i, getMeasuredHeight());
            }
        }
        float f2 = this.maxScreenRatioY;
        if (f2 > 0.0f) {
            int i2 = (int) ((height * f2) - this.basicHeight);
            if (i2 <= 0) {
                setMeasuredDimension(getMeasuredWidth(), dimens2);
            } else if (getMeasuredHeight() > i2) {
                setMeasuredDimension(getMeasuredWidth(), i2);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MaxSizeWebView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaxSizeWebView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        m51442k(attributeSet);
    }
}
