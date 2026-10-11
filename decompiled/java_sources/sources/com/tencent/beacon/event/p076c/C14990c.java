package com.tencent.beacon.event.p076c;

import com.tencent.beacon.event.open.EventType;

/* renamed from: com.tencent.beacon.event.c.c */
/* loaded from: classes10.dex */
public /* synthetic */ class C14990c {

    /* renamed from: a */
    static final /* synthetic */ int[] f93050a;

    static {
        int[] iArr = new int[EventType.values().length];
        f93050a = iArr;
        try {
            iArr[EventType.NORMAL.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f93050a[EventType.DT_NORMAL.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f93050a[EventType.REALTIME.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f93050a[EventType.DT_REALTIME.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f93050a[EventType.IMMEDIATE_MSF.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f93050a[EventType.IMMEDIATE.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
