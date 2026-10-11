package com.twelvemonkeys.io;

import com.twelvemonkeys.util.regex.WildcardStringParser;
import java.io.File;
import java.io.FilenameFilter;

/* loaded from: classes10.dex */
public class FilenameMaskFilter implements FilenameFilter {

    /* renamed from: e */
    public String[] f94237e;

    /* renamed from: f */
    public String[] f94238f;

    /* renamed from: g */
    public boolean f94239g;

    public FilenameMaskFilter() {
        this.f94239g = true;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        if (this.f94239g) {
            for (String str2 : this.f94237e) {
                if (new WildcardStringParser(str2).parseString(str)) {
                    return true;
                }
            }
            return false;
        }
        for (String str3 : this.f94238f) {
            if (new WildcardStringParser(str3).parseString(str)) {
                return false;
            }
        }
        return true;
    }

    public String[] getFilenameMasksForExclusion() {
        return (String[]) this.f94238f.clone();
    }

    public String[] getFilenameMasksForInclusion() {
        return (String[]) this.f94237e.clone();
    }

    public void setFilenameMasksForExclusion(String[] strArr) {
        this.f94238f = strArr;
        this.f94239g = false;
    }

    public void setFilenameMasksForInclusion(String[] strArr) {
        this.f94237e = strArr;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        if (this.f94239g) {
            String[] strArr = this.f94237e;
            if (strArr == null) {
                sb.append("No filename masks set - property filenameMasksForInclusion is null!");
            } else {
                sb.append(strArr.length);
                sb.append(" filename mask(s) - ");
                while (i < this.f94237e.length) {
                    sb.append("\"");
                    sb.append(this.f94237e[i]);
                    sb.append("\", \"");
                    i++;
                }
            }
        } else {
            String[] strArr2 = this.f94238f;
            if (strArr2 == null) {
                sb.append("No filename masks set - property filenameMasksForExclusion is null!");
            } else {
                sb.append(strArr2.length);
                sb.append(" exclusion filename mask(s) - ");
                while (i < this.f94238f.length) {
                    sb.append("\"");
                    sb.append(this.f94238f[i]);
                    sb.append("\", \"");
                    i++;
                }
            }
        }
        return sb.toString();
    }

    public FilenameMaskFilter(String str) {
        this.f94239g = true;
        setFilenameMasksForInclusion(new String[]{str});
    }

    public FilenameMaskFilter(String[] strArr) {
        this(strArr, false);
    }

    public FilenameMaskFilter(String str, boolean z) {
        this.f94239g = true;
        String[] strArr = {str};
        if (z) {
            setFilenameMasksForExclusion(strArr);
        } else {
            setFilenameMasksForInclusion(strArr);
        }
    }

    public FilenameMaskFilter(String[] strArr, boolean z) {
        this.f94239g = true;
        if (z) {
            setFilenameMasksForExclusion(strArr);
        } else {
            setFilenameMasksForInclusion(strArr);
        }
    }
}
