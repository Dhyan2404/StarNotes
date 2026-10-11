package com.google.android.exoplayer2.p008ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import androidx.annotation.Dimension;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.p5n;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class SubtitleView extends FrameLayout implements Player.Listener {
    public static final float DEFAULT_BOTTOM_PADDING_FRACTION = 0.08f;
    public static final float DEFAULT_TEXT_SIZE_FRACTION = 0.0533f;
    public static final int VIEW_TYPE_CANVAS = 1;
    public static final int VIEW_TYPE_WEB = 2;

    /* renamed from: e */
    public List<Cue> f27820e;

    /* renamed from: f */
    public CaptionStyleCompat f27821f;

    /* renamed from: g */
    public int f27822g;

    /* renamed from: h */
    public float f27823h;

    /* renamed from: i */
    public float f27824i;

    /* renamed from: j */
    public boolean f27825j;

    /* renamed from: k */
    public boolean f27826k;

    /* renamed from: l */
    public int f27827l;

    /* renamed from: m */
    public InterfaceC4985a f27828m;

    /* renamed from: n */
    public View f27829n;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface ViewType {
    }

    /* renamed from: com.google.android.exoplayer2.ui.SubtitleView$a */
    /* loaded from: classes5.dex */
    public interface InterfaceC4985a {
        /* renamed from: a */
        void mo21212a(List<Cue> list, CaptionStyleCompat captionStyleCompat, float f, int i, float f2);
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    private List<Cue> getCuesWithStylingPreferencesApplied() {
        if (this.f27825j && this.f27826k) {
            return this.f27820e;
        }
        ArrayList arrayList = new ArrayList(this.f27820e.size());
        for (int i = 0; i < this.f27820e.size(); i++) {
            arrayList.add(m21209a(this.f27820e.get(i)));
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (Util.SDK_INT < 19 || isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private CaptionStyleCompat getUserCaptionStyle() {
        if (Util.SDK_INT < 19 || isInEditMode()) {
            return CaptionStyleCompat.DEFAULT;
        }
        CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
        return (captioningManager == null || !captioningManager.isEnabled()) ? CaptionStyleCompat.DEFAULT : CaptionStyleCompat.createFromCaptionStyle(captioningManager.getUserStyle());
    }

    private <T extends View & InterfaceC4985a> void setView(T t) {
        removeView(this.f27829n);
        View view = this.f27829n;
        if (view instanceof C4991c) {
            ((C4991c) view).m21298g();
        }
        this.f27829n = t;
        this.f27828m = t;
        addView(t);
    }

    /* renamed from: a */
    public final Cue m21209a(Cue cue) {
        Cue.Builder buildUpon = cue.buildUpon();
        if (!this.f27825j) {
            p5n.m56219e(buildUpon);
        } else if (!this.f27826k) {
            p5n.m56220f(buildUpon);
        }
        return buildUpon.build();
    }

    /* renamed from: b */
    public final void m21210b(int i, float f) {
        this.f27822g = i;
        this.f27823h = f;
        m21211c();
    }

    /* renamed from: c */
    public final void m21211c() {
        this.f27828m.mo21212a(getCuesWithStylingPreferencesApplied(), this.f27821f, this.f27823h, this.f27822g, this.f27824i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onCues(List<Cue> list) {
        setCues(list);
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        this.f27826k = z;
        m21211c();
    }

    public void setApplyEmbeddedStyles(boolean z) {
        this.f27825j = z;
        m21211c();
    }

    public void setBottomPaddingFraction(float f) {
        this.f27824i = f;
        m21211c();
    }

    public void setCues(@Nullable List<Cue> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f27820e = list;
        m21211c();
    }

    public void setFixedTextSize(@Dimension int i, float f) {
        Context context = getContext();
        m21210b(2, TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    public void setFractionalTextSize(float f) {
        setFractionalTextSize(f, false);
    }

    public void setStyle(CaptionStyleCompat captionStyleCompat) {
        this.f27821f = captionStyleCompat;
        m21211c();
    }

    public void setUserDefaultStyle() {
        setStyle(getUserCaptionStyle());
    }

    public void setUserDefaultTextSize() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public void setViewType(int i) {
        if (this.f27827l == i) {
            return;
        }
        if (i == 1) {
            setView(new C4989a(getContext()));
        } else {
            if (i != 2) {
                throw new IllegalArgumentException();
            }
            setView(new C4991c(getContext()));
        }
        this.f27827l = i;
    }

    public SubtitleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27820e = Collections.emptyList();
        this.f27821f = CaptionStyleCompat.DEFAULT;
        this.f27822g = 0;
        this.f27823h = 0.0533f;
        this.f27824i = 0.08f;
        this.f27825j = true;
        this.f27826k = true;
        C4989a c4989a = new C4989a(context);
        this.f27828m = c4989a;
        this.f27829n = c4989a;
        addView(c4989a);
        this.f27827l = 1;
    }

    public void setFractionalTextSize(float f, boolean z) {
        m21210b(z ? 1 : 0, f);
    }
}
