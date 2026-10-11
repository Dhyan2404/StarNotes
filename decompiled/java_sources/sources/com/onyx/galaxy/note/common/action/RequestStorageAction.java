package com.onyx.galaxy.note.common.action;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.events.app.RequestPermissionEvent;
import com.permissionx.guolindev.PermissionX;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\t\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0007H\u0002J\b\u0010\r\u001a\u00020\u0007H\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0005\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/RequestStorageAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "autoRequest", "setAutoRequest", "", "l", C4921e.f26528e, "m", GoogleApiAvailabilityLight.f29016b, "p", "q", "", "e", Constants.OBJECT_SIG, "nextEvent", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "hasPermission", C6998g.f39679a, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/Object;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRequestStorageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestStorageAction.kt\ncom/onyx/galaxy/note/common/action/RequestStorageAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"})
/* loaded from: classes9.dex */
public final class RequestStorageAction extends RxBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Object nextEvent;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean hasPermission;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean autoRequest;

    /* renamed from: com.onyx.galaxy.note.common.action.RequestStorageAction$a */
    /* loaded from: classes9.dex */
    public static final class C11594a<T, R> implements Function {
        public C11594a() {
        }

        /* renamed from: a */
        public final void m44939a(@NotNull RequestStorageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RequestStorageAction.this.m44933l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m44939a((RequestStorageAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.RequestStorageAction$b */
    /* loaded from: classes9.dex */
    public static final class C11595b<T, R> implements Function {
        public C11595b() {
        }

        /* renamed from: a */
        public final void m44940a(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RequestStorageAction.this.m44936o();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m44940a((Unit) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.RequestStorageAction$c */
    /* loaded from: classes9.dex */
    public static final class C11596c<T, R> implements Function {
        public C11596c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(RequestStorageAction.this.hasPermission);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RequestStorageAction() {
        /*
            r2 = this;
            r0 = 0
            r1 = 1
            r2.<init>(r0, r1, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.common.action.RequestStorageAction.<init>():void");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).map(new C11594a()).map(new C11595b()).map(new C11596c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m44933l() {
        this.hasPermission = BuildKt.isApiLevelBelow(30) ? m44935n() : m44934m();
    }

    /* renamed from: m */
    public final boolean m44934m() {
        boolean isExternalStorageManager;
        if (Build.VERSION.SDK_INT < 30) {
            return true;
        }
        isExternalStorageManager = Environment.isExternalStorageManager();
        return isExternalStorageManager;
    }

    /* renamed from: n */
    public final boolean m44935n() {
        return PermissionX.isGranted(ResManager.INSTANCE.getAppContext(), "android.permission.WRITE_EXTERNAL_STORAGE");
    }

    /* renamed from: o */
    public final void m44936o() {
        if (this.hasPermission) {
            GlobalBundle.INSTANCE.postEvent(this.nextEvent);
            return;
        }
        if (this.autoRequest) {
            if (!m44934m()) {
                m44937p();
            } else {
                if (m44935n()) {
                    return;
                }
                m44938q();
            }
        }
    }

    /* renamed from: p */
    public final void m44937p() {
        Context appContext = ResManager.INSTANCE.getAppContext();
        Intent intent = new Intent();
        intent.setAction("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
        intent.setData(Uri.parse("package:" + appContext.getPackageName()));
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addFlags(268435456);
        appContext.startActivity(intent);
    }

    /* renamed from: q */
    public final void m44938q() {
        GlobalBundle.INSTANCE.postEvent(new RequestPermissionEvent(this.nextEvent).setPermissions("android.permission.WRITE_EXTERNAL_STORAGE"));
    }

    @NotNull
    public final RequestStorageAction setAutoRequest(boolean autoRequest) {
        this.autoRequest = autoRequest;
        return this;
    }

    public /* synthetic */ RequestStorageAction(Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Unit.INSTANCE : obj);
    }

    public RequestStorageAction(@NotNull Object nextEvent) {
        Intrinsics.checkNotNullParameter(nextEvent, "nextEvent");
        this.nextEvent = nextEvent;
        this.autoRequest = true;
    }
}
