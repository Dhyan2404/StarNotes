package com.hihonor.android.magicx.app.penengine.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.hihonor.penkit.impl.kitpaint.HnHandWritingImpl;
import com.hihonor.stylus.penengine.view.IHnHandWritingView;
import java.io.File;
import java.io.IOException;

/* loaded from: classes4.dex */
public class HnHandWritingView extends FrameLayout {
    public static final int STROKE_TYPE_BALLPOINT = 2;
    public static final int STROKE_TYPE_ERASER = 0;
    public static final int STROKE_TYPE_LASSO = 5;
    public static final int STROKE_TYPE_MARKER = 4;
    public static final int STROKE_TYPE_PEN = 1;
    public static final int STROKE_TYPE_PENCIL = 3;

    /* renamed from: h */
    public static final String f38914h = "HnHandWritingView";

    /* renamed from: i */
    public static final String f38915i = "com.hihonor.stylus.penengine.view.IDoubleClickListener";

    /* renamed from: e */
    public IHnHandWritingView f38916e;

    /* renamed from: f */
    public View f38917f;

    /* renamed from: g */
    public View f38918g;

    /* renamed from: com.hihonor.android.magicx.app.penengine.view.HnHandWritingView$a */
    /* loaded from: classes4.dex */
    public class C6936a implements com.hihonor.stylus.penengine.view.IPaintViewListener {

        /* renamed from: a */
        public final /* synthetic */ IPaintViewListener f38919a;

        public C6936a(IPaintViewListener iPaintViewListener) {
            this.f38919a = iPaintViewListener;
        }

        /* renamed from: a */
        public void m30877a() {
            IPaintViewListener iPaintViewListener = this.f38919a;
            if (iPaintViewListener != null) {
                iPaintViewListener.onEngineInit();
            }
        }

        /* renamed from: b */
        public void m30878b() {
            IPaintViewListener iPaintViewListener = this.f38919a;
            if (iPaintViewListener != null) {
                iPaintViewListener.onLoaded();
            }
        }

        /* renamed from: c */
        public void m30879c(int i) {
            IPaintViewListener iPaintViewListener = this.f38919a;
            if (iPaintViewListener != null) {
                iPaintViewListener.onStepChanged(i);
            }
        }
    }

    /* renamed from: com.hihonor.android.magicx.app.penengine.view.HnHandWritingView$b */
    /* loaded from: classes4.dex */
    public class C6937b implements com.hihonor.stylus.penengine.view.IDoubleClickListener {

        /* renamed from: a */
        public final /* synthetic */ IDoubleClickListener f38921a;

        public C6937b(IDoubleClickListener iDoubleClickListener) {
            this.f38921a = iDoubleClickListener;
        }

        /* renamed from: a */
        public void m30880a(int i) {
            IDoubleClickListener iDoubleClickListener = this.f38921a;
            if (iDoubleClickListener != null) {
                iDoubleClickListener.onChangeBrush(i);
            }
        }
    }

    public HnHandWritingView(Context context) {
        this(context, null);
    }

    public boolean canRedo() {
        IHnHandWritingView iHnHandWritingView = this.f38916e;
        if (iHnHandWritingView != null) {
            return iHnHandWritingView.canRedo();
        }
        return false;
    }

    public boolean canUndo() {
        IHnHandWritingView iHnHandWritingView = this.f38916e;
        if (iHnHandWritingView != null) {
            return iHnHandWritingView.canUndo();
        }
        return false;
    }

    public void clear() {
        this.f38916e.clear();
    }

    public Rect getContentRange() {
        IHnHandWritingView iHnHandWritingView = this.f38916e;
        return (iHnHandWritingView == null || iHnHandWritingView.getContentRange() == null) ? new Rect() : this.f38916e.getContentRange();
    }

    public void getThumbnail(Bitmap bitmap, RectF rectF) {
        this.f38916e.getThumbnail(bitmap, rectF);
    }

    public Rect getVisibleRange() {
        IHnHandWritingView iHnHandWritingView = this.f38916e;
        return iHnHandWritingView != null ? iHnHandWritingView.getVisibleRange() : new Rect();
    }

    public boolean isChanged() {
        return this.f38916e.isChanged();
    }

    public boolean isEmpty() {
        return this.f38916e.isEmpty();
    }

    public void load() {
        this.f38916e.load();
    }

    public void redo() {
        IHnHandWritingView iHnHandWritingView = this.f38916e;
        if (iHnHandWritingView != null) {
            iHnHandWritingView.redo();
        }
    }

    public boolean save(String str) {
        if (!TextUtils.isEmpty(str)) {
            return this.f38916e.save(str);
        }
        Log.e(f38914h, "filepath is empty");
        return false;
    }

    public void setActionMode(int i) {
        try {
            IHnHandWritingView iHnHandWritingView = this.f38916e;
            if (iHnHandWritingView != null) {
                iHnHandWritingView.setActionMode(i);
            }
        } catch (NoSuchMethodError unused) {
            Log.e(f38914h, "setActionMode not support");
        }
    }

    public void setDoubleClickListener(IDoubleClickListener iDoubleClickListener) {
        try {
            Class.forName(f38915i);
            IHnHandWritingView iHnHandWritingView = this.f38916e;
            if (iHnHandWritingView != null) {
                try {
                    iHnHandWritingView.setDoubleClickListener(new C6937b(iDoubleClickListener));
                } catch (NoSuchMethodError unused) {
                    Log.e(f38914h, "setDoubleClickListener not support");
                }
            }
        } catch (ClassNotFoundException unused2) {
            Log.i(f38914h, "ClickListener cannot be found");
        }
    }

    public void setMaxPages(int i) {
        this.f38916e.setMaxPages(i);
    }

    public void setPaintScrollable(boolean z) {
        try {
            IHnHandWritingView iHnHandWritingView = this.f38916e;
            if (iHnHandWritingView != null) {
                iHnHandWritingView.setPaintScrollable(z);
            }
        } catch (NoSuchMethodError unused) {
            Log.e(f38914h, "setPaintScrollable not support");
        }
    }

    public void setPaintViewListener(IPaintViewListener iPaintViewListener) {
        IHnHandWritingView iHnHandWritingView = this.f38916e;
        if (iHnHandWritingView != null) {
            iHnHandWritingView.setPaintViewListener(new C6936a(iPaintViewListener));
        }
    }

    public void setPenWidthScale(float f) {
        try {
            IHnHandWritingView iHnHandWritingView = this.f38916e;
            if (iHnHandWritingView != null) {
                iHnHandWritingView.setPenWidthScale(f);
            }
        } catch (NoSuchMethodError unused) {
            Log.e(f38914h, "setPenWidthScale not support");
        }
    }

    public void setSupportFinger(boolean z) {
        this.f38916e.setSupportFinger(z);
    }

    public void setToolBoxVisibility(boolean z) {
        View view = this.f38918g;
        if (view == null) {
            Log.e(f38914h, "ToolBox is null ,set visibility failed!");
        } else if (z) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    public void setToolType(int i, int i2, int i3) {
        this.f38916e.setToolType(i, i2, i3);
    }

    public void undo() {
        IHnHandWritingView iHnHandWritingView = this.f38916e;
        if (iHnHandWritingView != null) {
            iHnHandWritingView.undo();
        }
    }

    public HnHandWritingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public boolean load(String str) {
        if (TextUtils.isEmpty(str)) {
            Log.e(f38914h, "filepath is empty");
            return false;
        }
        File file = new File(str);
        if (file.exists()) {
            try {
                return this.f38916e.load(file.getCanonicalPath());
            } catch (IOException unused) {
                Log.e(f38914h, "load file, getCanonicalPath IOException.");
                return false;
            }
        }
        Log.e(f38914h, "file not exist.");
        return false;
    }

    public HnHandWritingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (this.f38916e == null) {
            HnHandWritingImpl hnHandWritingImpl = new HnHandWritingImpl(context);
            this.f38916e = hnHandWritingImpl;
            this.f38917f = hnHandWritingImpl.initView(attributeSet, i);
            this.f38918g = this.f38916e.initToolBox(attributeSet, i);
            ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = 81;
            addView(this.f38917f, layoutParams);
            addView(this.f38918g, layoutParams2);
            this.f38916e.init();
        }
    }
}
