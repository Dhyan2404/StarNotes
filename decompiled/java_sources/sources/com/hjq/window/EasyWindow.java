package com.hjq.window;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.hjq.window.ComponentCallbacksC6939a;
import com.hjq.window.EasyWindow;
import com.hjq.window.draggable.BaseDraggable;
import com.hjq.window.draggable.MovingDraggable;
import com.sunia.HTREnginev2.C14589w6;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class EasyWindow<X extends EasyWindow<?>> implements Runnable, ComponentCallbacksC6939a.a {

    /* renamed from: q */
    public static final Handler f38923q = new Handler(Looper.getMainLooper());

    /* renamed from: r */
    public static final List<EasyWindow<?>> f38924r = new ArrayList();

    /* renamed from: e */
    public Context f38925e;

    /* renamed from: f */
    public ViewGroup f38926f;

    /* renamed from: g */
    public WindowManager f38927g;

    /* renamed from: h */
    public WindowManager.LayoutParams f38928h;

    /* renamed from: i */
    public boolean f38929i;

    /* renamed from: j */
    public int f38930j;

    /* renamed from: k */
    public String f38931k;

    /* renamed from: l */
    public C14589w6 f38932l;

    /* renamed from: m */
    public BaseDraggable f38933m;

    /* renamed from: n */
    public OnWindowLifecycle f38934n;

    /* renamed from: o */
    public ComponentCallbacksC6939a f38935o;

    /* renamed from: p */
    public final Runnable f38936p;

    /* loaded from: classes4.dex */
    public interface OnClickListener<V extends View> {
        void onClick(EasyWindow<?> easyWindow, V v);
    }

    /* loaded from: classes4.dex */
    public interface OnLongClickListener<V extends View> {
        boolean onLongClick(EasyWindow<?> easyWindow, V v);
    }

    /* loaded from: classes4.dex */
    public interface OnTouchListener<V extends View> {
        boolean onTouch(EasyWindow<?> easyWindow, V v, MotionEvent motionEvent);
    }

    /* loaded from: classes4.dex */
    public interface OnWindowLifecycle {
        default void onWindowCancel(EasyWindow<?> easyWindow) {
        }

        default void onWindowRecycle(EasyWindow<?> easyWindow) {
        }

        default void onWindowShow(EasyWindow<?> easyWindow) {
        }

        default void onWindowUpdate(EasyWindow<?> easyWindow) {
        }

        default void onWindowVisibilityChanged(EasyWindow<?> easyWindow, int i) {
        }
    }

    public EasyWindow(Activity activity) {
        this((Context) activity);
        View decorView = activity.getWindow().getDecorView();
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        if ((attributes.flags & 1024) != 0 || (decorView.getSystemUiVisibility() & 4) != 0) {
            addWindowFlags(1024);
        }
        setLayoutInDisplayCutoutMode(attributes.layoutInDisplayCutoutMode);
        int i = attributes.systemUiVisibility;
        if (i != 0) {
            setSystemUiVisibility(i);
        }
        if (decorView.getSystemUiVisibility() != 0) {
            this.f38926f.setSystemUiVisibility(decorView.getSystemUiVisibility());
        }
        C14589w6 c14589w6 = new C14589w6(this, activity);
        this.f38932l = c14589w6;
        c14589w6.m57941a();
    }

    public static synchronized void cancelAll() {
        synchronized (EasyWindow.class) {
            for (EasyWindow<?> easyWindow : f38924r) {
                if (easyWindow != null) {
                    easyWindow.cancel();
                }
            }
        }
    }

    public static synchronized void cancelByClass(Class<EasyWindow<?>> cls) {
        synchronized (EasyWindow.class) {
            if (cls == null) {
                return;
            }
            for (EasyWindow<?> easyWindow : f38924r) {
                if (easyWindow != null && cls.equals(easyWindow.getClass())) {
                    easyWindow.cancel();
                }
            }
        }
    }

    public static synchronized void cancelByTag(String str) {
        synchronized (EasyWindow.class) {
            if (str == null) {
                return;
            }
            for (EasyWindow<?> easyWindow : f38924r) {
                if (easyWindow != null && str.equals(easyWindow.getTag())) {
                    easyWindow.cancel();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m30884d() {
        BaseDraggable baseDraggable = this.f38933m;
        if (baseDraggable != null) {
            baseDraggable.refreshLocationCoordinate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m30885e() {
        BaseDraggable baseDraggable = this.f38933m;
        if (baseDraggable != null) {
            baseDraggable.refreshLocationCoordinate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m30886f() {
        BaseDraggable baseDraggable = this.f38933m;
        if (baseDraggable != null) {
            baseDraggable.refreshLocationCoordinate();
        }
    }

    public static synchronized void recycleAll() {
        synchronized (EasyWindow.class) {
            Iterator<EasyWindow<?>> it2 = f38924r.iterator();
            while (it2.hasNext()) {
                EasyWindow<?> next = it2.next();
                if (next != null) {
                    it2.remove();
                    next.recycle();
                }
            }
        }
    }

    public static void recycleByClass(Class<EasyWindow<?>> cls) {
        if (cls == null) {
            return;
        }
        Iterator<EasyWindow<?>> it2 = f38924r.iterator();
        while (it2.hasNext()) {
            EasyWindow<?> next = it2.next();
            if (next != null && cls.equals(next.getClass())) {
                it2.remove();
                next.recycle();
            }
        }
    }

    public static void recycleByTag(String str) {
        if (str == null) {
            return;
        }
        Iterator<EasyWindow<?>> it2 = f38924r.iterator();
        while (it2.hasNext()) {
            EasyWindow<?> next = it2.next();
            if (next != null && str.equals(next.getTag())) {
                it2.remove();
                next.recycle();
            }
        }
    }

    public static EasyWindow with(Activity activity) {
        return new EasyWindow(activity);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X addWindowFlags(int i) {
        WindowManager.LayoutParams layoutParams = this.f38928h;
        layoutParams.flags = i | layoutParams.flags;
        postUpdate();
        return this;
    }

    public void cancel() {
        if (this.f38929i) {
            try {
                try {
                    this.f38927g.removeViewImmediate(this.f38926f);
                    removeCallbacks(this);
                    OnWindowLifecycle onWindowLifecycle = this.f38934n;
                    if (onWindowLifecycle != null) {
                        onWindowLifecycle.onWindowCancel(this);
                    }
                } catch (IllegalArgumentException | IllegalStateException | NullPointerException e) {
                    e.printStackTrace();
                }
            } finally {
                this.f38929i = false;
            }
        }
    }

    public <V extends View> V findViewById(int i) {
        return (V) this.f38926f.findViewById(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public final X m30887g(View view, OnClickListener<? extends View> onClickListener) {
        removeWindowFlags(16);
        view.setClickable(true);
        view.setOnClickListener(new ViewOnClickListenerC6940b(this, onClickListener));
        return this;
    }

    public View getContentView() {
        if (this.f38926f.getChildCount() == 0) {
            return null;
        }
        return this.f38926f.getChildAt(0);
    }

    public Context getContext() {
        return this.f38925e;
    }

    public View getDecorView() {
        return this.f38926f;
    }

    public BaseDraggable getDraggable() {
        return this.f38933m;
    }

    public Handler getHandler() {
        return f38923q;
    }

    public String getTag() {
        return this.f38931k;
    }

    public int getViewHeight() {
        return getDecorView().getHeight();
    }

    public int getViewWidth() {
        return getDecorView().getWidth();
    }

    public WindowManager getWindowManager() {
        return this.f38927g;
    }

    public WindowManager.LayoutParams getWindowParams() {
        return this.f38928h;
    }

    public int getWindowVisibility() {
        return this.f38926f.getVisibility();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    public final X m30888h(View view, OnLongClickListener<? extends View> onLongClickListener) {
        removeWindowFlags(16);
        view.setClickable(true);
        view.setOnLongClickListener(new ViewOnLongClickListenerC6941c(this, onLongClickListener));
        return this;
    }

    public boolean hasWindowFlags(int i) {
        return (this.f38928h.flags & i) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: i */
    public final X m30889i(View view, OnTouchListener<? extends View> onTouchListener) {
        removeWindowFlags(16);
        view.setEnabled(true);
        view.setOnTouchListener(new ViewOnTouchListenerC6942d(this, onTouchListener));
        return this;
    }

    public boolean isShowing() {
        return this.f38929i;
    }

    @Override // com.hjq.window.ComponentCallbacksC6939a.a
    public void onScreenOrientationChange(int i) {
        BaseDraggable baseDraggable;
        if (isShowing() && (baseDraggable = this.f38933m) != null) {
            baseDraggable.onScreenOrientationChange();
        }
    }

    public boolean post(Runnable runnable) {
        return postDelayed(runnable, 0L);
    }

    public boolean postAtTime(Runnable runnable, long j) {
        return f38923q.postAtTime(runnable, this, j);
    }

    public boolean postDelayed(Runnable runnable, long j) {
        if (j < 0) {
            j = 0;
        }
        return postAtTime(runnable, SystemClock.uptimeMillis() + j);
    }

    public void postUpdate() {
        if (isShowing()) {
            removeCallbacks(this.f38936p);
            post(this.f38936p);
        }
    }

    public void recycle() {
        if (isShowing()) {
            cancel();
        }
        ComponentCallbacksC6939a componentCallbacksC6939a = this.f38935o;
        if (componentCallbacksC6939a != null) {
            componentCallbacksC6939a.m30891b(this.f38925e);
        }
        OnWindowLifecycle onWindowLifecycle = this.f38934n;
        if (onWindowLifecycle != null) {
            onWindowLifecycle.onWindowRecycle(this);
        }
        C14589w6 c14589w6 = this.f38932l;
        if (c14589w6 != null) {
            c14589w6.m57942b();
        }
        this.f38934n = null;
        this.f38925e = null;
        this.f38926f = null;
        this.f38927g = null;
        this.f38928h = null;
        this.f38932l = null;
        this.f38933m = null;
        this.f38935o = null;
        f38924r.remove(this);
    }

    public void removeCallbacks(Runnable runnable) {
        f38923q.removeCallbacks(runnable);
    }

    public void removeCallbacksAndMessages() {
        f38923q.removeCallbacksAndMessages(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X removeWindowFlags(int i) {
        WindowManager.LayoutParams layoutParams = this.f38928h;
        layoutParams.flags = (~i) & layoutParams.flags;
        postUpdate();
        return this;
    }

    @Override // java.lang.Runnable
    public void run() {
        cancel();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setAnimStyle(int i) {
        this.f38928h.windowAnimations = i;
        postUpdate();
        return this;
    }

    public X setBackground(int i, int i2) {
        return setBackground(i, this.f38925e.getDrawable(i2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setBackgroundDimAmount(float f) {
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("amount must be a value between 0 and 1");
        }
        this.f38928h.dimAmount = f;
        if (f != 0.0f) {
            addWindowFlags(2);
        } else {
            removeWindowFlags(2);
        }
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setBitmapFormat(int i) {
        this.f38928h.format = i;
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setBlurBehindRadius(int i) {
        if (Build.VERSION.SDK_INT >= 31) {
            this.f38928h.setBlurBehindRadius(i);
            addWindowFlags(4);
            postUpdate();
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setButtonBrightness(float f) {
        this.f38928h.buttonBrightness = f;
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setColorMode(int i) {
        this.f38928h.setColorMode(i);
        postUpdate();
        return this;
    }

    public X setContentView(int i) {
        return setContentView(LayoutInflater.from(this.f38925e).inflate(i, this.f38926f, false));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setDecorView(ViewGroup viewGroup) {
        this.f38926f = viewGroup;
        return this;
    }

    public X setDraggable() {
        return setDraggable(new MovingDraggable());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setDuration(int i) {
        this.f38930j = i;
        if (isShowing() && this.f38930j != 0) {
            removeCallbacks(this);
            postDelayed(this, this.f38930j);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setGravity(int i) {
        this.f38928h.gravity = i;
        postUpdate();
        post(new Runnable() { // from class: com.sunia.HTREnginev2.kkf
            @Override // java.lang.Runnable
            public final void run() {
                EasyWindow.this.m30884d();
            }
        });
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setHeight(int i) {
        View childAt;
        ViewGroup.LayoutParams layoutParams;
        this.f38928h.height = i;
        if (this.f38926f.getChildCount() > 0 && (layoutParams = (childAt = this.f38926f.getChildAt(0)).getLayoutParams()) != null && layoutParams.height != i) {
            layoutParams.height = i;
            childAt.setLayoutParams(layoutParams);
        }
        postUpdate();
        return this;
    }

    public X setHint(int i, int i2) {
        return setHint(i, this.f38925e.getResources().getString(i2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setHintColor(int i, int i2) {
        ((TextView) findViewById(i)).setHintTextColor(i2);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setHorizontalMargin(float f) {
        this.f38928h.horizontalMargin = f;
        postUpdate();
        return this;
    }

    public X setImageDrawable(int i, int i2) {
        return setImageDrawable(i, this.f38925e.getDrawable(i2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setLayoutInDisplayCutoutMode(int i) {
        this.f38928h.layoutInDisplayCutoutMode = i;
        postUpdate();
        return this;
    }

    public X setOnClickListener(OnClickListener<? extends View> onClickListener) {
        return m30887g(this.f38926f, onClickListener);
    }

    public X setOnLongClickListener(OnLongClickListener<? extends View> onLongClickListener) {
        return m30888h(this.f38926f, onLongClickListener);
    }

    public X setOnTouchListener(OnTouchListener<? extends View> onTouchListener) {
        return m30889i(this.f38926f, onTouchListener);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setOnWindowLifecycle(OnWindowLifecycle onWindowLifecycle) {
        this.f38934n = onWindowLifecycle;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setOutsideTouchable(boolean z) {
        if (z) {
            addWindowFlags(40);
        } else {
            removeWindowFlags(40);
        }
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setPreferredDisplayModeId(int i) {
        this.f38928h.preferredDisplayModeId = i;
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setPreferredRefreshRate(float f) {
        this.f38928h.preferredRefreshRate = f;
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setScreenBrightness(float f) {
        this.f38928h.screenBrightness = f;
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setScreenOrientation(int i) {
        this.f38928h.screenOrientation = i;
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setSoftInputMode(int i) {
        this.f38928h.softInputMode = i;
        removeWindowFlags(8);
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setSystemUiVisibility(int i) {
        this.f38928h.systemUiVisibility = i;
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setTag(String str) {
        this.f38931k = str;
        return this;
    }

    public X setText(int i) {
        return setText(android.R.id.message, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setTextColor(int i, int i2) {
        ((TextView) findViewById(i)).setTextColor(i2);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setTextSize(int i, float f) {
        ((TextView) findViewById(i)).setTextSize(f);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setVerticalMargin(float f) {
        this.f38928h.verticalMargin = f;
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setVerticalWeight(float f) {
        this.f38928h.verticalWeight = f;
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setVisibility(int i, int i2) {
        findViewById(i).setVisibility(i2);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setWidth(int i) {
        View childAt;
        ViewGroup.LayoutParams layoutParams;
        this.f38928h.width = i;
        if (this.f38926f.getChildCount() > 0 && (layoutParams = (childAt = this.f38926f.getChildAt(0)).getLayoutParams()) != null && layoutParams.width != i) {
            layoutParams.width = i;
            childAt.setLayoutParams(layoutParams);
        }
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setWindowAlpha(float f) {
        this.f38928h.alpha = f;
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setWindowFlags(int i) {
        this.f38928h.flags = i;
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setWindowParams(WindowManager.LayoutParams layoutParams) {
        this.f38928h = layoutParams;
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setWindowTitle(CharSequence charSequence) {
        this.f38928h.setTitle(charSequence);
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setWindowToken(IBinder iBinder) {
        this.f38928h.token = iBinder;
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setWindowType(int i) {
        this.f38928h.type = i;
        postUpdate();
        return this;
    }

    public void setWindowVisibility(int i) {
        if (getWindowVisibility() == i) {
            return;
        }
        this.f38926f.setVisibility(i);
        OnWindowLifecycle onWindowLifecycle = this.f38934n;
        if (onWindowLifecycle != null) {
            onWindowLifecycle.onWindowVisibilityChanged(this, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setXOffset(int i) {
        this.f38928h.x = i;
        postUpdate();
        post(new Runnable() { // from class: com.sunia.HTREnginev2.jkf
            @Override // java.lang.Runnable
            public final void run() {
                EasyWindow.this.m30885e();
            }
        });
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setYOffset(int i) {
        this.f38928h.y = i;
        postUpdate();
        post(new Runnable() { // from class: com.sunia.HTREnginev2.lkf
            @Override // java.lang.Runnable
            public final void run() {
                EasyWindow.this.m30886f();
            }
        });
        return this;
    }

    public void show() {
        if (this.f38926f.getChildCount() == 0 || this.f38928h == null) {
            throw new IllegalArgumentException("WindowParams and view cannot be empty");
        }
        if (this.f38929i) {
            update();
            return;
        }
        Context context = this.f38925e;
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            if (activity.isFinishing() || activity.isDestroyed()) {
                return;
            }
        }
        try {
            if (this.f38926f.getParent() != null) {
                this.f38927g.removeViewImmediate(this.f38926f);
            }
            this.f38927g.addView(this.f38926f, this.f38928h);
            this.f38929i = true;
            if (this.f38930j != 0) {
                removeCallbacks(this);
                postDelayed(this, this.f38930j);
            }
            BaseDraggable baseDraggable = this.f38933m;
            if (baseDraggable != null) {
                baseDraggable.start(this);
            }
            OnWindowLifecycle onWindowLifecycle = this.f38934n;
            if (onWindowLifecycle != null) {
                onWindowLifecycle.onWindowShow(this);
            }
        } catch (WindowManager.BadTokenException | IllegalArgumentException | IllegalStateException | NullPointerException e) {
            e.printStackTrace();
        }
    }

    public void showAsDropDown(View view) {
        showAsDropDown(view, 80);
    }

    public void startActivity(Class<? extends Activity> cls) {
        startActivity(new Intent(this.f38925e, cls));
    }

    public void update() {
        if (isShowing()) {
            try {
                this.f38927g.updateViewLayout(this.f38926f, this.f38928h);
                OnWindowLifecycle onWindowLifecycle = this.f38934n;
                if (onWindowLifecycle == null) {
                    return;
                }
                onWindowLifecycle.onWindowUpdate(this);
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            }
        }
    }

    public static EasyWindow with(Application application) {
        return new EasyWindow(application);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setContentView(View view) {
        int i;
        if (this.f38926f.getChildCount() > 0) {
            this.f38926f.removeAllViews();
        }
        this.f38926f.addView(view);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.topMargin = 0;
            marginLayoutParams.bottomMargin = 0;
            marginLayoutParams.leftMargin = 0;
            marginLayoutParams.rightMargin = 0;
        }
        WindowManager.LayoutParams layoutParams2 = this.f38928h;
        if (layoutParams2.gravity == 0) {
            if (layoutParams instanceof FrameLayout.LayoutParams) {
                int i2 = ((FrameLayout.LayoutParams) layoutParams).gravity;
                if (i2 != -1) {
                    layoutParams2.gravity = i2;
                }
            } else if ((layoutParams instanceof LinearLayout.LayoutParams) && (i = ((LinearLayout.LayoutParams) layoutParams).gravity) != -1) {
                layoutParams2.gravity = i;
            }
            if (layoutParams2.gravity == 0) {
                layoutParams2.gravity = 17;
            }
        }
        if (layoutParams != null) {
            int i3 = layoutParams2.width;
            if (i3 == -2 && layoutParams2.height == -2) {
                layoutParams2.width = layoutParams.width;
                layoutParams2.height = layoutParams.height;
            } else {
                layoutParams.width = i3;
                layoutParams.height = layoutParams2.height;
            }
        }
        postUpdate();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setDraggable(BaseDraggable baseDraggable) {
        this.f38933m = baseDraggable;
        if (baseDraggable != null) {
            removeWindowFlags(16);
            removeWindowFlags(512);
            if (isShowing()) {
                update();
                baseDraggable.start(this);
            }
        }
        if (this.f38935o == null) {
            this.f38935o = new ComponentCallbacksC6939a(this.f38925e.getResources().getConfiguration());
        }
        this.f38935o.m30890a(this.f38925e, this);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setHint(int i, CharSequence charSequence) {
        ((TextView) findViewById(i)).setHint(charSequence);
        return this;
    }

    public X setOnClickListener(int i, OnClickListener<? extends View> onClickListener) {
        return m30887g(findViewById(i), onClickListener);
    }

    public X setOnLongClickListener(int i, OnLongClickListener<? extends View> onLongClickListener) {
        return m30888h(findViewById(i), onLongClickListener);
    }

    public X setOnTouchListener(int i, OnTouchListener<? extends View> onTouchListener) {
        return m30889i(findViewById(i), onTouchListener);
    }

    public X setText(int i, int i2) {
        return setText(i, this.f38925e.getResources().getString(i2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setTextSize(int i, int i2, float f) {
        ((TextView) findViewById(i)).setTextSize(i2, f);
        return this;
    }

    public void showAsDropDown(View view, int i) {
        showAsDropDown(view, i, 0, 0);
    }

    public void startActivity(Intent intent) {
        if (!(this.f38925e instanceof Activity)) {
            intent.addFlags(268435456);
        }
        this.f38925e.startActivity(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setBackground(int i, Drawable drawable) {
        findViewById(i).setBackground(drawable);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setImageDrawable(int i, Drawable drawable) {
        ((ImageView) findViewById(i)).setImageDrawable(drawable);
        return this;
    }

    public X setText(CharSequence charSequence) {
        return setText(android.R.id.message, charSequence);
    }

    public void showAsDropDown(View view, int i, int i2, int i3) {
        if (this.f38926f.getChildCount() != 0 && this.f38928h != null) {
            int absoluteGravity = Gravity.getAbsoluteGravity(i, view.getResources().getConfiguration().getLayoutDirection());
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            Rect rect = new Rect();
            view.getWindowVisibleDisplayFrame(rect);
            WindowManager.LayoutParams layoutParams = this.f38928h;
            layoutParams.gravity = 8388659;
            int i4 = (iArr[0] - rect.left) + i2;
            layoutParams.x = i4;
            layoutParams.y = (iArr[1] - rect.top) + i3;
            if ((absoluteGravity & 3) == 3) {
                int width = this.f38926f.getWidth();
                if (width == 0) {
                    width = this.f38926f.getMeasuredWidth();
                }
                if (width == 0) {
                    this.f38926f.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                    width = this.f38926f.getMeasuredWidth();
                }
                this.f38928h.x -= width;
            } else if ((absoluteGravity & 5) == 5) {
                layoutParams.x = i4 + view.getWidth();
            }
            if ((absoluteGravity & 48) == 48) {
                int height = this.f38926f.getHeight();
                if (height == 0) {
                    height = this.f38926f.getMeasuredHeight();
                }
                if (height == 0) {
                    this.f38926f.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                    height = this.f38926f.getMeasuredHeight();
                }
                this.f38928h.y -= height;
            } else if ((absoluteGravity & 80) == 80) {
                this.f38928h.y += view.getHeight();
            }
            show();
            return;
        }
        throw new IllegalArgumentException("WindowParams and view cannot be empty");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public X setText(int i, CharSequence charSequence) {
        ((TextView) findViewById(i)).setText(charSequence);
        return this;
    }

    public EasyWindow(Application application) {
        this((Context) application);
        setWindowType(2038);
    }

    public EasyWindow(Context context) {
        this.f38936p = new Runnable() { // from class: com.sunia.HTREnginev2.ikf
            @Override // java.lang.Runnable
            public final void run() {
                EasyWindow.this.update();
            }
        };
        this.f38925e = context;
        this.f38926f = new WindowLayout(context);
        this.f38927g = (WindowManager) context.getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f38928h = layoutParams;
        layoutParams.height = -2;
        layoutParams.width = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = android.R.style.Animation.Toast;
        layoutParams.packageName = context.getPackageName();
        this.f38928h.flags = 40;
        f38924r.add(this);
    }
}
