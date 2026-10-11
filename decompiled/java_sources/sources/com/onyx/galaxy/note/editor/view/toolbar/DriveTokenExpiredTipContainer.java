package com.onyx.galaxy.note.editor.view.toolbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.model.AuthResult;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.handler.DriveExpiredHandler;
import com.onyx.galaxy.note.databinding.LayoutDriveTokenExpiredContainerBinding;
import com.onyx.galaxy.note.editor.view.toolbar.DriveTokenExpiredTipContainer;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u0002¢\u0006\u0004\b\u001f\u0010 B\u001d\b\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\b\u001f\u0010#B%\b\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!\u0012\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b\u001f\u0010&J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\b\u0010\b\u001a\u00020\u0006H\u0014J\b\u0010\t\u001a\u00020\u0006H\u0002J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u0006H\u0002R0\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\r\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006'"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "activityContext", "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", CouchFieldKey.KEY_PROVIDER, "", "showTips", "onDetachedFromWindow", C6999h.f39688c, "d", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "authResult", C6997f.f39671c, "e", "Lkotlin/Function1;", "", "Lkotlin/jvm/functions/Function1;", "getTipVisibilityChangeListener", "()Lkotlin/jvm/functions/Function1;", "setTipVisibilityChangeListener", "(Lkotlin/jvm/functions/Function1;)V", "tipVisibilityChangeListener", "Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;", "Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;", "binding", "Ljava/lang/Runnable;", C6998g.f39679a, "Ljava/lang/Runnable;", "hideRunnable", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDriveTokenExpiredTipContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DriveTokenExpiredTipContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,80:1\n256#2,2:81\n256#2,2:83\n256#2,2:85\n256#2,2:87\n*S KotlinDebug\n*F\n+ 1 DriveTokenExpiredTipContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer\n*L\n42#1:81,2\n49#1:83,2\n71#1:85,2\n29#1:87,2\n*E\n"})
/* loaded from: classes9.dex */
public final class DriveTokenExpiredTipContainer extends FrameLayout {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Function1<? super Boolean, Unit> tipVisibilityChangeListener;

    /* renamed from: f, reason: from kotlin metadata */
    public LayoutDriveTokenExpiredContainerBinding binding;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Runnable hideRunnable;

    /* renamed from: com.onyx.galaxy.note.editor.view.toolbar.DriveTokenExpiredTipContainer$a */
    /* loaded from: classes9.dex */
    public static final class C12504a<T> implements Consumer {
        public C12504a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AuthResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DriveTokenExpiredTipContainer.this.m49889f(it2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DriveTokenExpiredTipContainer(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: g */
    public static final void m49884g(DriveTokenExpiredTipContainer this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setVisibility(8);
    }

    /* renamed from: i */
    public static final void m49885i(DriveTokenExpiredTipContainer this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49888e();
    }

    /* renamed from: j */
    public static final void m49886j(DriveTokenExpiredTipContainer this$0, Context activityContext, Provider provider, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(activityContext, "$activityContext");
        Intrinsics.checkNotNullParameter(provider, "$provider");
        this$0.m49887d(activityContext, provider);
    }

    /* renamed from: d */
    public final void m49887d(Context activityContext, Provider provider) {
        DriveExpiredHandler.INSTANCE.buildBindDriveAction(activityContext, provider).doOnNext(new C12504a()).subscribe();
    }

    /* renamed from: e */
    public final void m49888e() {
        setVisibility(8);
        removeCallbacks(this.hideRunnable);
        Function1<? super Boolean, Unit> function1 = this.tipVisibilityChangeListener;
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
    }

    /* renamed from: f */
    public final void m49889f(AuthResult authResult) {
        if (authResult.getIsSuccess()) {
            m49888e();
        }
    }

    @Nullable
    public final Function1<Boolean, Unit> getTipVisibilityChangeListener() {
        return this.tipVisibilityChangeListener;
    }

    /* renamed from: h */
    public final void m49890h() {
        setVisibility(8);
        LayoutDriveTokenExpiredContainerBinding inflate = LayoutDriveTokenExpiredContainerBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        TintImageView ivClose = inflate.ivClose;
        Intrinsics.checkNotNullExpressionValue(ivClose, "ivClose");
        ViewKt.click$default(ivClose, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.yif
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DriveTokenExpiredTipContainer.m49885i(DriveTokenExpiredTipContainer.this, view);
            }
        }, 1, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.hideRunnable);
    }

    public final void setTipVisibilityChangeListener(@Nullable Function1<? super Boolean, Unit> function1) {
        this.tipVisibilityChangeListener = function1;
    }

    public final void showTips(@NotNull final Context activityContext, @NotNull final Provider provider) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(provider, "provider");
        com.onyx.android.sdk.base.extension.ViewKt.repostDelayed(this, this.hideRunnable, 60000L);
        setVisibility(0);
        String nameByProvider = Provider.INSTANCE.getNameByProvider(ResManager.INSTANCE.getAppContext(), provider);
        String string = getContext().getString(C10651R.string.user_edit_drive_token_expired_tip);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String format = String.format(string, Arrays.copyOf(new Object[]{nameByProvider}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        LayoutDriveTokenExpiredContainerBinding layoutDriveTokenExpiredContainerBinding = this.binding;
        LayoutDriveTokenExpiredContainerBinding layoutDriveTokenExpiredContainerBinding2 = null;
        if (layoutDriveTokenExpiredContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutDriveTokenExpiredContainerBinding = null;
        }
        layoutDriveTokenExpiredContainerBinding.tvDriveTokenExpireWarn.setText(format);
        LayoutDriveTokenExpiredContainerBinding layoutDriveTokenExpiredContainerBinding3 = this.binding;
        if (layoutDriveTokenExpiredContainerBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutDriveTokenExpiredContainerBinding2 = layoutDriveTokenExpiredContainerBinding3;
        }
        TextView tvDriveTokenExpireBind = layoutDriveTokenExpiredContainerBinding2.tvDriveTokenExpireBind;
        Intrinsics.checkNotNullExpressionValue(tvDriveTokenExpireBind, "tvDriveTokenExpireBind");
        ViewKt.click$default(tvDriveTokenExpireBind, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.xif
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DriveTokenExpiredTipContainer.m49886j(DriveTokenExpiredTipContainer.this, activityContext, provider, view);
            }
        }, 1, null);
        Function1<? super Boolean, Unit> function1 = this.tipVisibilityChangeListener;
        if (function1 != null) {
            function1.invoke(Boolean.TRUE);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DriveTokenExpiredTipContainer(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ DriveTokenExpiredTipContainer(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DriveTokenExpiredTipContainer(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.hideRunnable = new Runnable() { // from class: com.sunia.HTREnginev2.wif
            @Override // java.lang.Runnable
            public final void run() {
                DriveTokenExpiredTipContainer.m49884g(DriveTokenExpiredTipContainer.this);
            }
        };
        m49890h();
    }

    public /* synthetic */ DriveTokenExpiredTipContainer(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
