package androidx.core.view.autofill;

import android.view.autofill.AutofillId;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public class AutofillIdCompat {

    /* renamed from: a */
    public final Object f6068a;

    @RequiresApi(26)
    public AutofillIdCompat(@NonNull AutofillId autofillId) {
        this.f6068a = autofillId;
    }

    @NonNull
    @RequiresApi(26)
    public static AutofillIdCompat toAutofillIdCompat(@NonNull AutofillId autofillId) {
        return new AutofillIdCompat(autofillId);
    }

    @NonNull
    @RequiresApi(26)
    public AutofillId toAutofillId() {
        return (AutofillId) this.f6068a;
    }
}
