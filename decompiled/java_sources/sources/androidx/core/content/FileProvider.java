package androidx.core.content;

import android.annotation.SuppressLint;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import androidx.annotation.CallSuper;
import androidx.annotation.DoNotInline;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.XmlRes;
import androidx.core.util.ObjectsCompat;
import com.canhub.cropper.BitmapUtils;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class FileProvider extends ContentProvider {

    /* renamed from: j */
    public static final String f5220j = "android.support.FILE_PROVIDER_PATHS";

    /* renamed from: k */
    public static final String f5221k = "root-path";

    /* renamed from: l */
    public static final String f5222l = "files-path";

    /* renamed from: m */
    public static final String f5223m = "cache-path";

    /* renamed from: n */
    public static final String f5224n = "external-path";

    /* renamed from: o */
    public static final String f5225o = "external-files-path";

    /* renamed from: p */
    public static final String f5226p = "external-cache-path";

    /* renamed from: q */
    public static final String f5227q = "external-media-path";

    /* renamed from: r */
    public static final String f5228r = "name";

    /* renamed from: s */
    public static final String f5229s = "path";

    /* renamed from: t */
    public static final String f5230t = "displayName";

    /* renamed from: e */
    @NonNull
    public final Object f5233e;

    /* renamed from: f */
    @GuardedBy("mLock")
    public String f5234f;

    /* renamed from: g */
    @Nullable
    @GuardedBy("mLock")
    public InterfaceC0631b f5235g;

    /* renamed from: h */
    public final int f5236h;

    /* renamed from: i */
    public static final String[] f5219i = {"_display_name", "_size"};

    /* renamed from: u */
    public static final File f5231u = new File("/");

    /* renamed from: v */
    @GuardedBy("sCache")
    public static final HashMap<String, InterfaceC0631b> f5232v = new HashMap<>();

    @RequiresApi(21)
    /* renamed from: androidx.core.content.FileProvider$a */
    /* loaded from: classes3.dex */
    public static class C0630a {
        @DoNotInline
        /* renamed from: a */
        public static File[] m2730a(Context context) {
            return context.getExternalMediaDirs();
        }
    }

    /* renamed from: androidx.core.content.FileProvider$b */
    /* loaded from: classes3.dex */
    public interface InterfaceC0631b {
        /* renamed from: a */
        Uri mo2731a(File file);

        /* renamed from: b */
        File mo2732b(Uri uri);
    }

    /* renamed from: androidx.core.content.FileProvider$c */
    /* loaded from: classes3.dex */
    public static class C0632c implements InterfaceC0631b {

        /* renamed from: a */
        public final String f5237a;

        /* renamed from: b */
        public final HashMap<String, File> f5238b = new HashMap<>();

        public C0632c(String str) {
            this.f5237a = str;
        }

        @Override // androidx.core.content.FileProvider.InterfaceC0631b
        /* renamed from: a */
        public Uri mo2731a(File file) {
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry<String, File> entry = null;
                for (Map.Entry<String, File> entry2 : this.f5238b.entrySet()) {
                    String path = entry2.getValue().getPath();
                    if (m2734d(canonicalPath, path) && (entry == null || path.length() > entry.getValue().getPath().length())) {
                        entry = entry2;
                    }
                }
                if (entry == null) {
                    throw new IllegalArgumentException("Failed to find configured root that contains " + canonicalPath);
                }
                String path2 = entry.getValue().getPath();
                return new Uri.Builder().scheme("content").authority(this.f5237a).encodedPath(Uri.encode(entry.getKey()) + '/' + Uri.encode(path2.endsWith("/") ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1), "/")).build();
            } catch (IOException unused) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file);
            }
        }

        @Override // androidx.core.content.FileProvider.InterfaceC0631b
        /* renamed from: b */
        public File mo2732b(Uri uri) {
            String encodedPath = uri.getEncodedPath();
            int indexOf = encodedPath.indexOf(47, 1);
            String decode = Uri.decode(encodedPath.substring(1, indexOf));
            String decode2 = Uri.decode(encodedPath.substring(indexOf + 1));
            File file = this.f5238b.get(decode);
            if (file == null) {
                throw new IllegalArgumentException("Unable to find configured root for " + uri);
            }
            File file2 = new File(file, decode2);
            try {
                File canonicalFile = file2.getCanonicalFile();
                if (m2734d(canonicalFile.getPath(), file.getPath())) {
                    return canonicalFile;
                }
                throw new SecurityException("Resolved path jumped beyond configured root");
            } catch (IOException unused) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file2);
            }
        }

        /* renamed from: c */
        public void m2733c(String str, File file) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Name must not be empty");
            }
            try {
                this.f5238b.put(str, file.getCanonicalFile());
            } catch (IOException e) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file, e);
            }
        }

        /* renamed from: d */
        public final boolean m2734d(@NonNull String str, @NonNull String str2) {
            String m2728j = FileProvider.m2728j(str);
            String m2728j2 = FileProvider.m2728j(str2);
            if (!m2728j.equals(m2728j2)) {
                if (!m2728j.startsWith(m2728j2 + '/')) {
                    return false;
                }
            }
            return true;
        }
    }

    public FileProvider() {
        this(0);
    }

    /* renamed from: b */
    public static File m2721b(File file, String... strArr) {
        for (String str : strArr) {
            if (str != null) {
                file = new File(file, str);
            }
        }
        return file;
    }

    /* renamed from: c */
    public static Object[] m2722c(Object[] objArr, int i) {
        Object[] objArr2 = new Object[i];
        System.arraycopy(objArr, 0, objArr2, 0, i);
        return objArr2;
    }

    /* renamed from: d */
    public static String[] m2723d(String[] strArr, int i) {
        String[] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, i);
        return strArr2;
    }

    @VisibleForTesting
    /* renamed from: e */
    public static XmlResourceParser m2724e(Context context, String str, @Nullable ProviderInfo providerInfo, int i) {
        if (providerInfo == null) {
            throw new IllegalArgumentException("Couldn't find meta-data for provider with authority " + str);
        }
        if (providerInfo.metaData == null && i != 0) {
            Bundle bundle = new Bundle(1);
            providerInfo.metaData = bundle;
            bundle.putInt(f5220j, i);
        }
        XmlResourceParser loadXmlMetaData = providerInfo.loadXmlMetaData(context.getPackageManager(), f5220j);
        if (loadXmlMetaData != null) {
            return loadXmlMetaData;
        }
        throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
    }

    /* renamed from: g */
    public static InterfaceC0631b m2725g(Context context, String str, int i) {
        InterfaceC0631b interfaceC0631b;
        HashMap<String, InterfaceC0631b> hashMap = f5232v;
        synchronized (hashMap) {
            interfaceC0631b = hashMap.get(str);
            if (interfaceC0631b == null) {
                try {
                    try {
                        interfaceC0631b = m2727i(context, str, i);
                        hashMap.put(str, interfaceC0631b);
                    } catch (XmlPullParserException e) {
                        throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e);
                    }
                } catch (IOException e2) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e2);
                }
            }
        }
        return interfaceC0631b;
    }

    public static Uri getUriForFile(@NonNull Context context, @NonNull String str, @NonNull File file) {
        return m2725g(context, str, 0).mo2731a(file);
    }

    /* renamed from: h */
    public static int m2726h(String str) {
        if ("r".equals(str)) {
            return 268435456;
        }
        if ("w".equals(str) || BitmapUtils.f15605d.equals(str)) {
            return 738197504;
        }
        if ("wa".equals(str)) {
            return 704643072;
        }
        if ("rw".equals(str)) {
            return 939524096;
        }
        if ("rwt".equals(str)) {
            return 1006632960;
        }
        throw new IllegalArgumentException("Invalid mode: " + str);
    }

    /* renamed from: i */
    public static InterfaceC0631b m2727i(Context context, String str, int i) throws IOException, XmlPullParserException {
        C0632c c0632c = new C0632c(str);
        XmlResourceParser m2724e = m2724e(context, str, context.getPackageManager().resolveContentProvider(str, 128), i);
        while (true) {
            int next = m2724e.next();
            if (next == 1) {
                return c0632c;
            }
            if (next == 2) {
                String name = m2724e.getName();
                File file = null;
                String attributeValue = m2724e.getAttributeValue(null, "name");
                String attributeValue2 = m2724e.getAttributeValue(null, "path");
                if (f5221k.equals(name)) {
                    file = f5231u;
                } else if (f5222l.equals(name)) {
                    file = context.getFilesDir();
                } else if (f5223m.equals(name)) {
                    file = context.getCacheDir();
                } else if (f5224n.equals(name)) {
                    file = Environment.getExternalStorageDirectory();
                } else if (f5225o.equals(name)) {
                    File[] externalFilesDirs = ContextCompat.getExternalFilesDirs(context, null);
                    if (externalFilesDirs.length > 0) {
                        file = externalFilesDirs[0];
                    }
                } else if (f5226p.equals(name)) {
                    File[] externalCacheDirs = ContextCompat.getExternalCacheDirs(context);
                    if (externalCacheDirs.length > 0) {
                        file = externalCacheDirs[0];
                    }
                } else if (f5227q.equals(name)) {
                    File[] m2730a = C0630a.m2730a(context);
                    if (m2730a.length > 0) {
                        file = m2730a[0];
                    }
                }
                if (file != null) {
                    c0632c.m2733c(attributeValue, m2721b(file, attributeValue2));
                }
            }
        }
    }

    @NonNull
    /* renamed from: j */
    public static String m2728j(@NonNull String str) {
        return (str.length() <= 0 || str.charAt(str.length() + (-1)) != '/') ? str : str.substring(0, str.length() - 1);
    }

    @Override // android.content.ContentProvider
    @CallSuper
    public void attachInfo(@NonNull Context context, @NonNull ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        }
        if (!providerInfo.grantUriPermissions) {
            throw new SecurityException("Provider must grant uri permissions");
        }
        String str = providerInfo.authority.split(AndroidTreeView.f47214k)[0];
        synchronized (this.f5233e) {
            this.f5234f = str;
        }
        HashMap<String, InterfaceC0631b> hashMap = f5232v;
        synchronized (hashMap) {
            hashMap.remove(str);
        }
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        return m2729f().mo2732b(uri).delete() ? 1 : 0;
    }

    @NonNull
    /* renamed from: f */
    public final InterfaceC0631b m2729f() {
        InterfaceC0631b interfaceC0631b;
        synchronized (this.f5233e) {
            ObjectsCompat.requireNonNull(this.f5234f, "mAuthority is null. Did you override attachInfo and did not call super.attachInfo()?");
            if (this.f5235g == null) {
                this.f5235g = m2725g(getContext(), this.f5234f, this.f5236h);
            }
            interfaceC0631b = this.f5235g;
        }
        return interfaceC0631b;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        File mo2732b = m2729f().mo2732b(uri);
        int lastIndexOf = mo2732b.getName().lastIndexOf(46);
        if (lastIndexOf < 0) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(mo2732b.getName().substring(lastIndexOf + 1));
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getTypeAnonymous(@NonNull Uri uri) {
        return "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public Uri insert(@NonNull Uri uri, @NonNull ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    @SuppressLint({"UnknownNullness"})
    public ParcelFileDescriptor openFile(@NonNull Uri uri, @NonNull String str) throws FileNotFoundException {
        return ParcelFileDescriptor.open(m2729f().mo2732b(uri), m2726h(str));
    }

    @Override // android.content.ContentProvider
    @NonNull
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        int i;
        File mo2732b = m2729f().mo2732b(uri);
        String queryParameter = uri.getQueryParameter(f5230t);
        if (strArr == null) {
            strArr = f5219i;
        }
        String[] strArr3 = new String[strArr.length];
        Object[] objArr = new Object[strArr.length];
        int i2 = 0;
        for (String str3 : strArr) {
            if ("_display_name".equals(str3)) {
                strArr3[i2] = "_display_name";
                i = i2 + 1;
                objArr[i2] = queryParameter == null ? mo2732b.getName() : queryParameter;
            } else if ("_size".equals(str3)) {
                strArr3[i2] = "_size";
                i = i2 + 1;
                objArr[i2] = Long.valueOf(mo2732b.length());
            }
            i2 = i;
        }
        String[] m2723d = m2723d(strArr3, i2);
        Object[] m2722c = m2722c(objArr, i2);
        MatrixCursor matrixCursor = new MatrixCursor(m2723d, 1);
        matrixCursor.addRow(m2722c);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @NonNull ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }

    public FileProvider(@XmlRes int i) {
        this.f5233e = new Object();
        this.f5236h = i;
    }

    @NonNull
    @SuppressLint({"StreamFiles"})
    public static Uri getUriForFile(@NonNull Context context, @NonNull String str, @NonNull File file, @NonNull String str2) {
        return getUriForFile(context, str, file).buildUpon().appendQueryParameter(f5230t, str2).build();
    }
}
