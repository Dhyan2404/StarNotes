package com.sunia.HTREnginev2;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CompoundButtonCompat;

/* renamed from: com.sunia.HTREnginev2.cc */
/* loaded from: classes3.dex */
public class C13559cc {

    /* renamed from: a */
    @NonNull
    public final CompoundButton f66681a;

    /* renamed from: b */
    public ColorStateList f66682b = null;

    /* renamed from: c */
    public PorterDuff.Mode f66683c = null;

    /* renamed from: d */
    public boolean f66684d = false;

    /* renamed from: e */
    public boolean f66685e = false;

    /* renamed from: f */
    public boolean f66686f;

    public C13559cc(@NonNull CompoundButton compoundButton) {
        this.f66681a = compoundButton;
    }

    /* renamed from: a */
    public void m53420a() {
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(this.f66681a);
        if (buttonDrawable != null) {
            if (this.f66684d || this.f66685e) {
                Drawable mutate = DrawableCompat.wrap(buttonDrawable).mutate();
                if (this.f66684d) {
                    DrawableCompat.setTintList(mutate, this.f66682b);
                }
                if (this.f66685e) {
                    DrawableCompat.setTintMode(mutate, this.f66683c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(this.f66681a.getDrawableState());
                }
                this.f66681a.setButtonDrawable(mutate);
            }
        }
    }

    /* renamed from: b */
    public ColorStateList m53421b() {
        return this.f66682b;
    }

    /* renamed from: c */
    public PorterDuff.Mode m53422c() {
        return this.f66683c;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0066 A[Catch: all -> 0x008e, TryCatch #1 {all -> 0x008e, blocks: (B:3:0x001f, B:5:0x0027, B:8:0x002f, B:11:0x0041, B:13:0x0049, B:15:0x0051, B:16:0x005e, B:18:0x0066, B:19:0x0071, B:21:0x0079), top: B:2:0x001f }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0079 A[Catch: all -> 0x008e, TRY_LEAVE, TryCatch #1 {all -> 0x008e, blocks: (B:3:0x001f, B:5:0x0027, B:8:0x002f, B:11:0x0041, B:13:0x0049, B:15:0x0051, B:16:0x005e, B:18:0x0066, B:19:0x0071, B:21:0x0079), top: B:2:0x001f }] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m53423d(@androidx.annotation.Nullable android.util.AttributeSet r11, int r12) {
        /*
            r10 = this;
            android.widget.CompoundButton r0 = r10.f66681a
            android.content.Context r0 = r0.getContext()
            int[] r1 = androidx.appcompat.C0118R.styleable.CompoundButton
            r2 = 0
            androidx.appcompat.widget.TintTypedArray r0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(r0, r11, r1, r12, r2)
            android.widget.CompoundButton r3 = r10.f66681a
            android.content.Context r4 = r3.getContext()
            int[] r5 = androidx.appcompat.C0118R.styleable.CompoundButton
            android.content.res.TypedArray r7 = r0.getWrappedTypeArray()
            r9 = 0
            r6 = r11
            r8 = r12
            androidx.core.view.ViewCompat.saveAttributeDataForStyleable(r3, r4, r5, r6, r7, r8, r9)
            int r11 = androidx.appcompat.C0118R.styleable.CompoundButton_buttonCompat     // Catch: java.lang.Throwable -> L8e
            boolean r11 = r0.hasValue(r11)     // Catch: java.lang.Throwable -> L8e
            if (r11 == 0) goto L3e
            int r11 = androidx.appcompat.C0118R.styleable.CompoundButton_buttonCompat     // Catch: java.lang.Throwable -> L8e
            int r11 = r0.getResourceId(r11, r2)     // Catch: java.lang.Throwable -> L8e
            if (r11 == 0) goto L3e
            android.widget.CompoundButton r12 = r10.f66681a     // Catch: android.content.res.Resources.NotFoundException -> L3e java.lang.Throwable -> L8e
            android.content.Context r1 = r12.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L3e java.lang.Throwable -> L8e
            android.graphics.drawable.Drawable r11 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r1, r11)     // Catch: android.content.res.Resources.NotFoundException -> L3e java.lang.Throwable -> L8e
            r12.setButtonDrawable(r11)     // Catch: android.content.res.Resources.NotFoundException -> L3e java.lang.Throwable -> L8e
            r11 = 1
            goto L3f
        L3e:
            r11 = r2
        L3f:
            if (r11 != 0) goto L5e
            int r11 = androidx.appcompat.C0118R.styleable.CompoundButton_android_button     // Catch: java.lang.Throwable -> L8e
            boolean r11 = r0.hasValue(r11)     // Catch: java.lang.Throwable -> L8e
            if (r11 == 0) goto L5e
            int r11 = androidx.appcompat.C0118R.styleable.CompoundButton_android_button     // Catch: java.lang.Throwable -> L8e
            int r11 = r0.getResourceId(r11, r2)     // Catch: java.lang.Throwable -> L8e
            if (r11 == 0) goto L5e
            android.widget.CompoundButton r12 = r10.f66681a     // Catch: java.lang.Throwable -> L8e
            android.content.Context r1 = r12.getContext()     // Catch: java.lang.Throwable -> L8e
            android.graphics.drawable.Drawable r11 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r1, r11)     // Catch: java.lang.Throwable -> L8e
            r12.setButtonDrawable(r11)     // Catch: java.lang.Throwable -> L8e
        L5e:
            int r11 = androidx.appcompat.C0118R.styleable.CompoundButton_buttonTint     // Catch: java.lang.Throwable -> L8e
            boolean r11 = r0.hasValue(r11)     // Catch: java.lang.Throwable -> L8e
            if (r11 == 0) goto L71
            android.widget.CompoundButton r11 = r10.f66681a     // Catch: java.lang.Throwable -> L8e
            int r12 = androidx.appcompat.C0118R.styleable.CompoundButton_buttonTint     // Catch: java.lang.Throwable -> L8e
            android.content.res.ColorStateList r12 = r0.getColorStateList(r12)     // Catch: java.lang.Throwable -> L8e
            androidx.core.widget.CompoundButtonCompat.setButtonTintList(r11, r12)     // Catch: java.lang.Throwable -> L8e
        L71:
            int r11 = androidx.appcompat.C0118R.styleable.CompoundButton_buttonTintMode     // Catch: java.lang.Throwable -> L8e
            boolean r11 = r0.hasValue(r11)     // Catch: java.lang.Throwable -> L8e
            if (r11 == 0) goto L8a
            android.widget.CompoundButton r10 = r10.f66681a     // Catch: java.lang.Throwable -> L8e
            int r11 = androidx.appcompat.C0118R.styleable.CompoundButton_buttonTintMode     // Catch: java.lang.Throwable -> L8e
            r12 = -1
            int r11 = r0.getInt(r11, r12)     // Catch: java.lang.Throwable -> L8e
            r12 = 0
            android.graphics.PorterDuff$Mode r11 = androidx.appcompat.widget.DrawableUtils.parseTintMode(r11, r12)     // Catch: java.lang.Throwable -> L8e
            androidx.core.widget.CompoundButtonCompat.setButtonTintMode(r10, r11)     // Catch: java.lang.Throwable -> L8e
        L8a:
            r0.recycle()
            return
        L8e:
            r10 = move-exception
            r0.recycle()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.C13559cc.m53423d(android.util.AttributeSet, int):void");
    }

    /* renamed from: e */
    public void m53424e() {
        if (this.f66686f) {
            this.f66686f = false;
        } else {
            this.f66686f = true;
            m53420a();
        }
    }

    /* renamed from: f */
    public void m53425f(ColorStateList colorStateList) {
        this.f66682b = colorStateList;
        this.f66684d = true;
        m53420a();
    }

    /* renamed from: g */
    public void m53426g(@Nullable PorterDuff.Mode mode) {
        this.f66683c = mode;
        this.f66685e = true;
        m53420a();
    }
}
