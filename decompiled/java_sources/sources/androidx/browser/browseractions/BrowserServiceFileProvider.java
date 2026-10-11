package androidx.browser.browseractions;

import android.content.ClipData;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.core.content.FileProvider;
import androidx.core.util.AtomicFile;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;

@RestrictTo({RestrictTo.Scope.LIBRARY})
@Deprecated
/* loaded from: classes3.dex */
public final class BrowserServiceFileProvider extends FileProvider {

    /* renamed from: J */
    public static final String f2338J = "image_provider_images/";

    /* renamed from: O */
    public static final String f2339O = ".png";

    /* renamed from: Q */
    public static final String f2340Q = "image_provider_uris";

    /* renamed from: Z */
    public static final String f2341Z = "last_cleanup_time";

    /* renamed from: k0 */
    public static Object f2342k0 = new Object();

    /* renamed from: w */
    public static final String f2343w = "BrowserServiceFP";

    /* renamed from: x */
    public static final String f2344x = ".image_provider";

    /* renamed from: y */
    public static final String f2345y = "content";

    /* renamed from: z */
    public static final String f2346z = "image_provider";

    /* renamed from: androidx.browser.browseractions.BrowserServiceFileProvider$a */
    /* loaded from: classes3.dex */
    public class RunnableC0351a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ ContentResolver f2347e;

        /* renamed from: f */
        public final /* synthetic */ Uri f2348f;

        /* renamed from: g */
        public final /* synthetic */ ResolvableFuture f2349g;

        public RunnableC0351a(ContentResolver contentResolver, Uri uri, ResolvableFuture resolvableFuture) {
            this.f2347e = contentResolver;
            this.f2348f = uri;
            this.f2349g = resolvableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ParcelFileDescriptor openFileDescriptor = this.f2347e.openFileDescriptor(this.f2348f, "r");
                if (openFileDescriptor == null) {
                    this.f2349g.setException(new FileNotFoundException());
                    return;
                }
                Bitmap decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(openFileDescriptor.getFileDescriptor());
                openFileDescriptor.close();
                if (decodeFileDescriptor == null) {
                    this.f2349g.setException(new IOException("File could not be decoded."));
                } else {
                    this.f2349g.set(decodeFileDescriptor);
                }
            } catch (IOException e) {
                this.f2349g.setException(e);
            }
        }
    }

    /* renamed from: androidx.browser.browseractions.BrowserServiceFileProvider$b */
    /* loaded from: classes3.dex */
    public static class AsyncTaskC0352b extends AsyncTask<Void, Void, Void> {

        /* renamed from: b */
        public static final long f2350b;

        /* renamed from: c */
        public static final long f2351c;

        /* renamed from: d */
        public static final long f2352d;

        /* renamed from: a */
        public final Context f2353a;

        static {
            TimeUnit timeUnit = TimeUnit.DAYS;
            f2350b = timeUnit.toMillis(7L);
            f2351c = timeUnit.toMillis(7L);
            f2352d = timeUnit.toMillis(1L);
        }

        public AsyncTaskC0352b(Context context) {
            this.f2353a = context.getApplicationContext();
        }

        /* renamed from: b */
        public static boolean m1234b(File file) {
            return file.getName().endsWith("..png");
        }

        /* renamed from: c */
        public static boolean m1235c(SharedPreferences sharedPreferences) {
            return System.currentTimeMillis() > sharedPreferences.getLong(BrowserServiceFileProvider.f2341Z, System.currentTimeMillis()) + f2351c;
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            SharedPreferences sharedPreferences = this.f2353a.getSharedPreferences(this.f2353a.getPackageName() + BrowserServiceFileProvider.f2344x, 0);
            if (!m1235c(sharedPreferences)) {
                return null;
            }
            synchronized (BrowserServiceFileProvider.f2342k0) {
                File file = new File(this.f2353a.getFilesDir(), BrowserServiceFileProvider.f2346z);
                if (!file.exists()) {
                    return null;
                }
                File[] listFiles = file.listFiles();
                long currentTimeMillis = System.currentTimeMillis() - f2350b;
                boolean z = true;
                for (File file2 : listFiles) {
                    if (m1234b(file2) && file2.lastModified() < currentTimeMillis && !file2.delete()) {
                        Log.e(BrowserServiceFileProvider.f2343w, "Fail to delete image: " + file2.getAbsoluteFile());
                        z = false;
                    }
                }
                long currentTimeMillis2 = z ? System.currentTimeMillis() : (System.currentTimeMillis() - f2351c) + f2352d;
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putLong(BrowserServiceFileProvider.f2341Z, currentTimeMillis2);
                edit.apply();
                return null;
            }
        }
    }

    /* renamed from: androidx.browser.browseractions.BrowserServiceFileProvider$c */
    /* loaded from: classes3.dex */
    public static class AsyncTaskC0353c extends AsyncTask<String, Void, Void> {

        /* renamed from: a */
        public final Context f2354a;

        /* renamed from: b */
        public final String f2355b;

        /* renamed from: c */
        public final Bitmap f2356c;

        /* renamed from: d */
        public final Uri f2357d;

        /* renamed from: e */
        public final ResolvableFuture<Uri> f2358e;

        public AsyncTaskC0353c(Context context, String str, Bitmap bitmap, Uri uri, ResolvableFuture<Uri> resolvableFuture) {
            this.f2354a = context.getApplicationContext();
            this.f2355b = str;
            this.f2356c = bitmap;
            this.f2357d = uri;
            this.f2358e = resolvableFuture;
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(String... strArr) {
            m1240d();
            return null;
        }

        @Override // android.os.AsyncTask
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r2) {
            new AsyncTaskC0352b(this.f2354a).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
        }

        /* renamed from: c */
        public final void m1239c(File file) {
            FileOutputStream fileOutputStream;
            AtomicFile atomicFile = new AtomicFile(file);
            try {
                fileOutputStream = atomicFile.startWrite();
            } catch (IOException e) {
                e = e;
                fileOutputStream = null;
            }
            try {
                this.f2356c.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                fileOutputStream.close();
                atomicFile.finishWrite(fileOutputStream);
                this.f2358e.set(this.f2357d);
            } catch (IOException e2) {
                e = e2;
                atomicFile.failWrite(fileOutputStream);
                this.f2358e.setException(e);
            }
        }

        /* renamed from: d */
        public final void m1240d() {
            File file = new File(this.f2354a.getFilesDir(), BrowserServiceFileProvider.f2346z);
            synchronized (BrowserServiceFileProvider.f2342k0) {
                if (!file.exists() && !file.mkdir()) {
                    this.f2358e.setException(new IOException("Could not create file directory."));
                    return;
                }
                File file2 = new File(file, this.f2355b + ".png");
                if (file2.exists()) {
                    this.f2358e.set(this.f2357d);
                } else {
                    m1239c(file2);
                }
                file2.setLastModified(System.currentTimeMillis());
            }
        }
    }

    public static void grantReadPermission(@NonNull Intent intent, @Nullable List<Uri> list, @NonNull Context context) {
        if (list == null || list.size() == 0) {
            return;
        }
        ContentResolver contentResolver = context.getContentResolver();
        intent.addFlags(1);
        ClipData newUri = ClipData.newUri(contentResolver, f2340Q, list.get(0));
        for (int i = 1; i < list.size(); i++) {
            newUri.addItem(new ClipData.Item(list.get(i)));
        }
        intent.setClipData(newUri);
    }

    /* renamed from: k */
    public static Uri m1233k(Context context, String str) {
        return new Uri.Builder().scheme("content").authority(context.getPackageName() + f2344x).path(f2338J + str + ".png").build();
    }

    @NonNull
    public static ListenableFuture<Bitmap> loadBitmap(@NonNull ContentResolver contentResolver, @NonNull Uri uri) {
        ResolvableFuture create = ResolvableFuture.create();
        AsyncTask.THREAD_POOL_EXECUTOR.execute(new RunnableC0351a(contentResolver, uri, create));
        return create;
    }

    @NonNull
    @UiThread
    public static ResolvableFuture<Uri> saveBitmap(@NonNull Context context, @NonNull Bitmap bitmap, @NonNull String str, int i) {
        String str2 = str + "_" + Integer.toString(i);
        Uri m1233k = m1233k(context, str2);
        ResolvableFuture<Uri> create = ResolvableFuture.create();
        new AsyncTaskC0353c(context, str2, bitmap, m1233k, create).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        return create;
    }
}
