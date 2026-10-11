package org.apache.commons.compress.utils;

/* loaded from: classes12.dex */
public class ExactMath {
    public static int add(int i, long j) {
        return Math.addExact(i, Math.toIntExact(j));
    }
}
