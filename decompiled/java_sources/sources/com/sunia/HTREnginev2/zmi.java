package com.sunia.HTREnginev2;

import android.util.Log;
import com.onegravity.rteditor.spans.RTSpan;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;

/* loaded from: classes7.dex */
public abstract class zmi<C extends RTSpan<Integer>> extends brd<Integer, C> {

    /* renamed from: b */
    public Class<? extends RTSpan<Integer>> f91960b = (Class) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];

    @Override // com.sunia.HTREnginev2.brd
    public final RTSpan<Integer> newSpan(Integer num) {
        if (num == null) {
            return null;
        }
        try {
            return this.f91960b.getDeclaredConstructor(Integer.TYPE).newInstance(num);
        } catch (IllegalAccessException e) {
            Log.e(getClass().getSimpleName(), "Exception instantiating " + this.f91960b.getSimpleName(), e);
            return null;
        } catch (InstantiationException e2) {
            Log.e(getClass().getSimpleName(), "Exception instantiating " + this.f91960b.getSimpleName(), e2);
            return null;
        } catch (NoSuchMethodException e3) {
            Log.e(getClass().getSimpleName(), "Exception instantiating " + this.f91960b.getSimpleName(), e3);
            return null;
        } catch (InvocationTargetException e4) {
            Log.e(getClass().getSimpleName(), "Exception instantiating " + this.f91960b.getSimpleName(), e4);
            return null;
        }
    }
}
