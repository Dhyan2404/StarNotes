package com.tencent.beacon.p059a.p062c;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;

/* renamed from: com.tencent.beacon.a.c.d */
/* loaded from: classes10.dex */
public class C14889d implements FileFilter {

    /* renamed from: a */
    final /* synthetic */ C14890e f92613a;

    public C14889d(C14890e c14890e) {
        this.f92613a = c14890e;
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return Pattern.matches("cpu[0-9]", file.getName());
    }
}
