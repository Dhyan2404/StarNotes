package androidx.core.provider;

import android.content.ContentProviderClient;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.C0725b;
import androidx.core.provider.FontsContractCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* renamed from: androidx.core.provider.b */
/* loaded from: classes3.dex */
public class C0725b {

    /* renamed from: a */
    public static final Comparator<byte[]> f5605a = new Comparator() { // from class: com.sunia.HTREnginev2.vrg
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int m3175g;
            m3175g = C0725b.m3175g((byte[]) obj, (byte[]) obj2);
            return m3175g;
        }
    };

    /* renamed from: androidx.core.provider.b$a */
    /* loaded from: classes3.dex */
    public interface a {
        /* renamed from: a */
        static a m3177a(Context context, Uri uri) {
            return new c(context, uri);
        }

        /* renamed from: b */
        Cursor mo3178b(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal);

        void close();
    }

    /* renamed from: androidx.core.provider.b$b */
    /* loaded from: classes3.dex */
    public static class b implements a {

        /* renamed from: a */
        public final ContentProviderClient f5606a;

        public b(Context context, Uri uri) {
            this.f5606a = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override // androidx.core.provider.C0725b.a
        /* renamed from: b */
        public Cursor mo3178b(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            ContentProviderClient contentProviderClient = this.f5606a;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, str, strArr2, str2, cancellationSignal);
            } catch (RemoteException e) {
                Log.w("FontsProvider", "Unable to query the content provider", e);
                return null;
            }
        }

        @Override // androidx.core.provider.C0725b.a
        public void close() {
            ContentProviderClient contentProviderClient = this.f5606a;
            if (contentProviderClient != null) {
                contentProviderClient.release();
            }
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.provider.b$c */
    /* loaded from: classes3.dex */
    public static class c implements a {

        /* renamed from: a */
        public final ContentProviderClient f5607a;

        public c(Context context, Uri uri) {
            this.f5607a = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override // androidx.core.provider.C0725b.a
        /* renamed from: b */
        public Cursor mo3178b(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            ContentProviderClient contentProviderClient = this.f5607a;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, str, strArr2, str2, cancellationSignal);
            } catch (RemoteException e) {
                Log.w("FontsProvider", "Unable to query the content provider", e);
                return null;
            }
        }

        @Override // androidx.core.provider.C0725b.a
        public void close() {
            ContentProviderClient contentProviderClient = this.f5607a;
            if (contentProviderClient != null) {
                contentProviderClient.close();
            }
        }
    }

    /* renamed from: b */
    public static List<byte[]> m3170b(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    /* renamed from: c */
    public static boolean m3171c(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    public static List<List<byte[]>> m3172d(FontRequest fontRequest, Resources resources) {
        return fontRequest.getCertificates() != null ? fontRequest.getCertificates() : FontResourcesParserCompat.readCerts(resources, fontRequest.getCertificatesArrayResId());
    }

    @NonNull
    /* renamed from: e */
    public static FontsContractCompat.FontFamilyResult m3173e(@NonNull Context context, @NonNull FontRequest fontRequest, @Nullable CancellationSignal cancellationSignal) throws PackageManager.NameNotFoundException {
        ProviderInfo m3174f = m3174f(context.getPackageManager(), fontRequest, context.getResources());
        return m3174f == null ? FontsContractCompat.FontFamilyResult.m3161a(1, null) : FontsContractCompat.FontFamilyResult.m3161a(0, m3176h(context, fontRequest, m3174f.authority, cancellationSignal));
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: f */
    public static ProviderInfo m3174f(@NonNull PackageManager packageManager, @NonNull FontRequest fontRequest, @Nullable Resources resources) throws PackageManager.NameNotFoundException {
        String providerAuthority = fontRequest.getProviderAuthority();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(providerAuthority, 0);
        if (resolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + providerAuthority);
        }
        if (!resolveContentProvider.packageName.equals(fontRequest.getProviderPackage())) {
            throw new PackageManager.NameNotFoundException("Found content provider " + providerAuthority + ", but package was not " + fontRequest.getProviderPackage());
        }
        List<byte[]> m3170b = m3170b(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
        Collections.sort(m3170b, f5605a);
        List<List<byte[]>> m3172d = m3172d(fontRequest, resources);
        for (int i = 0; i < m3172d.size(); i++) {
            ArrayList arrayList = new ArrayList(m3172d.get(i));
            Collections.sort(arrayList, f5605a);
            if (m3171c(m3170b, arrayList)) {
                return resolveContentProvider;
            }
        }
        return null;
    }

    /* renamed from: g */
    public static /* synthetic */ int m3175g(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return bArr.length - bArr2.length;
        }
        for (int i = 0; i < bArr.length; i++) {
            byte b2 = bArr[i];
            byte b3 = bArr2[i];
            if (b2 != b3) {
                return b2 - b3;
            }
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x00fb  */
    @androidx.annotation.NonNull
    @androidx.annotation.VisibleForTesting
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.provider.FontsContractCompat.FontInfo[] m3176h(android.content.Context r21, androidx.core.provider.FontRequest r22, java.lang.String r23, android.os.CancellationSignal r24) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.provider.C0725b.m3176h(android.content.Context, androidx.core.provider.FontRequest, java.lang.String, android.os.CancellationSignal):androidx.core.provider.FontsContractCompat$FontInfo[]");
    }
}
