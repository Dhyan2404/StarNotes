package com.onyx.android.sdk.scribble.utils;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J9\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0086 ¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/scribble/utils/Algorithm;", "", "()V", "distance", "", "x1", "y1", "x2", "y2", "x", "y", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class Algorithm {

    @NotNull
    public static final Algorithm INSTANCE = new Algorithm();

    static {
        try {
            System.loadLibrary("onyx_algorithm");
        } catch (Exception e) {
            e.printStackTrace();
        } catch (UnsatisfiedLinkError e2) {
            e2.printStackTrace();
        }
    }

    public final native float distance(float x1, float y1, float x2, float y2, float x, float y);
}
