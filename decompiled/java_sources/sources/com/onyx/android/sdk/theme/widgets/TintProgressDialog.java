package com.onyx.android.sdk.theme.widgets;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.sagittarius.p050v6.C13086AB;
import java.text.NumberFormat;

/* loaded from: classes17.dex */
public class TintProgressDialog extends AlertDialog implements Handler.Callback {
    public static final int STYLE_HORIZONTAL = 1;
    public static final int STYLE_SPINNER = 0;

    /* renamed from: e */
    public ProgressBar f46956e;

    /* renamed from: f */
    public TextView f46957f;

    /* renamed from: g */
    public int f46958g;

    /* renamed from: h */
    public TextView f46959h;

    /* renamed from: i */
    public String f46960i;

    /* renamed from: j */
    public TextView f46961j;

    /* renamed from: k */
    public NumberFormat f46962k;

    /* renamed from: l */
    public int f46963l;

    /* renamed from: m */
    public int f46964m;

    /* renamed from: n */
    public int f46965n;

    /* renamed from: o */
    public int f46966o;

    /* renamed from: p */
    public int f46967p;

    /* renamed from: q */
    public Drawable f46968q;

    /* renamed from: r */
    public Drawable f46969r;

    /* renamed from: s */
    public CharSequence f46970s;

    /* renamed from: t */
    public boolean f46971t;

    /* renamed from: u */
    public boolean f46972u;

    /* renamed from: v */
    public Handler f46973v;

    public TintProgressDialog(Context context) {
        this(context, 0);
        m36349a();
    }

    public static TintProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2) {
        return show(context, charSequence, charSequence2, false);
    }

    /* renamed from: a */
    public final void m36349a() {
        this.f46960i = "%1d/%2d";
        NumberFormat percentInstance = NumberFormat.getPercentInstance();
        this.f46962k = percentInstance;
        percentInstance.setMaximumFractionDigits(0);
    }

    /* renamed from: b */
    public final void m36350b() {
        Handler handler;
        if (this.f46958g != 1 || (handler = this.f46973v) == null || handler.hasMessages(0)) {
            return;
        }
        this.f46973v.sendEmptyMessage(0);
    }

    public int getMax() {
        ProgressBar progressBar = this.f46956e;
        return progressBar != null ? progressBar.getMax() : this.f46963l;
    }

    public int getProgress() {
        ProgressBar progressBar = this.f46956e;
        return progressBar != null ? progressBar.getProgress() : this.f46964m;
    }

    public int getSecondaryProgress() {
        ProgressBar progressBar = this.f46956e;
        return progressBar != null ? progressBar.getSecondaryProgress() : this.f46965n;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int progress = this.f46956e.getProgress();
        int max = this.f46956e.getMax();
        String str = this.f46960i;
        if (str != null) {
            this.f46959h.setVisibility(0);
            this.f46959h.setText(String.format(str, Integer.valueOf(progress), Integer.valueOf(max)));
        } else {
            this.f46959h.setVisibility(8);
        }
        if (this.f46962k != null) {
            SpannableString spannableString = new SpannableString(this.f46962k.format(progress / max));
            spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            this.f46961j.setVisibility(0);
            this.f46961j.setText(spannableString);
        } else {
            this.f46961j.setVisibility(8);
        }
        return true;
    }

    public void incrementProgressBy(int i) {
        ProgressBar progressBar = this.f46956e;
        if (progressBar == null) {
            this.f46966o += i;
        } else {
            progressBar.incrementProgressBy(i);
            m36350b();
        }
    }

    public void incrementSecondaryProgressBy(int i) {
        ProgressBar progressBar = this.f46956e;
        if (progressBar == null) {
            this.f46967p += i;
        } else {
            progressBar.incrementSecondaryProgressBy(i);
            m36350b();
        }
    }

    public boolean isIndeterminate() {
        ProgressBar progressBar = this.f46956e;
        return progressBar != null ? progressBar.isIndeterminate() : this.f46971t;
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        C13086AB.m52315v(-1426063340, this, bundle);
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        this.f46972u = true;
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        this.f46972u = false;
    }

    public void setIndeterminate(boolean z) {
        ProgressBar progressBar = this.f46956e;
        if (progressBar != null) {
            progressBar.setIndeterminate(z);
        } else {
            this.f46971t = z;
        }
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        ProgressBar progressBar = this.f46956e;
        if (progressBar != null) {
            progressBar.setIndeterminateDrawable(drawable);
        } else {
            this.f46969r = drawable;
        }
    }

    public void setMax(int i) {
        ProgressBar progressBar = this.f46956e;
        if (progressBar == null) {
            this.f46963l = i;
        } else {
            progressBar.setMax(i);
            m36350b();
        }
    }

    @Override // android.app.AlertDialog
    public void setMessage(CharSequence charSequence) {
        if (this.f46956e == null) {
            this.f46970s = charSequence;
        } else if (this.f46958g == 1) {
            super.setMessage(charSequence);
        } else {
            this.f46957f.setText(charSequence);
        }
    }

    public void setProgress(int i) {
        if (!this.f46972u) {
            this.f46964m = i;
        } else {
            this.f46956e.setProgress(i);
            m36350b();
        }
    }

    public void setProgressDrawable(Drawable drawable) {
        ProgressBar progressBar = this.f46956e;
        if (progressBar != null) {
            progressBar.setProgressDrawable(drawable);
        } else {
            this.f46968q = drawable;
        }
    }

    public void setProgressNumberFormat(String str) {
        this.f46960i = str;
        m36350b();
    }

    public void setProgressPercentFormat(NumberFormat numberFormat) {
        this.f46962k = numberFormat;
        m36350b();
    }

    public void setProgressStyle(int i) {
        this.f46958g = i;
    }

    public void setSecondaryProgress(int i) {
        ProgressBar progressBar = this.f46956e;
        if (progressBar == null) {
            this.f46965n = i;
        } else {
            progressBar.setSecondaryProgress(i);
            m36350b();
        }
    }

    public static TintProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z) {
        return show(context, charSequence, charSequence2, z, false, null);
    }

    public TintProgressDialog(Context context, int i) {
        super(context, i);
        this.f46958g = 0;
        m36349a();
    }

    public static TintProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2) {
        return show(context, charSequence, charSequence2, z, z2, null);
    }

    public static TintProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2, DialogInterface.OnCancelListener onCancelListener) {
        TintProgressDialog tintProgressDialog = new TintProgressDialog(context);
        tintProgressDialog.setTitle(charSequence);
        tintProgressDialog.setMessage(charSequence2);
        tintProgressDialog.setIndeterminate(z);
        tintProgressDialog.setCancelable(z2);
        tintProgressDialog.setOnCancelListener(onCancelListener);
        tintProgressDialog.show();
        return tintProgressDialog;
    }

    public TintProgressDialog(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.f46958g = 0;
        m36349a();
    }
}
