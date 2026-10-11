package com.huawei.stylus.penengine.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.huawei.penkit.impl.kitpaint.HwHandWritingImpl;
import com.huawei.stylus.penengine.HwPenEngineManager;
import java.io.File;
import java.io.IOException;

/* loaded from: classes4.dex */
public class HwHandWritingView extends FrameLayout {

    /* renamed from: h */
    public static final String f39012h = "HwHandWritingView";

    /* renamed from: e */
    public IHwHandWritingView f39013e;

    /* renamed from: f */
    public View f39014f;

    /* renamed from: g */
    public View f39015g;

    public HwHandWritingView(Context context) {
        this(context, null);
    }

    public boolean canRedo() {
        IHwHandWritingView iHwHandWritingView = this.f39013e;
        if (iHwHandWritingView != null) {
            return iHwHandWritingView.canRedo();
        }
        return false;
    }

    public boolean canUndo() {
        IHwHandWritingView iHwHandWritingView = this.f39013e;
        if (iHwHandWritingView != null) {
            return iHwHandWritingView.canUndo();
        }
        return false;
    }

    public void clear() {
        this.f39013e.clear();
    }

    public boolean clearStepChange() {
        if (!HwPenEngineManager.isApiLevelCompatible(2)) {
            return false;
        }
        IHwHandWritingView iHwHandWritingView = this.f39013e;
        if (iHwHandWritingView == null) {
            Log.e(f39012h, "clearStepChange error, mHandWritingView == null");
            return false;
        }
        iHwHandWritingView.clearStepChange();
        return true;
    }

    public boolean enableCanvasScale(boolean z) {
        String str = f39012h;
        Log.i(str, "enableCanvasScale :" + z);
        if (!HwPenEngineManager.isApiLevelCompatible(2)) {
            return false;
        }
        IHwHandWritingView iHwHandWritingView = this.f39013e;
        if (iHwHandWritingView != null) {
            return iHwHandWritingView.enableCanvasScale(z);
        }
        Log.e(str, "enableCanvasScale error, mHandWritingView == null");
        return false;
    }

    public final boolean enableDrag(boolean z) {
        if (!HwPenEngineManager.isApiLevelCompatible(2)) {
            return false;
        }
        if (this.f39015g == null) {
            Log.e(f39012h, "mToolBox is null");
            return false;
        }
        IHwHandWritingView iHwHandWritingView = this.f39013e;
        return iHwHandWritingView != null && iHwHandWritingView.enableDrag(this, z);
    }

    public boolean enableInstantShape(boolean z) {
        String str = f39012h;
        Log.i(str, "enableInstantShape :" + z);
        if (!HwPenEngineManager.isApiLevelCompatible(2)) {
            return false;
        }
        IHwHandWritingView iHwHandWritingView = this.f39013e;
        if (iHwHandWritingView != null) {
            return iHwHandWritingView.enableInstantShape(z);
        }
        Log.e(str, "enableInstantShape error, mHandWritingView == null");
        return false;
    }

    public boolean enableInstantTable(boolean z) {
        String str = f39012h;
        Log.i(str, "enableInstantTable :" + z);
        if (!HwPenEngineManager.isApiLevelCompatible(2)) {
            return false;
        }
        IHwHandWritingView iHwHandWritingView = this.f39013e;
        if (iHwHandWritingView != null) {
            return iHwHandWritingView.enableInstantTable(z);
        }
        Log.e(str, "enableInstantTable error, mHandWritingView == null");
        return false;
    }

    public boolean enablePencilTilt(boolean z) {
        String str = f39012h;
        Log.i(str, "enablePencilTilt :" + z);
        if (!HwPenEngineManager.isApiLevelCompatible(2)) {
            return false;
        }
        IHwHandWritingView iHwHandWritingView = this.f39013e;
        if (iHwHandWritingView != null) {
            return iHwHandWritingView.enablePencilTilt(z);
        }
        Log.e(str, "enablePencilTilt error, mHandWritingView == null");
        return false;
    }

    public Rect getContentRange() {
        IHwHandWritingView iHwHandWritingView = this.f39013e;
        return (iHwHandWritingView == null || iHwHandWritingView.getContentRange() == null) ? new Rect() : this.f39013e.getContentRange();
    }

    public void getThumbnail(Bitmap bitmap, RectF rectF) {
        this.f39013e.getThumbnail(bitmap, rectF);
    }

    public Rect getVisibleRange() {
        IHwHandWritingView iHwHandWritingView = this.f39013e;
        return iHwHandWritingView != null ? iHwHandWritingView.getVisibleRange() : new Rect();
    }

    public boolean isChanged() {
        return this.f39013e.isChanged();
    }

    public boolean isEmpty() {
        return this.f39013e.isEmpty();
    }

    public void load() {
        this.f39013e.load();
    }

    public void redo() {
        IHwHandWritingView iHwHandWritingView = this.f39013e;
        if (iHwHandWritingView != null) {
            iHwHandWritingView.redo();
        }
    }

    public boolean resetChangedState() {
        if (!HwPenEngineManager.isApiLevelCompatible(2)) {
            return false;
        }
        IHwHandWritingView iHwHandWritingView = this.f39013e;
        if (iHwHandWritingView == null) {
            Log.e(f39012h, "resetChangedState error, mHandWritingView == null");
            return false;
        }
        iHwHandWritingView.resetChangedState();
        return true;
    }

    public boolean save(String str) {
        return this.f39013e.save(str);
    }

    public void setMaxPages(int i) {
        this.f39013e.setMaxPages(i);
    }

    public boolean setPaintScrollable(boolean z) {
        if (!HwPenEngineManager.isApiLevelCompatible(2)) {
            return false;
        }
        IHwHandWritingView iHwHandWritingView = this.f39013e;
        if (iHwHandWritingView == null) {
            Log.e(f39012h, "setPaintScrollable error, mHandWritingView == null");
            return false;
        }
        iHwHandWritingView.setPaintScrollable(z);
        return true;
    }

    public void setPaintViewListener(IPaintViewListener iPaintViewListener) {
        IHwHandWritingView iHwHandWritingView = this.f39013e;
        if (iHwHandWritingView != null) {
            iHwHandWritingView.setPaintViewListener(iPaintViewListener);
        }
    }

    public void setSupportFinger(boolean z) {
        this.f39013e.setSupportFinger(z);
    }

    public void setToolType(int i, int i2, int i3) {
        this.f39013e.setToolType(i, i2, i3);
    }

    public boolean setToolViewVisible(int i, boolean z) {
        IHwHandWritingView iHwHandWritingView;
        return HwPenEngineManager.isApiLevelCompatible(2) && (iHwHandWritingView = this.f39013e) != null && iHwHandWritingView.setToolViewVisible(i, z);
    }

    public void undo() {
        IHwHandWritingView iHwHandWritingView = this.f39013e;
        if (iHwHandWritingView != null) {
            iHwHandWritingView.undo();
        }
    }

    public HwHandWritingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public boolean load(String str) {
        File file = new File(str);
        if (file.exists()) {
            try {
                return this.f39013e.load(file.getCanonicalPath());
            } catch (IOException unused) {
                Log.e(f39012h, "load file, getCanonicalPath IOException.");
                return false;
            }
        }
        Log.e(f39012h, "file not exist.");
        return false;
    }

    public HwHandWritingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (this.f39013e == null) {
            HwHandWritingImpl hwHandWritingImpl = new HwHandWritingImpl(context);
            this.f39013e = hwHandWritingImpl;
            this.f39014f = hwHandWritingImpl.initView(attributeSet, i);
            this.f39015g = this.f39013e.initToolBox(attributeSet, i);
            ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = 81;
            addView(this.f39014f, layoutParams);
            addView(this.f39015g, layoutParams2);
            this.f39013e.init();
        }
    }
}
