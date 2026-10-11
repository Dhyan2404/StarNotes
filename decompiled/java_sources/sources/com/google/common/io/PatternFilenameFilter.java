package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.ynf;
import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

@Beta
@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public final class PatternFilenameFilter implements FilenameFilter {

    /* renamed from: e */
    public final Pattern f34940e;

    public PatternFilenameFilter(String str) {
        this(Pattern.compile(str));
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return this.f34940e.matcher(str).matches();
    }

    public PatternFilenameFilter(Pattern pattern) {
        this.f34940e = (Pattern) Preconditions.checkNotNull(pattern);
    }
}
