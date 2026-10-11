package com.onyx.galaxy.note.account.interfaces;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import androidx.activity.result.ActivityResult;
import androidx.fragment.app.Fragment;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.account.bean.AuthResultArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.Pair;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H&J*\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H&J \u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00192\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H&¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;", "", "createAccountAuthServiceIntent", "Landroid/content/Intent;", "activityContext", "Landroid/app/Activity;", "createAuthResultAction", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;", "context", "Landroid/content/Context;", "data", "createRequestAuth", "", "fragment", "Landroidx/fragment/app/Fragment;", "dialog", "Landroid/app/Dialog;", "requestCode", "", "getAccountAuthAuthorization", "", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Landroidx/activity/result/ActivityResult;", "parseAuthResultFromIntent", "Lkotlin/Pair;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public interface IAccountAuth {
    @Nullable
    Intent createAccountAuthServiceIntent(@NotNull Activity activityContext);

    @Nullable
    RxBaseAction<AuthResultArgs> createAuthResultAction(@NotNull Context context, @Nullable Intent data);

    @Nullable
    RxBaseAction<Boolean> createRequestAuth(@NotNull Fragment fragment, @Nullable Dialog dialog, int requestCode);

    @Nullable
    String getAccountAuthAuthorization(@NotNull ActivityResult result);

    @Nullable
    Pair<String, String> parseAuthResultFromIntent(@Nullable Intent data);
}
