package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.sunia.HTREnginev2.qin;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class TintContextWrapper extends ContextWrapper {

    /* renamed from: c */
    public static final Object f2008c = new Object();

    /* renamed from: d */
    public static ArrayList<WeakReference<TintContextWrapper>> f2009d;

    /* renamed from: a */
    public final Resources f2010a;

    /* renamed from: b */
    public final Resources.Theme f2011b;

    public TintContextWrapper(@NonNull Context context) {
        super(context);
        if (!VectorEnabledTintResources.shouldBeUsed()) {
            this.f2010a = new qin(this, context.getResources());
            this.f2011b = null;
            return;
        }
        VectorEnabledTintResources vectorEnabledTintResources = new VectorEnabledTintResources(this, context.getResources());
        this.f2010a = vectorEnabledTintResources;
        Resources.Theme newTheme = vectorEnabledTintResources.newTheme();
        this.f2011b = newTheme;
        newTheme.setTo(context.getTheme());
    }

    /* renamed from: a */
    public static boolean m933a(@NonNull Context context) {
        return ((context instanceof TintContextWrapper) || (context.getResources() instanceof qin) || (context.getResources() instanceof VectorEnabledTintResources) || !VectorEnabledTintResources.shouldBeUsed()) ? false : true;
    }

    public static Context wrap(@NonNull Context context) {
        if (!m933a(context)) {
            return context;
        }
        synchronized (f2008c) {
            ArrayList<WeakReference<TintContextWrapper>> arrayList = f2009d;
            if (arrayList == null) {
                f2009d = new ArrayList<>();
            } else {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    WeakReference<TintContextWrapper> weakReference = f2009d.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        f2009d.remove(size);
                    }
                }
                for (int size2 = f2009d.size() - 1; size2 >= 0; size2--) {
                    WeakReference<TintContextWrapper> weakReference2 = f2009d.get(size2);
                    TintContextWrapper tintContextWrapper = weakReference2 != null ? weakReference2.get() : null;
                    if (tintContextWrapper != null && tintContextWrapper.getBaseContext() == context) {
                        return tintContextWrapper;
                    }
                }
            }
            TintContextWrapper tintContextWrapper2 = new TintContextWrapper(context);
            f2009d.add(new WeakReference<>(tintContextWrapper2));
            return tintContextWrapper2;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f2010a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f2010a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f2011b;
        return theme == null ? super.getTheme() : theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        Resources.Theme theme = this.f2011b;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
