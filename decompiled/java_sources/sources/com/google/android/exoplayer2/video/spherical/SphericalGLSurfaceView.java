package com.google.android.exoplayer2.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.WindowManager;
import androidx.annotation.AnyThread;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoFrameMetadataListener;
import com.google.android.exoplayer2.video.spherical.OrientationListener;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.google.android.exoplayer2.video.spherical.TouchTracker;
import com.sunia.HTREnginev2.p1m;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes5.dex */
public final class SphericalGLSurfaceView extends GLSurfaceView {

    /* renamed from: q */
    public static final int f28677q = 90;

    /* renamed from: r */
    public static final float f28678r = 0.1f;

    /* renamed from: s */
    public static final float f28679s = 100.0f;

    /* renamed from: t */
    public static final float f28680t = 25.0f;

    /* renamed from: u */
    public static final float f28681u = 3.1415927f;

    /* renamed from: e */
    public final CopyOnWriteArrayList<VideoSurfaceListener> f28682e;

    /* renamed from: f */
    public final SensorManager f28683f;

    /* renamed from: g */
    @Nullable
    public final Sensor f28684g;

    /* renamed from: h */
    public final OrientationListener f28685h;

    /* renamed from: i */
    public final Handler f28686i;

    /* renamed from: j */
    public final TouchTracker f28687j;

    /* renamed from: k */
    public final p1m f28688k;

    /* renamed from: l */
    @Nullable
    public SurfaceTexture f28689l;

    /* renamed from: m */
    @Nullable
    public Surface f28690m;

    /* renamed from: n */
    public boolean f28691n;

    /* renamed from: o */
    public boolean f28692o;

    /* renamed from: p */
    public boolean f28693p;

    /* loaded from: classes5.dex */
    public interface VideoSurfaceListener {
        void onVideoSurfaceCreated(Surface surface);

        void onVideoSurfaceDestroyed(Surface surface);
    }

    @VisibleForTesting
    /* renamed from: com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView$a */
    /* loaded from: classes5.dex */
    public final class C5032a implements GLSurfaceView.Renderer, TouchTracker.Listener, OrientationListener.Listener {

        /* renamed from: e */
        public final p1m f28694e;

        /* renamed from: h */
        public final float[] f28697h;

        /* renamed from: i */
        public final float[] f28698i;

        /* renamed from: j */
        public final float[] f28699j;

        /* renamed from: k */
        public float f28700k;

        /* renamed from: l */
        public float f28701l;

        /* renamed from: f */
        public final float[] f28695f = new float[16];

        /* renamed from: g */
        public final float[] f28696g = new float[16];

        /* renamed from: m */
        public final float[] f28702m = new float[16];

        /* renamed from: n */
        public final float[] f28703n = new float[16];

        public C5032a(p1m p1mVar) {
            float[] fArr = new float[16];
            this.f28697h = fArr;
            float[] fArr2 = new float[16];
            this.f28698i = fArr2;
            float[] fArr3 = new float[16];
            this.f28699j = fArr3;
            this.f28694e = p1mVar;
            Matrix.setIdentityM(fArr, 0);
            Matrix.setIdentityM(fArr2, 0);
            Matrix.setIdentityM(fArr3, 0);
            this.f28701l = 3.1415927f;
        }

        /* renamed from: a */
        public final float m21679a(float f) {
            if (f > 1.0f) {
                return (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / f)) * 2.0d);
            }
            return 90.0f;
        }

        @AnyThread
        /* renamed from: b */
        public final void m21680b() {
            Matrix.setRotateM(this.f28698i, 0, -this.f28700k, (float) Math.cos(this.f28701l), (float) Math.sin(this.f28701l), 0.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.f28703n, 0, this.f28697h, 0, this.f28699j, 0);
                Matrix.multiplyMM(this.f28702m, 0, this.f28698i, 0, this.f28703n, 0);
            }
            Matrix.multiplyMM(this.f28696g, 0, this.f28695f, 0, this.f28702m, 0);
            this.f28694e.m56204b(this.f28696g, false);
        }

        @Override // com.google.android.exoplayer2.video.spherical.OrientationListener.Listener
        @BinderThread
        public synchronized void onOrientationChange(float[] fArr, float f) {
            float[] fArr2 = this.f28697h;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            this.f28701l = -f;
            m21680b();
        }

        @Override // com.google.android.exoplayer2.video.spherical.TouchTracker.Listener
        @UiThread
        public synchronized void onScrollChange(PointF pointF) {
            this.f28700k = pointF.y;
            m21680b();
            Matrix.setRotateM(this.f28699j, 0, -pointF.x, 0.0f, 1.0f, 0.0f);
        }

        @Override // com.google.android.exoplayer2.video.spherical.TouchTracker.Listener
        @UiThread
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return SphericalGLSurfaceView.this.performClick();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i, int i2) {
            GLES20.glViewport(0, 0, i, i2);
            float f = i / i2;
            Matrix.perspectiveM(this.f28695f, 0, m21679a(f), f, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            SphericalGLSurfaceView.this.m21677f(this.f28694e.m56205c());
        }
    }

    public SphericalGLSurfaceView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m21674d() {
        Surface surface = this.f28690m;
        if (surface != null) {
            Iterator<VideoSurfaceListener> it2 = this.f28682e.iterator();
            while (it2.hasNext()) {
                it2.next().onVideoSurfaceDestroyed(surface);
            }
        }
        m21676g(this.f28689l, surface);
        this.f28689l = null;
        this.f28690m = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m21675e(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.f28689l;
        Surface surface = this.f28690m;
        Surface surface2 = new Surface(surfaceTexture);
        this.f28689l = surfaceTexture;
        this.f28690m = surface2;
        Iterator<VideoSurfaceListener> it2 = this.f28682e.iterator();
        while (it2.hasNext()) {
            it2.next().onVideoSurfaceCreated(surface2);
        }
        m21676g(surfaceTexture2, surface);
    }

    /* renamed from: g */
    public static void m21676g(@Nullable SurfaceTexture surfaceTexture, @Nullable Surface surface) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
    }

    public void addVideoSurfaceListener(VideoSurfaceListener videoSurfaceListener) {
        this.f28682e.add(videoSurfaceListener);
    }

    /* renamed from: f */
    public final void m21677f(final SurfaceTexture surfaceTexture) {
        this.f28686i.post(new Runnable() { // from class: com.sunia.HTREnginev2.gwm
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.m21675e(surfaceTexture);
            }
        });
    }

    public CameraMotionListener getCameraMotionListener() {
        return this.f28688k;
    }

    public VideoFrameMetadataListener getVideoFrameMetadataListener() {
        return this.f28688k;
    }

    @Nullable
    public Surface getVideoSurface() {
        return this.f28690m;
    }

    /* renamed from: h */
    public final void m21678h() {
        boolean z = this.f28691n && this.f28692o;
        Sensor sensor = this.f28684g;
        if (sensor == null || z == this.f28693p) {
            return;
        }
        if (z) {
            this.f28683f.registerListener(this.f28685h, sensor, 0);
        } else {
            this.f28683f.unregisterListener(this.f28685h);
        }
        this.f28693p = z;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f28686i.post(new Runnable() { // from class: com.sunia.HTREnginev2.hwm
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.m21674d();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        this.f28692o = false;
        m21678h();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        this.f28692o = true;
        m21678h();
    }

    public void removeVideoSurfaceListener(VideoSurfaceListener videoSurfaceListener) {
        this.f28682e.remove(videoSurfaceListener);
    }

    public void setDefaultStereoMode(int i) {
        this.f28688k.m56206e(i);
    }

    public void setUseSensorRotation(boolean z) {
        this.f28691n = z;
        m21678h();
    }

    public SphericalGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28682e = new CopyOnWriteArrayList<>();
        this.f28686i = new Handler(Looper.getMainLooper());
        SensorManager sensorManager = (SensorManager) Assertions.checkNotNull(context.getSystemService("sensor"));
        this.f28683f = sensorManager;
        Sensor defaultSensor = Util.SDK_INT >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.f28684g = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        p1m p1mVar = new p1m();
        this.f28688k = p1mVar;
        C5032a c5032a = new C5032a(p1mVar);
        TouchTracker touchTracker = new TouchTracker(context, c5032a, 25.0f);
        this.f28687j = touchTracker;
        this.f28685h = new OrientationListener(((WindowManager) Assertions.checkNotNull((WindowManager) context.getSystemService("window"))).getDefaultDisplay(), touchTracker, c5032a);
        this.f28691n = true;
        setEGLContextClientVersion(2);
        setRenderer(c5032a);
        setOnTouchListener(touchTracker);
    }
}
