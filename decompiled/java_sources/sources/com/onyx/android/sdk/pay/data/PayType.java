package com.onyx.android.sdk.pay.data;

import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u0005R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/data/PayType;", "", "type", "", "isIapPayment", "", "(Ljava/lang/String;ILjava/lang/String;Z)V", Constants.BOOLEAN_VALUE_SIG, "getType", "()Ljava/lang/String;", "getPaymentMethod", "isQrcode", "ALI_PAY", "WX_PAY", "HUAWEI_PAY", "GOOGLE", "Companion", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PayType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PayType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    private final boolean isIapPayment;

    @NotNull
    private final String type;
    public static final PayType ALI_PAY = new PayType("ALI_PAY", 0, com.onyx.android.sdk.pay.constants.Constants.PAY_TYPE_ALIPAY, false, 2, null);
    public static final PayType WX_PAY = new PayType("WX_PAY", 1, com.onyx.android.sdk.pay.constants.Constants.PAY_TYPE_WECHAT, false, 2, null);
    public static final PayType HUAWEI_PAY = new PayType("HUAWEI_PAY", 2, com.onyx.android.sdk.pay.constants.Constants.PAY_HUAWEI_IAP, true);
    public static final PayType GOOGLE = new PayType("GOOGLE", 3, com.onyx.android.sdk.pay.constants.Constants.PAY_GOOGLE, true);

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u0010\u0010\b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\u0007¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/data/PayType$Companion;", "", "()V", "findIapPayTypeByTypes", "Lcom/onyx/android/sdk/pay/data/PayType;", "list", "", "", "getPayTypeByTypeName", "typeName", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nPayType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayType.kt\ncom/onyx/android/sdk/pay/data/PayType$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1549#2:57\n1620#2,3:58\n1#3:61\n*S KotlinDebug\n*F\n+ 1 PayType.kt\ncom/onyx/android/sdk/pay/data/PayType$Companion\n*L\n50#1:57\n50#1:58,3\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final PayType findIapPayTypeByTypes(@NotNull List<String> list) {
            int collectionSizeOrDefault;
            Object obj;
            Intrinsics.checkNotNullParameter(list, "list");
            List<String> list2 = list;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(PayType.INSTANCE.getPayTypeByTypeName((String) it2.next()));
            }
            Iterator it3 = arrayList.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it3.next();
                PayType payType = (PayType) obj;
                boolean z = false;
                if (payType != null && payType.getIsIapPayment()) {
                    z = true;
                }
                if (z) {
                    break;
                }
            }
            return (PayType) obj;
        }

        @Nullable
        public final PayType getPayTypeByTypeName(@NotNull String typeName) {
            Intrinsics.checkNotNullParameter(typeName, "typeName");
            for (PayType payType : PayType.values()) {
                if (Intrinsics.areEqual(payType.getType(), typeName)) {
                    return payType;
                }
            }
            return null;
        }

        public Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PayType.values().length];
            try {
                iArr[PayType.ALI_PAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PayType.WX_PAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PayType.HUAWEI_PAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PayType.GOOGLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ PayType[] $values() {
        return new PayType[]{ALI_PAY, WX_PAY, HUAWEI_PAY, GOOGLE};
    }

    static {
        PayType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private PayType(String str, int i, String str2, boolean z) {
        this.type = str2;
        this.isIapPayment = z;
    }

    @NotNull
    public static EnumEntries<PayType> getEntries() {
        return $ENTRIES;
    }

    public static /* synthetic */ String getPaymentMethod$default(PayType payType, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPaymentMethod");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        return payType.getPaymentMethod(z);
    }

    public static PayType valueOf(String str) {
        return (PayType) Enum.valueOf(PayType.class, str);
    }

    public static PayType[] values() {
        return (PayType[]) $VALUES.clone();
    }

    @NotNull
    public final String getPaymentMethod(boolean isQrcode) {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return isQrcode ? "alipay_qrcode_pay" : "alipay_app_pay";
        }
        if (i == 2) {
            return isQrcode ? "wechat_qrcode_pay" : "wechat_app_pay";
        }
        if (i == 3) {
            return LoginAuthConst.HUAWEI_AUTH;
        }
        if (i == 4) {
            return LoginAuthConst.GOOGLE_AUTH;
        }
        throw new NoWhenBranchMatchedException();
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    /* renamed from: isIapPayment, reason: from getter */
    public final boolean getIsIapPayment() {
        return this.isIapPayment;
    }

    public /* synthetic */ PayType(String str, int i, String str2, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, str2, (i2 & 2) != 0 ? false : z);
    }
}
