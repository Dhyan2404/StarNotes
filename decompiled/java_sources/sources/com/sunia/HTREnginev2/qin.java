package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.ResourceManagerInternal;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class qin extends aml {

    /* renamed from: b */
    public final WeakReference<Context> f82094b;

    public qin(@NonNull Context context, @NonNull Resources resources) {
        super(resources);
        this.f82094b = new WeakReference<>(context);
    }

    @Override // com.sunia.HTREnginev2.aml, android.content.res.Resources
    public Drawable getDrawable(int i) throws Resources.NotFoundException {
        Drawable m53042a = m53042a(i);
        Context context = this.f82094b.get();
        if (m53042a != null && context != null) {
            ResourceManagerInternal.get().m851s(context, i, m53042a);
        }
        return m53042a;
    }
}
