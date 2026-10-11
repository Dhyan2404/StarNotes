package androidx.credentials.provider.utils;

import android.content.pm.SigningInfo;
import android.service.credentials.CallingAppInfo;
import android.service.credentials.ClearCredentialStateRequest;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.provider.ProviderClearCredentialStateRequest;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@RequiresApi(34)
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m61528d2 = {"Landroidx/credentials/provider/utils/ClearCredentialUtil;", "", "()V", "Companion", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class ClearCredentialUtil {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¢\u0006\u0002\b\u0007¨\u0006\b"}, m61528d2 = {"Landroidx/credentials/provider/utils/ClearCredentialUtil$Companion;", "", "()V", "convertToJetpackRequest", "Landroidx/credentials/provider/ProviderClearCredentialStateRequest;", AbstractLogger.REQUEST, "Landroid/service/credentials/ClearCredentialStateRequest;", "convertToJetpackRequest$credentials_release", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final ProviderClearCredentialStateRequest convertToJetpackRequest$credentials_release(@NotNull ClearCredentialStateRequest request) {
            CallingAppInfo callingAppInfo;
            String packageName;
            CallingAppInfo callingAppInfo2;
            SigningInfo signingInfo;
            CallingAppInfo callingAppInfo3;
            Intrinsics.checkNotNullParameter(request, "request");
            callingAppInfo = request.getCallingAppInfo();
            packageName = callingAppInfo.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "request.callingAppInfo.packageName");
            callingAppInfo2 = request.getCallingAppInfo();
            signingInfo = callingAppInfo2.getSigningInfo();
            Intrinsics.checkNotNullExpressionValue(signingInfo, "request.callingAppInfo.signingInfo");
            callingAppInfo3 = request.getCallingAppInfo();
            return new ProviderClearCredentialStateRequest(new androidx.credentials.provider.CallingAppInfo(packageName, signingInfo, callingAppInfo3.getOrigin()));
        }

        public Companion() {
        }
    }
}
