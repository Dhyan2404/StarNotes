package com.huawei.stylus.penengine.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.widget.FrameLayout;
import com.huawei.penkit.impl.eink.HwEinkStylusImpl;
import com.huawei.stylus.penengine.eink.listener.IHwEinkListener;
import com.huawei.stylus.penengine.eink.model.StrokeInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class HwEinkSurfaceView extends FrameLayout {
    public static final int TOOL_TYPE_BOTH = 3;
    public static final int TOOL_TYPE_FINGER = 1;
    public static final int TOOL_TYPE_STYLUS = 2;

    /* renamed from: i */
    public static final String f39007i = "HwEinkSurfaceView";

    /* renamed from: e */
    public SurfaceView f39008e;

    /* renamed from: f */
    public HwEinkStylusImpl f39009f;

    /* renamed from: g */
    public Context f39010g;

    /* renamed from: h */
    public boolean f39011h;

    public HwEinkSurfaceView(Context context) {
        this(context, null);
    }

    public boolean canPaste() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.canPaste();
        }
        Log.e(f39007i, "invalid view, invoke canPaste failed");
        return false;
    }

    public boolean canRedo() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.canRedo();
        }
        Log.e(f39007i, "invalid view, invoke canRedo failed");
        return false;
    }

    public boolean canUndo() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.canUndo();
        }
        Log.e(f39007i, "invalid view, invoke canUndo failed");
        return false;
    }

    public void cancelSelection() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.cancelSelection();
        } else {
            Log.e(f39007i, "invalid view, cancelSelection failed");
        }
    }

    public void clear() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.clear();
        } else {
            Log.e(f39007i, "invalid view, invoke clear failed");
        }
    }

    public void copySelection() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.copySelection();
        } else {
            Log.e(f39007i, "invalid view, copySelection failed");
        }
    }

    public void cutSelection() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.cutSelection();
        } else {
            Log.e(f39007i, "invalid view, cutSelection failed");
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent) && !this.f39011h;
    }

    public void eraseArea(Path path) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.eraseArea(path);
        } else {
            Log.e(f39007i, "invalid view, invoke eraseArea failed");
        }
    }

    public void eraseSelection() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.eraseSelection();
        } else {
            Log.e(f39007i, "invalid view, eraseSelection failed");
        }
    }

    public int getActionMode() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.getActionMode();
        }
        Log.e(f39007i, "invalid view, getWritingMode failed");
        return 0;
    }

    public int getEraserType() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.getEraserType();
        }
        Log.e(f39007i, "invalid view, getEraserType failed");
        return 1;
    }

    public int getEraserWidth() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.getEraserWidth();
        }
        Log.e(f39007i, "invalid view, getEraserRadius failed");
        return 10;
    }

    public int getPenColor() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.getPenColor();
        }
        Log.e(f39007i, "invalid view, getBrushColor failed");
        return -16777216;
    }

    public int getPenType() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.getPenType();
        }
        Log.e(f39007i, "invalid view, getBrushType failed");
        return 1;
    }

    public float getPenWidth() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.getPenWidth();
        }
        Log.e(f39007i, "invalid view, getBrushWidth failed");
        return 10.0f;
    }

    public Path getSelectionPath() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.getSelectionPath();
        }
        Log.e(f39007i, "invalid view, getSelectionPath failed");
        return new Path();
    }

    public List<StrokeInfo> getSelectionStroke() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.getSelectionStroke();
        }
        Log.e(f39007i, "invalid view, getSelectionStroke failed");
        return new ArrayList(0);
    }

    public List<StrokeInfo> getStrokeInfo() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.getStrokeInfo();
        }
        Log.e(f39007i, "invalid view, getStrokeInfo failed");
        return new ArrayList(0);
    }

    public Bitmap getThumbnail() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.getThumbnail();
        }
        Log.e(f39007i, "invalid view, getThumbnail failed");
        return Bitmap.createBitmap(200, 200, Bitmap.Config.ARGB_8888);
    }

    public boolean hasAction() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.hasAction();
        }
        Log.e(f39007i, "invalid view, invoke hasAction failed");
        return false;
    }

    public void hideArea(Path path) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.hideArea(path);
        } else {
            Log.e(f39007i, "invalid view, invoke hideArea failed");
        }
    }

    public boolean isEmpty() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.isEmpty();
        }
        Log.e(f39007i, "invalid view, invoke isEmpty failed");
        return true;
    }

    public void pasteSelection(PointF pointF) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.pasteSelection(pointF);
        } else {
            Log.e(f39007i, "invalid view, pasteSelection failed");
        }
    }

    public void redo() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.redo();
        } else {
            Log.e(f39007i, "invalid view, invoke redo failed");
        }
    }

    public void setActionMode(int i) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.setActionMode(i);
        } else {
            Log.e(f39007i, "invalid view, setWritingMode failed");
        }
    }

    public void setBackground(int i) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.setBackground(i);
        } else {
            Log.e(f39007i, "invalid view, setBackground failed");
        }
    }

    public boolean setBackgroundBitmap(Bitmap bitmap) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.setBackgroundBitmap(bitmap);
        }
        Log.e(f39007i, "invalid view, setBackgroundBitmap failed");
        return false;
    }

    public void setClipPath(Path path) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.setClipPath(path);
        } else {
            Log.e(f39007i, "invalid view, setClipPath failed");
        }
    }

    public void setDispatchPoint(boolean z) {
        this.f39011h = z;
    }

    public void setEraserBackgroundBitmap(Bitmap bitmap) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.setEraserBackgroundBitmap(bitmap);
        } else {
            Log.e(f39007i, "invalid view, setEraserBackgroundBitmap failed");
        }
    }

    public void setEraserInputToolType(int i) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.setEraserInputToolType(i);
        } else {
            Log.e(f39007i, "invalid view, setEraserToolType failed");
        }
    }

    public void setEraserShowBorder(boolean z) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.setEraserShowBorder(z);
        } else {
            Log.e(f39007i, "invalid view, setEraserShowBorder failed");
        }
    }

    public void setEraserType(int i) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.setEraserType(i);
        } else {
            Log.e(f39007i, "invalid view, setEraserType failed");
        }
    }

    public void setEraserWidth(int i) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.setEraserWidth(i);
        } else {
            Log.e(f39007i, "invalid view, setEraserRadius failed");
        }
    }

    public void setHwEinkListener(IHwEinkListener iHwEinkListener) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.setHwEinkListener(iHwEinkListener);
        } else {
            Log.e(f39007i, "invalid view, setHwEinkPointListener failed");
        }
    }

    public void setInputToolType(int i) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.setInputToolType(i);
        } else {
            Log.e(f39007i, "invalid view, setInputToolType failed");
        }
    }

    public void setPenColor(int i) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.setPenColor(i);
        } else {
            Log.e(f39007i, "invalid view, setBrushColor failed");
        }
    }

    public void setPenType(int i) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.setPenType(i);
        } else {
            Log.e(f39007i, "invalid view, setBrushType failed");
        }
    }

    public void setPenWidth(float f) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.setPenWidth(f);
        } else {
            Log.e(f39007i, "invalid view, setBrushWidth failed");
        }
    }

    public void setSelectInputToolType(int i) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.setSelectInputToolType(i);
        } else {
            Log.e(f39007i, "invalid view, setSelectToolType failed");
        }
    }

    public void setStrokeInfo(List<StrokeInfo> list) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.setStrokeInfo(list);
        } else {
            Log.e(f39007i, "invalid view, setStrokeInfo failed");
        }
    }

    public void showArea(Path path) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.showArea(path);
        } else {
            Log.e(f39007i, "invalid view, invoke showArea failed");
        }
    }

    public void undo() {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            hwEinkStylusImpl.undo();
        } else {
            Log.e(f39007i, "invalid view, invoke undo failed");
        }
    }

    public HwEinkSurfaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HwEinkSurfaceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f39011h = false;
        this.f39010g = context;
        HwEinkStylusImpl hwEinkStylusImpl = new HwEinkStylusImpl(this.f39010g);
        this.f39009f = hwEinkStylusImpl;
        this.f39008e = hwEinkStylusImpl.initView(attributeSet, i);
        addView(this.f39008e, new FrameLayout.LayoutParams(-1, -1));
    }

    public Bitmap getThumbnail(Bitmap bitmap) {
        HwEinkStylusImpl hwEinkStylusImpl = this.f39009f;
        if (hwEinkStylusImpl != null) {
            return hwEinkStylusImpl.getThumbnail(bitmap);
        }
        Log.e(f39007i, "invalid view, getThumbnail failed");
        return Bitmap.createBitmap(200, 200, Bitmap.Config.ARGB_8888);
    }
}
