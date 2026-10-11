package com.sunia.HTREnginev2;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import onyx.org.apache.commons.io.serialization.ClassNameMatcher;

/* loaded from: classes11.dex */
public final class mwg implements ClassNameMatcher {

    /* renamed from: a */
    public final Set<String> f78069a;

    public mwg(String... strArr) {
        this.f78069a = Collections.unmodifiableSet(new HashSet(Arrays.asList(strArr)));
    }

    @Override // onyx.org.apache.commons.io.serialization.ClassNameMatcher
    public boolean matches(String str) {
        return this.f78069a.contains(str);
    }
}
