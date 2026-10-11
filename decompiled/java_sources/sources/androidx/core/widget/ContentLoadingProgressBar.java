package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.core.widget.ContentLoadingProgressBar;

/* loaded from: classes3.dex */
public class ContentLoadingProgressBar extends ProgressBar {

    /* renamed from: k */
    public static final int f6148k = 500;

    /* renamed from: l */
    public static final int f6149l = 500;

    /* renamed from: e */
    public long f6150e;

    /* renamed from: f */
    public boolean f6151f;

    /* renamed from: g */
    public boolean f6152g;

    /* renamed from: h */
    public boolean f6153h;

    /* renamed from: i */
    public final Runnable f6154i;

    /* renamed from: j */
    public final Runnable f6155j;

    public ContentLoadingProgressBar(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m3785f() {
        this.f6151f = false;
        this.f6150e = -1L;
        setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m3786g() {
        this.f6152g = false;
        if (this.f6153h) {
            return;
        }
        this.f6150e = System.currentTimeMillis();
        setVisibility(0);
    }

    @UiThread
    /* renamed from: e */
    public final void m3787e() {
        this.f6153h = true;
        removeCallbacks(this.f6155j);
        this.f6152g = false;
        long currentTimeMillis = System.currentTimeMillis();
        long j = this.f6150e;
        long j2 = currentTimeMillis - j;
        if (j2 >= 500 || j == -1) {
            setVisibility(8);
        } else {
            if (this.f6151f) {
                return;
            }
            postDelayed(this.f6154i, 500 - j2);
            this.f6151f = true;
        }
    }

    /* renamed from: h */
    public final void m3788h() {
        removeCallbacks(this.f6154i);
        removeCallbacks(this.f6155j);
    }

    public void hide() {
        post(new Runnable() { // from class: com.sunia.HTREnginev2.mbe
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.m3787e();
            }
        });
    }

    @UiThread
    /* renamed from: i */
    public final void m3789i() {
        this.f6150e = -1L;
        this.f6153h = false;
        removeCallbacks(this.f6154i);
        this.f6151f = false;
        if (this.f6152g) {
            return;
        }
        postDelayed(this.f6155j, 500L);
        this.f6152g = true;
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m3788h();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m3788h();
    }

    public void show() {
        post(new Runnable() { // from class: com.sunia.HTREnginev2.lbe
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.m3789i();
            }
        });
    }

    public ContentLoadingProgressBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f6150e = -1L;
        this.f6151f = false;
        this.f6152g = false;
        this.f6153h = false;
        this.f6154i = new Runnable() { // from class: com.sunia.HTREnginev2.nbe
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.m3785f();
            }
        };
        this.f6155j = new Runnable() { // from class: com.sunia.HTREnginev2.obe
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.m3786g();
            }
        };
    }
}
