package com.onyx.galaxy.note.usercenter.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.onyx.galaxy.note.usercenter.popup.AvatarSelectPopup;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0007R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0007¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/popup/AvatarSelectPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "initContentView", "r", "q", "Lkotlin/Function0;", "Lkotlin/jvm/functions/Function0;", "pickFileFunc", "takPhotoFunc", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AvatarSelectPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> pickFileFunc;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Function0<Unit> takPhotoFunc;

    /* renamed from: com.onyx.galaxy.note.usercenter.popup.AvatarSelectPopup$a */
    /* loaded from: classes9.dex */
    public static final class C12839a<T> implements Consumer {
        public C12839a() {
        }

        /* renamed from: a */
        public final void m51505a(boolean z) {
            if (z) {
                AvatarSelectPopup.this.pickFileFunc.invoke();
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m51505a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.usercenter.popup.AvatarSelectPopup$b */
    /* loaded from: classes9.dex */
    public static final class C12840b<T> implements Consumer {
        public C12840b() {
        }

        /* renamed from: a */
        public final void m51506a(boolean z) {
            if (z) {
                AvatarSelectPopup.this.takPhotoFunc.invoke();
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m51506a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarSelectPopup(@NotNull Context context, @NotNull Function0<Unit> pickFileFunc, @NotNull Function0<Unit> takPhotoFunc) {
        super(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pickFileFunc, "pickFileFunc");
        Intrinsics.checkNotNullParameter(takPhotoFunc, "takPhotoFunc");
        this.pickFileFunc = pickFileFunc;
        this.takPhotoFunc = takPhotoFunc;
    }

    /* renamed from: n */
    public static final void m51500n(AvatarSelectPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
        this$0.m51503q();
    }

    /* renamed from: o */
    public static final void m51501o(AvatarSelectPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
        this$0.m51504r();
    }

    /* renamed from: p */
    public static final void m51502p(AvatarSelectPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void initContentView() {
        BasePopupWindow.setMask$default(this, true, null, 2, null);
        setMaskColor(ResManager.INSTANCE.getColor(C7106R.color.black_percent_30));
        View inflate = LayoutInflater.from(getContext()).inflate(C10651R.layout.popup_avatar_select, (ViewGroup) null);
        Intrinsics.checkNotNull(inflate);
        setContentView(inflate);
        PopupExtKt.setFullscreen(this);
        setBackgroundDrawable(null);
        setWidth(-1);
        setHeight(-1);
        setOutsideTouchable(true);
        setFocusable(true);
        inflate.findViewById(C10651R.id.selectFileButton).setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AvatarSelectPopup.m51500n(AvatarSelectPopup.this, view);
            }
        });
        inflate.findViewById(C10651R.id.takePhotoButton).setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.nk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AvatarSelectPopup.m51501o(AvatarSelectPopup.this, view);
            }
        });
        inflate.findViewById(C10651R.id.cancelButton).setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ok
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AvatarSelectPopup.m51502p(AvatarSelectPopup.this, view);
            }
        });
    }

    /* renamed from: q */
    public final void m51503q() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        permissionActionUtils.requestImagePermission(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_USER_AVATAR_PHOTO_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_USER_AVATAR_PHOTO_INTENT_NAME())).build().doOnNext(new C12839a()).subscribe();
    }

    /* renamed from: r */
    public final void m51504r() {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = getContext();
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        permissionActionUtils.requestCameraPermissionAction(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_CAMERA_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_USER_AVATAR_CAMERA_INTENT_NAME())).build().doOnNext(new C12840b()).subscribe();
    }
}
