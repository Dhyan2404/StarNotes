package androidx.profileinstaller;

import android.content.res.AssetManager;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.profileinstaller.DeviceProfileWriter;
import androidx.profileinstaller.ProfileInstaller;
import com.sunia.HTREnginev2.e4f;
import com.sunia.HTREnginev2.ipf;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;

@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class DeviceProfileWriter {

    /* renamed from: a */
    @NonNull
    public final AssetManager f9101a;

    /* renamed from: b */
    @NonNull
    public final Executor f9102b;

    /* renamed from: c */
    @NonNull
    public final ProfileInstaller.DiagnosticsCallback f9103c;

    /* renamed from: e */
    @NonNull
    public final File f9105e;

    /* renamed from: f */
    @NonNull
    public final String f9106f;

    /* renamed from: g */
    @NonNull
    public final String f9107g;

    /* renamed from: h */
    @NonNull
    public final String f9108h;

    /* renamed from: j */
    @Nullable
    public e4f[] f9110j;

    /* renamed from: k */
    @Nullable
    public byte[] f9111k;

    /* renamed from: i */
    public boolean f9109i = false;

    /* renamed from: d */
    @Nullable
    public final byte[] f9104d = m5409d();

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public DeviceProfileWriter(@NonNull AssetManager assetManager, @NonNull Executor executor, @NonNull ProfileInstaller.DiagnosticsCallback diagnosticsCallback, @NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull File file) {
        this.f9101a = assetManager;
        this.f9102b = executor;
        this.f9103c = diagnosticsCallback;
        this.f9106f = str;
        this.f9107g = str2;
        this.f9108h = str3;
        this.f9105e = file;
    }

    @Nullable
    /* renamed from: d */
    public static byte[] m5409d() {
        int i = Build.VERSION.SDK_INT;
        if (i > 34) {
            return null;
        }
        switch (i) {
            case 29:
            case 30:
                return ProfileVersion.f9147b;
            case 31:
            case 32:
            case 33:
            case 34:
                return ProfileVersion.f9146a;
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m5410f(int i, Object obj) {
        this.f9103c.onResultReceived(i, obj);
    }

    /* renamed from: i */
    public static boolean m5411i() {
        int i = Build.VERSION.SDK_INT;
        if (i > 34) {
            return false;
        }
        switch (i) {
            case 31:
            case 32:
            case 33:
            case 34:
                return true;
            default:
                return false;
        }
    }

    @Nullable
    /* renamed from: b */
    public final DeviceProfileWriter m5412b(e4f[] e4fVarArr, byte[] bArr) {
        InputStream m5415g;
        try {
            m5415g = m5415g(this.f9101a, this.f9108h);
        } catch (FileNotFoundException e) {
            this.f9103c.onResultReceived(9, e);
        } catch (IOException e2) {
            this.f9103c.onResultReceived(7, e2);
        } catch (IllegalStateException e3) {
            this.f9110j = null;
            this.f9103c.onResultReceived(8, e3);
        }
        if (m5415g == null) {
            if (m5415g != null) {
                m5415g.close();
            }
            return null;
        }
        try {
            this.f9110j = C1306b.m5487q(m5415g, C1306b.m5485o(m5415g, C1306b.f9159g), bArr, e4fVarArr);
            m5415g.close();
            return this;
        } catch (Throwable th) {
            try {
                m5415g.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: c */
    public final void m5413c() {
        if (!this.f9109i) {
            throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean deviceAllowsProfileInstallerAotWrites() {
        if (this.f9104d == null) {
            m5417j(3, Integer.valueOf(Build.VERSION.SDK_INT));
            return false;
        }
        if (!this.f9105e.exists()) {
            try {
                this.f9105e.createNewFile();
            } catch (IOException unused) {
                m5417j(4, null);
                return false;
            }
        } else if (!this.f9105e.canWrite()) {
            m5417j(4, null);
            return false;
        }
        this.f9109i = true;
        return true;
    }

    @Nullable
    /* renamed from: e */
    public final InputStream m5414e(AssetManager assetManager) {
        try {
            return m5415g(assetManager, this.f9107g);
        } catch (FileNotFoundException e) {
            this.f9103c.onResultReceived(6, e);
            return null;
        } catch (IOException e2) {
            this.f9103c.onResultReceived(7, e2);
            return null;
        }
    }

    @Nullable
    /* renamed from: g */
    public final InputStream m5415g(AssetManager assetManager, String str) throws IOException {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e) {
            String message = e.getMessage();
            if (message != null && message.contains("compressed")) {
                this.f9103c.onDiagnosticReceived(5, null);
            }
            return null;
        }
    }

    @Nullable
    /* renamed from: h */
    public final e4f[] m5416h(InputStream inputStream) {
        try {
        } catch (IOException e) {
            this.f9103c.onResultReceived(7, e);
        }
        try {
            try {
                e4f[] m5493w = C1306b.m5493w(inputStream, C1306b.m5485o(inputStream, C1306b.f9158f), this.f9106f);
                try {
                    inputStream.close();
                    return m5493w;
                } catch (IOException e2) {
                    this.f9103c.onResultReceived(7, e2);
                    return m5493w;
                }
            } catch (Throwable th) {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                    this.f9103c.onResultReceived(7, e3);
                }
                throw th;
            }
        } catch (IOException e4) {
            this.f9103c.onResultReceived(7, e4);
            inputStream.close();
            return null;
        } catch (IllegalStateException e5) {
            this.f9103c.onResultReceived(8, e5);
            inputStream.close();
            return null;
        }
    }

    /* renamed from: j */
    public final void m5417j(final int i, @Nullable final Object obj) {
        this.f9102b.execute(new Runnable() { // from class: com.sunia.HTREnginev2.d4f
            @Override // java.lang.Runnable
            public final void run() {
                DeviceProfileWriter.this.m5410f(i, obj);
            }
        });
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public DeviceProfileWriter read() {
        DeviceProfileWriter m5412b;
        m5413c();
        if (this.f9104d == null) {
            return this;
        }
        InputStream m5414e = m5414e(this.f9101a);
        if (m5414e != null) {
            this.f9110j = m5416h(m5414e);
        }
        e4f[] e4fVarArr = this.f9110j;
        return (e4fVarArr == null || !m5411i() || (m5412b = m5412b(e4fVarArr, this.f9104d)) == null) ? this : m5412b;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public DeviceProfileWriter transcodeIfNeeded() {
        ByteArrayOutputStream byteArrayOutputStream;
        e4f[] e4fVarArr = this.f9110j;
        byte[] bArr = this.f9104d;
        if (e4fVarArr != null && bArr != null) {
            m5413c();
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    C1306b.m5460E(byteArrayOutputStream, bArr);
                } catch (Throwable th) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e) {
                this.f9103c.onResultReceived(7, e);
            } catch (IllegalStateException e2) {
                this.f9103c.onResultReceived(8, e2);
            }
            if (!C1306b.m5457B(byteArrayOutputStream, bArr, e4fVarArr)) {
                this.f9103c.onResultReceived(5, null);
                this.f9110j = null;
                byteArrayOutputStream.close();
                return this;
            }
            this.f9111k = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            this.f9110j = null;
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean write() {
        byte[] bArr = this.f9111k;
        if (bArr == null) {
            return false;
        }
        m5413c();
        try {
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(this.f9105e);
                    try {
                        ipf.m54760l(byteArrayInputStream, fileOutputStream);
                        m5417j(1, null);
                        fileOutputStream.close();
                        byteArrayInputStream.close();
                        return true;
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } finally {
                this.f9111k = null;
                this.f9110j = null;
            }
        } catch (FileNotFoundException e) {
            m5417j(6, e);
            return false;
        } catch (IOException e2) {
            m5417j(7, e2);
            return false;
        }
    }
}
