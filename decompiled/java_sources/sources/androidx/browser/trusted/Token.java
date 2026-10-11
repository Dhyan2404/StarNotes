package androidx.browser.trusted;

import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.sunia.HTREnginev2.llk;
import com.sunia.HTREnginev2.yin;
import java.io.IOException;
import java.util.List;

/* loaded from: classes3.dex */
public final class Token {

    /* renamed from: b */
    public static final String f2426b = "Token";

    /* renamed from: a */
    @NonNull
    public final yin f2427a;

    public Token(@NonNull yin yinVar) {
        this.f2427a = yinVar;
    }

    @Nullable
    public static Token create(@NonNull String str, @NonNull PackageManager packageManager) {
        List<byte[]> m55446b = llk.m55446b(str, packageManager);
        if (m55446b == null) {
            return null;
        }
        try {
            return new Token(yin.m58427c(str, m55446b));
        } catch (IOException e) {
            Log.e(f2426b, "Exception when creating token.", e);
            return null;
        }
    }

    @NonNull
    public static Token deserialize(@NonNull byte[] bArr) {
        return new Token(yin.m58429e(bArr));
    }

    public boolean matches(@NonNull String str, @NonNull PackageManager packageManager) {
        return llk.m55448d(str, packageManager, this.f2427a);
    }

    @NonNull
    public byte[] serialize() {
        return this.f2427a.m58434j();
    }
}
