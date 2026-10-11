package com.onyx.galaxy.note.usercenter.p049ui;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import androidx.navigation.NavController;
import androidx.navigation.fragment.NavHostFragment;
import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountCenterViewModel;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import dagger.hilt.android.AndroidEntryPoint;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity;", "Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "recreate", "I", "", AccountVerifyPurpose.KEY_PURPOSE, "", "G", "J", "Landroidx/navigation/NavController;", "A0", "Landroidx/navigation/NavController;", "navController", "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "B0", "Lkotlin/Lazy;", "H", "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;", "accountViewModel", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SuppressLint({"RestrictedApi"})
@AndroidEntryPoint
@SourceDebugExtension({"SMAP\nUserCenterActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserCenterActivity.kt\ncom/onyx/galaxy/note/usercenter/ui/UserCenterActivity\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,93:1\n32#2,5:94\n*S KotlinDebug\n*F\n+ 1 UserCenterActivity.kt\ncom/onyx/galaxy/note/usercenter/ui/UserCenterActivity\n*L\n60#1:94,5\n*E\n"})
/* loaded from: classes17.dex */
public final class UserCenterActivity extends Hilt_UserCenterActivity {

    /* renamed from: A0, reason: from kotlin metadata */
    public NavController navController;

    /* renamed from: B0, reason: from kotlin metadata */
    @NotNull
    public final Lazy accountViewModel;

    public UserCenterActivity() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AccountCenterViewModel>() { // from class: com.onyx.galaxy.note.usercenter.ui.UserCenterActivity$accountViewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AccountCenterViewModel invoke() {
                return (AccountCenterViewModel) new ViewModelProvider(UserCenterActivity.this).get(AccountCenterViewModel.class);
            }
        });
        this.accountViewModel = lazy;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
    
        if (r1.equals(com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose.PURPOSE_BIND_EMAIL_AFTER_LOGIN) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (r1.equals(com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose.PURPOSE_BIND_EMAIL_BEFORE_VERIFY) == false) goto L24;
     */
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m51811G(java.lang.String r1) {
        /*
            r0 = this;
            int r0 = r1.hashCode()
            switch(r0) {
                case -2125020557: goto L35;
                case -1541145695: goto L29;
                case -88751168: goto L1d;
                case 536871821: goto L11;
                case 1135703764: goto L8;
                default: goto L7;
            }
        L7:
            goto L41
        L8:
            java.lang.String r0 = "bind_email_before_verify"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L32
            goto L41
        L11:
            java.lang.String r0 = "message_center"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L1a
            goto L41
        L1a:
            int r0 = com.onyx.galaxy.note.C10651R.navigation.nav_graph_message_center
            goto L43
        L1d:
            java.lang.String r0 = "password_recover"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L26
            goto L41
        L26:
            int r0 = com.onyx.galaxy.note.C10651R.navigation.nav_graph_recover_password
            goto L43
        L29:
            java.lang.String r0 = "bind_email_after_login"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L32
            goto L41
        L32:
            int r0 = com.onyx.galaxy.note.C10651R.navigation.nav_graph_bind_email
            goto L43
        L35:
            java.lang.String r0 = "bind_phone_after_login"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L3e
            goto L41
        L3e:
            int r0 = com.onyx.galaxy.note.C10651R.navigation.nav_graph_bind_phone
            goto L43
        L41:
            int r0 = com.onyx.galaxy.note.C10651R.navigation.nav_graph_user_center
        L43:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.usercenter.p049ui.UserCenterActivity.m51811G(java.lang.String):int");
    }

    /* renamed from: H */
    public final AccountCenterViewModel m51812H() {
        return (AccountCenterViewModel) this.accountViewModel.getValue();
    }

    /* renamed from: I */
    public final void m51813I() {
        String str;
        OnyxAccountModel onyxAccount = AccountDataBundle.INSTANCE.getOnyxAccount();
        if (onyxAccount == null) {
            finish();
            return;
        }
        m51812H().getAccount().setValue(onyxAccount);
        Bundle extras = getIntent().getExtras();
        if (extras == null || (str = extras.getString(AccountVerifyPurpose.KEY_PURPOSE)) == null) {
            str = "none";
        }
        Bundle bundle = new Bundle();
        bundle.putString(AccountVerifyPurpose.KEY_PURPOSE, str);
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(C10651R.id.nav_host);
        Intrinsics.checkNotNull(findFragmentById, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment");
        NavController navController = ((NavHostFragment) findFragmentById).getNavController();
        this.navController = navController;
        if (navController == null) {
            Intrinsics.throwUninitializedPropertyAccessException("navController");
            navController = null;
        }
        navController.setGraph(m51811G(str), bundle);
    }

    /* renamed from: J */
    public final void m51814J() {
        m51812H().setTriggerFlag(getIntent().getIntExtra(OnyxStatisticConstant.KEY_TRIGGER_FROM, 1000));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(m51812H().getTriggerFlag()));
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        linkedHashMap.put("user_tag", Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(accountDataBundle.isNewUser()))));
        linkedHashMap.put("user_id", Integer.valueOf(accountDataBundle.getTopRoleFlag()));
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(OnyxStatisticConstant.ID_USER_CENTER_VIEW, linkedHashMap));
    }

    @Override // com.onyx.galaxy.note.usercenter.p049ui.Hilt_UserCenterActivity, com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063243, this, savedInstanceState);
    }

    @Override // android.app.Activity
    public void recreate() {
        int i = getResources().getConfiguration().uiMode & 48;
        if (i == 16) {
            AppCompatDelegate.setDefaultNightMode(2);
        } else {
            if (i != 32) {
                return;
            }
            AppCompatDelegate.setDefaultNightMode(1);
        }
    }
}
