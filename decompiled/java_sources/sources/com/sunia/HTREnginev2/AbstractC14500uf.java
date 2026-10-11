package com.sunia.HTREnginev2;

import android.content.Context;
import android.util.Log;
import com.onegravity.rteditor.utils.io.IOUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.sunia.HTREnginev2.uf */
/* loaded from: classes7.dex */
public abstract class AbstractC14500uf {

    /* renamed from: a */
    public static final List<String> f86420a = new ArrayList();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.io.InputStream] */
    /* renamed from: a */
    public static List<String> m57616a(Context context) {
        Reader reader;
        Throwable th;
        BufferedReader bufferedReader;
        IOException e;
        if (f86420a.isEmpty()) {
            try {
                try {
                    context = context.getAssets().open("assets.index");
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e2) {
                bufferedReader = null;
                e = e2;
                context = 0;
            } catch (Throwable th3) {
                reader = null;
                th = th3;
                context = 0;
            }
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(context));
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        f86420a.add(readLine);
                    } catch (IOException e3) {
                        e = e3;
                        Log.w(AbstractC14500uf.class.getSimpleName(), "The assets.index file could not be read. If you want to use your own fonts, please copy the fonts to the assets folder and the build code to generate the assets.index file into your build.gradle (for more details consult the readme, chapter fonts)", e);
                        IOUtils.closeQuietly((InputStream) context);
                        IOUtils.closeQuietly((Reader) bufferedReader);
                        return f86420a;
                    }
                }
            } catch (IOException e4) {
                bufferedReader = null;
                e = e4;
            } catch (Throwable th4) {
                reader = null;
                th = th4;
                IOUtils.closeQuietly((InputStream) context);
                IOUtils.closeQuietly(reader);
                throw th;
            }
            IOUtils.closeQuietly((InputStream) context);
            IOUtils.closeQuietly((Reader) bufferedReader);
        }
        return f86420a;
    }
}
