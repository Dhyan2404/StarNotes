package androidx.credentials.provider;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.credentials.CreateCredentialException;
import android.credentials.CreateCredentialResponse;
import android.credentials.GetCredentialException;
import android.credentials.GetCredentialResponse;
import androidx.annotation.RequiresApi;
import androidx.credentials.provider.utils.BeginGetCredentialUtil;
import com.sunia.HTREnginev2.mni;
import com.sunia.HTREnginev2.oni;
import com.sunia.HTREnginev2.pni;
import com.sunia.HTREnginev2.qni;
import com.sunia.HTREnginev2.rhe;
import com.sunia.HTREnginev2.rni;
import com.sunia.HTREnginev2.she;
import com.sunia.HTREnginev2.sni;
import com.sunia.HTREnginev2.the;
import com.sunia.HTREnginev2.uhe;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007\u001a\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0002H\u0007\u001a\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u0002H\u0007\u001a\u000e\u0010\u0007\u001a\u0004\u0018\u00010\b*\u00020\u0002H\u0007\u001a\u000e\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u0002H\u0007¨\u0006\u000b"}, m61528d2 = {"getBeginGetResponse", "Landroidx/credentials/provider/BeginGetCredentialResponse;", "Landroid/content/Intent;", "getCreateCredentialCredentialResponse", "Landroid/credentials/CreateCredentialResponse;", "getCreateCredentialException", "Landroid/credentials/CreateCredentialException;", "getGetCredentialException", "Landroid/credentials/GetCredentialException;", "getGetCredentialResponse", "Landroid/credentials/GetCredentialResponse;", "credentials_release"}, m61529k = 2, m61530mv = {1, 8, 0}, m61532xi = 48)
@SuppressLint({"ClassVerificationFailure"})
@JvmName(name = "IntentHandlerConverters")
/* loaded from: classes3.dex */
public final class IntentHandlerConverters {
    @RequiresApi(34)
    @Nullable
    public static final BeginGetCredentialResponse getBeginGetResponse(@NotNull Intent intent) {
        Object parcelableExtra;
        Intrinsics.checkNotNullParameter(intent, "<this>");
        if (!intent.hasExtra("android.service.credentials.extra.BEGIN_GET_CREDENTIAL_RESPONSE")) {
            return null;
        }
        parcelableExtra = intent.getParcelableExtra("android.service.credentials.extra.BEGIN_GET_CREDENTIAL_RESPONSE", rni.m56990a());
        android.service.credentials.BeginGetCredentialResponse m57187a = sni.m57187a(parcelableExtra);
        if (m57187a == null) {
            return null;
        }
        return BeginGetCredentialUtil.INSTANCE.convertToJetpackResponse(m57187a);
    }

    @RequiresApi(34)
    @Nullable
    public static final CreateCredentialResponse getCreateCredentialCredentialResponse(@NotNull Intent intent) {
        Object parcelableExtra;
        Intrinsics.checkNotNullParameter(intent, "<this>");
        if (!intent.hasExtra("android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE")) {
            return null;
        }
        parcelableExtra = intent.getParcelableExtra("android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE", mni.m55666a());
        return rhe.m56949a(parcelableExtra);
    }

    @RequiresApi(34)
    @Nullable
    public static final CreateCredentialException getCreateCredentialException(@NotNull Intent intent) {
        Object parcelableExtra;
        Intrinsics.checkNotNullParameter(intent, "<this>");
        if (!intent.hasExtra("android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION")) {
            return null;
        }
        parcelableExtra = intent.getParcelableExtra("android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION", qni.m56731a());
        return she.m57164a(parcelableExtra);
    }

    @RequiresApi(34)
    @Nullable
    public static final GetCredentialException getGetCredentialException(@NotNull Intent intent) {
        Object parcelableExtra;
        Intrinsics.checkNotNullParameter(intent, "<this>");
        if (!intent.hasExtra("android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION")) {
            return null;
        }
        parcelableExtra = intent.getParcelableExtra("android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION", oni.m56126a());
        return the.m57373a(parcelableExtra);
    }

    @RequiresApi(34)
    @Nullable
    public static final GetCredentialResponse getGetCredentialResponse(@NotNull Intent intent) {
        Object parcelableExtra;
        Intrinsics.checkNotNullParameter(intent, "<this>");
        if (!intent.hasExtra("android.service.credentials.extra.GET_CREDENTIAL_RESPONSE")) {
            return null;
        }
        parcelableExtra = intent.getParcelableExtra("android.service.credentials.extra.GET_CREDENTIAL_RESPONSE", pni.m56336a());
        return uhe.m57623a(parcelableExtra);
    }
}
