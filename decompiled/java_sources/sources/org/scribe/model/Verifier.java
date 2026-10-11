package org.scribe.model;

import org.scribe.utils.Preconditions;

/* loaded from: classes16.dex */
public class Verifier {

    /* renamed from: a */
    public final String f115977a;

    public Verifier(String str) {
        Preconditions.checkNotNull(str, "Must provide a valid string as verifier");
        this.f115977a = str;
    }

    public String getValue() {
        return this.f115977a;
    }
}
