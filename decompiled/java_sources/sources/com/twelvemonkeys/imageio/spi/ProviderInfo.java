package com.twelvemonkeys.imageio.spi;

import com.twelvemonkeys.lang.Validate;

/* loaded from: classes10.dex */
public class ProviderInfo {

    /* renamed from: a */
    public final String f94180a;

    /* renamed from: b */
    public final String f94181b;

    /* renamed from: c */
    public final String f94182c;

    public ProviderInfo(Package r2) {
        Validate.notNull(r2, "package");
        String implementationTitle = r2.getImplementationTitle();
        this.f94180a = implementationTitle == null ? r2.getName() : implementationTitle;
        String implementationVendor = r2.getImplementationVendor();
        this.f94181b = implementationVendor == null ? m60661a(r2) : implementationVendor;
        String implementationVersion = r2.getImplementationVersion();
        this.f94182c = implementationVersion == null ? m60662b(r2) : implementationVersion;
    }

    /* renamed from: a */
    public static String m60661a(Package r1) {
        String name = r1.getName();
        return name.startsWith("com.twelvemonkeys") ? "TwelveMonkeys" : name;
    }

    /* renamed from: b */
    public final String m60662b(Package r1) {
        return r1.getName().startsWith("com.twelvemonkeys") ? "DEV" : "Unspecified";
    }

    /* renamed from: c */
    public final String m60663c() {
        return this.f94180a;
    }

    public final String getVendorName() {
        return this.f94181b;
    }

    public final String getVersion() {
        return this.f94182c;
    }

    public String toString() {
        return this.f94180a + ", " + this.f94182c + " by " + this.f94181b;
    }
}
