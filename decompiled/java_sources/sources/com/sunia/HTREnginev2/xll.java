package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.res.Configuration;
import android.view.ContextThemeWrapper;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.google.android.material.C5139R;
import com.google.android.material.color.ColorResourcesOverride;
import com.google.android.material.color.ThemeUtils;
import java.util.Map;

@RequiresApi(api = 30)
/* loaded from: classes6.dex */
public class xll implements ColorResourcesOverride {

    /* renamed from: com.sunia.HTREnginev2.xll$b */
    /* loaded from: classes6.dex */
    public static class C14663b {

        /* renamed from: a */
        public static final xll f89836a = new xll();
    }

    public static ColorResourcesOverride getInstance() {
        return C14663b.f89836a;
    }

    @Override // com.google.android.material.color.ColorResourcesOverride
    public boolean applyIfPossible(Context context, Map<Integer, Integer> map) {
        if (!zll.m58728a(context, map)) {
            return false;
        }
        ThemeUtils.applyThemeOverlay(context, C5139R.style.ThemeOverlay_Material3_PersonalizedColors);
        return true;
    }

    @Override // com.google.android.material.color.ColorResourcesOverride
    @NonNull
    public Context wrapContextIfPossible(Context context, Map<Integer, Integer> map) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, C5139R.style.ThemeOverlay_Material3_PersonalizedColors);
        contextThemeWrapper.applyOverrideConfiguration(new Configuration());
        return zll.m58728a(contextThemeWrapper, map) ? contextThemeWrapper : context;
    }

    public xll() {
    }
}
