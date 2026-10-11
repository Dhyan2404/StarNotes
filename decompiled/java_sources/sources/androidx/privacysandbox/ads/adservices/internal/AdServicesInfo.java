package androidx.privacysandbox.ads.adservices.internal;

import android.os.Build;
import android.os.ext.SdkExtensions;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\u0007"}, m61528d2 = {"Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;", "", "", "version", Constants.CONSTRUCTOR_NAME, "()V", "a", "ads-adservices_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class AdServicesInfo {

    @NotNull
    public static final AdServicesInfo INSTANCE = new AdServicesInfo();

    @RequiresApi(30)
    /* renamed from: androidx.privacysandbox.ads.adservices.internal.AdServicesInfo$a */
    /* loaded from: classes3.dex */
    public static final class C1285a {

        /* renamed from: a */
        @NotNull
        public static final C1285a f9054a = new C1285a();

        @DoNotInline
        /* renamed from: a */
        public final int m5388a() {
            int extensionVersion;
            extensionVersion = SdkExtensions.getExtensionVersion(1000000);
            return extensionVersion;
        }
    }

    public final int version() {
        if (Build.VERSION.SDK_INT >= 30) {
            return C1285a.f9054a.m5388a();
        }
        return 0;
    }
}
