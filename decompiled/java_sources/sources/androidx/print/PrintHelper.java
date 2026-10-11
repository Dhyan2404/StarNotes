package androidx.print;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.pdf.PdfDocument;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentInfo;
import android.print.PrintManager;
import android.print.pdf.PrintedPdfDocument;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class PrintHelper {

    @SuppressLint({"InlinedApi"})
    public static final int COLOR_MODE_COLOR = 2;

    @SuppressLint({"InlinedApi"})
    public static final int COLOR_MODE_MONOCHROME = 1;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;

    /* renamed from: g */
    public static final String f8970g = "PrintHelper";

    /* renamed from: h */
    public static final int f8971h = 3500;

    /* renamed from: i */
    public static final boolean f8972i = true;

    /* renamed from: j */
    public static final boolean f8973j = true;

    /* renamed from: a */
    public final Context f8974a;

    /* renamed from: b */
    public BitmapFactory.Options f8975b = null;

    /* renamed from: c */
    public final Object f8976c = new Object();

    /* renamed from: d */
    public int f8977d = 2;

    /* renamed from: e */
    public int f8978e = 2;

    /* renamed from: f */
    public int f8979f = 1;

    /* loaded from: classes3.dex */
    public interface OnPrintFinishCallback {
        void onFinish();
    }

    /* renamed from: androidx.print.PrintHelper$a */
    /* loaded from: classes3.dex */
    public class AsyncTaskC1279a extends AsyncTask<Void, Void, Throwable> {

        /* renamed from: a */
        public final /* synthetic */ CancellationSignal f8980a;

        /* renamed from: b */
        public final /* synthetic */ PrintAttributes f8981b;

        /* renamed from: c */
        public final /* synthetic */ Bitmap f8982c;

        /* renamed from: d */
        public final /* synthetic */ PrintAttributes f8983d;

        /* renamed from: e */
        public final /* synthetic */ int f8984e;

        /* renamed from: f */
        public final /* synthetic */ ParcelFileDescriptor f8985f;

        /* renamed from: g */
        public final /* synthetic */ PrintDocumentAdapter.WriteResultCallback f8986g;

        public AsyncTaskC1279a(CancellationSignal cancellationSignal, PrintAttributes printAttributes, Bitmap bitmap, PrintAttributes printAttributes2, int i, ParcelFileDescriptor parcelFileDescriptor, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
            this.f8980a = cancellationSignal;
            this.f8981b = printAttributes;
            this.f8982c = bitmap;
            this.f8983d = printAttributes2;
            this.f8984e = i;
            this.f8985f = parcelFileDescriptor;
            this.f8986g = writeResultCallback;
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Throwable doInBackground(Void... voidArr) {
            RectF rectF;
            try {
                if (this.f8980a.isCanceled()) {
                    return null;
                }
                PrintedPdfDocument printedPdfDocument = new PrintedPdfDocument(PrintHelper.this.f8974a, this.f8981b);
                Bitmap m5347a = PrintHelper.m5347a(this.f8982c, this.f8981b.getColorMode());
                if (this.f8980a.isCanceled()) {
                    return null;
                }
                try {
                    PdfDocument.Page startPage = printedPdfDocument.startPage(1);
                    boolean z = PrintHelper.f8973j;
                    if (z) {
                        rectF = new RectF(startPage.getInfo().getContentRect());
                    } else {
                        PrintedPdfDocument printedPdfDocument2 = new PrintedPdfDocument(PrintHelper.this.f8974a, this.f8983d);
                        PdfDocument.Page startPage2 = printedPdfDocument2.startPage(1);
                        RectF rectF2 = new RectF(startPage2.getInfo().getContentRect());
                        printedPdfDocument2.finishPage(startPage2);
                        printedPdfDocument2.close();
                        rectF = rectF2;
                    }
                    Matrix m5349c = PrintHelper.m5349c(m5347a.getWidth(), m5347a.getHeight(), rectF, this.f8984e);
                    if (!z) {
                        m5349c.postTranslate(rectF.left, rectF.top);
                        startPage.getCanvas().clipRect(rectF);
                    }
                    startPage.getCanvas().drawBitmap(m5347a, m5349c, null);
                    printedPdfDocument.finishPage(startPage);
                    if (this.f8980a.isCanceled()) {
                        printedPdfDocument.close();
                        ParcelFileDescriptor parcelFileDescriptor = this.f8985f;
                        if (parcelFileDescriptor != null) {
                            try {
                                parcelFileDescriptor.close();
                            } catch (IOException unused) {
                            }
                        }
                        if (m5347a != this.f8982c) {
                            m5347a.recycle();
                        }
                        return null;
                    }
                    printedPdfDocument.writeTo(new FileOutputStream(this.f8985f.getFileDescriptor()));
                    printedPdfDocument.close();
                    ParcelFileDescriptor parcelFileDescriptor2 = this.f8985f;
                    if (parcelFileDescriptor2 != null) {
                        try {
                            parcelFileDescriptor2.close();
                        } catch (IOException unused2) {
                        }
                    }
                    if (m5347a != this.f8982c) {
                        m5347a.recycle();
                    }
                    return null;
                } finally {
                }
            } catch (Throwable th) {
                return th;
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Throwable th) {
            if (this.f8980a.isCanceled()) {
                this.f8986g.onWriteCancelled();
            } else if (th == null) {
                this.f8986g.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
            } else {
                Log.e(PrintHelper.f8970g, "Error writing printed content", th);
                this.f8986g.onWriteFailed(null);
            }
        }
    }

    @RequiresApi(19)
    /* renamed from: androidx.print.PrintHelper$b */
    /* loaded from: classes3.dex */
    public class C1280b extends PrintDocumentAdapter {

        /* renamed from: a */
        public final String f8988a;

        /* renamed from: b */
        public final int f8989b;

        /* renamed from: c */
        public final Bitmap f8990c;

        /* renamed from: d */
        public final OnPrintFinishCallback f8991d;

        /* renamed from: e */
        public PrintAttributes f8992e;

        public C1280b(String str, int i, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback) {
            this.f8988a = str;
            this.f8989b = i;
            this.f8990c = bitmap;
            this.f8991d = onPrintFinishCallback;
        }

        @Override // android.print.PrintDocumentAdapter
        public void onFinish() {
            OnPrintFinishCallback onPrintFinishCallback = this.f8991d;
            if (onPrintFinishCallback != null) {
                onPrintFinishCallback.onFinish();
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
            this.f8992e = printAttributes2;
            layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(this.f8988a).setContentType(1).setPageCount(1).build(), true ^ printAttributes2.equals(printAttributes));
        }

        @Override // android.print.PrintDocumentAdapter
        public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
            PrintHelper.this.m5353g(this.f8992e, this.f8989b, this.f8990c, parcelFileDescriptor, cancellationSignal, writeResultCallback);
        }
    }

    @RequiresApi(19)
    /* renamed from: androidx.print.PrintHelper$c */
    /* loaded from: classes3.dex */
    public class C1281c extends PrintDocumentAdapter {

        /* renamed from: a */
        public final String f8994a;

        /* renamed from: b */
        public final Uri f8995b;

        /* renamed from: c */
        public final OnPrintFinishCallback f8996c;

        /* renamed from: d */
        public final int f8997d;

        /* renamed from: e */
        public PrintAttributes f8998e;

        /* renamed from: f */
        public AsyncTask<Uri, Boolean, Bitmap> f8999f;

        /* renamed from: g */
        public Bitmap f9000g = null;

        /* renamed from: androidx.print.PrintHelper$c$a */
        /* loaded from: classes3.dex */
        public class a extends AsyncTask<Uri, Boolean, Bitmap> {

            /* renamed from: a */
            public final /* synthetic */ CancellationSignal f9002a;

            /* renamed from: b */
            public final /* synthetic */ PrintAttributes f9003b;

            /* renamed from: c */
            public final /* synthetic */ PrintAttributes f9004c;

            /* renamed from: d */
            public final /* synthetic */ PrintDocumentAdapter.LayoutResultCallback f9005d;

            /* renamed from: androidx.print.PrintHelper$c$a$a, reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public class C20569a implements CancellationSignal.OnCancelListener {
                public C20569a() {
                }

                @Override // android.os.CancellationSignal.OnCancelListener
                public void onCancel() {
                    C1281c.this.m5356a();
                    a.this.cancel(false);
                }
            }

            public a(CancellationSignal cancellationSignal, PrintAttributes printAttributes, PrintAttributes printAttributes2, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback) {
                this.f9002a = cancellationSignal;
                this.f9003b = printAttributes;
                this.f9004c = printAttributes2;
                this.f9005d = layoutResultCallback;
            }

            @Override // android.os.AsyncTask
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Bitmap doInBackground(Uri... uriArr) {
                try {
                    C1281c c1281c = C1281c.this;
                    return PrintHelper.this.m5352f(c1281c.f8995b);
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }

            @Override // android.os.AsyncTask
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public void onCancelled(Bitmap bitmap) {
                this.f9005d.onLayoutCancelled();
                C1281c.this.f8999f = null;
            }

            @Override // android.os.AsyncTask
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public void onPostExecute(Bitmap bitmap) {
                PrintAttributes.MediaSize mediaSize;
                super.onPostExecute(bitmap);
                if (bitmap != null && (!PrintHelper.f8972i || PrintHelper.this.f8979f == 0)) {
                    synchronized (this) {
                        mediaSize = C1281c.this.f8998e.getMediaSize();
                    }
                    if (mediaSize != null && mediaSize.isPortrait() != PrintHelper.m5350d(bitmap)) {
                        Matrix matrix = new Matrix();
                        matrix.postRotate(90.0f);
                        bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                    }
                }
                C1281c.this.f9000g = bitmap;
                if (bitmap != null) {
                    this.f9005d.onLayoutFinished(new PrintDocumentInfo.Builder(C1281c.this.f8994a).setContentType(1).setPageCount(1).build(), true ^ this.f9003b.equals(this.f9004c));
                } else {
                    this.f9005d.onLayoutFailed(null);
                }
                C1281c.this.f8999f = null;
            }

            @Override // android.os.AsyncTask
            public void onPreExecute() {
                this.f9002a.setOnCancelListener(new C20569a());
            }
        }

        public C1281c(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback, int i) {
            this.f8994a = str;
            this.f8995b = uri;
            this.f8996c = onPrintFinishCallback;
            this.f8997d = i;
        }

        /* renamed from: a */
        public void m5356a() {
            synchronized (PrintHelper.this.f8976c) {
                PrintHelper printHelper = PrintHelper.this;
                if (printHelper.f8975b != null) {
                    printHelper.f8975b = null;
                }
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onFinish() {
            super.onFinish();
            m5356a();
            AsyncTask<Uri, Boolean, Bitmap> asyncTask = this.f8999f;
            if (asyncTask != null) {
                asyncTask.cancel(true);
            }
            OnPrintFinishCallback onPrintFinishCallback = this.f8996c;
            if (onPrintFinishCallback != null) {
                onPrintFinishCallback.onFinish();
            }
            Bitmap bitmap = this.f9000g;
            if (bitmap != null) {
                bitmap.recycle();
                this.f9000g = null;
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
            synchronized (this) {
                this.f8998e = printAttributes2;
            }
            if (cancellationSignal.isCanceled()) {
                layoutResultCallback.onLayoutCancelled();
            } else if (this.f9000g != null) {
                layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(this.f8994a).setContentType(1).setPageCount(1).build(), true ^ printAttributes2.equals(printAttributes));
            } else {
                this.f8999f = new a(cancellationSignal, printAttributes2, printAttributes, layoutResultCallback).execute(new Uri[0]);
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
            PrintHelper.this.m5353g(this.f8998e, this.f8997d, this.f9000g, parcelFileDescriptor, cancellationSignal, writeResultCallback);
        }
    }

    public PrintHelper(@NonNull Context context) {
        this.f8974a = context;
    }

    /* renamed from: a */
    public static Bitmap m5347a(Bitmap bitmap, int i) {
        if (i != 1) {
            return bitmap;
        }
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    @RequiresApi(19)
    /* renamed from: b */
    public static PrintAttributes.Builder m5348b(PrintAttributes printAttributes) {
        PrintAttributes.Builder minMargins = new PrintAttributes.Builder().setMediaSize(printAttributes.getMediaSize()).setResolution(printAttributes.getResolution()).setMinMargins(printAttributes.getMinMargins());
        if (printAttributes.getColorMode() != 0) {
            minMargins.setColorMode(printAttributes.getColorMode());
        }
        if (printAttributes.getDuplexMode() != 0) {
            minMargins.setDuplexMode(printAttributes.getDuplexMode());
        }
        return minMargins;
    }

    /* renamed from: c */
    public static Matrix m5349c(int i, int i2, RectF rectF, int i3) {
        Matrix matrix = new Matrix();
        float f = i;
        float width = rectF.width() / f;
        float max = i3 == 2 ? Math.max(width, rectF.height() / i2) : Math.min(width, rectF.height() / i2);
        matrix.postScale(max, max);
        matrix.postTranslate((rectF.width() - (f * max)) / 2.0f, (rectF.height() - (i2 * max)) / 2.0f);
        return matrix;
    }

    /* renamed from: d */
    public static boolean m5350d(Bitmap bitmap) {
        return bitmap.getWidth() <= bitmap.getHeight();
    }

    public static boolean systemSupportsPrint() {
        return true;
    }

    /* renamed from: e */
    public final Bitmap m5351e(Uri uri, BitmapFactory.Options options) throws FileNotFoundException {
        Context context;
        if (uri == null || (context = this.f8974a) == null) {
            throw new IllegalArgumentException("bad argument to loadBitmap");
        }
        InputStream inputStream = null;
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream(openInputStream, null, options);
                if (openInputStream != null) {
                    try {
                        openInputStream.close();
                    } catch (IOException e) {
                        Log.w(f8970g, "close fail ", e);
                    }
                }
                return decodeStream;
            } catch (Throwable th) {
                th = th;
                inputStream = openInputStream;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                        Log.w(f8970g, "close fail ", e2);
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: f */
    public Bitmap m5352f(Uri uri) throws FileNotFoundException {
        BitmapFactory.Options options;
        if (uri == null || this.f8974a == null) {
            throw new IllegalArgumentException("bad argument to getScaledBitmap");
        }
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        options2.inJustDecodeBounds = true;
        m5351e(uri, options2);
        int i = options2.outWidth;
        int i2 = options2.outHeight;
        if (i > 0 && i2 > 0) {
            int max = Math.max(i, i2);
            int i3 = 1;
            while (max > 3500) {
                max >>>= 1;
                i3 <<= 1;
            }
            if (i3 > 0 && Math.min(i, i2) / i3 > 0) {
                synchronized (this.f8976c) {
                    options = new BitmapFactory.Options();
                    this.f8975b = options;
                    options.inMutable = true;
                    options.inSampleSize = i3;
                }
                try {
                    Bitmap m5351e = m5351e(uri, options);
                    synchronized (this.f8976c) {
                        this.f8975b = null;
                    }
                    return m5351e;
                } catch (Throwable th) {
                    synchronized (this.f8976c) {
                        this.f8975b = null;
                        throw th;
                    }
                }
            }
        }
        return null;
    }

    @RequiresApi(19)
    /* renamed from: g */
    public void m5353g(PrintAttributes printAttributes, int i, Bitmap bitmap, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
        new AsyncTaskC1279a(cancellationSignal, f8973j ? printAttributes : m5348b(printAttributes).setMinMargins(new PrintAttributes.Margins(0, 0, 0, 0)).build(), bitmap, printAttributes, i, parcelFileDescriptor, writeResultCallback).execute(new Void[0]);
    }

    public int getColorMode() {
        return this.f8978e;
    }

    public int getOrientation() {
        int i = this.f8979f;
        if (i == 0) {
            return 1;
        }
        return i;
    }

    public int getScaleMode() {
        return this.f8977d;
    }

    public void printBitmap(@NonNull String str, @NonNull Bitmap bitmap) {
        printBitmap(str, bitmap, (OnPrintFinishCallback) null);
    }

    public void setColorMode(int i) {
        this.f8978e = i;
    }

    public void setOrientation(int i) {
        this.f8979f = i;
    }

    public void setScaleMode(int i) {
        this.f8977d = i;
    }

    public void printBitmap(@NonNull String str, @NonNull Bitmap bitmap, @Nullable OnPrintFinishCallback onPrintFinishCallback) {
        PrintAttributes.MediaSize mediaSize;
        if (bitmap == null) {
            return;
        }
        PrintManager printManager = (PrintManager) this.f8974a.getSystemService("print");
        if (m5350d(bitmap)) {
            mediaSize = PrintAttributes.MediaSize.UNKNOWN_PORTRAIT;
        } else {
            mediaSize = PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE;
        }
        printManager.print(str, new C1280b(str, this.f8977d, bitmap, onPrintFinishCallback), new PrintAttributes.Builder().setMediaSize(mediaSize).setColorMode(this.f8978e).build());
    }

    public void printBitmap(@NonNull String str, @NonNull Uri uri) throws FileNotFoundException {
        printBitmap(str, uri, (OnPrintFinishCallback) null);
    }

    public void printBitmap(@NonNull String str, @NonNull Uri uri, @Nullable OnPrintFinishCallback onPrintFinishCallback) throws FileNotFoundException {
        C1281c c1281c = new C1281c(str, uri, onPrintFinishCallback, this.f8977d);
        PrintManager printManager = (PrintManager) this.f8974a.getSystemService("print");
        PrintAttributes.Builder builder = new PrintAttributes.Builder();
        builder.setColorMode(this.f8978e);
        int i = this.f8979f;
        if (i == 1 || i == 0) {
            builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE);
        } else if (i == 2) {
            builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_PORTRAIT);
        }
        printManager.print(str, c1281c, builder.build());
    }
}
