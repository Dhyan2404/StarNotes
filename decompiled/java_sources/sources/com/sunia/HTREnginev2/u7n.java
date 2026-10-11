package com.sunia.HTREnginev2;

import android.content.res.AssetManager;
import com.onegravity.rteditor.fonts.TTFAssetInputStream;
import com.onegravity.rteditor.fonts.TTFInputStream;
import com.onegravity.rteditor.fonts.TTFRandomAccessFile;
import com.onegravity.rteditor.utils.io.IOUtils;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes7.dex */
public abstract class u7n {
    /* renamed from: a */
    public static String m57546a(AssetManager assetManager, String str) {
        TTFAssetInputStream tTFAssetInputStream;
        TTFAssetInputStream tTFAssetInputStream2 = null;
        try {
            tTFAssetInputStream = new TTFAssetInputStream(assetManager.open(str, 1));
        } catch (FileNotFoundException unused) {
            tTFAssetInputStream = null;
        } catch (IOException unused2) {
            tTFAssetInputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            String m57548c = m57548c(tTFAssetInputStream, str);
            IOUtils.closeQuietly(tTFAssetInputStream);
            return m57548c;
        } catch (FileNotFoundException unused3) {
            IOUtils.closeQuietly(tTFAssetInputStream);
            return null;
        } catch (IOException unused4) {
            IOUtils.closeQuietly(tTFAssetInputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            tTFAssetInputStream2 = tTFAssetInputStream;
            IOUtils.closeQuietly(tTFAssetInputStream2);
            throw th;
        }
    }

    /* renamed from: b */
    public static String m57547b(String str) {
        TTFRandomAccessFile tTFRandomAccessFile;
        TTFRandomAccessFile tTFRandomAccessFile2 = null;
        try {
            tTFRandomAccessFile = new TTFRandomAccessFile(new RandomAccessFile(str, "r"));
            try {
                String m57548c = m57548c(tTFRandomAccessFile, str);
                IOUtils.closeQuietly(tTFRandomAccessFile);
                return m57548c;
            } catch (IOException unused) {
                IOUtils.closeQuietly(tTFRandomAccessFile);
                return null;
            } catch (Throwable th) {
                th = th;
                tTFRandomAccessFile2 = tTFRandomAccessFile;
                IOUtils.closeQuietly(tTFRandomAccessFile2);
                throw th;
            }
        } catch (IOException unused2) {
            tTFRandomAccessFile = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: c */
    public static String m57548c(TTFInputStream tTFInputStream, String str) {
        int m57552g;
        try {
            m57552g = m57552g(tTFInputStream);
        } catch (FileNotFoundException | IOException unused) {
        }
        if (m57552g != 1953658213 && m57552g != 65536 && m57552g != 1330926671) {
            return null;
        }
        int m57553h = m57553h(tTFInputStream);
        m57553h(tTFInputStream);
        m57553h(tTFInputStream);
        m57553h(tTFInputStream);
        for (int i = 0; i < m57553h; i++) {
            int m57552g2 = m57552g(tTFInputStream);
            m57552g(tTFInputStream);
            int m57552g3 = m57552g(tTFInputStream);
            int m57552g4 = m57552g(tTFInputStream);
            if (m57552g2 == 1851878757) {
                byte[] bArr = new byte[m57552g4];
                tTFInputStream.seek(m57552g3);
                m57550e(tTFInputStream, bArr);
                int m57549d = m57549d(bArr, 2);
                int m57549d2 = m57549d(bArr, 4);
                for (int i2 = 0; i2 < m57549d; i2++) {
                    int i3 = (i2 * 12) + 6;
                    int m57549d3 = m57549d(bArr, i3);
                    if (m57549d(bArr, i3 + 6) == 4 && m57549d3 == 1) {
                        int m57549d4 = m57549d(bArr, i3 + 8);
                        int m57549d5 = m57549d(bArr, i3 + 10) + m57549d2;
                        if (m57549d5 >= 0 && m57549d5 + m57549d4 < m57552g4) {
                            return new String(bArr, m57549d5, m57549d4);
                        }
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: d */
    public static int m57549d(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    /* renamed from: e */
    public static void m57550e(TTFInputStream tTFInputStream, byte[] bArr) throws IOException {
        if (tTFInputStream.read(bArr) != bArr.length) {
            throw new IOException();
        }
    }

    /* renamed from: f */
    public static int m57551f(TTFInputStream tTFInputStream) throws IOException {
        return tTFInputStream.read() & 255;
    }

    /* renamed from: g */
    public static int m57552g(TTFInputStream tTFInputStream) throws IOException {
        return m57551f(tTFInputStream) | (m57551f(tTFInputStream) << 24) | (m57551f(tTFInputStream) << 16) | (m57551f(tTFInputStream) << 8);
    }

    /* renamed from: h */
    public static int m57553h(TTFInputStream tTFInputStream) throws IOException {
        return m57551f(tTFInputStream) | (m57551f(tTFInputStream) << 8);
    }
}
