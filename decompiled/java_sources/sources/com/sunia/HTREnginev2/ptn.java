package com.sunia.HTREnginev2;

import com.twelvemonkeys.io.FileUtil;
import com.twelvemonkeys.util.StringTokenIterator;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class ptn extends qhg {
    @Override // com.sunia.HTREnginev2.qhg
    /* renamed from: c */
    public long mo55564c(File file) {
        try {
            return m56383f(file, 3);
        } catch (IOException unused) {
            return 0L;
        }
    }

    @Override // com.sunia.HTREnginev2.qhg
    /* renamed from: d */
    public String mo55565d() {
        return "Unix";
    }

    @Override // com.sunia.HTREnginev2.qhg
    /* renamed from: e */
    public long mo55566e(File file) {
        try {
            return m56383f(file, 5);
        } catch (IOException unused) {
            return 0L;
        }
    }

    /* renamed from: f */
    public final long m56383f(File file, int i) throws IOException {
        BufferedReader m56693a = qhg.m56693a(new String[]{"df", "-k", file.getAbsolutePath()});
        String str = null;
        String str2 = null;
        while (true) {
            try {
                String readLine = m56693a.readLine();
                if (readLine == null) {
                    break;
                }
                str2 = readLine;
            } finally {
                FileUtil.m60681a(m56693a);
            }
        }
        if (str2 == null) {
            return 0L;
        }
        StringTokenIterator stringTokenIterator = new StringTokenIterator(str2, " ", -1);
        for (int i2 = 0; i2 < i && stringTokenIterator.hasNext(); i2++) {
            str = stringTokenIterator.nextToken();
        }
        if (str == null) {
            return 0L;
        }
        try {
            return Long.parseLong(str) * 1024;
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }
}
