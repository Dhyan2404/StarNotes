package com.twelvemonkeys.imageio.util;

import com.twelvemonkeys.io.FileUtil;
import com.twelvemonkeys.lang.StringUtil;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import javax.imageio.ImageIO;
import javax.swing.filechooser.FileFilter;

/* loaded from: classes10.dex */
public final class WriterFileSuffixFilter extends FileFilter implements java.io.FileFilter {

    /* renamed from: e */
    public final String f94218e;

    /* renamed from: f */
    public Map<String, Boolean> f94219f;

    public WriterFileSuffixFilter() {
        this("Images (all supported output formats)");
    }

    /* renamed from: a */
    public final boolean m60670a(String str) {
        Boolean bool = this.f94219f.get(str);
        Boolean bool2 = Boolean.TRUE;
        if (bool == bool2) {
            return true;
        }
        if (ImageIO.getImageWritersBySuffix(str).hasNext()) {
            this.f94219f.put(str, bool2);
            return true;
        }
        this.f94219f.put(str, Boolean.FALSE);
        return false;
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        if (file.isDirectory()) {
            return true;
        }
        String extension = FileUtil.getExtension(file);
        return !StringUtil.isEmpty(extension) && m60670a(extension);
    }

    public String getDescription() {
        return this.f94218e;
    }

    public WriterFileSuffixFilter(String str) {
        this.f94219f = new HashMap(32);
        this.f94218e = str;
    }
}
