package androidx.core.widget;

import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class PopupWindowCompat {

    /* renamed from: a */
    public static final String f6197a = "PopupWindowCompatApi21";

    /* renamed from: b */
    public static Method f6198b;

    /* renamed from: c */
    public static boolean f6199c;

    /* renamed from: d */
    public static Method f6200d;

    /* renamed from: e */
    public static boolean f6201e;

    /* renamed from: f */
    public static Field f6202f;

    /* renamed from: g */
    public static boolean f6203g;

    @RequiresApi(23)
    /* renamed from: androidx.core.widget.PopupWindowCompat$a */
    /* loaded from: classes3.dex */
    public static class C0869a {
        @DoNotInline
        /* renamed from: a */
        public static boolean m3835a(PopupWindow popupWindow) {
            return popupWindow.getOverlapAnchor();
        }

        @DoNotInline
        /* renamed from: b */
        public static int m3836b(PopupWindow popupWindow) {
            return popupWindow.getWindowLayoutType();
        }

        @DoNotInline
        /* renamed from: c */
        public static void m3837c(PopupWindow popupWindow, boolean z) {
            popupWindow.setOverlapAnchor(z);
        }

        @DoNotInline
        /* renamed from: d */
        public static void m3838d(PopupWindow popupWindow, int i) {
            popupWindow.setWindowLayoutType(i);
        }
    }

    public static boolean getOverlapAnchor(@NonNull PopupWindow popupWindow) {
        return C0869a.m3835a(popupWindow);
    }

    public static int getWindowLayoutType(@NonNull PopupWindow popupWindow) {
        return C0869a.m3836b(popupWindow);
    }

    public static void setOverlapAnchor(@NonNull PopupWindow popupWindow, boolean z) {
        C0869a.m3837c(popupWindow, z);
    }

    public static void setWindowLayoutType(@NonNull PopupWindow popupWindow, int i) {
        C0869a.m3838d(popupWindow, i);
    }

    public static void showAsDropDown(@NonNull PopupWindow popupWindow, @NonNull View view, int i, int i2, int i3) {
        popupWindow.showAsDropDown(view, i, i2, i3);
    }
}
