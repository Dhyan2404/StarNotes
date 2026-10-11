package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.upstream.cache.CacheSpan;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public final class esm extends CacheSpan {

    /* renamed from: e */
    public static final String f69289e = ".exo";

    /* renamed from: f */
    public static final String f69290f = ".v3.exo";

    /* renamed from: g */
    public static final Pattern f69291g = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);

    /* renamed from: h */
    public static final Pattern f69292h = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);

    /* renamed from: i */
    public static final Pattern f69293i = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);

    public esm(String str, long j, long j2, long j3, @Nullable File file) {
        super(str, j, j2, j3, file);
    }

    @Nullable
    /* renamed from: b */
    public static esm m54027b(File file, long j, long j2, pmd pmdVar) {
        File file2;
        String m56302l;
        String name = file.getName();
        if (name.endsWith(f69290f)) {
            file2 = file;
        } else {
            File m54032g = m54032g(file, pmdVar);
            if (m54032g == null) {
                return null;
            }
            file2 = m54032g;
            name = m54032g.getName();
        }
        Matcher matcher = f69293i.matcher(name);
        if (!matcher.matches() || (m56302l = pmdVar.m56302l(Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1))))) == null) {
            return null;
        }
        long length = j == -1 ? file2.length() : j;
        if (length == 0) {
            return null;
        }
        return new esm(m56302l, Long.parseLong((String) Assertions.checkNotNull(matcher.group(2))), length, j2 == C4649C.TIME_UNSET ? Long.parseLong((String) Assertions.checkNotNull(matcher.group(3))) : j2, file2);
    }

    @Nullable
    /* renamed from: c */
    public static esm m54028c(File file, long j, pmd pmdVar) {
        return m54027b(file, j, C4649C.TIME_UNSET, pmdVar);
    }

    /* renamed from: d */
    public static esm m54029d(String str, long j, long j2) {
        return new esm(str, j, j2, C4649C.TIME_UNSET, null);
    }

    /* renamed from: e */
    public static esm m54030e(String str, long j) {
        return new esm(str, j, -1L, C4649C.TIME_UNSET, null);
    }

    /* renamed from: f */
    public static File m54031f(File file, int i, long j, long j2) {
        StringBuilder sb = new StringBuilder(60);
        sb.append(i);
        sb.append(".");
        sb.append(j);
        sb.append(".");
        sb.append(j2);
        sb.append(f69290f);
        return new File(file, sb.toString());
    }

    @Nullable
    /* renamed from: g */
    public static File m54032g(File file, pmd pmdVar) {
        String str;
        String name = file.getName();
        Matcher matcher = f69292h.matcher(name);
        if (matcher.matches()) {
            str = Util.unescapeFileName((String) Assertions.checkNotNull(matcher.group(1)));
        } else {
            matcher = f69291g.matcher(name);
            str = matcher.matches() ? (String) Assertions.checkNotNull(matcher.group(1)) : null;
        }
        if (str == null) {
            return null;
        }
        File m54031f = m54031f((File) Assertions.checkStateNotNull(file.getParentFile()), pmdVar.m56298f(str), Long.parseLong((String) Assertions.checkNotNull(matcher.group(2))), Long.parseLong((String) Assertions.checkNotNull(matcher.group(3))));
        if (file.renameTo(m54031f)) {
            return m54031f;
        }
        return null;
    }

    /* renamed from: a */
    public esm m54033a(File file, long j) {
        Assertions.checkState(this.isCached);
        return new esm(this.key, this.position, this.length, j, file);
    }
}
