package androidx.core.provider;

import android.graphics.Typeface;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.core.provider.C0726c;
import androidx.core.provider.FontsContractCompat;
import com.sunia.HTREnginev2.zmd;

/* renamed from: androidx.core.provider.a */
/* loaded from: classes3.dex */
public class C0724a {

    /* renamed from: a */
    @NonNull
    public final FontsContractCompat.FontRequestCallback f5597a;

    /* renamed from: b */
    @NonNull
    public final Handler f5598b;

    /* renamed from: androidx.core.provider.a$a */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ FontsContractCompat.FontRequestCallback f5599e;

        /* renamed from: f */
        public final /* synthetic */ Typeface f5600f;

        public a(FontsContractCompat.FontRequestCallback fontRequestCallback, Typeface typeface) {
            this.f5599e = fontRequestCallback;
            this.f5600f = typeface;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5599e.onTypefaceRetrieved(this.f5600f);
        }
    }

    /* renamed from: androidx.core.provider.a$b */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ FontsContractCompat.FontRequestCallback f5602e;

        /* renamed from: f */
        public final /* synthetic */ int f5603f;

        public b(FontsContractCompat.FontRequestCallback fontRequestCallback, int i) {
            this.f5602e = fontRequestCallback;
            this.f5603f = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5602e.onTypefaceRequestFailed(this.f5603f);
        }
    }

    public C0724a(@NonNull FontsContractCompat.FontRequestCallback fontRequestCallback, @NonNull Handler handler) {
        this.f5597a = fontRequestCallback;
        this.f5598b = handler;
    }

    /* renamed from: a */
    public final void m3166a(int i) {
        this.f5598b.post(new b(this.f5597a, i));
    }

    /* renamed from: b */
    public void m3167b(@NonNull C0726c.e eVar) {
        if (eVar.m3189a()) {
            m3168c(eVar.f5622a);
        } else {
            m3166a(eVar.f5623b);
        }
    }

    /* renamed from: c */
    public final void m3168c(@NonNull Typeface typeface) {
        this.f5598b.post(new a(this.f5597a, typeface));
    }

    public C0724a(@NonNull FontsContractCompat.FontRequestCallback fontRequestCallback) {
        this.f5597a = fontRequestCallback;
        this.f5598b = zmd.m58730a();
    }
}
