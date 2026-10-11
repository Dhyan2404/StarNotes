package com.onyx.android.sdk.pay.view;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/view/UnderLineSpan;", "Landroid/text/style/ClickableSpan;", "Landroid/text/TextPaint;", "ds", "", "updateDrawState", "Landroid/view/View;", "widget", "onClick", "", "e", "I", "getColor", "()I", "color", "Lkotlin/Function0;", C6997f.f39671c, "Lkotlin/jvm/functions/Function0;", "getClick", "()Lkotlin/jvm/functions/Function0;", OnyxStatisticConstant.EVENT_TYPE_CLICK, Constants.CONSTRUCTOR_NAME, "(ILkotlin/jvm/functions/Function0;)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UnderLineSpan extends ClickableSpan {

    /* renamed from: e, reason: from kotlin metadata */
    public final int color;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> click;

    public UnderLineSpan(int i, @NotNull Function0<Unit> click) {
        Intrinsics.checkNotNullParameter(click, "click");
        this.color = i;
        this.click = click;
    }

    @NotNull
    public final Function0<Unit> getClick() {
        return this.click;
    }

    public final int getColor() {
        return this.color;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(@NotNull View widget) {
        Intrinsics.checkNotNullParameter(widget, "widget");
        this.click.invoke();
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(@NotNull TextPaint ds) {
        Intrinsics.checkNotNullParameter(ds, "ds");
        ds.setUnderlineText(false);
        ds.setColor(this.color);
    }
}
