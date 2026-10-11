package com.sunia.HTREnginev2;

/* loaded from: classes10.dex */
public final class k6j {

    /* renamed from: a */
    public static final boolean f75139a = m55192a();

    /* renamed from: a */
    public static boolean m55192a() {
        try {
            return "TRUE".equalsIgnoreCase(System.getProperty("com.twelvemonkeys.image.magick.debug"));
        } catch (Throwable unused) {
            return false;
        }
    }
}
