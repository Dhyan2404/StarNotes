package com.twelvemonkeys.imageio.util;

import com.twelvemonkeys.io.FileUtil;
import com.twelvemonkeys.lang.StringUtil;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import javax.imageio.ImageIO;
import javax.swing.filechooser.FileFilter;

/* loaded from: classes10.dex */
public final class ReaderFileSuffixFilter extends FileFilter implements java.io.FileFilter {

    /* renamed from: e */
    public final String f94216e;

    /* renamed from: f */
    public final Map<String, Boolean> f94217f;

    public ReaderFileSuffixFilter() {
        this("Images (all supported input formats)");
    }

    /* renamed from: a */
    public final boolean m60669a(String str) {
        Boolean bool = this.f94217f.get(str);
        Boolean bool2 = Boolean.TRUE;
        if (bool == bool2) {
            return true;
        }
        if (ImageIO.getImageReadersBySuffix(str).hasNext()) {
            this.f94217f.put(str, bool2);
            return true;
        }
        this.f94217f.put(str, Boolean.FALSE);
        return false;
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        if (file.isDirectory()) {
            return true;
        }
        String extension = FileUtil.getExtension(file);
        return !StringUtil.isEmpty(extension) && m60669a(extension);
    }

    public String getDescription() {
        return this.f94216e;
    }

    public ReaderFileSuffixFilter(String str) {
        this.f94217f = new HashMap(32);
        this.f94216e = str;
    }
}
