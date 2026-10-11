package com.onyx.android.sdk.data.account.bean;

import com.blankj.utilcode.constant.PermissionConstants;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\u00102\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0013J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0011H\u0002J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/LoginType;", "", "()V", "ACCOUNT", "", "CHILD", "EMAIL", "GOOGLE", "HUAWEI", "MASTER", "MICROSOFT", "ONYX_QRCODE", PermissionConstants.PHONE, "WECHAT_APP", "WECHAT_QR", "getLoginMapByNames", "", "", "loginTypeList", "", "getLoginTypeByName", "loginTypeName", "isLoginByThirdParty", "", "loginType", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nLoginType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginType.kt\ncom/onyx/android/sdk/data/account/bean/LoginType\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,60:1\n1855#2,2:61\n*S KotlinDebug\n*F\n+ 1 LoginType.kt\ncom/onyx/android/sdk/data/account/bean/LoginType\n*L\n40#1:61,2\n*E\n"})
/* loaded from: classes7.dex */
public final class LoginType {
    public static final int ACCOUNT = 6;
    public static final int CHILD = 20;
    public static final int EMAIL = 2;
    public static final int GOOGLE = 8;
    public static final int HUAWEI = 3;

    @NotNull
    public static final LoginType INSTANCE = new LoginType();
    public static final int MASTER = 21;
    public static final int MICROSOFT = 9;
    public static final int ONYX_QRCODE = 7;
    public static final int PHONE = 1;
    public static final int WECHAT_APP = 4;
    public static final int WECHAT_QR = 5;

    private LoginType() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0004. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0063 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int getLoginTypeByName(java.lang.String r1) {
        /*
            r0 = this;
            int r0 = r1.hashCode()
            switch(r0) {
                case -1240244679: goto L57;
                case -1206476313: goto L4c;
                case -1177318867: goto L41;
                case -347719052: goto L36;
                case -94228242: goto L2a;
                case 96619420: goto L1f;
                case 106642798: goto L14;
                case 330554651: goto L9;
                default: goto L7;
            }
        L7:
            goto L63
        L9:
            java.lang.String r0 = "wechatApp"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L12
            goto L63
        L12:
            r0 = 4
            goto L64
        L14:
            java.lang.String r0 = "phone"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L1d
            goto L63
        L1d:
            r0 = 1
            goto L64
        L1f:
            java.lang.String r0 = "email"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L28
            goto L63
        L28:
            r0 = 2
            goto L64
        L2a:
            java.lang.String r0 = "microsoft"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L33
            goto L63
        L33:
            r0 = 9
            goto L64
        L36:
            java.lang.String r0 = "wechatQrCode"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L3f
            goto L63
        L3f:
            r0 = 5
            goto L64
        L41:
            java.lang.String r0 = "account"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L4a
            goto L63
        L4a:
            r0 = 6
            goto L64
        L4c:
            java.lang.String r0 = "huawei"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L55
            goto L63
        L55:
            r0 = 3
            goto L64
        L57:
            java.lang.String r0 = "google"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L60
            goto L63
        L60:
            r0 = 8
            goto L64
        L63:
            r0 = -1
        L64:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.data.account.bean.LoginType.getLoginTypeByName(java.lang.String):int");
    }

    @NotNull
    public final Map<Integer, String> getLoginMapByNames(@NotNull List<String> loginTypeList) {
        Intrinsics.checkNotNullParameter(loginTypeList, "loginTypeList");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : loginTypeList) {
            linkedHashMap.put(Integer.valueOf(INSTANCE.getLoginTypeByName(str)), str);
        }
        return linkedHashMap;
    }

    public final boolean isLoginByThirdParty(int loginType) {
        return loginType == 3 || loginType == 4 || loginType == 5 || loginType == 8 || loginType == 9;
    }
}
