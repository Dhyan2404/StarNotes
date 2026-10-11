package com.onyx.galaxy.note.settings.action;

import android.content.Context;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.QueryCountAction;
import com.onyx.galaxy.note.settings.action.PrepareBackupNoteAction;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/action/PrepareBackupNoteAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, C4921e.f26528e, "m", "Landroid/content/Context;", "e", "Landroid/content/Context;", "activityContext", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PrepareBackupNoteAction extends RxBaseAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: com.onyx.galaxy.note.settings.action.PrepareBackupNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C12646a<T, R> implements Function {

        /* renamed from: e */
        public static final C12646a<T, R> f61435e = new C12646a<>();

        @NotNull
        /* renamed from: a */
        public final Boolean m50660a(long j) {
            return Boolean.valueOf(j > 0);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m50660a(((Number) obj).longValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.PrepareBackupNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C12647b<T> implements Predicate {

        /* renamed from: e */
        public static final C12647b<T> f61436e = new C12647b<>();

        /* renamed from: a */
        public final boolean m50661a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m50661a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.PrepareBackupNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C12648c<T, R> implements Function {
        public C12648c() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m50662a(boolean z) {
            return PrepareBackupNoteAction.this.m50658m();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m50662a(((Boolean) obj).booleanValue());
        }
    }

    public PrepareBackupNoteAction(@NotNull Context activityContext) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        this.activityContext = activityContext;
    }

    /* renamed from: n */
    public static final void m50657n(boolean z) {
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.no_notes_to_backup, false, 2, (Object) null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable flatMap = m50659o().filter(C12647b.f61436e).flatMap(new C12648c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: m */
    public final Observable<Boolean> m50658m() {
        Observable<R> map = new QueryCountAction(NoteConfigKt.getDocumentsArgs()).build().map(C12646a.f61435e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.doOnNextIfFalse(map, new Consumer() { // from class: com.sunia.HTREnginev2.y6l
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                PrepareBackupNoteAction.m50657n(((Boolean) obj).booleanValue());
            }
        });
    }

    /* renamed from: o */
    public final Observable<Boolean> m50659o() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = this.activityContext;
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        return permissionActionUtils.requestStoragePermissionAction(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_LOCAL_BACKUP_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_LOCAL_BACKUP_INTENT_NAME())).build();
    }
}
