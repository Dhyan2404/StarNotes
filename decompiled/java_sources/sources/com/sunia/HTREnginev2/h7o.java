package com.sunia.HTREnginev2;

import onyx.org.apache.commons.io.FilenameUtils;
import onyx.org.apache.commons.io.serialization.ClassNameMatcher;

/* loaded from: classes11.dex */
public final class h7o implements ClassNameMatcher {

    /* renamed from: a */
    public final String f71927a;

    public h7o(String str) {
        this.f71927a = str;
    }

    @Override // onyx.org.apache.commons.io.serialization.ClassNameMatcher
    public boolean matches(String str) {
        return FilenameUtils.wildcardMatch(str, this.f71927a);
    }
}
