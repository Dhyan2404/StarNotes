package com.sunia.HTREnginev2;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.ActionBarContainer;

/* renamed from: com.sunia.HTREnginev2.d6 */
/* loaded from: classes3.dex */
public class C13604d6 extends Drawable {

    /* renamed from: a */
    public final ActionBarContainer f67524a;

    @RequiresApi(21)
    /* renamed from: com.sunia.HTREnginev2.d6$a */
    /* loaded from: classes3.dex */
    public static class a {
        /* renamed from: a */
        public static void m53590a(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }
    }

    public C13604d6(ActionBarContainer actionBarContainer) {
        this.f67524a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f67524a;
        if (actionBarContainer.f1319l) {
            Drawable drawable = actionBarContainer.f1318k;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f1316i;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        ActionBarContainer actionBarContainer2 = this.f67524a;
        Drawable drawable3 = actionBarContainer2.f1317j;
        if (drawable3 == null || !actionBarContainer2.f1320m) {
            return;
        }
        drawable3.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void getOutline(@NonNull Outline outline) {
        ActionBarContainer actionBarContainer = this.f67524a;
        if (actionBarContainer.f1319l) {
            if (actionBarContainer.f1318k != null) {
                a.m53590a(actionBarContainer.f1316i, outline);
            }
        } else {
            Drawable drawable = actionBarContainer.f1316i;
            if (drawable != null) {
                a.m53590a(drawable, outline);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
