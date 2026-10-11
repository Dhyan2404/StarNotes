package androidx.core.provider;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.provider.FontsContractCompat;
import androidx.core.util.Consumer;
import com.sunia.HTREnginev2.xkl;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* renamed from: androidx.core.provider.c */
/* loaded from: classes3.dex */
public class C0726c {

    /* renamed from: a */
    public static final LruCache<String, Typeface> f5608a = new LruCache<>(16);

    /* renamed from: b */
    public static final ExecutorService f5609b = xkl.m58280a("fonts-androidx", 10, 10000);

    /* renamed from: c */
    public static final Object f5610c = new Object();

    /* renamed from: d */
    @GuardedBy("LOCK")
    public static final SimpleArrayMap<String, ArrayList<Consumer<e>>> f5611d = new SimpleArrayMap<>();

    /* renamed from: androidx.core.provider.c$a */
    /* loaded from: classes3.dex */
    public class a implements Callable<e> {

        /* renamed from: e */
        public final /* synthetic */ String f5612e;

        /* renamed from: f */
        public final /* synthetic */ Context f5613f;

        /* renamed from: g */
        public final /* synthetic */ FontRequest f5614g;

        /* renamed from: h */
        public final /* synthetic */ int f5615h;

        public a(String str, Context context, FontRequest fontRequest, int i) {
            this.f5612e = str;
            this.f5613f = context;
            this.f5614g = fontRequest;
            this.f5615h = i;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public e call() {
            return C0726c.m3181c(this.f5612e, this.f5613f, this.f5614g, this.f5615h);
        }
    }

    /* renamed from: androidx.core.provider.c$b */
    /* loaded from: classes3.dex */
    public class b implements Consumer<e> {

        /* renamed from: e */
        public final /* synthetic */ C0724a f5616e;

        public b(C0724a c0724a) {
            this.f5616e = c0724a;
        }

        @Override // androidx.core.util.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(e eVar) {
            if (eVar == null) {
                eVar = new e(-3);
            }
            this.f5616e.m3167b(eVar);
        }
    }

    /* renamed from: androidx.core.provider.c$c */
    /* loaded from: classes3.dex */
    public class c implements Callable<e> {

        /* renamed from: e */
        public final /* synthetic */ String f5617e;

        /* renamed from: f */
        public final /* synthetic */ Context f5618f;

        /* renamed from: g */
        public final /* synthetic */ FontRequest f5619g;

        /* renamed from: h */
        public final /* synthetic */ int f5620h;

        public c(String str, Context context, FontRequest fontRequest, int i) {
            this.f5617e = str;
            this.f5618f = context;
            this.f5619g = fontRequest;
            this.f5620h = i;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public e call() {
            try {
                return C0726c.m3181c(this.f5617e, this.f5618f, this.f5619g, this.f5620h);
            } catch (Throwable unused) {
                return new e(-3);
            }
        }
    }

    /* renamed from: androidx.core.provider.c$d */
    /* loaded from: classes3.dex */
    public class d implements Consumer<e> {

        /* renamed from: e */
        public final /* synthetic */ String f5621e;

        public d(String str) {
            this.f5621e = str;
        }

        @Override // androidx.core.util.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(e eVar) {
            synchronized (C0726c.f5610c) {
                SimpleArrayMap<String, ArrayList<Consumer<e>>> simpleArrayMap = C0726c.f5611d;
                ArrayList<Consumer<e>> arrayList = simpleArrayMap.get(this.f5621e);
                if (arrayList == null) {
                    return;
                }
                simpleArrayMap.remove(this.f5621e);
                for (int i = 0; i < arrayList.size(); i++) {
                    arrayList.get(i).accept(eVar);
                }
            }
        }
    }

    /* renamed from: a */
    public static String m3179a(@NonNull FontRequest fontRequest, int i) {
        return fontRequest.m3160b() + "-" + i;
    }

    @SuppressLint({"WrongConstant"})
    /* renamed from: b */
    public static int m3180b(@NonNull FontsContractCompat.FontFamilyResult fontFamilyResult) {
        int i = 1;
        if (fontFamilyResult.getStatusCode() != 0) {
            return fontFamilyResult.getStatusCode() != 1 ? -3 : -2;
        }
        FontsContractCompat.FontInfo[] fonts = fontFamilyResult.getFonts();
        if (fonts != null && fonts.length != 0) {
            i = 0;
            for (FontsContractCompat.FontInfo fontInfo : fonts) {
                int resultCode = fontInfo.getResultCode();
                if (resultCode != 0) {
                    if (resultCode < 0) {
                        return -3;
                    }
                    return resultCode;
                }
            }
        }
        return i;
    }

    @NonNull
    /* renamed from: c */
    public static e m3181c(@NonNull String str, @NonNull Context context, @NonNull FontRequest fontRequest, int i) {
        LruCache<String, Typeface> lruCache = f5608a;
        Typeface typeface = lruCache.get(str);
        if (typeface != null) {
            return new e(typeface);
        }
        try {
            FontsContractCompat.FontFamilyResult m3173e = C0725b.m3173e(context, fontRequest, null);
            int m3180b = m3180b(m3173e);
            if (m3180b != 0) {
                return new e(m3180b);
            }
            Typeface createFromFontInfo = TypefaceCompat.createFromFontInfo(context, null, m3173e.getFonts(), i);
            if (createFromFontInfo == null) {
                return new e(-3);
            }
            lruCache.put(str, createFromFontInfo);
            return new e(createFromFontInfo);
        } catch (PackageManager.NameNotFoundException unused) {
            return new e(-1);
        }
    }

    /* renamed from: d */
    public static Typeface m3182d(@NonNull Context context, @NonNull FontRequest fontRequest, int i, @Nullable Executor executor, @NonNull C0724a c0724a) {
        String m3179a = m3179a(fontRequest, i);
        Typeface typeface = f5608a.get(m3179a);
        if (typeface != null) {
            c0724a.m3167b(new e(typeface));
            return typeface;
        }
        b bVar = new b(c0724a);
        synchronized (f5610c) {
            SimpleArrayMap<String, ArrayList<Consumer<e>>> simpleArrayMap = f5611d;
            ArrayList<Consumer<e>> arrayList = simpleArrayMap.get(m3179a);
            if (arrayList != null) {
                arrayList.add(bVar);
                return null;
            }
            ArrayList<Consumer<e>> arrayList2 = new ArrayList<>();
            arrayList2.add(bVar);
            simpleArrayMap.put(m3179a, arrayList2);
            c cVar = new c(m3179a, context, fontRequest, i);
            if (executor == null) {
                executor = f5609b;
            }
            xkl.m58282c(executor, cVar, new d(m3179a));
            return null;
        }
    }

    /* renamed from: e */
    public static Typeface m3183e(@NonNull Context context, @NonNull FontRequest fontRequest, @NonNull C0724a c0724a, int i, int i2) {
        String m3179a = m3179a(fontRequest, i);
        Typeface typeface = f5608a.get(m3179a);
        if (typeface != null) {
            c0724a.m3167b(new e(typeface));
            return typeface;
        }
        if (i2 == -1) {
            e m3181c = m3181c(m3179a, context, fontRequest, i);
            c0724a.m3167b(m3181c);
            return m3181c.f5622a;
        }
        try {
            e eVar = (e) xkl.m58283d(f5609b, new a(m3179a, context, fontRequest, i), i2);
            c0724a.m3167b(eVar);
            return eVar.f5622a;
        } catch (InterruptedException unused) {
            c0724a.m3167b(new e(-3));
            return null;
        }
    }

    /* renamed from: f */
    public static void m3184f() {
        f5608a.evictAll();
    }

    /* renamed from: androidx.core.provider.c$e */
    /* loaded from: classes3.dex */
    public static final class e {

        /* renamed from: a */
        public final Typeface f5622a;

        /* renamed from: b */
        public final int f5623b;

        public e(int i) {
            this.f5622a = null;
            this.f5623b = i;
        }

        @SuppressLint({"WrongConstant"})
        /* renamed from: a */
        public boolean m3189a() {
            return this.f5623b == 0;
        }

        @SuppressLint({"WrongConstant"})
        public e(@NonNull Typeface typeface) {
            this.f5622a = typeface;
            this.f5623b = 0;
        }
    }
}
