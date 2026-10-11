package com.onyx.galaxy.note.utils;

import android.graphics.drawable.Drawable;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.UserRoleItem;
import com.onyx.android.sdk.data.account.bean.UserRoleItemKt;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010\u0003\u001a\u00020\u0002J\f\u0010\u0006\u001a\u0004\u0018\u00010\u0005*\u00020\u0004J\f\u0010\u0007\u001a\u0004\u0018\u00010\u0005*\u00020\u0004J\f\u0010\t\u001a\u0004\u0018\u00010\b*\u00020\u0004J\n\u0010\u000b\u001a\u00020\n*\u00020\u0004J\f\u0010\r\u001a\u00020\f*\u00020\u0004H\u0002¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/LoginUtils;", "", "", "isLoginRequired", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "Landroid/graphics/drawable/Drawable;", "getLoginTypeIconDrawable", "getLoginAccountRoleIconDrawable", "", "getLoginAccount", "Ljava/util/Date;", "getLocalLoginAt", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoginUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginUtils.kt\ncom/onyx/galaxy/note/utils/LoginUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n1940#2,14:110\n1747#2,3:124\n1747#2,3:127\n1747#2,3:130\n*S KotlinDebug\n*F\n+ 1 LoginUtils.kt\ncom/onyx/galaxy/note/utils/LoginUtils\n*L\n40#1:110,14\n95#1:124,3\n99#1:127,3\n103#1:130,3\n*E\n"})
/* loaded from: classes9.dex */
public final class LoginUtils {

    @NotNull
    public static final LoginUtils INSTANCE = new LoginUtils();

    /* renamed from: a */
    public final int m51978a(OnyxAccountModel onyxAccountModel) {
        boolean z;
        boolean z2;
        List<UserRoleItem> roles = onyxAccountModel.getRoles();
        boolean z3 = false;
        if (!(roles instanceof Collection) || !roles.isEmpty()) {
            Iterator<T> it2 = roles.iterator();
            while (it2.hasNext()) {
                if (Intrinsics.areEqual(((UserRoleItem) it2.next()).getRole(), UserRoleItemKt.VIP_STAR)) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (z) {
            return 3;
        }
        List<UserRoleItem> roles2 = onyxAccountModel.getRoles();
        if (!(roles2 instanceof Collection) || !roles2.isEmpty()) {
            Iterator<T> it3 = roles2.iterator();
            while (it3.hasNext()) {
                if (Intrinsics.areEqual(((UserRoleItem) it3.next()).getRole(), UserRoleItemKt.VIP_PERMANENT)) {
                    z2 = true;
                    break;
                }
            }
        }
        z2 = false;
        if (z2) {
            return 4;
        }
        List<UserRoleItem> roles3 = onyxAccountModel.getRoles();
        if (!(roles3 instanceof Collection) || !roles3.isEmpty()) {
            Iterator<T> it4 = roles3.iterator();
            while (true) {
                if (!it4.hasNext()) {
                    break;
                }
                if (Intrinsics.areEqual(((UserRoleItem) it4.next()).getRole(), UserRoleItemKt.VIP_ONYX)) {
                    z3 = true;
                    break;
                }
            }
        }
        return z3 ? 2 : 1;
    }

    @NotNull
    public final Date getLocalLoginAt(@NotNull OnyxAccountModel onyxAccountModel) {
        Intrinsics.checkNotNullParameter(onyxAccountModel, "<this>");
        Date localLoginAt = onyxAccountModel.getLocalLoginAt();
        if (localLoginAt != null) {
            return localLoginAt;
        }
        Date loginAt = onyxAccountModel.getLoginAt();
        return loginAt == null ? new Date(0L) : loginAt;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0023, code lost:
    
        if (r1 != null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005e, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0030, code lost:
    
        if (r1 != null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x004e, code lost:
    
        if (r1 != null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x005b, code lost:
    
        if (r1 != null) goto L32;
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getLoginAccount(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.data.account.model.OnyxAccountModel r2) {
        /*
            r1 = this;
            java.lang.String r1 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            int r1 = r2.getLoginType()
            java.lang.String r0 = ""
            switch(r1) {
                case 1: goto L65;
                case 2: goto L60;
                case 3: goto L51;
                case 4: goto L44;
                case 5: goto L44;
                case 6: goto L33;
                case 7: goto Le;
                case 8: goto L26;
                case 9: goto L19;
                default: goto Le;
            }
        Le:
            java.lang.String r0 = r2.getDisplayName()
            if (r0 != 0) goto L69
            java.lang.String r0 = r2.getNickname()
            goto L69
        L19:
            com.onyx.android.sdk.data.account.model.MicrosoftModel r1 = r2.getMicrosoft()
            if (r1 == 0) goto L69
            java.lang.String r1 = r1.getNickname()
            if (r1 != 0) goto L5e
            goto L69
        L26:
            com.onyx.android.sdk.data.account.model.GoogleModel r1 = r2.getGoogle()
            if (r1 == 0) goto L69
            java.lang.String r1 = r1.getName()
            if (r1 != 0) goto L5e
            goto L69
        L33:
            java.lang.String r0 = r2.getLoginAccount()
            if (r0 != 0) goto L69
            java.lang.String r0 = r2.getPhone()
            if (r0 != 0) goto L69
            java.lang.String r0 = r2.getEmail()
            goto L69
        L44:
            com.onyx.android.sdk.data.account.model.WechatModel r1 = r2.getWechat()
            if (r1 == 0) goto L69
            java.lang.String r1 = r1.getNickname()
            if (r1 != 0) goto L5e
            goto L69
        L51:
            com.onyx.android.sdk.data.account.model.HuaweiModel r1 = r2.getHuawei()
            if (r1 == 0) goto L69
            java.lang.String r1 = r1.getNickname()
            if (r1 != 0) goto L5e
            goto L69
        L5e:
            r0 = r1
            goto L69
        L60:
            java.lang.String r0 = r2.getEmail()
            goto L69
        L65:
            java.lang.String r0 = r2.getPhone()
        L69:
            if (r0 == 0) goto L74
            int r1 = r0.length()
            if (r1 != 0) goto L72
            goto L74
        L72:
            r1 = 0
            goto L75
        L74:
            r1 = 1
        L75:
            if (r1 == 0) goto L8e
            java.lang.String r1 = r2.getDisplayName()
            if (r1 != 0) goto L8d
            java.lang.String r1 = r2.getNickname()
            if (r1 != 0) goto L8d
            java.lang.String r1 = r2.getEmail()
            if (r1 != 0) goto L8d
            java.lang.String r1 = r2.getPhone()
        L8d:
            r0 = r1
        L8e:
            com.onyx.android.sdk.base.utils.SecurityUtils r1 = com.onyx.android.sdk.base.utils.SecurityUtils.INSTANCE
            java.lang.String r1 = r1.mask(r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.utils.LoginUtils.getLoginAccount(com.onyx.android.sdk.data.account.model.OnyxAccountModel):java.lang.String");
    }

    @Nullable
    public final Drawable getLoginAccountRoleIconDrawable(@NotNull OnyxAccountModel onyxAccountModel) {
        Intrinsics.checkNotNullParameter(onyxAccountModel, "<this>");
        int m51978a = m51978a(onyxAccountModel);
        if (m51978a == 3) {
            return ResManager.INSTANCE.getDrawable(C10651R.drawable.ic_star_role);
        }
        if (m51978a != 4) {
            return null;
        }
        return ResManager.INSTANCE.getDrawable(C10651R.drawable.ic_pro_role);
    }

    @Nullable
    public final Drawable getLoginTypeIconDrawable(@NotNull OnyxAccountModel onyxAccountModel) {
        Intrinsics.checkNotNullParameter(onyxAccountModel, "<this>");
        switch (onyxAccountModel.getLoginType()) {
            case 1:
                return ResManager.INSTANCE.getDrawable(C10651R.drawable.icon_login_phone_2);
            case 2:
                return ResManager.INSTANCE.getDrawable(C10651R.drawable.icon_login_email_2);
            case 3:
                return ResManager.INSTANCE.getDrawable(C10651R.drawable.icon_login_huawei_2);
            case 4:
            case 5:
                return ResManager.INSTANCE.getDrawable(C10651R.drawable.icon_login_wechat_2);
            case 6:
                return ResManager.INSTANCE.getDrawable(C10651R.drawable.icon_login_account_2);
            case 7:
            default:
                return null;
            case 8:
                return ResManager.INSTANCE.getDrawable(C10651R.drawable.icon_login_google_2);
            case 9:
                return ResManager.INSTANCE.getDrawable(C10651R.drawable.icon_login_microsoft_2);
        }
    }

    public final boolean isLoginRequired() {
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        OnyxAccountModel onyxAccount = accountDataBundle.getOnyxAccount();
        if (onyxAccount != null && onyxAccount.getHasLoggedIn()) {
            return false;
        }
        List ensureList = CollectionKt.ensureList(accountDataBundle.getLocalAccountList().getValue());
        if (ensureList.size() <= 1) {
            return false;
        }
        Iterator it2 = ensureList.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it2.next();
        if (it2.hasNext()) {
            Date localLoginAt = INSTANCE.getLocalLoginAt((OnyxAccountModel) next);
            do {
                Object next2 = it2.next();
                Date localLoginAt2 = INSTANCE.getLocalLoginAt((OnyxAccountModel) next2);
                if (localLoginAt.compareTo(localLoginAt2) < 0) {
                    next = next2;
                    localLoginAt = localLoginAt2;
                }
            } while (it2.hasNext());
        }
        return !((OnyxAccountModel) next).getHasLoggedIn();
    }
}
