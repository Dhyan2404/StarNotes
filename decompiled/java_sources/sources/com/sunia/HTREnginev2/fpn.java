package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.provider.FontsContractCompat;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class fpn {

    /* renamed from: b */
    public static final String f70238b = "TypefaceCompatBaseImpl";

    /* renamed from: c */
    public static final int f70239c = 0;

    /* renamed from: a */
    @SuppressLint({"BanConcurrentHashMap"})
    public ConcurrentHashMap<Long, FontResourcesParserCompat.FontFamilyFilesResourceEntry> f70240a = new ConcurrentHashMap<>();

    /* renamed from: com.sunia.HTREnginev2.fpn$a */
    /* loaded from: classes3.dex */
    public class C13733a implements InterfaceC13736d<FontsContractCompat.FontInfo> {
        public C13733a() {
        }

        @Override // com.sunia.HTREnginev2.fpn.InterfaceC13736d
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public int mo54164a(FontsContractCompat.FontInfo fontInfo) {
            return fontInfo.getWeight();
        }

        @Override // com.sunia.HTREnginev2.fpn.InterfaceC13736d
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean mo54165b(FontsContractCompat.FontInfo fontInfo) {
            return fontInfo.isItalic();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.fpn$b */
    /* loaded from: classes3.dex */
    public class C13734b implements InterfaceC13736d<FontResourcesParserCompat.FontFileResourceEntry> {
        public C13734b() {
        }

        @Override // com.sunia.HTREnginev2.fpn.InterfaceC13736d
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public int mo54164a(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
            return fontFileResourceEntry.getWeight();
        }

        @Override // com.sunia.HTREnginev2.fpn.InterfaceC13736d
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean mo54165b(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
            return fontFileResourceEntry.isItalic();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.fpn$c */
    /* loaded from: classes3.dex */
    public class C13735c implements InterfaceC13736d<FontResourcesParserCompat.FontFileResourceEntry> {
        public C13735c() {
        }

        @Override // com.sunia.HTREnginev2.fpn.InterfaceC13736d
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public int mo54164a(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
            return fontFileResourceEntry.getWeight();
        }

        @Override // com.sunia.HTREnginev2.fpn.InterfaceC13736d
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean mo54165b(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
            return fontFileResourceEntry.isItalic();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.fpn$d */
    /* loaded from: classes3.dex */
    public interface InterfaceC13736d<T> {
        /* renamed from: a */
        int mo54164a(T t);

        /* renamed from: b */
        boolean mo54165b(T t);
    }

    /* renamed from: f */
    public static <T> T m54156f(T[] tArr, int i, InterfaceC13736d<T> interfaceC13736d) {
        return (T) m54157g(tArr, (i & 1) == 0 ? 400 : 700, (i & 2) != 0, interfaceC13736d);
    }

    /* renamed from: g */
    public static <T> T m54157g(T[] tArr, int i, boolean z, InterfaceC13736d<T> interfaceC13736d) {
        T t = null;
        int i2 = Integer.MAX_VALUE;
        for (T t2 : tArr) {
            int abs = (Math.abs(interfaceC13736d.mo54164a(t2) - i) * 2) + (interfaceC13736d.mo54165b(t2) == z ? 0 : 1);
            if (t == null || i2 > abs) {
                t = t2;
                i2 = abs;
            }
        }
        return t;
    }

    /* renamed from: i */
    public static long m54158i(@Nullable Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException e) {
            Log.e(f70238b, "Could not retrieve font from family.", e);
            return 0L;
        } catch (NoSuchFieldException e2) {
            Log.e(f70238b, "Could not retrieve font from family.", e2);
            return 0L;
        }
    }

    /* renamed from: a */
    public final void m54159a(Typeface typeface, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry) {
        long m54158i = m54158i(typeface);
        if (m54158i != 0) {
            this.f70240a.put(Long.valueOf(m54158i), fontFamilyFilesResourceEntry);
        }
    }

    @Nullable
    /* renamed from: b */
    public Typeface m54160b(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i, boolean z) {
        FontResourcesParserCompat.FontFileResourceEntry m54162e = m54162e(fontFamilyFilesResourceEntry, i, z);
        if (m54162e == null) {
            return null;
        }
        Typeface createFromResourcesFontFile = TypefaceCompat.createFromResourcesFontFile(context, resources, m54162e.getResourceId(), m54162e.getFileName(), 0, 0);
        m54159a(createFromResourcesFontFile, fontFamilyFilesResourceEntry);
        return createFromResourcesFontFile;
    }

    @NonNull
    /* renamed from: c */
    public Typeface mo2936c(@NonNull Context context, @NonNull Typeface typeface, int i, boolean z) {
        Typeface typeface2;
        try {
            typeface2 = b7o.m53196a(this, context, typeface, i, z);
        } catch (RuntimeException unused) {
            typeface2 = null;
        }
        return typeface2 == null ? typeface : typeface2;
    }

    @Nullable
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        FontResourcesParserCompat.FontFileResourceEntry m54161d = m54161d(fontFamilyFilesResourceEntry, i);
        if (m54161d == null) {
            return null;
        }
        Typeface createFromResourcesFontFile = TypefaceCompat.createFromResourcesFontFile(context, resources, m54161d.getResourceId(), m54161d.getFileName(), 0, i);
        m54159a(createFromResourcesFontFile, fontFamilyFilesResourceEntry);
        return createFromResourcesFontFile;
    }

    @Nullable
    public Typeface createFromFontInfo(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        if (fontInfoArr.length < 1) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(findBestInfo(fontInfoArr, i).getUri());
        } catch (IOException unused) {
            inputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            Typeface createFromInputStream = createFromInputStream(context, inputStream);
            TypefaceCompatUtil.closeQuietly(inputStream);
            return createFromInputStream;
        } catch (IOException unused2) {
            TypefaceCompatUtil.closeQuietly(inputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            inputStream2 = inputStream;
            TypefaceCompatUtil.closeQuietly(inputStream2);
            throw th;
        }
    }

    public Typeface createFromInputStream(Context context, InputStream inputStream) {
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (TypefaceCompatUtil.copyToFile(tempFile, inputStream)) {
                return Typeface.createFromFile(tempFile.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            tempFile.delete();
        }
    }

    @Nullable
    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2) {
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (TypefaceCompatUtil.copyToFile(tempFile, resources, i)) {
                return Typeface.createFromFile(tempFile.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            tempFile.delete();
        }
    }

    /* renamed from: d */
    public final FontResourcesParserCompat.FontFileResourceEntry m54161d(FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, int i) {
        return (FontResourcesParserCompat.FontFileResourceEntry) m54156f(fontFamilyFilesResourceEntry.getEntries(), i, new C13734b());
    }

    /* renamed from: e */
    public final FontResourcesParserCompat.FontFileResourceEntry m54162e(FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, int i, boolean z) {
        return (FontResourcesParserCompat.FontFileResourceEntry) m54157g(fontFamilyFilesResourceEntry.getEntries(), i, z, new C13735c());
    }

    public FontsContractCompat.FontInfo findBestInfo(FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        return (FontsContractCompat.FontInfo) m54156f(fontInfoArr, i, new C13733a());
    }

    @Nullable
    /* renamed from: h */
    public FontResourcesParserCompat.FontFamilyFilesResourceEntry m54163h(Typeface typeface) {
        long m54158i = m54158i(typeface);
        if (m54158i == 0) {
            return null;
        }
        return this.f70240a.get(Long.valueOf(m54158i));
    }
}
