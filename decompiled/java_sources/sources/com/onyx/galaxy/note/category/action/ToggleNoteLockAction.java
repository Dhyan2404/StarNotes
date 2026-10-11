package com.onyx.galaxy.note.category.action;

import android.content.Context;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/ToggleNoteLockAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "l", "Landroid/content/Context;", C6998g.f39679a, "Landroid/content/Context;", "activityContext", "", "", C6999h.f39688c, "Ljava/util/List;", "noteIds", "i", Constants.HASIDCALL_INDEX_SIG, "hasEncryption", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;Z)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ToggleNoteLockAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> noteIds;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean hasEncryption;

    /* renamed from: com.onyx.galaxy.note.category.action.ToggleNoteLockAction$a */
    /* loaded from: classes9.dex */
    public static final class C10990a<T> implements Consumer {

        /* renamed from: e */
        public static final C10990a<T> f54023e = new C10990a<>();

        /* renamed from: a */
        public final void m42561a(boolean z) {
            if (z) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.lock_note_success, false, 2, (Object) null);
            } else {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.lock_note_failed, false, 2, (Object) null);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42561a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.ToggleNoteLockAction$b */
    /* loaded from: classes9.dex */
    public static final class C10991b<T> implements Consumer {

        /* renamed from: e */
        public static final C10991b<T> f54024e = new C10991b<>();

        /* renamed from: a */
        public final void m42562a(boolean z) {
            if (z) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.unlock_note_success, false, 2, (Object) null);
            } else {
                ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.unlock_note_failed, false, 2, (Object) null);
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42562a(((Boolean) obj).booleanValue());
        }
    }

    public ToggleNoteLockAction(@NotNull Context activityContext, @NotNull List<String> noteIds, boolean z) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(noteIds, "noteIds");
        this.activityContext = activityContext;
        this.noteIds = noteIds;
        this.hasEncryption = z;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        return this.hasEncryption ? m42560m() : m42559l();
    }

    /* renamed from: l */
    public final Observable<Boolean> m42559l() {
        Observable<Boolean> doOnNext = new LockNoteAction(this.activityContext, this.noteIds).build().doOnNext(C10990a.f54023e);
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: m */
    public final Observable<Boolean> m42560m() {
        Observable<Boolean> doOnNext = new UnLockNoteAction(this.activityContext, this.noteIds).build().doOnNext(C10991b.f54024e);
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
