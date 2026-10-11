package com.google.android.exoplayer2.p008ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.p008ui.SubtitleView;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.p5n;
import com.sunia.HTREnginev2.pzh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: com.google.android.exoplayer2.ui.c */
/* loaded from: classes5.dex */
public final class C4991c extends FrameLayout implements SubtitleView.InterfaceC4985a {

    /* renamed from: l */
    public static final float f27918l = 1.2f;

    /* renamed from: m */
    public static final String f27919m = "default_bg";

    /* renamed from: e */
    public final C4989a f27920e;

    /* renamed from: f */
    public final WebView f27921f;

    /* renamed from: g */
    public List<Cue> f27922g;

    /* renamed from: h */
    public CaptionStyleCompat f27923h;

    /* renamed from: i */
    public float f27924i;

    /* renamed from: j */
    public int f27925j;

    /* renamed from: k */
    public float f27926k;

    /* renamed from: com.google.android.exoplayer2.ui.c$a */
    /* loaded from: classes5.dex */
    public class a extends WebView {
        public a(C4991c c4991c, Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.webkit.WebView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            super.onTouchEvent(motionEvent);
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            super.performClick();
            return false;
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.c$b */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f27927a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f27927a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27927a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27927a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public C4991c(Context context) {
        this(context, null);
    }

    /* renamed from: b */
    public static int m21292b(int i) {
        if (i != 1) {
            return i != 2 ? 0 : -100;
        }
        return -50;
    }

    /* renamed from: c */
    public static String m21293c(@Nullable Layout.Alignment alignment) {
        if (alignment == null) {
            return "center";
        }
        int i = b.f27927a[alignment.ordinal()];
        return i != 1 ? i != 2 ? "center" : "end" : gon.f71290o0;
    }

    /* renamed from: d */
    public static String m21294d(CaptionStyleCompat captionStyleCompat) {
        int i = captionStyleCompat.edgeType;
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "unset" : Util.formatInvariant("-0.05em -0.05em 0.15em %s", pzh.m56475b(captionStyleCompat.edgeColor)) : Util.formatInvariant("0.06em 0.08em 0.15em %s", pzh.m56475b(captionStyleCompat.edgeColor)) : Util.formatInvariant("0.1em 0.12em 0.15em %s", pzh.m56475b(captionStyleCompat.edgeColor)) : Util.formatInvariant("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", pzh.m56475b(captionStyleCompat.edgeColor));
    }

    /* renamed from: f */
    public static String m21295f(int i) {
        return i != 1 ? i != 2 ? "horizontal-tb" : "vertical-lr" : "vertical-rl";
    }

    /* renamed from: h */
    public static String m21296h(Cue cue) {
        float f = cue.shearDegrees;
        if (f == 0.0f) {
            return "";
        }
        int i = cue.verticalType;
        return Util.formatInvariant("%s(%.2fdeg)", (i == 2 || i == 1) ? "skewY" : "skewX", Float.valueOf(f));
    }

    @Override // com.google.android.exoplayer2.p008ui.SubtitleView.InterfaceC4985a
    /* renamed from: a */
    public void mo21212a(List<Cue> list, CaptionStyleCompat captionStyleCompat, float f, int i, float f2) {
        this.f27923h = captionStyleCompat;
        this.f27924i = f;
        this.f27925j = i;
        this.f27926k = f2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            Cue cue = list.get(i2);
            if (cue.bitmap != null) {
                arrayList.add(cue);
            } else {
                arrayList2.add(cue);
            }
        }
        if (!this.f27922g.isEmpty() || !arrayList2.isEmpty()) {
            this.f27922g = arrayList2;
            m21299i();
        }
        this.f27920e.mo21212a(arrayList, captionStyleCompat, f, i, f2);
        invalidate();
    }

    /* renamed from: e */
    public final String m21297e(int i, float f) {
        float m56222h = p5n.m56222h(i, f, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        return m56222h == -3.4028235E38f ? "unset" : Util.formatInvariant("%.2fpx", Float.valueOf(m56222h / getContext().getResources().getDisplayMetrics().density));
    }

    /* renamed from: g */
    public void m21298g() {
        this.f27921f.destroy();
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0139, code lost:
    
        if (r8 != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x013e, code lost:
    
        r10 = "left";
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x013f, code lost:
    
        r19 = r10;
        r17 = com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants.TOP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x013c, code lost:
    
        if (r8 != false) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fb  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21299i() {
        /*
            Method dump skipped, instructions count: 609
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p008ui.C4991c.m21299i():void");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!z || this.f27922g.isEmpty()) {
            return;
        }
        m21299i();
    }

    public C4991c(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27922g = Collections.emptyList();
        this.f27923h = CaptionStyleCompat.DEFAULT;
        this.f27924i = 0.0533f;
        this.f27925j = 0;
        this.f27926k = 0.08f;
        C4989a c4989a = new C4989a(context, attributeSet);
        this.f27920e = c4989a;
        a aVar = new a(this, context, attributeSet);
        this.f27921f = aVar;
        aVar.setBackgroundColor(0);
        addView(c4989a);
        addView(aVar);
    }
}
