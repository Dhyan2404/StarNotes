package com.sunia.HTREnginev2;

import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import java.io.InputStream;
import java.util.Objects;
import org.apache.commons.compress.archivers.ArchiveEntry;

/* loaded from: classes12.dex */
public class lqd {

    /* renamed from: f */
    public static final int f76774f = 1;

    /* renamed from: g */
    public static final int f76775g = 2;

    /* renamed from: h */
    public static final int f76776h = 3;

    /* renamed from: i */
    public static final int f76777i = 4;

    /* renamed from: a */
    public final String f76778a;

    /* renamed from: b */
    public final ArchiveEntry f76779b;

    /* renamed from: c */
    public final InputStream f76780c;

    /* renamed from: d */
    public final boolean f76781d;

    /* renamed from: e */
    public final int f76782e;

    public lqd(String str, int i) {
        Objects.requireNonNull(str, HuaweiYunQueryArgs.FILE_NAME);
        this.f76778a = str;
        this.f76782e = i;
        this.f76780c = null;
        this.f76779b = null;
        this.f76781d = true;
    }

    /* renamed from: a */
    public ArchiveEntry m55495a() {
        return this.f76779b;
    }

    /* renamed from: b */
    public InputStream m55496b() {
        return this.f76780c;
    }

    /* renamed from: c */
    public boolean m55497c() {
        return this.f76781d;
    }

    /* renamed from: d */
    public String m55498d() {
        return this.f76778a;
    }

    /* renamed from: e */
    public int m55499e() {
        return this.f76782e;
    }

    public lqd(ArchiveEntry archiveEntry, InputStream inputStream, boolean z) {
        Objects.requireNonNull(archiveEntry, "archiveEntry");
        Objects.requireNonNull(inputStream, "inputStream");
        this.f76779b = archiveEntry;
        this.f76780c = inputStream;
        this.f76782e = 2;
        this.f76778a = null;
        this.f76781d = z;
    }
}
