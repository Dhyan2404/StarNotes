package androidx.browser.trusted;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class TrustedWebActivityIntent {

    /* renamed from: a */
    @NonNull
    public final Intent f2433a;

    /* renamed from: b */
    @NonNull
    public final List<Uri> f2434b;

    public TrustedWebActivityIntent(@NonNull Intent intent, @NonNull List<Uri> list) {
        this.f2433a = intent;
        this.f2434b = list;
    }

    /* renamed from: a */
    public final void m1268a(Context context) {
        Iterator<Uri> it2 = this.f2434b.iterator();
        while (it2.hasNext()) {
            context.grantUriPermission(this.f2433a.getPackage(), it2.next(), 1);
        }
    }

    @NonNull
    public Intent getIntent() {
        return this.f2433a;
    }

    public void launchTrustedWebActivity(@NonNull Context context) {
        m1268a(context);
        ContextCompat.startActivity(context, this.f2433a, null);
    }
}
