package com.caverock.androidsvg;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.util.Log;
import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public class SimpleAssetResolver extends SVGExternalFileResolver {

    /* renamed from: b */
    public static final String f16094b = "SimpleAssetResolver";

    /* renamed from: c */
    public static final Set<String> f16095c;

    /* renamed from: a */
    public AssetManager f16096a;

    static {
        HashSet hashSet = new HashSet(8);
        f16095c = hashSet;
        hashSet.add("image/svg+xml");
        hashSet.add("image/jpeg");
        hashSet.add("image/png");
        hashSet.add("image/pjpeg");
        hashSet.add("image/gif");
        hashSet.add("image/bmp");
        hashSet.add("image/x-windows-bmp");
        hashSet.add("image/webp");
    }

    public SimpleAssetResolver(AssetManager assetManager) {
        this.f16096a = assetManager;
    }

    /* renamed from: a */
    public final String m9555a(String str) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        try {
            inputStream = this.f16096a.open(str);
            try {
                InputStreamReader inputStreamReader = new InputStreamReader(inputStream, Charset.forName("UTF-8"));
                char[] cArr = new char[4096];
                StringBuilder sb = new StringBuilder();
                for (int read = inputStreamReader.read(cArr); read > 0; read = inputStreamReader.read(cArr)) {
                    sb.append(cArr, 0, read);
                }
                String sb2 = sb.toString();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
                return sb2;
            } catch (IOException unused2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                return null;
            } catch (Throwable th) {
                th = th;
                inputStream2 = inputStream;
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (IOException unused5) {
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.caverock.androidsvg.SVGExternalFileResolver
    public boolean isFormatSupported(String str) {
        return f16095c.contains(str);
    }

    @Override // com.caverock.androidsvg.SVGExternalFileResolver
    public String resolveCSSStyleSheet(String str) {
        Log.i(f16094b, "resolveCSSStyleSheet(" + str + MotionUtils.f31762d);
        return m9555a(str);
    }

    @Override // com.caverock.androidsvg.SVGExternalFileResolver
    public Typeface resolveFont(String str, int i, String str2) {
        Log.i(f16094b, "resolveFont(" + str + "," + i + "," + str2 + MotionUtils.f31762d);
        try {
            try {
                return Typeface.createFromAsset(this.f16096a, str + ".ttf");
            } catch (RuntimeException unused) {
                return Typeface.createFromAsset(this.f16096a, str + ".otf");
            }
        } catch (RuntimeException unused2) {
            return null;
        }
    }

    @Override // com.caverock.androidsvg.SVGExternalFileResolver
    public Bitmap resolveImage(String str) {
        Log.i(f16094b, "resolveImage(" + str + MotionUtils.f31762d);
        try {
            return BitmapFactory.decodeStream(this.f16096a.open(str));
        } catch (IOException unused) {
            return null;
        }
    }
}
