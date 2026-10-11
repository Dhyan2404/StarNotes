package com.sunia.HTREnginev2;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CheckedTextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CheckedTextViewCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* renamed from: com.sunia.HTREnginev2.ac */
/* loaded from: classes3.dex */
public class C13479ac {

    /* renamed from: a */
    @NonNull
    public final CheckedTextView f64534a;

    /* renamed from: b */
    public ColorStateList f64535b = null;

    /* renamed from: c */
    public PorterDuff.Mode f64536c = null;

    /* renamed from: d */
    public boolean f64537d = false;

    /* renamed from: e */
    public boolean f64538e = false;

    /* renamed from: f */
    public boolean f64539f;

    public C13479ac(@NonNull CheckedTextView checkedTextView) {
        this.f64534a = checkedTextView;
    }

    /* renamed from: a */
    public void m52992a() {
        Drawable checkMarkDrawable = CheckedTextViewCompat.getCheckMarkDrawable(this.f64534a);
        if (checkMarkDrawable != null) {
            if (this.f64537d || this.f64538e) {
                Drawable mutate = DrawableCompat.wrap(checkMarkDrawable).mutate();
                if (this.f64537d) {
                    DrawableCompat.setTintList(mutate, this.f64535b);
                }
                if (this.f64538e) {
                    DrawableCompat.setTintMode(mutate, this.f64536c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(this.f64534a.getDrawableState());
                }
                this.f64534a.setCheckMarkDrawable(mutate);
            }
        }
    }

    /* renamed from: b */
    public ColorStateList m52993b() {
        return this.f64535b;
    }

    /* renamed from: c */
    public PorterDuff.Mode m52994c() {
        return this.f64536c;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0066 A[Catch: all -> 0x008e, TryCatch #1 {all -> 0x008e, blocks: (B:3:0x001f, B:5:0x0027, B:8:0x002f, B:11:0x0041, B:13:0x0049, B:15:0x0051, B:16:0x005e, B:18:0x0066, B:19:0x0071, B:21:0x0079), top: B:2:0x001f }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0079 A[Catch: all -> 0x008e, TRY_LEAVE, TryCatch #1 {all -> 0x008e, blocks: (B:3:0x001f, B:5:0x0027, B:8:0x002f, B:11:0x0041, B:13:0x0049, B:15:0x0051, B:16:0x005e, B:18:0x0066, B:19:0x0071, B:21:0x0079), top: B:2:0x001f }] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m52995d(@androidx.annotation.Nullable android.util.AttributeSet r11, int r12) {
        /*
            r10 = this;
            android.widget.CheckedTextView r0 = r10.f64534a
            android.content.Context r0 = r0.getContext()
            int[] r1 = androidx.appcompat.C0118R.styleable.CheckedTextView
            r2 = 0
            androidx.appcompat.widget.TintTypedArray r0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(r0, r11, r1, r12, r2)
            android.widget.CheckedTextView r3 = r10.f64534a
            android.content.Context r4 = r3.getContext()
            int[] r5 = androidx.appcompat.C0118R.styleable.CheckedTextView
            android.content.res.TypedArray r7 = r0.getWrappedTypeArray()
            r9 = 0
            r6 = r11
            r8 = r12
            androidx.core.view.ViewCompat.saveAttributeDataForStyleable(r3, r4, r5, r6, r7, r8, r9)
            int r11 = androidx.appcompat.C0118R.styleable.CheckedTextView_checkMarkCompat     // Catch: java.lang.Throwable -> L8e
            boolean r11 = r0.hasValue(r11)     // Catch: java.lang.Throwable -> L8e
            if (r11 == 0) goto L3e
            int r11 = androidx.appcompat.C0118R.styleable.CheckedTextView_checkMarkCompat     // Catch: java.lang.Throwable -> L8e
            int r11 = r0.getResourceId(r11, r2)     // Catch: java.lang.Throwable -> L8e
            if (r11 == 0) goto L3e
            android.widget.CheckedTextView r12 = r10.f64534a     // Catch: android.content.res.Resources.NotFoundException -> L3e java.lang.Throwable -> L8e
            android.content.Context r1 = r12.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L3e java.lang.Throwable -> L8e
            android.graphics.drawable.Drawable r11 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r1, r11)     // Catch: android.content.res.Resources.NotFoundException -> L3e java.lang.Throwable -> L8e
            r12.setCheckMarkDrawable(r11)     // Catch: android.content.res.Resources.NotFoundException -> L3e java.lang.Throwable -> L8e
            r11 = 1
            goto L3f
        L3e:
            r11 = r2
        L3f:
            if (r11 != 0) goto L5e
            int r11 = androidx.appcompat.C0118R.styleable.CheckedTextView_android_checkMark     // Catch: java.lang.Throwable -> L8e
            boolean r11 = r0.hasValue(r11)     // Catch: java.lang.Throwable -> L8e
            if (r11 == 0) goto L5e
            int r11 = androidx.appcompat.C0118R.styleable.CheckedTextView_android_checkMark     // Catch: java.lang.Throwable -> L8e
            int r11 = r0.getResourceId(r11, r2)     // Catch: java.lang.Throwable -> L8e
            if (r11 == 0) goto L5e
            android.widget.CheckedTextView r12 = r10.f64534a     // Catch: java.lang.Throwable -> L8e
            android.content.Context r1 = r12.getContext()     // Catch: java.lang.Throwable -> L8e
            android.graphics.drawable.Drawable r11 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r1, r11)     // Catch: java.lang.Throwable -> L8e
            r12.setCheckMarkDrawable(r11)     // Catch: java.lang.Throwable -> L8e
        L5e:
            int r11 = androidx.appcompat.C0118R.styleable.CheckedTextView_checkMarkTint     // Catch: java.lang.Throwable -> L8e
            boolean r11 = r0.hasValue(r11)     // Catch: java.lang.Throwable -> L8e
            if (r11 == 0) goto L71
            android.widget.CheckedTextView r11 = r10.f64534a     // Catch: java.lang.Throwable -> L8e
            int r12 = androidx.appcompat.C0118R.styleable.CheckedTextView_checkMarkTint     // Catch: java.lang.Throwable -> L8e
            android.content.res.ColorStateList r12 = r0.getColorStateList(r12)     // Catch: java.lang.Throwable -> L8e
            androidx.core.widget.CheckedTextViewCompat.setCheckMarkTintList(r11, r12)     // Catch: java.lang.Throwable -> L8e
        L71:
            int r11 = androidx.appcompat.C0118R.styleable.CheckedTextView_checkMarkTintMode     // Catch: java.lang.Throwable -> L8e
            boolean r11 = r0.hasValue(r11)     // Catch: java.lang.Throwable -> L8e
            if (r11 == 0) goto L8a
            android.widget.CheckedTextView r10 = r10.f64534a     // Catch: java.lang.Throwable -> L8e
            int r11 = androidx.appcompat.C0118R.styleable.CheckedTextView_checkMarkTintMode     // Catch: java.lang.Throwable -> L8e
            r12 = -1
            int r11 = r0.getInt(r11, r12)     // Catch: java.lang.Throwable -> L8e
            r12 = 0
            android.graphics.PorterDuff$Mode r11 = androidx.appcompat.widget.DrawableUtils.parseTintMode(r11, r12)     // Catch: java.lang.Throwable -> L8e
            androidx.core.widget.CheckedTextViewCompat.setCheckMarkTintMode(r10, r11)     // Catch: java.lang.Throwable -> L8e
        L8a:
            r0.recycle()
            return
        L8e:
            r10 = move-exception
            r0.recycle()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.C13479ac.m52995d(android.util.AttributeSet, int):void");
    }

    /* renamed from: e */
    public void m52996e() {
        if (this.f64539f) {
            this.f64539f = false;
        } else {
            this.f64539f = true;
            m52992a();
        }
    }

    /* renamed from: f */
    public void m52997f(ColorStateList colorStateList) {
        this.f64535b = colorStateList;
        this.f64537d = true;
        m52992a();
    }

    /* renamed from: g */
    public void m52998g(@Nullable PorterDuff.Mode mode) {
        this.f64536c = mode;
        this.f64538e = true;
        m52992a();
    }
}
