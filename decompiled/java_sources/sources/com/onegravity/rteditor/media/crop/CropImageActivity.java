package com.onegravity.rteditor.media.crop;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.media.FaceDetector;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import com.onegravity.rteditor.C7028R;
import com.onegravity.rteditor.media.MediaUtils;
import com.onegravity.rteditor.media.MonitoredActivity;
import com.onegravity.rteditor.media.crop.BitmapManager;
import com.onegravity.rteditor.utils.Helper;
import com.sagittarius.p050v6.C13086AB;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes17.dex */
public class CropImageActivity extends MonitoredActivity {
    public static final String ACTION_INLINE_DATA = "inline-data";
    public static final String ASPECT_X = "aspectX";
    public static final String ASPECT_Y = "aspectY";
    public static final String CIRCLE_CROP = "circleCrop";
    public static final String IMAGE_DESTINATION_FILE = "image-dest-file";
    public static final String IMAGE_SOURCE_FILE = "image-source-file";
    public static final String ORIENTATION_IN_DEGREES = "orientation_in_degrees";
    public static final String OUTPUT_X = "outputX";
    public static final String OUTPUT_Y = "outputY";
    public static final String RETURN_DATA = "return-data";
    public static final String RETURN_DATA_AS_BITMAP = "data";
    public static final String SCALE = "scale";
    public static final String SCALE_UP_IF_NEEDED = "scaleUpIfNeeded";

    /* renamed from: C0 */
    public int f40422C0;

    /* renamed from: D0 */
    public int f40423D0;

    /* renamed from: E0 */
    public int f40424E0;

    /* renamed from: F0 */
    public int f40425F0;

    /* renamed from: G0 */
    public boolean f40426G0;

    /* renamed from: H0 */
    public CropImageView f40427H0;

    /* renamed from: I0 */
    public Bitmap f40428I0;

    /* renamed from: J0 */
    public String f40429J0;

    /* renamed from: K0 */
    public String f40430K0;

    /* renamed from: L0 */
    public boolean f40431L0;

    /* renamed from: M0 */
    public boolean f40432M0;

    /* renamed from: N0 */
    public HighlightView f40433N0;

    /* renamed from: x0 */
    public final float f40437x0 = 1024.0f;

    /* renamed from: y0 */
    public Bitmap.CompressFormat f40438y0 = Bitmap.CompressFormat.JPEG;

    /* renamed from: z0 */
    public Uri f40439z0 = null;

    /* renamed from: A0 */
    public boolean f40420A0 = false;

    /* renamed from: B0 */
    public boolean f40421B0 = false;

    /* renamed from: O0 */
    public boolean f40434O0 = true;

    /* renamed from: P0 */
    public final BitmapManager.ThreadSet f40435P0 = new BitmapManager.ThreadSet();

    /* renamed from: Q0 */
    public Runnable f40436Q0 = new RunnableC7069c();

    /* renamed from: com.onegravity.rteditor.media.crop.CropImageActivity$a */
    /* loaded from: classes7.dex */
    public class RunnableC7067a implements Runnable {
        public RunnableC7067a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Bitmap bitmap = CropImageActivity.this.f40428I0;
            if (bitmap != CropImageActivity.this.f40428I0 && bitmap != null) {
                CropImageActivity.this.f40427H0.m31760m(bitmap, true);
                CropImageActivity.this.f40428I0.recycle();
                CropImageActivity.this.f40428I0 = bitmap;
            }
            if (CropImageActivity.this.f40427H0.m31753e() == 1.0f) {
                CropImageActivity.this.f40427H0.m31749a(true, true);
            }
            CropImageActivity.this.f40436Q0.run();
        }
    }

    /* renamed from: com.onegravity.rteditor.media.crop.CropImageActivity$b */
    /* loaded from: classes7.dex */
    public class RunnableC7068b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Bitmap f40441e;

        public RunnableC7068b(Bitmap bitmap) {
            this.f40441e = bitmap;
        }

        @Override // java.lang.Runnable
        public void run() {
            CropImageActivity.this.m31718Q(this.f40441e);
        }
    }

    /* renamed from: com.onegravity.rteditor.media.crop.CropImageActivity$c */
    /* loaded from: classes7.dex */
    public class RunnableC7069c implements Runnable {

        /* renamed from: f */
        public Matrix f40444f;

        /* renamed from: h */
        public int f40446h;

        /* renamed from: e */
        public float f40443e = 1.0f;

        /* renamed from: g */
        public FaceDetector.Face[] f40445g = new FaceDetector.Face[3];

        /* renamed from: com.onegravity.rteditor.media.crop.CropImageActivity$c$a */
        /* loaded from: classes7.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                RunnableC7069c runnableC7069c = RunnableC7069c.this;
                CropImageActivity cropImageActivity = CropImageActivity.this;
                int i = runnableC7069c.f40446h;
                cropImageActivity.f40431L0 = i > 1;
                if (i > 0) {
                    int i2 = 0;
                    while (true) {
                        RunnableC7069c runnableC7069c2 = RunnableC7069c.this;
                        if (i2 >= runnableC7069c2.f40446h) {
                            break;
                        }
                        runnableC7069c2.m31723c(runnableC7069c2.f40445g[i2]);
                        i2++;
                    }
                } else {
                    runnableC7069c.m31724d();
                }
                CropImageActivity.this.f40427H0.invalidate();
                if (CropImageActivity.this.f40427H0.f40453y.size() == 1) {
                    CropImageActivity cropImageActivity2 = CropImageActivity.this;
                    cropImageActivity2.f40433N0 = cropImageActivity2.f40427H0.f40453y.get(0);
                    CropImageActivity.this.f40433N0.m31745l(true);
                }
            }
        }

        public RunnableC7069c() {
        }

        /* renamed from: c */
        public final void m31723c(FaceDetector.Face face) {
            PointF pointF = new PointF();
            int eyesDistance = ((int) (face.eyesDistance() * this.f40443e)) * 2;
            face.getMidPoint(pointF);
            float f = pointF.x;
            float f2 = this.f40443e;
            float f3 = f * f2;
            pointF.x = f3;
            float f4 = pointF.y * f2;
            pointF.y = f4;
            HighlightView highlightView = new HighlightView(CropImageActivity.this.f40427H0);
            Rect rect = new Rect(0, 0, CropImageActivity.this.f40428I0.getWidth(), CropImageActivity.this.f40428I0.getHeight());
            float f5 = (int) f3;
            float f6 = (int) f4;
            RectF rectF = new RectF(f5, f6, f5, f6);
            float f7 = -eyesDistance;
            rectF.inset(f7, f7);
            float f8 = rectF.left;
            if (f8 < 0.0f) {
                rectF.inset(-f8, -f8);
            }
            float f9 = rectF.top;
            if (f9 < 0.0f) {
                rectF.inset(-f9, -f9);
            }
            float f10 = rectF.right;
            int i = rect.right;
            if (f10 > i) {
                rectF.inset(f10 - i, f10 - i);
            }
            float f11 = rectF.bottom;
            int i2 = rect.bottom;
            if (f11 > i2) {
                rectF.inset(f11 - i2, f11 - i2);
            }
            highlightView.m31748o(this.f40444f, rect, rectF, CropImageActivity.this.f40421B0, (CropImageActivity.this.f40422C0 == 0 || CropImageActivity.this.f40423D0 == 0) ? false : true);
            CropImageActivity.this.f40427H0.m31730w(highlightView);
        }

        /* renamed from: d */
        public final void m31724d() {
            int i;
            int i2;
            HighlightView highlightView = new HighlightView(CropImageActivity.this.f40427H0);
            int width = CropImageActivity.this.f40428I0.getWidth();
            int height = CropImageActivity.this.f40428I0.getHeight();
            Rect rect = new Rect(0, 0, width, height);
            if (CropImageActivity.this.f40422C0 == 0 || CropImageActivity.this.f40423D0 == 0) {
                i = width;
            } else {
                if (CropImageActivity.this.f40422C0 > CropImageActivity.this.f40423D0) {
                    i2 = (CropImageActivity.this.f40423D0 * width) / CropImageActivity.this.f40422C0;
                    i = width;
                    highlightView.m31748o(this.f40444f, rect, new RectF((width - i) / 2, (height - i2) / 2, r0 + i, r1 + i2), CropImageActivity.this.f40421B0, CropImageActivity.this.f40422C0 == 0 && CropImageActivity.this.f40423D0 != 0);
                    CropImageActivity.this.f40427H0.f40453y.clear();
                    CropImageActivity.this.f40427H0.m31730w(highlightView);
                }
                i = (CropImageActivity.this.f40422C0 * height) / CropImageActivity.this.f40423D0;
            }
            i2 = height;
            highlightView.m31748o(this.f40444f, rect, new RectF((width - i) / 2, (height - i2) / 2, r0 + i, r1 + i2), CropImageActivity.this.f40421B0, CropImageActivity.this.f40422C0 == 0 && CropImageActivity.this.f40423D0 != 0);
            CropImageActivity.this.f40427H0.f40453y.clear();
            CropImageActivity.this.f40427H0.m31730w(highlightView);
        }

        /* renamed from: e */
        public final Bitmap m31725e() {
            if (CropImageActivity.this.f40428I0 == null) {
                return null;
            }
            if (CropImageActivity.this.f40428I0.getWidth() > 256) {
                this.f40443e = 256.0f / CropImageActivity.this.f40428I0.getWidth();
            }
            Matrix matrix = new Matrix();
            float f = this.f40443e;
            matrix.setScale(f, f);
            return Bitmap.createBitmap(CropImageActivity.this.f40428I0, 0, 0, CropImageActivity.this.f40428I0.getWidth(), CropImageActivity.this.f40428I0.getHeight(), matrix, true);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f40444f = CropImageActivity.this.f40427H0.getImageMatrix();
            Bitmap m31725e = m31725e();
            this.f40443e = 1.0f / this.f40443e;
            if (m31725e != null && CropImageActivity.this.f40420A0) {
                this.f40446h = new FaceDetector(m31725e.getWidth(), m31725e.getHeight(), this.f40445g.length).findFaces(m31725e, this.f40445g);
            }
            if (m31725e != null && m31725e != CropImageActivity.this.f40428I0) {
                m31725e.recycle();
            }
            ((MonitoredActivity) CropImageActivity.this).mHandler.post(new a());
        }
    }

    /* renamed from: L */
    public final Bitmap m31713L(InputStream inputStream, Uri uri, float f) throws Throwable {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        options.inSampleSize = Math.round(f);
        return BitmapFactory.decodeStream(getContentResolver().openInputStream(uri), null, options);
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x008c: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:32:0x008c */
    /* renamed from: M */
    public final Bitmap m31714M(String str) {
        InputStream inputStream;
        Closeable closeable;
        Uri createFileUri = MediaUtils.createFileUri(str);
        Closeable closeable2 = null;
        try {
            try {
                inputStream = getContentResolver().openInputStream(createFileUri);
                try {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeStream(inputStream, null, options);
                    Helper.closeQuietly(inputStream);
                    float max = Math.max(options.outWidth, options.outHeight);
                    for (float f = max > 1024.0f ? max / 1024.0f : 1.0f; max / f > 8.0f; f *= 2.0f) {
                        try {
                            Bitmap m31713L = this.m31713L(inputStream, createFileUri, f);
                            Helper.closeQuietly(inputStream);
                            return m31713L;
                        } catch (Throwable unused) {
                            Log.w(this.getClass().getSimpleName(), "bitmap could not be created (probably out of memory), decreasing size and retrying");
                        }
                    }
                } catch (IOException unused2) {
                    Log.e(this.getClass().getSimpleName(), "file " + str + " not found");
                    Helper.closeQuietly(inputStream);
                    return null;
                } catch (Exception e) {
                    e = e;
                    Log.e(this.getClass().getSimpleName(), "error while opening image", e);
                    Helper.closeQuietly(inputStream);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                closeable2 = closeable;
                Helper.closeQuietly(closeable2);
                throw th;
            }
        } catch (IOException unused3) {
            inputStream = null;
        } catch (Exception e2) {
            e = e2;
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
            Helper.closeQuietly(closeable2);
            throw th;
        }
        Helper.closeQuietly(inputStream);
        return null;
    }

    /* renamed from: N */
    public final int m31715N(Activity activity) {
        int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
        if (rotation == 0) {
            return 0;
        }
        if (rotation == 1) {
            return 90;
        }
        if (rotation != 2) {
            return rotation != 3 ? 0 : 270;
        }
        return 180;
    }

    /* renamed from: O */
    public final void m31716O() throws Exception {
        HighlightView highlightView;
        int i;
        Bitmap createBitmap;
        if (this.f40432M0 || (highlightView = this.f40433N0) == null) {
            return;
        }
        this.f40432M0 = true;
        Rect m31736c = highlightView.m31736c();
        int width = m31736c.width();
        int height = m31736c.height();
        Bitmap createBitmap2 = Bitmap.createBitmap(width, height, this.f40421B0 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        if (createBitmap2 == null) {
            return;
        }
        new Canvas(createBitmap2).drawBitmap(this.f40428I0, m31736c, new Rect(0, 0, width, height), (Paint) null);
        if (this.f40421B0) {
            Canvas canvas = new Canvas(createBitmap2);
            Path path = new Path();
            float f = width / 2.0f;
            path.addCircle(f, height / 2.0f, f, Path.Direction.CW);
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        int i2 = this.f40424E0;
        if (i2 != 0 && (i = this.f40425F0) != 0) {
            if (this.f40426G0) {
                createBitmap = m31720S(new Matrix(), createBitmap2, this.f40424E0, this.f40425F0, this.f40434O0);
                if (createBitmap2 != createBitmap) {
                    createBitmap2.recycle();
                }
            } else {
                createBitmap = Bitmap.createBitmap(i2, i, Bitmap.Config.RGB_565);
                Canvas canvas2 = new Canvas(createBitmap);
                Rect m31736c2 = this.f40433N0.m31736c();
                Rect rect = new Rect(0, 0, this.f40424E0, this.f40425F0);
                int width2 = (m31736c2.width() - rect.width()) / 2;
                int height2 = (m31736c2.height() - rect.height()) / 2;
                m31736c2.inset(Math.max(0, width2), Math.max(0, height2));
                rect.inset(Math.max(0, -width2), Math.max(0, -height2));
                canvas2.drawBitmap(this.f40428I0, m31736c2, rect, (Paint) null);
                createBitmap2.recycle();
            }
            createBitmap2 = createBitmap;
        }
        Bundle extras = getIntent().getExtras();
        if (extras == null || (extras.getParcelable("data") == null && !extras.getBoolean(RETURN_DATA))) {
            startBackgroundJob(C7028R.string.rte_processing_image, new RunnableC7068b(createBitmap2));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", createBitmap2);
        setResult(-1, new Intent().setAction(ACTION_INLINE_DATA).putExtras(bundle));
        finish();
    }

    /* renamed from: P */
    public final Bitmap m31717P(Bitmap bitmap, float f) {
        Matrix matrix = new Matrix();
        matrix.postRotate(f);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    /* renamed from: Q */
    public final void m31718Q(Bitmap bitmap) {
        if (this.f40439z0 != null) {
            OutputStream outputStream = null;
            try {
                try {
                    outputStream = getContentResolver().openOutputStream(this.f40439z0);
                    if (outputStream != null) {
                        bitmap.compress(this.f40438y0, 90, outputStream);
                    }
                    Helper.closeQuietly(outputStream);
                    Bundle bundle = new Bundle();
                    Intent intent = new Intent(this.f40439z0.toString());
                    intent.putExtras(bundle);
                    intent.putExtra(IMAGE_SOURCE_FILE, this.f40429J0);
                    intent.putExtra(IMAGE_DESTINATION_FILE, this.f40430K0);
                    intent.putExtra(ORIENTATION_IN_DEGREES, m31715N(this));
                    setResult(-1, intent);
                } catch (IOException e) {
                    Log.e(getClass().getSimpleName(), "Cannot open file: " + this.f40439z0, e);
                    setResult(0);
                    finish();
                    Helper.closeQuietly(outputStream);
                    return;
                }
            } catch (Throwable th) {
                Helper.closeQuietly(outputStream);
                throw th;
            }
        } else {
            Log.e(getClass().getSimpleName(), "not defined image url");
        }
        bitmap.recycle();
        finish();
    }

    /* renamed from: R */
    public final void m31719R() {
        if (isFinishing()) {
            return;
        }
        this.f40427H0.m31760m(this.f40428I0, true);
        startBackgroundJob(C7028R.string.rte_processing_image, new RunnableC7067a());
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ad  */
    /* renamed from: S */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap m31720S(android.graphics.Matrix r14, android.graphics.Bitmap r15, int r16, int r17, boolean r18) {
        /*
            r13 = this;
            r0 = r14
            r7 = r15
            r8 = r16
            r9 = r17
            int r1 = r15.getWidth()
            int r1 = r1 - r8
            int r2 = r15.getHeight()
            int r2 = r2 - r9
            r3 = 0
            r10 = 0
            if (r18 != 0) goto L61
            if (r1 < 0) goto L18
            if (r2 >= 0) goto L61
        L18:
            android.graphics.Bitmap$Config r0 = android.graphics.Bitmap.Config.ARGB_8888
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createBitmap(r8, r9, r0)
            android.graphics.Canvas r4 = new android.graphics.Canvas
            r4.<init>(r0)
            int r1 = r1 / 2
            int r1 = java.lang.Math.max(r10, r1)
            int r2 = r2 / 2
            int r2 = java.lang.Math.max(r10, r2)
            android.graphics.Rect r5 = new android.graphics.Rect
            int r6 = r15.getWidth()
            int r6 = java.lang.Math.min(r8, r6)
            int r6 = r6 + r1
            int r10 = r15.getHeight()
            int r10 = java.lang.Math.min(r9, r10)
            int r10 = r10 + r2
            r5.<init>(r1, r2, r6, r10)
            int r1 = r5.width()
            int r1 = r8 - r1
            int r1 = r1 / 2
            int r2 = r5.height()
            int r2 = r9 - r2
            int r2 = r2 / 2
            android.graphics.Rect r6 = new android.graphics.Rect
            int r8 = r8 - r1
            int r9 = r9 - r2
            r6.<init>(r1, r2, r8, r9)
            r4.drawBitmap(r15, r5, r6, r3)
            return r0
        L61:
            int r1 = r15.getWidth()
            float r1 = (float) r1
            int r2 = r15.getHeight()
            float r2 = (float) r2
            float r4 = r1 / r2
            float r5 = (float) r8
            float r6 = (float) r9
            float r11 = r5 / r6
            int r4 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            r11 = 1065353216(0x3f800000, float:1.0)
            r12 = 1063675494(0x3f666666, float:0.9)
            if (r4 <= 0) goto L8a
            float r6 = r6 / r2
            int r1 = (r6 > r12 ? 1 : (r6 == r12 ? 0 : -1))
            if (r1 < 0) goto L86
            int r1 = (r6 > r11 ? 1 : (r6 == r11 ? 0 : -1))
            if (r1 <= 0) goto L84
            goto L86
        L84:
            r0 = r3
            goto L99
        L86:
            r14.setScale(r6, r6)
            goto L99
        L8a:
            float r5 = r5 / r1
            int r1 = (r5 > r12 ? 1 : (r5 == r12 ? 0 : -1))
            if (r1 < 0) goto L96
            int r1 = (r5 > r11 ? 1 : (r5 == r11 ? 0 : -1))
            if (r1 <= 0) goto L94
            goto L96
        L94:
            r5 = r3
            goto L9a
        L96:
            r14.setScale(r5, r5)
        L99:
            r5 = r0
        L9a:
            if (r5 == 0) goto Lad
            r1 = 0
            r2 = 0
            int r3 = r15.getWidth()
            int r4 = r15.getHeight()
            r6 = 1
            r0 = r15
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createBitmap(r0, r1, r2, r3, r4, r5, r6)
            goto Lae
        Lad:
            r0 = r7
        Lae:
            int r1 = r0.getWidth()
            int r1 = r1 - r8
            int r1 = java.lang.Math.max(r10, r1)
            int r2 = r0.getHeight()
            int r2 = r2 - r9
            int r2 = java.lang.Math.max(r10, r2)
            int r1 = r1 / 2
            int r2 = r2 / 2
            android.graphics.Bitmap r1 = android.graphics.Bitmap.createBitmap(r0, r1, r2, r8, r9)
            if (r0 == r7) goto Lcd
            r0.recycle()
        Lcd:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onegravity.rteditor.media.crop.CropImageActivity.m31720S(android.graphics.Matrix, android.graphics.Bitmap, int, int, boolean):android.graphics.Bitmap");
    }

    @Override // com.onegravity.rteditor.media.MonitoredActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        C13086AB.m52315v(-1426063354, this, bundle);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(C7028R.menu.rte_crop_image, menu);
        return true;
    }

    @Override // com.onegravity.rteditor.media.MonitoredActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Bitmap bitmap = this.f40428I0;
        if (bitmap != null) {
            bitmap.recycle();
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == C7028R.id.save) {
            try {
                m31716O();
            } catch (Exception e) {
                Log.e(getClass().getSimpleName(), e.getMessage(), e);
                finish();
            }
            return true;
        }
        if (itemId == C7028R.id.cancel) {
            setResult(0);
            finish();
            return true;
        }
        if (itemId == C7028R.id.rotate_left) {
            Bitmap m31717P = m31717P(this.f40428I0, -90.0f);
            this.f40428I0 = m31717P;
            this.f40427H0.m31761n(new RotateBitmap(m31717P), true);
            this.f40436Q0.run();
            return true;
        }
        if (itemId != C7028R.id.rotate_right) {
            return super.onOptionsItemSelected(menuItem);
        }
        Bitmap m31717P2 = m31717P(this.f40428I0, 90.0f);
        this.f40428I0 = m31717P2;
        this.f40427H0.m31761n(new RotateBitmap(m31717P2), true);
        this.f40436Q0.run();
        return true;
    }

    @Override // com.onegravity.rteditor.media.MonitoredActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        BitmapManager.instance().cancelThreadDecoding(this.f40435P0);
    }
}
