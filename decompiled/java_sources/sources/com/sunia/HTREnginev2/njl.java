package com.sunia.HTREnginev2;

import java.util.Objects;
import java.util.regex.Pattern;
import onyx.org.apache.commons.io.serialization.ClassNameMatcher;

/* loaded from: classes11.dex */
public final class njl implements ClassNameMatcher {

    /* renamed from: a */
    public final Pattern f78715a;

    public njl(Pattern pattern) {
        Objects.requireNonNull(pattern, "pattern");
        this.f78715a = pattern;
    }

    @Override // onyx.org.apache.commons.io.serialization.ClassNameMatcher
    public boolean matches(String str) {
        return this.f78715a.matcher(str).matches();
    }

    public njl(String str) {
        this(Pattern.compile(str));
    }
}
