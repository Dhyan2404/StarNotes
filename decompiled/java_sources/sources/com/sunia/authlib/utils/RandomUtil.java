package com.sunia.authlib.utils;

import java.util.Random;

/* loaded from: classes10.dex */
public class RandomUtil {
    public static int getRandomNum(int i, int i2) {
        return new Random().nextInt(i2 - i) + i;
    }

    public static void main(String[] strArr) {
        System.out.println(getRandomNum(1, 10000));
    }
}
