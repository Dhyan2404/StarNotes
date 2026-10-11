package com.onyx.galaxy.note.settings.action;

import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.fragment.app.FragmentActivity;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.p039ui.PermissionDialog;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.settings.action.RequestStoragePermissionAction;
import com.permissionx.guolindev.PermissionX;
import com.permissionx.guolindev.callback.ExplainReasonCallback;
import com.permissionx.guolindev.callback.RequestCallback;
import com.permissionx.guolindev.request.ExplainScope;
import com.permissionx.guolindev.request.RequestManageExternalStoragePermission;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u000f¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\b\u001a\u00020\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\b\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/action/RequestStoragePermissionAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", "requestList", "p", "", "q", "Landroidx/fragment/app/FragmentActivity;", "e", "Landroidx/fragment/app/FragmentActivity;", ActivityChooserModel.f1429r, "", C6997f.f39671c, "I", "titleRes", Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/FragmentActivity;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class RequestStoragePermissionAction extends RxBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final FragmentActivity activity;

    /* renamed from: f, reason: from kotlin metadata */
    public final int titleRes;

    public RequestStoragePermissionAction(@NotNull FragmentActivity activity, int i) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activity = activity;
        this.titleRes = i;
    }

    /* renamed from: n */
    public static final void m50682n(RequestStoragePermissionAction this$0, ExplainScope scope, List deniedList) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(deniedList, "deniedList");
        String string = this$0.activity.getString(this$0.titleRes);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = this$0.activity.getString(C10651R.string.permission_allow);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = this$0.activity.getString(C10651R.string.permission_deny);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        scope.showRequestReasonDialog(deniedList, string, string2, string3);
    }

    /* renamed from: o */
    public static final void m50683o(RequestStoragePermissionAction this$0, PublishSubject publishSubject, boolean z, List grantedList, List deniedList) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(publishSubject, "$publishSubject");
        Intrinsics.checkNotNullParameter(grantedList, "grantedList");
        Intrinsics.checkNotNullParameter(deniedList, "deniedList");
        if (!z) {
            this$0.m50685q();
        }
        RxjavaKt.done(publishSubject, Boolean.valueOf(z));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        ArrayList arrayList = new ArrayList();
        if (BuildKt.isApiLevelAbove(30)) {
            arrayList.add(RequestManageExternalStoragePermission.MANAGE_EXTERNAL_STORAGE);
        } else {
            arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
            arrayList.add("android.permission.READ_EXTERNAL_STORAGE");
        }
        if (!m50684p(arrayList)) {
            PermissionX.init(this.activity).permissions(arrayList).onExplainRequestReason(new ExplainReasonCallback() { // from class: com.sunia.HTREnginev2.kll
                @Override // com.permissionx.guolindev.callback.ExplainReasonCallback
                public final void onExplainReason(ExplainScope explainScope, List list) {
                    RequestStoragePermissionAction.m50682n(RequestStoragePermissionAction.this, explainScope, list);
                }
            }).request(new RequestCallback() { // from class: com.sunia.HTREnginev2.lll
                @Override // com.permissionx.guolindev.callback.RequestCallback
                public final void onResult(boolean z, List list, List list2) {
                    RequestStoragePermissionAction.m50683o(RequestStoragePermissionAction.this, create, z, list, list2);
                }
            });
            return create;
        }
        Observable<Boolean> just = Observable.just(Boolean.TRUE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: p */
    public final boolean m50684p(List<String> requestList) {
        boolean isExternalStorageManager;
        for (String str : requestList) {
            if (Intrinsics.areEqual(str, RequestManageExternalStoragePermission.MANAGE_EXTERNAL_STORAGE) && BuildKt.isApiLevelAbove(30)) {
                isExternalStorageManager = Environment.isExternalStorageManager();
                return isExternalStorageManager;
            }
            if (!PermissionX.isGranted(this.activity, str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: q */
    public final void m50685q() {
        new PermissionDialog.Builder(this.activity).setConfirmTextRes(C8037R.string.go_to_setting).setMessageTextRes(C8037R.string.permission_deny_and_guide_desc).setCancelCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.settings.action.RequestStoragePermissionAction$requestPermissionSettings$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Debug.INSTANCE.m32037d("request denied!");
                ToastUtils.show$default(ToastUtils.INSTANCE, C7453R.string.permission_denied, false, 2, (Object) null);
            }
        }).setConfirmCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.settings.action.RequestStoragePermissionAction$requestPermissionSettings$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                FragmentActivity fragmentActivity;
                FragmentActivity fragmentActivity2;
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                StringBuilder sb = new StringBuilder();
                sb.append("package:");
                fragmentActivity = RequestStoragePermissionAction.this.activity;
                sb.append(fragmentActivity.getPackageName());
                intent.setData(Uri.parse(sb.toString()));
                fragmentActivity2 = RequestStoragePermissionAction.this.activity;
                fragmentActivity2.startActivityForResult(intent, 2008);
            }
        }).create();
    }
}
