package com.tencent.beacon.event.open;

/* renamed from: com.tencent.beacon.event.open.a */
/* loaded from: classes10.dex */
public /* synthetic */ class C15002a {

    /* renamed from: a */
    static final /* synthetic */ int[] f93214a;

    static {
        int[] iArr = new int[EventType.values().length];
        f93214a = iArr;
        try {
            iArr[EventType.NORMAL.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f93214a[EventType.DT_NORMAL.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f93214a[EventType.IMMEDIATE_MSF.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f93214a[EventType.IMMEDIATE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f93214a[EventType.REALTIME.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f93214a[EventType.DT_REALTIME.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
