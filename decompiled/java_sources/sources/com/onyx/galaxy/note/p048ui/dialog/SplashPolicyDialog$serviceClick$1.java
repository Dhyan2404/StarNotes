package com.onyx.galaxy.note.p048ui.dialog;

import android.R;
import android.content.Context;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.CheckBox;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.account.data.PolicyType;
import com.onyx.galaxy.note.p048ui.dialog.SplashPolicyDialog$serviceClick$1;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, m61528d2 = {"com/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$serviceClick$1", "Landroid/text/style/ClickableSpan;", "onClick", "", "widget", "Landroid/view/View;", "updateDrawState", "ds", "Landroid/text/TextPaint;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SplashPolicyDialog$serviceClick$1 extends ClickableSpan {

    /* renamed from: e */
    public final /* synthetic */ SplashPolicyDialog f62018e;

    public SplashPolicyDialog$serviceClick$1(SplashPolicyDialog splashPolicyDialog) {
        this.f62018e = splashPolicyDialog;
    }

    /* renamed from: b */
    public static final void m51346b(View widget, boolean z) {
        Intrinsics.checkNotNullParameter(widget, "$widget");
        ((CheckBox) widget).setChecked(z);
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(@NotNull final View widget) {
        Intrinsics.checkNotNullParameter(widget, "widget");
        if (widget instanceof CheckBox) {
            final boolean isChecked = ((CheckBox) widget).isChecked();
            widget.post(new Runnable() { // from class: com.sunia.HTREnginev2.mwm
                @Override // java.lang.Runnable
                public final void run() {
                    SplashPolicyDialog$serviceClick$1.m51346b(widget, isChecked);
                }
            });
        }
        this.f62018e.m51342g(PolicyType.SERVICE);
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(@NotNull TextPaint ds) {
        Context context;
        Intrinsics.checkNotNullParameter(ds, "ds");
        super.updateDrawState(ds);
        ds.setColor(ThemeUtils.getColorById(C7996R.color.theme_primary_color_01));
        ds.setUnderlineText(false);
        context = this.f62018e.context;
        ds.bgColor = context.getColor(R.color.transparent);
    }
}
