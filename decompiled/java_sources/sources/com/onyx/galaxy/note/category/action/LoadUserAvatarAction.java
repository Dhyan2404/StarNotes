package com.onyx.galaxy.note.category.action;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.bcel.internal.Constants;
import de.hdodenhof.circleimageview.CircleImageView;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0012\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/LoadUserAvatarAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "url", "", "l", "", "roleFlag", "m", "Lde/hdodenhof/circleimageview/CircleImageView;", C6998g.f39679a, "Lde/hdodenhof/circleimageview/CircleImageView;", "avatarView", "Landroid/widget/ImageView;", C6999h.f39688c, "Landroid/widget/ImageView;", "roleView", Constants.CONSTRUCTOR_NAME, "(Lde/hdodenhof/circleimageview/CircleImageView;Landroid/widget/ImageView;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadUserAvatarAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadUserAvatarAction.kt\ncom/onyx/galaxy/note/category/action/LoadUserAvatarAction\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,61:1\n256#2,2:62\n*S KotlinDebug\n*F\n+ 1 LoadUserAvatarAction.kt\ncom/onyx/galaxy/note/category/action/LoadUserAvatarAction\n*L\n59#1:62,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadUserAvatarAction extends RxBaseNoteAppAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final CircleImageView avatarView;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ImageView roleView;

    /* renamed from: com.onyx.galaxy.note.category.action.LoadUserAvatarAction$a */
    /* loaded from: classes9.dex */
    public static final class C10902a<T> implements Consumer {
        public C10902a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadUserAvatarAction.this.m42389l(it2.getAccountAvatarUrl());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadUserAvatarAction$b */
    /* loaded from: classes9.dex */
    public static final class C10903b<T> implements Consumer {
        public C10903b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadUserAvatarAction.this.m42390m(it2.getRoleBadgeFlag());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadUserAvatarAction$c */
    /* loaded from: classes9.dex */
    public static final class C10904c<T, R> implements Function {

        /* renamed from: e */
        public static final C10904c<T, R> f53879e = new C10904c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    public LoadUserAvatarAction(@NotNull CircleImageView avatarView, @NotNull ImageView roleView) {
        Intrinsics.checkNotNullParameter(avatarView, "avatarView");
        Intrinsics.checkNotNullParameter(roleView, "roleView");
        this.avatarView = avatarView;
        this.roleView = roleView;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable map = AccountDataBundle.INSTANCE.loadOnyxAccountObservable().observeOn(getMainUIScheduler()).doOnNext(new C10902a()).doOnNext(new C10903b()).map(C10904c.f53879e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m42389l(String url) {
        RequestBuilder<Drawable> load = url == null || url.length() == 0 ? Glide.with(this.avatarView).load(Integer.valueOf(C10651R.drawable.icon_avatar)) : Glide.with(this.avatarView).load(url);
        Intrinsics.checkNotNull(load);
        load.placeholder(C10651R.drawable.icon_avatar).error(C10651R.drawable.icon_avatar).into(this.avatarView);
    }

    /* renamed from: m */
    public final void m42390m(int roleFlag) {
        Drawable drawable = roleFlag != 3 ? roleFlag != 4 ? null : ResManager.INSTANCE.getDrawable(C10651R.drawable.ic_user_role_pro) : ResManager.INSTANCE.getDrawable(C10651R.drawable.ic_user_role_star);
        this.roleView.setImageDrawable(drawable);
        this.roleView.setVisibility(drawable != null ? 0 : 8);
    }
}
