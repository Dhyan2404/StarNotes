package com.onegravity.colorpreference;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import androidx.annotation.ArrayRes;
import com.onegravity.colorpreference.ColorDialog;
import com.sunia.HTREnginev2.hzn;

/* renamed from: com.onegravity.colorpreference.a */
/* loaded from: classes7.dex */
public class C7021a {
    /* renamed from: a */
    public static void m31501a(Context context, ColorDialog.OnColorSelectedListener onColorSelectedListener, String str) {
        ColorDialog colorDialog;
        Activity m54661a = hzn.m54661a(context);
        if (m54661a == null || (colorDialog = (ColorDialog) m54661a.getFragmentManager().findFragmentByTag(str)) == null) {
            return;
        }
        colorDialog.setOnColorSelectedListener(onColorSelectedListener);
    }

    /* renamed from: b */
    public static int[] m31502b(@ArrayRes int i, Context context) {
        String[] stringArray = context.getResources().getStringArray(i);
        int[] intArray = context.getResources().getIntArray(i);
        boolean z = stringArray[0] != null;
        int length = z ? stringArray.length : intArray.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = z ? Color.parseColor(stringArray[i2]) : intArray[i2];
        }
        return iArr;
    }

    /* renamed from: c */
    public static void m31503c(Context context, ColorDialog.OnColorSelectedListener onColorSelectedListener, String str, int i, ColorShape colorShape, int[] iArr, int i2) {
        ColorDialog newInstance = ColorDialog.newInstance(i, colorShape, iArr, i2);
        newInstance.setOnColorSelectedListener(onColorSelectedListener);
        Activity m54661a = hzn.m54661a(context);
        if (m54661a != null) {
            m54661a.getFragmentManager().beginTransaction().add(newInstance, str).commit();
        }
    }
}
