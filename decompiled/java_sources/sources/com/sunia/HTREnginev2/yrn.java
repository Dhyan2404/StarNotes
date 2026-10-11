package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.UncheckedIOException;
import java.util.Objects;

/* loaded from: classes11.dex */
public final class yrn {
    /* renamed from: a */
    public static UncheckedIOException m58479a(Object obj) {
        String objects = Objects.toString(obj);
        return new UncheckedIOException(objects, new IOException(objects));
    }

    /* renamed from: b */
    public static UncheckedIOException m58480b(IOException iOException, Object obj) {
        return new UncheckedIOException(Objects.toString(obj), iOException);
    }
}
