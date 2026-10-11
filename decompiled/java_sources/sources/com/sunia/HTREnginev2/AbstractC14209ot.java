package com.sunia.HTREnginev2;

import android.util.Log;
import com.onegravity.rteditor.spans.RTSpan;
import java.lang.reflect.ParameterizedType;

/* renamed from: com.sunia.HTREnginev2.ot */
/* loaded from: classes7.dex */
public abstract class AbstractC14209ot<C extends RTSpan<Boolean>> extends brd<Boolean, C> {

    /* renamed from: b */
    public Class<? extends RTSpan<Boolean>> f80109b = (Class) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];

    @Override // com.sunia.HTREnginev2.brd
    public final RTSpan<Boolean> newSpan(Boolean bool) {
        try {
            if (bool.booleanValue()) {
                return this.f80109b.newInstance();
            }
            return null;
        } catch (IllegalAccessException e) {
            Log.e(getClass().getSimpleName(), "Exception instantiating " + this.f80109b.getSimpleName(), e);
            return null;
        } catch (InstantiationException e2) {
            Log.e(getClass().getSimpleName(), "Exception instantiating " + this.f80109b.getSimpleName(), e2);
            return null;
        }
    }
}
