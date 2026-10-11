package com.sunia.HTREnginev2;

import android.graphics.RectF;
import android.view.View;
import androidx.constraintlayout.motion.widget.Key;
import java.util.HashSet;

/* loaded from: classes3.dex */
public abstract class bui extends Key {
    protected static final float SELECTION_SLOPE = 20.0f;

    /* renamed from: e */
    public int f66147e = Key.UNSET;

    /* renamed from: e */
    public abstract void mo1788e(int layoutWidth, int layoutHeight, float start_x, float start_y, float end_x, float end_y);

    /* renamed from: f */
    public abstract float mo1789f();

    /* renamed from: g */
    public abstract float mo1790g();

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> attributes) {
    }

    public abstract boolean intersects(int layoutWidth, int layoutHeight, RectF start, RectF end, float x, float y);

    public abstract void positionAttributes(View view, RectF start, RectF end, float x, float y, String[] attribute, float[] value);
}
