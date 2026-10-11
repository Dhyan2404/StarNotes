package com.onyx.galaxy.note.settings.action;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.AppUtils;
import com.blankj.utilcode.util.PermissionUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.PermissionCompatUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.p039ui.PermissionDialog;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.settings.action.RequestPermissionsAction;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.permissionx.guolindev.PermissionMediator;
import com.permissionx.guolindev.PermissionX;
import com.permissionx.guolindev.callback.ExplainReasonCallback;
import com.permissionx.guolindev.callback.RequestCallback;
import com.permissionx.guolindev.request.ExplainScope;
import com.permissionx.guolindev.request.RequestManageExternalStoragePermission;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B-\u0012\u0006\u0010!\u001a\u00020\u001c\u0012\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\n0\u000f\u0012\u0006\u0010'\u001a\u00020\n\u0012\u0006\u0010)\u001a\u00020\n¢\u0006\u0004\b/\u00100J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0016\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006H\u0002J\u001e\u0010\f\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002J&\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\u000fH\u0002J\u0016\u0010\u0012\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006H\u0002J\u0016\u0010\u0013\u001a\u00020\b2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\u000fH\u0002J\b\u0010\u0014\u001a\u00020\nH\u0002J\b\u0010\u0015\u001a\u00020\u0002H\u0002J\u0010\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\nH\u0002J\b\u0010\u0018\u001a\u00020\bH\u0002J\b\u0010\u0019\u001a\u00020\bH\u0002J\u0010\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\nH\u0002J\u0016\u0010\u001b\u001a\u00020\n2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\u000fH\u0002R\u0017\u0010!\u001a\u00020\u001c8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00020\n0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010'\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010)\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010&R \u0010.\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020+0*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-¨\u00061"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "z", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "publishSubject", "", "A", "", "requestDesc", "t", "Lcom/permissionx/guolindev/request/ExplainScope;", "scope", "", "deniedList", "w", "x", "y", GoogleApiAvailabilityLight.f29016b, "r", "permission", C4921e.f26528e, "q", "B", "s", "p", "Landroidx/fragment/app/FragmentActivity;", "e", "Landroidx/fragment/app/FragmentActivity;", "getActivity", "()Landroidx/fragment/app/FragmentActivity;", ActivityChooserModel.f1429r, C6997f.f39671c, "Ljava/util/List;", "permissionList", C6998g.f39679a, Constants.STRING_SIG, "functionName", C6999h.f39688c, "intentName", "", "", "i", "Ljava/util/Map;", "deniedPermissionMap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class RequestPermissionsAction extends RxBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final FragmentActivity activity;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<String> permissionList;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String functionName;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String intentName;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Integer> deniedPermissionMap;

    public RequestPermissionsAction(@NotNull FragmentActivity activity, @NotNull List<String> permissionList, @NotNull String functionName, @NotNull String intentName) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(permissionList, "permissionList");
        Intrinsics.checkNotNullParameter(functionName, "functionName");
        Intrinsics.checkNotNullParameter(intentName, "intentName");
        this.activity = activity;
        this.permissionList = permissionList;
        this.functionName = functionName;
        this.intentName = intentName;
        this.deniedPermissionMap = new LinkedHashMap();
    }

    /* renamed from: u */
    public static final void m50665u(RequestPermissionsAction this$0, String requestDesc, ExplainScope scope, List deniedList) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(requestDesc, "$requestDesc");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(deniedList, "deniedList");
        if (PermissionCompatUtils.INSTANCE.hasMediaOfUserSelectedPermission(this$0.deniedPermissionMap.keySet())) {
            return;
        }
        this$0.m50676w(requestDesc, scope, deniedList);
    }

    /* renamed from: v */
    public static final void m50666v(RequestPermissionsAction this$0, PublishSubject publishSubject, boolean z, List grantedList, List deniedList) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(publishSubject, "$publishSubject");
        Intrinsics.checkNotNullParameter(grantedList, "grantedList");
        Intrinsics.checkNotNullParameter(deniedList, "deniedList");
        if (PermissionCompatUtils.INSTANCE.hasMediaOfUserSelectedPermission(this$0.deniedPermissionMap.keySet())) {
            RxjavaKt.done(publishSubject, Boolean.TRUE);
            return;
        }
        if (!z) {
            this$0.m50678y(deniedList);
        }
        RxjavaKt.done(publishSubject, Boolean.valueOf(z));
    }

    /* renamed from: A */
    public final void m50667A(final PublishSubject<Boolean> publishSubject) {
        final String m50669n = m50669n();
        new PermissionDialog.Builder(this.activity).setConfirmTextRes(C8037R.string.go_to_authorization).setMessageText(m50669n).setCancelCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.settings.action.RequestPermissionsAction$showPermissionDescriptionDialog$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                Debug.INSTANCE.m32037d("request denied!");
                RxjavaKt.done(publishSubject, Boolean.FALSE);
                ToastUtils.show$default(ToastUtils.INSTANCE, C7453R.string.permission_denied, false, 2, (Object) null);
            }
        }).setConfirmCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.settings.action.RequestPermissionsAction$showPermissionDescriptionDialog$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                RequestPermissionsAction.this.m50675t(publishSubject, m50669n);
            }
        }).create();
    }

    /* renamed from: B */
    public final void m50668B() {
        boolean isExternalStorageManager;
        if (!BuildKt.isApiLevelAbove(30)) {
            if (PermissionX.isGranted(this.activity, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                return;
            }
            this.deniedPermissionMap.put("android.permission.WRITE_EXTERNAL_STORAGE", Integer.valueOf(C10651R.string.permission_name_storage));
        } else {
            isExternalStorageManager = Environment.isExternalStorageManager();
            if (isExternalStorageManager) {
                return;
            }
            Environment.isExternalStorageManager();
            this.deniedPermissionMap.put(RequestManageExternalStoragePermission.MANAGE_EXTERNAL_STORAGE, Integer.valueOf(C10651R.string.permission_name_file_manager));
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        return m50679z();
    }

    @NotNull
    public final FragmentActivity getActivity() {
        return this.activity;
    }

    /* renamed from: n */
    public final String m50669n() {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        for (String str : this.deniedPermissionMap.keySet()) {
            int i2 = i + 1;
            ResManager resManager = ResManager.INSTANCE;
            Integer num = this.deniedPermissionMap.get(str);
            String stringSafely = resManager.getStringSafely(num != null ? num.intValue() : -1);
            if (stringSafely.length() > 0) {
                stringBuffer.append('\"' + stringSafely + '\"');
                if (i != this.deniedPermissionMap.size() - 1) {
                    stringBuffer.append(", ");
                }
            }
            i = i2;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(ResManager.INSTANCE.getStringSafely(C10651R.string.permission_request_common_description), Arrays.copyOf(new Object[]{this.functionName, stringBuffer.toString(), this.intentName}, 3));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    /* renamed from: o */
    public final void m50670o(String permission) {
        if (PermissionUtils.isGrantedDrawOverlays()) {
            return;
        }
        this.deniedPermissionMap.put(PermissionRequestConst.PERMISSION_FLOATING_WINDOW, Integer.valueOf(C10651R.string.permission_floating_window));
    }

    /* renamed from: p */
    public final String m50671p(List<String> deniedList) {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        for (String str : deniedList) {
            int i2 = i + 1;
            ResManager resManager = ResManager.INSTANCE;
            Integer num = this.deniedPermissionMap.get(str);
            String stringSafely = resManager.getStringSafely(num != null ? num.intValue() : -1);
            if (stringSafely.length() > 0) {
                stringBuffer.append('\"' + stringSafely + '\"');
                if (i != deniedList.size() - 1) {
                    stringBuffer.append(",");
                }
            }
            i = i2;
        }
        String stringBuffer2 = stringBuffer.toString();
        Intrinsics.checkNotNullExpressionValue(stringBuffer2, "toString(...)");
        return stringBuffer2;
    }

    /* renamed from: q */
    public final void m50672q() {
        List list;
        int i = Build.VERSION.SDK_INT;
        String[] strArr = i >= 34 ? new String[]{"android.permission.READ_MEDIA_VISUAL_USER_SELECTED", "android.permission.READ_MEDIA_IMAGES"} : i >= 33 ? new String[]{"android.permission.READ_MEDIA_IMAGES"} : new String[]{"android.permission.READ_EXTERNAL_STORAGE"};
        PermissionCompatUtils permissionCompatUtils = PermissionCompatUtils.INSTANCE;
        list = ArraysKt___ArraysKt.toList(strArr);
        if (permissionCompatUtils.hasMediaOfUserSelectedPermission(list)) {
            return;
        }
        for (String str : strArr) {
            if (!PermissionX.isGranted(this.activity, str)) {
                Integer valueOf = Intrinsics.areEqual(str, "android.permission.READ_EXTERNAL_STORAGE") ? Integer.valueOf(BuildKt.isApiLevelAbove(30) ? C10651R.string.permission_name_media : C10651R.string.permission_name_storage) : PermissionRequestConst.INSTANCE.getPermissionMap().get(str);
                if (valueOf != null) {
                    this.deniedPermissionMap.put(str, Integer.valueOf(valueOf.intValue()));
                }
            }
        }
    }

    /* renamed from: r */
    public final boolean m50673r() {
        for (String str : this.permissionList) {
            int hashCode = str.hashCode();
            if (hashCode != -1792643061) {
                if (hashCode != -1496220711) {
                    if (hashCode == 1262418667 && str.equals(PermissionRequestConst.PERMISSION_IMAGE)) {
                        m50672q();
                    }
                    m50674s(str);
                } else if (str.equals(PermissionRequestConst.PERMISSION_FLOATING_WINDOW)) {
                    m50670o(str);
                } else {
                    m50674s(str);
                }
            } else if (str.equals(PermissionRequestConst.PERMISSION_STORAGE)) {
                m50668B();
            } else {
                m50674s(str);
            }
        }
        return this.deniedPermissionMap.isEmpty();
    }

    /* renamed from: s */
    public final void m50674s(String permission) {
        Integer num;
        if (PermissionX.isGranted(this.activity, permission) || (num = PermissionRequestConst.INSTANCE.getPermissionMap().get(permission)) == null) {
            return;
        }
        num.intValue();
        this.deniedPermissionMap.put(permission, num);
    }

    /* renamed from: t */
    public final void m50675t(final PublishSubject<Boolean> publishSubject, final String requestDesc) {
        List<String> list;
        if (this.deniedPermissionMap.size() == 1 && Intrinsics.areEqual(CollectionKt.getFirst(this.deniedPermissionMap.keySet()), PermissionRequestConst.PERMISSION_FLOATING_WINDOW)) {
            m50677x(publishSubject);
            return;
        }
        if (this.deniedPermissionMap.size() != 1 || !Intrinsics.areEqual(CollectionKt.getFirst(this.deniedPermissionMap.keySet()), RequestManageExternalStoragePermission.MANAGE_EXTERNAL_STORAGE)) {
            PermissionMediator init = PermissionX.init(this.activity);
            list = CollectionsKt___CollectionsKt.toList(this.deniedPermissionMap.keySet());
            init.permissions(list).onExplainRequestReason(new ExplainReasonCallback() { // from class: com.sunia.HTREnginev2.ill
                @Override // com.permissionx.guolindev.callback.ExplainReasonCallback
                public final void onExplainReason(ExplainScope explainScope, List list2) {
                    RequestPermissionsAction.m50665u(RequestPermissionsAction.this, requestDesc, explainScope, list2);
                }
            }).request(new RequestCallback() { // from class: com.sunia.HTREnginev2.jll
                @Override // com.permissionx.guolindev.callback.RequestCallback
                public final void onResult(boolean z, List list2, List list3) {
                    RequestPermissionsAction.m50666v(RequestPermissionsAction.this, publishSubject, z, list2, list3);
                }
            });
            return;
        }
        Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
        intent.setData(Uri.parse("package:" + AppUtils.getAppPackageName()));
        this.activity.startActivityForResult(intent, 2005);
        RxjavaKt.done(publishSubject, Boolean.FALSE);
    }

    /* renamed from: w */
    public final void m50676w(String requestDesc, ExplainScope scope, List<String> deniedList) {
        String string = this.activity.getString(C10651R.string.permission_allow);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = this.activity.getString(C10651R.string.permission_deny);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        scope.showRequestReasonDialog(deniedList, requestDesc, string, string2);
    }

    /* renamed from: x */
    public final void m50677x(final PublishSubject<Boolean> publishSubject) {
        PermissionUtils.requestDrawOverlays(new PermissionUtils.SimpleCallback() { // from class: com.onyx.galaxy.note.settings.action.RequestPermissionsAction$requestFloatingWindowPermission$1
            @Override // com.blankj.utilcode.util.PermissionUtils.SimpleCallback
            public void onDenied() {
                ToastUtils.show$default(ToastUtils.INSTANCE, C7453R.string.permission_denied, false, 2, (Object) null);
                RxjavaKt.done(publishSubject, Boolean.FALSE);
            }

            @Override // com.blankj.utilcode.util.PermissionUtils.SimpleCallback
            public void onGranted() {
                RxjavaKt.done(publishSubject, Boolean.TRUE);
            }
        });
    }

    /* renamed from: y */
    public final void m50678y(List<String> deniedList) {
        String m50671p = m50671p(deniedList);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(ResManager.INSTANCE.getStringSafely(C10651R.string.permission_denied_tips), Arrays.copyOf(new Object[]{this.functionName, m50671p}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        new PermissionDialog.Builder(this.activity).setConfirmTextRes(C8037R.string.go_to_setting).setMessageText(format).setCancelCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.settings.action.RequestPermissionsAction$requestPermissionSettings$1
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
        }).setConfirmCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.settings.action.RequestPermissionsAction$requestPermissionSettings$2
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
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.parse("package:" + RequestPermissionsAction.this.getActivity().getPackageName()));
                RequestPermissionsAction.this.getActivity().startActivityForResult(intent, 2008);
            }
        }).create();
    }

    /* renamed from: z */
    public final Observable<Boolean> m50679z() {
        if (m50673r()) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        PublishSubject<Boolean> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        m50667A(create);
        return create;
    }
}
