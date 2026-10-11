package com.sunia.HTREnginev2;

import com.twelvemonkeys.io.FileUtil;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class m7o extends qhg {
    @Override // com.sunia.HTREnginev2.qhg
    /* renamed from: c */
    public long mo55564c(File file) {
        try {
            BufferedReader m56693a = qhg.m56693a(new String[]{"CMD.EXE", "/C", "DIR", "/-C", file.getAbsolutePath()});
            String str = null;
            while (true) {
                try {
                    String readLine = m56693a.readLine();
                    if (readLine == null) {
                        break;
                    }
                    str = readLine;
                } finally {
                    FileUtil.m60681a(m56693a);
                }
            }
            if (str == null) {
                return 0L;
            }
            int lastIndexOf = str.lastIndexOf(" bytes free");
            int lastIndexOf2 = str.lastIndexOf(32, lastIndexOf - 1);
            if (lastIndexOf2 < 0 || lastIndexOf < 0) {
                return 0L;
            }
            return Long.parseLong(str.substring(lastIndexOf2 + 1, lastIndexOf));
        } catch (IOException | NumberFormatException unused) {
            return 0L;
        }
    }

    @Override // com.sunia.HTREnginev2.qhg
    /* renamed from: d */
    public String mo55565d() {
        return "Win32";
    }

    @Override // com.sunia.HTREnginev2.qhg
    /* renamed from: e */
    public long mo55566e(File file) {
        return mo55564c(file);
    }
}
