package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.provider.FontsContractCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(21)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class dpn extends fpn {

    /* renamed from: d */
    public static final String f68109d = "TypefaceCompatApi21Impl";

    /* renamed from: e */
    public static final String f68110e = "android.graphics.FontFamily";

    /* renamed from: f */
    public static final String f68111f = "addFontWeightStyle";

    /* renamed from: g */
    public static final String f68112g = "createFromFamiliesWithDefault";

    /* renamed from: h */
    public static Class<?> f68113h;

    /* renamed from: i */
    public static Constructor<?> f68114i;

    /* renamed from: j */
    public static Method f68115j;

    /* renamed from: k */
    public static Method f68116k;

    /* renamed from: l */
    public static boolean f68117l;

    public static Typeface createFromFamiliesWithDefault(Object obj) {
        m53699l();
        try {
            Object newInstance = Array.newInstance(f68113h, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f68116k.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: j */
    public static boolean m53698j(Object obj, String str, int i, boolean z) {
        m53699l();
        try {
            return ((Boolean) f68115j.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: l */
    public static void m53699l() {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        if (f68117l) {
            return;
        }
        f68117l = true;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e(f68109d, e.getClass().getName(), e);
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
        }
        f68114i = constructor;
        f68113h = cls;
        f68115j = method2;
        f68116k = method;
    }

    /* renamed from: m */
    public static Object m53700m() {
        m53699l();
        try {
            return f68114i.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.sunia.HTREnginev2.fpn
    @NonNull
    /* renamed from: c */
    public Typeface mo2936c(@NonNull Context context, @NonNull Typeface typeface, int i, boolean z) {
        Typeface typeface2;
        try {
            typeface2 = c7o.m53401b(typeface, i, z);
        } catch (RuntimeException unused) {
            typeface2 = null;
        }
        return typeface2 == null ? super.mo2936c(context, typeface, i, z) : typeface2;
    }

    @Override // com.sunia.HTREnginev2.fpn
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        Object m53700m = m53700m();
        for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.getEntries()) {
            File tempFile = TypefaceCompatUtil.getTempFile(context);
            if (tempFile == null) {
                return null;
            }
            try {
                if (!TypefaceCompatUtil.copyToFile(tempFile, resources, fontFileResourceEntry.getResourceId())) {
                    return null;
                }
                if (!m53698j(m53700m, tempFile.getPath(), fontFileResourceEntry.getWeight(), fontFileResourceEntry.isItalic())) {
                    return null;
                }
                tempFile.delete();
            } catch (RuntimeException unused) {
                return null;
            } finally {
                tempFile.delete();
            }
        }
        return createFromFamiliesWithDefault(m53700m);
    }

    @Override // com.sunia.HTREnginev2.fpn
    public Typeface createFromFontInfo(Context context, CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        if (fontInfoArr.length < 1) {
            return null;
        }
        FontsContractCompat.FontInfo findBestInfo = findBestInfo(fontInfoArr, i);
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(findBestInfo.getUri(), "r", cancellationSignal);
            if (openFileDescriptor == null) {
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return null;
            }
            try {
                File m53701k = m53701k(openFileDescriptor);
                if (m53701k != null && m53701k.canRead()) {
                    Typeface createFromFile = Typeface.createFromFile(m53701k);
                    openFileDescriptor.close();
                    return createFromFile;
                }
                FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                try {
                    Typeface createFromInputStream = super.createFromInputStream(context, fileInputStream);
                    fileInputStream.close();
                    openFileDescriptor.close();
                    return createFromInputStream;
                } finally {
                }
            } finally {
            }
        } catch (IOException unused) {
            return null;
        }
    }

    /* renamed from: k */
    public final File m53701k(@NonNull ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
        } catch (ErrnoException unused) {
        }
        return null;
    }
}
