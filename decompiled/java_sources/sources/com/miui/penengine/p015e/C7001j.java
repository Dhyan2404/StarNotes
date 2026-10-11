package com.miui.penengine.p015e;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.KeyEvent;
import androidx.annotation.Nullable;
import com.miui.penengine.p013c.C6985b;
import com.miui.penengine.touchfilm.MiuiTouchFilmUtils;
import com.sunia.HTREnginev2.dzo;
import java.util.Set;

/* renamed from: com.miui.penengine.e.j */
/* loaded from: classes7.dex */
public class C7001j {

    /* renamed from: g */
    public static final String f39703g = "j";

    /* renamed from: h */
    public static final int f39704h = 194;

    /* renamed from: i */
    public static final int f39705i = 195;

    /* renamed from: j */
    public static final int f39706j = 196;

    /* renamed from: k */
    public static final int f39707k = 197;

    /* renamed from: l */
    public static final Set<Integer> f39708l;

    /* renamed from: m */
    public static final String f39709m = "stylus_pinch_status";

    /* renamed from: n */
    public static final String f39710n = "stylus_hover_enable";

    /* renamed from: o */
    public static final String f39711o = "stylus_double_click_status";

    /* renamed from: p */
    public static final String f39712p = "stylus_brush_preview_enable";

    /* renamed from: q */
    public static final int f39713q = 1;

    /* renamed from: r */
    public static final int f39714r = 1;

    /* renamed from: s */
    public static final int f39715s = 0;

    /* renamed from: t */
    public static final int f39716t = 1;

    /* renamed from: a */
    public ContentResolver f39717a;

    /* renamed from: b */
    public a f39718b;

    /* renamed from: c */
    public MiuiTouchFilmUtils.TouchFilmListener f39719c;

    /* renamed from: d */
    public int f39720d = 0;

    /* renamed from: e */
    public int f39721e = 1;

    /* renamed from: f */
    public boolean f39722f;

    /* renamed from: com.miui.penengine.e.j$a */
    /* loaded from: classes7.dex */
    public class a extends ContentObserver {
        public a(Looper looper) {
            super(new Handler(looper));
        }

        /* renamed from: a */
        public void m31360a() {
            C7001j.this.f39717a.unregisterContentObserver(this);
        }

        /* renamed from: b */
        public void m31361b() {
            C7001j.this.f39717a.registerContentObserver(Settings.System.getUriFor(C7001j.f39709m), false, this);
            C7001j.this.f39717a.registerContentObserver(Settings.System.getUriFor(C7001j.f39711o), false, this);
            C7001j.this.f39717a.registerContentObserver(Settings.System.getUriFor(C7001j.f39710n), false, this);
            C7001j.this.f39717a.registerContentObserver(Settings.System.getUriFor(C7001j.f39712p), false, this);
            onChange(false, Settings.System.getUriFor(C7001j.f39709m));
            onChange(false, Settings.System.getUriFor(C7001j.f39711o));
            onChange(false, Settings.System.getUriFor(C7001j.f39710n));
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, @Nullable Uri uri) {
            String str;
            StringBuilder sb;
            int i;
            super.onChange(z, uri);
            if (Settings.System.getUriFor(C7001j.f39711o).equals(uri)) {
                C7001j c7001j = C7001j.this;
                c7001j.f39721e = Settings.System.getInt(c7001j.f39717a, C7001j.f39711o, 1);
                str = C7001j.f39703g;
                sb = new StringBuilder("Update stylus double click status, status = ");
                i = C7001j.this.f39721e;
            } else {
                if (!Settings.System.getUriFor(C7001j.f39709m).equals(uri)) {
                    if (!Settings.System.getUriFor(C7001j.f39710n).equals(uri) && !Settings.System.getUriFor(C7001j.f39712p).equals(uri)) {
                        C6985b.m31269c(C7001j.f39703g, "Uri does not match any settings key");
                        return;
                    }
                    int i2 = Settings.System.getInt(C7001j.this.f39717a, C7001j.f39710n, 1);
                    int i3 = Settings.System.getInt(C7001j.this.f39717a, C7001j.f39712p, 1);
                    boolean z2 = (i2 == 0 || i3 == 0) ? false : true;
                    C6985b.m31269c(C7001j.f39703g, "Update stylus brush or hover status, hover = " + i2 + ", brush preview = " + i3);
                    MiuiTouchFilmUtils.TouchFilmListener touchFilmListener = C7001j.this.f39719c;
                    if (touchFilmListener != null) {
                        touchFilmListener.onBrushPreviewChanged(z2);
                        return;
                    }
                    return;
                }
                C7001j c7001j2 = C7001j.this;
                c7001j2.f39720d = Settings.System.getInt(c7001j2.f39717a, C7001j.f39709m, 0);
                str = C7001j.f39703g;
                sb = new StringBuilder("Update stylus pinch status, status = ");
                i = C7001j.this.f39720d;
            }
            sb.append(i);
            C6985b.m31269c(str, sb.toString());
        }
    }

    static {
        Set<Integer> m53875a;
        m53875a = dzo.m53875a(new Object[]{194, 195, 196, 197});
        f39708l = m53875a;
    }

    /* renamed from: b */
    public void m31359b() {
        a aVar = this.f39718b;
        if (aVar == null || this.f39719c == null || this.f39717a == null) {
            return;
        }
        aVar.m31360a();
        this.f39719c = null;
        this.f39718b = null;
        this.f39717a = null;
    }

    /* renamed from: a */
    public void m31357a(Context context, MiuiTouchFilmUtils.TouchFilmListener touchFilmListener) {
        if (context == null) {
            C6985b.m31271e(f39703g, "Context in null");
            return;
        }
        this.f39719c = touchFilmListener;
        this.f39717a = context.getContentResolver();
        a aVar = new a(context.getMainLooper());
        this.f39718b = aVar;
        aVar.m31361b();
    }

    /* renamed from: a */
    public boolean m31358a(KeyEvent keyEvent) {
        String str;
        String str2;
        MiuiTouchFilmUtils.TouchFilmListener touchFilmListener;
        int i;
        int keyCode = keyEvent.getKeyCode();
        int action = keyEvent.getAction();
        if (!f39708l.contains(Integer.valueOf(keyCode))) {
            return false;
        }
        switch (keyCode) {
            case 194:
                int i2 = this.f39720d;
                if (i2 != 0) {
                    MiuiTouchFilmUtils.TouchFilmListener touchFilmListener2 = this.f39719c;
                    if (touchFilmListener2 != null && action == 0 && !this.f39722f) {
                        this.f39722f = true;
                        touchFilmListener2.onTouchFilmTriggered(i2 <= 4 ? i2 : 0);
                        break;
                    } else if (action == 1) {
                        this.f39722f = false;
                        break;
                    }
                } else {
                    str = f39703g;
                    str2 = "Stylus pinch is disabled";
                    C6985b.m31271e(str, str2);
                    break;
                }
                break;
            case 195:
                int i3 = this.f39721e;
                if (i3 != 0) {
                    MiuiTouchFilmUtils.TouchFilmListener touchFilmListener3 = this.f39719c;
                    if (touchFilmListener3 != null && action == 0) {
                        touchFilmListener3.onTouchFilmTriggered(i3 <= 4 ? i3 : 0);
                        break;
                    }
                } else {
                    str = f39703g;
                    str2 = "Stylus double tap is disabled";
                    C6985b.m31271e(str, str2);
                    break;
                }
                break;
            case 196:
                touchFilmListener = this.f39719c;
                if (touchFilmListener != null && action == 0) {
                    i = 5;
                    touchFilmListener.onTouchFilmTriggered(i);
                    break;
                }
                break;
            case 197:
                touchFilmListener = this.f39719c;
                if (touchFilmListener != null && action == 0) {
                    i = 6;
                    touchFilmListener.onTouchFilmTriggered(i);
                    break;
                }
                break;
        }
        return true;
    }
}
