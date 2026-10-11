package androidx.credentials;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m61528d2 = {"Landroidx/credentials/CredentialProviderFactory;", "", "()V", "Companion", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes3.dex */
public final class CredentialProviderFactory {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a */
    @NotNull
    public static final String f6254a = "CredProviderFactory";

    /* renamed from: b */
    public static final int f6255b = 33;

    /* renamed from: c */
    @NotNull
    public static final String f6256c = "androidx.credentials.CREDENTIAL_PROVIDER_KEY";

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\u000b\u001a\u0004\u0018\u00010\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\r\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u000e¨\u0006\u0015"}, m61528d2 = {"Landroidx/credentials/CredentialProviderFactory$Companion;", "", "Landroid/content/Context;", "context", "Landroidx/credentials/CredentialProvider;", "getBestAvailableProvider", "getUAndAboveProvider", "c", "", "", "classNames", "b", "a", "CREDENTIAL_PROVIDER_KEY", Constants.STRING_SIG, "", "MAX_CRED_MAN_PRE_FRAMEWORK_API_LEVEL", "I", "TAG", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final List<String> m3872a(Context context) {
            List<String> list;
            String string;
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 132);
            ArrayList arrayList = new ArrayList();
            ServiceInfo[] serviceInfoArr = packageInfo.services;
            if (serviceInfoArr != null) {
                Intrinsics.checkNotNullExpressionValue(serviceInfoArr, "packageInfo.services");
                for (ServiceInfo serviceInfo : serviceInfoArr) {
                    Bundle bundle = serviceInfo.metaData;
                    if (bundle != null && (string = bundle.getString(CredentialProviderFactory.f6256c)) != null) {
                        arrayList.add(string);
                    }
                }
            }
            list = CollectionsKt___CollectionsKt.toList(arrayList);
            return list;
        }

        /* renamed from: b */
        public final CredentialProvider m3873b(List<String> classNames, Context context) {
            Iterator<String> it2 = classNames.iterator();
            CredentialProvider credentialProvider = null;
            while (it2.hasNext()) {
                try {
                    Object newInstance = Class.forName(it2.next()).getConstructor(Context.class).newInstance(context);
                    Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type androidx.credentials.CredentialProvider");
                    CredentialProvider credentialProvider2 = (CredentialProvider) newInstance;
                    if (!credentialProvider2.isAvailableOnDevice()) {
                        continue;
                    } else {
                        if (credentialProvider != null) {
                            Log.i(CredentialProviderFactory.f6254a, "Only one active OEM CredentialProvider allowed");
                            return null;
                        }
                        credentialProvider = credentialProvider2;
                    }
                } catch (Throwable unused) {
                }
            }
            return credentialProvider;
        }

        /* renamed from: c */
        public final CredentialProvider m3874c(Context context) {
            List<String> m3872a = m3872a(context);
            if (m3872a.isEmpty()) {
                return null;
            }
            return m3873b(m3872a, context);
        }

        @Nullable
        public final CredentialProvider getBestAvailableProvider(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            int i = Build.VERSION.SDK_INT;
            if (i >= 34) {
                return new CredentialProviderFrameworkImpl(context);
            }
            if (i <= 33) {
                return m3874c(context);
            }
            return null;
        }

        @RequiresApi(34)
        @NotNull
        public final CredentialProvider getUAndAboveProvider(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new CredentialProviderFrameworkImpl(context);
        }

        public Companion() {
        }
    }
}
