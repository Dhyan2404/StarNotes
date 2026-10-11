package com.android.billingclient.api;

import com.android.billingclient.api.BillingResult;

/* renamed from: com.android.billingclient.api.i */
/* loaded from: classes3.dex */
public final class C1791i {

    /* renamed from: A */
    public static final BillingResult f13560A;

    /* renamed from: B */
    public static final BillingResult f13561B;

    /* renamed from: C */
    public static final BillingResult f13562C;

    /* renamed from: D */
    public static final BillingResult f13563D;

    /* renamed from: E */
    public static final BillingResult f13564E;

    /* renamed from: F */
    public static final BillingResult f13565F;

    /* renamed from: G */
    public static final BillingResult f13566G;

    /* renamed from: H */
    public static final /* synthetic */ int f13567H = 0;

    /* renamed from: a */
    public static final BillingResult f13568a;

    /* renamed from: b */
    public static final BillingResult f13569b;

    /* renamed from: c */
    public static final BillingResult f13570c;

    /* renamed from: d */
    public static final BillingResult f13571d;

    /* renamed from: e */
    public static final BillingResult f13572e;

    /* renamed from: f */
    public static final BillingResult f13573f;

    /* renamed from: g */
    public static final BillingResult f13574g;

    /* renamed from: h */
    public static final BillingResult f13575h;

    /* renamed from: i */
    public static final BillingResult f13576i;

    /* renamed from: j */
    public static final BillingResult f13577j;

    /* renamed from: k */
    public static final BillingResult f13578k;

    /* renamed from: l */
    public static final BillingResult f13579l;

    /* renamed from: m */
    public static final BillingResult f13580m;

    /* renamed from: n */
    public static final BillingResult f13581n;

    /* renamed from: o */
    public static final BillingResult f13582o;

    /* renamed from: p */
    public static final BillingResult f13583p;

    /* renamed from: q */
    public static final BillingResult f13584q;

    /* renamed from: r */
    public static final BillingResult f13585r;

    /* renamed from: s */
    public static final BillingResult f13586s;

    /* renamed from: t */
    public static final BillingResult f13587t;

    /* renamed from: u */
    public static final BillingResult f13588u;

    /* renamed from: v */
    public static final BillingResult f13589v;

    /* renamed from: w */
    public static final BillingResult f13590w;

    /* renamed from: x */
    public static final BillingResult f13591x;

    /* renamed from: y */
    public static final BillingResult f13592y;

    /* renamed from: z */
    public static final BillingResult f13593z;

    static {
        BillingResult.Builder newBuilder = BillingResult.newBuilder();
        newBuilder.setResponseCode(3);
        newBuilder.setDebugMessage("Google Play In-app Billing API version is less than 3");
        f13568a = newBuilder.build();
        BillingResult.Builder newBuilder2 = BillingResult.newBuilder();
        newBuilder2.setResponseCode(3);
        newBuilder2.setDebugMessage("Google Play In-app Billing API version is less than 9");
        f13569b = newBuilder2.build();
        BillingResult.Builder newBuilder3 = BillingResult.newBuilder();
        newBuilder3.setResponseCode(3);
        newBuilder3.setDebugMessage("Billing service unavailable on device.");
        f13570c = newBuilder3.build();
        BillingResult.Builder newBuilder4 = BillingResult.newBuilder();
        newBuilder4.setResponseCode(2);
        newBuilder4.setDebugMessage("Billing service unavailable on device.");
        f13571d = newBuilder4.build();
        BillingResult.Builder newBuilder5 = BillingResult.newBuilder();
        newBuilder5.setResponseCode(5);
        newBuilder5.setDebugMessage("Client is already in the process of connecting to billing service.");
        f13572e = newBuilder5.build();
        BillingResult.Builder newBuilder6 = BillingResult.newBuilder();
        newBuilder6.setResponseCode(5);
        newBuilder6.setDebugMessage("The list of SKUs can't be empty.");
        f13573f = newBuilder6.build();
        BillingResult.Builder newBuilder7 = BillingResult.newBuilder();
        newBuilder7.setResponseCode(5);
        newBuilder7.setDebugMessage("SKU type can't be empty.");
        f13574g = newBuilder7.build();
        BillingResult.Builder newBuilder8 = BillingResult.newBuilder();
        newBuilder8.setResponseCode(5);
        newBuilder8.setDebugMessage("Product type can't be empty.");
        f13575h = newBuilder8.build();
        BillingResult.Builder newBuilder9 = BillingResult.newBuilder();
        newBuilder9.setResponseCode(-2);
        newBuilder9.setDebugMessage("Client does not support extra params.");
        f13576i = newBuilder9.build();
        BillingResult.Builder newBuilder10 = BillingResult.newBuilder();
        newBuilder10.setResponseCode(5);
        newBuilder10.setDebugMessage("Invalid purchase token.");
        f13577j = newBuilder10.build();
        BillingResult.Builder newBuilder11 = BillingResult.newBuilder();
        newBuilder11.setResponseCode(6);
        newBuilder11.setDebugMessage("An internal error occurred.");
        f13578k = newBuilder11.build();
        BillingResult.Builder newBuilder12 = BillingResult.newBuilder();
        newBuilder12.setResponseCode(5);
        newBuilder12.setDebugMessage("SKU can't be null.");
        newBuilder12.build();
        BillingResult.Builder newBuilder13 = BillingResult.newBuilder();
        newBuilder13.setResponseCode(0);
        f13579l = newBuilder13.build();
        BillingResult.Builder newBuilder14 = BillingResult.newBuilder();
        newBuilder14.setResponseCode(-1);
        newBuilder14.setDebugMessage("Service connection is disconnected.");
        f13580m = newBuilder14.build();
        BillingResult.Builder newBuilder15 = BillingResult.newBuilder();
        newBuilder15.setResponseCode(2);
        newBuilder15.setDebugMessage("Timeout communicating with service.");
        f13581n = newBuilder15.build();
        BillingResult.Builder newBuilder16 = BillingResult.newBuilder();
        newBuilder16.setResponseCode(-2);
        newBuilder16.setDebugMessage("Client does not support subscriptions.");
        f13582o = newBuilder16.build();
        BillingResult.Builder newBuilder17 = BillingResult.newBuilder();
        newBuilder17.setResponseCode(-2);
        newBuilder17.setDebugMessage("Client does not support subscriptions update.");
        f13583p = newBuilder17.build();
        BillingResult.Builder newBuilder18 = BillingResult.newBuilder();
        newBuilder18.setResponseCode(-2);
        newBuilder18.setDebugMessage("Client does not support get purchase history.");
        f13584q = newBuilder18.build();
        BillingResult.Builder newBuilder19 = BillingResult.newBuilder();
        newBuilder19.setResponseCode(-2);
        newBuilder19.setDebugMessage("Client does not support price change confirmation.");
        f13585r = newBuilder19.build();
        BillingResult.Builder newBuilder20 = BillingResult.newBuilder();
        newBuilder20.setResponseCode(-2);
        newBuilder20.setDebugMessage("Play Store version installed does not support cross selling products.");
        f13586s = newBuilder20.build();
        BillingResult.Builder newBuilder21 = BillingResult.newBuilder();
        newBuilder21.setResponseCode(-2);
        newBuilder21.setDebugMessage("Client does not support multi-item purchases.");
        f13587t = newBuilder21.build();
        BillingResult.Builder newBuilder22 = BillingResult.newBuilder();
        newBuilder22.setResponseCode(-2);
        newBuilder22.setDebugMessage("Client does not support offer_id_token.");
        f13588u = newBuilder22.build();
        BillingResult.Builder newBuilder23 = BillingResult.newBuilder();
        newBuilder23.setResponseCode(-2);
        newBuilder23.setDebugMessage("Client does not support ProductDetails.");
        f13589v = newBuilder23.build();
        BillingResult.Builder newBuilder24 = BillingResult.newBuilder();
        newBuilder24.setResponseCode(-2);
        newBuilder24.setDebugMessage("Client does not support in-app messages.");
        f13590w = newBuilder24.build();
        BillingResult.Builder newBuilder25 = BillingResult.newBuilder();
        newBuilder25.setResponseCode(-2);
        newBuilder25.setDebugMessage("Client does not support user choice billing.");
        newBuilder25.build();
        BillingResult.Builder newBuilder26 = BillingResult.newBuilder();
        newBuilder26.setResponseCode(-2);
        newBuilder26.setDebugMessage("Play Store version installed does not support external offer.");
        f13591x = newBuilder26.build();
        BillingResult.Builder newBuilder27 = BillingResult.newBuilder();
        newBuilder27.setResponseCode(-2);
        newBuilder27.setDebugMessage("Play Store version installed does not support multi-item purchases with season pass in one cart.");
        f13592y = newBuilder27.build();
        BillingResult.Builder newBuilder28 = BillingResult.newBuilder();
        newBuilder28.setResponseCode(5);
        newBuilder28.setDebugMessage("Unknown feature");
        f13593z = newBuilder28.build();
        BillingResult.Builder newBuilder29 = BillingResult.newBuilder();
        newBuilder29.setResponseCode(-2);
        newBuilder29.setDebugMessage("Play Store version installed does not support get billing config.");
        f13560A = newBuilder29.build();
        BillingResult.Builder newBuilder30 = BillingResult.newBuilder();
        newBuilder30.setResponseCode(-2);
        newBuilder30.setDebugMessage("Query product details with serialized docid is not supported.");
        f13561B = newBuilder30.build();
        BillingResult.Builder newBuilder31 = BillingResult.newBuilder();
        newBuilder31.setResponseCode(4);
        newBuilder31.setDebugMessage("Item is unavailable for purchase.");
        f13562C = newBuilder31.build();
        BillingResult.Builder newBuilder32 = BillingResult.newBuilder();
        newBuilder32.setResponseCode(-2);
        newBuilder32.setDebugMessage("Query product details with developer specified account is not supported.");
        f13563D = newBuilder32.build();
        BillingResult.Builder newBuilder33 = BillingResult.newBuilder();
        newBuilder33.setResponseCode(-2);
        newBuilder33.setDebugMessage("Play Store version installed does not support alternative billing only.");
        f13564E = newBuilder33.build();
        BillingResult.Builder newBuilder34 = BillingResult.newBuilder();
        newBuilder34.setResponseCode(5);
        newBuilder34.setDebugMessage("To use this API you must specify a PurchasesUpdateListener when initializing a BillingClient.");
        f13565F = newBuilder34.build();
        BillingResult.Builder newBuilder35 = BillingResult.newBuilder();
        newBuilder35.setResponseCode(6);
        newBuilder35.setDebugMessage("An error occurred while retrieving billing override.");
        f13566G = newBuilder35.build();
    }

    /* renamed from: a */
    public static BillingResult m7928a(int i, String str) {
        BillingResult.Builder newBuilder = BillingResult.newBuilder();
        newBuilder.setResponseCode(i);
        newBuilder.setDebugMessage(str);
        return newBuilder.build();
    }
}
