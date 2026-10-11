package com.onyx.android.sdk.base.utils;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.StringRes;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.C7106R;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\u001a\u0010\t\u001a\u00020\b2\b\b\u0001\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\f\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\u001a\u0010\f\u001a\u00020\b2\b\b\u0001\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\u0007\u001a\u00020\u0006JC\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\n2\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/ToastUtils;", "", "Landroid/content/Context;", "context", "", "message", "", "withLongDuration", "", "show", "", "stringResId", "showAtBottom", NotificationCompat.WearableExtender.f5060z, "", "offsets", "a", "(Landroid/content/Context;Ljava/lang/CharSequence;ZI[Ljava/lang/Integer;)V", Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class ToastUtils {

    @NotNull
    public static final ToastUtils INSTANCE = new ToastUtils();

    /* renamed from: com.onyx.android.sdk.base.utils.ToastUtils$a */
    /* loaded from: classes7.dex */
    public static final class C7139a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Context f40969e;

        /* renamed from: f */
        public final /* synthetic */ int f40970f;

        /* renamed from: g */
        public final /* synthetic */ View f40971g;

        /* renamed from: h */
        public final /* synthetic */ boolean f40972h;

        public C7139a(Context context, int i, View view, boolean z) {
            this.f40969e = context;
            this.f40970f = i;
            this.f40971g = view;
            this.f40972h = z;
        }

        /* renamed from: a */
        public final void m32162a(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Toast toast = new Toast(this.f40969e);
            toast.setGravity(this.f40970f, 0, 0);
            toast.setView(this.f40971g);
            toast.setDuration(this.f40972h ? 1 : 0);
            toast.show();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m32162a((String) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m32160b(ToastUtils toastUtils, Context context, CharSequence charSequence, boolean z, int i, Integer[] numArr, int i2, Object obj) {
        boolean z2 = (i2 & 4) != 0 ? false : z;
        if ((i2 & 8) != 0) {
            i = 17;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            numArr = new Integer[]{0, 0, 0, 0};
        }
        toastUtils.m32161a(context, charSequence, z2, i3, numArr);
    }

    public static /* synthetic */ void show$default(ToastUtils toastUtils, Context context, CharSequence charSequence, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        toastUtils.show(context, charSequence, z);
    }

    public static /* synthetic */ void showAtBottom$default(ToastUtils toastUtils, CharSequence charSequence, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        toastUtils.showAtBottom(charSequence, z);
    }

    /* renamed from: a */
    public final void m32161a(Context context, CharSequence message, boolean withLongDuration, int gravity, Integer[] offsets) {
        View inflate = LayoutInflater.from(context).inflate(C7106R.layout.layout_toast_default, (ViewGroup) null);
        ((TextView) inflate.findViewById(C7106R.id.text)).setText(message);
        Observable.just("").observeOn(AndroidSchedulers.mainThread()).map(new C7139a(context, gravity, inflate, withLongDuration)).subscribe();
    }

    public final void show(@NotNull Context context, @NotNull CharSequence message, boolean withLongDuration) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(message, "message");
        m32160b(this, context, message, withLongDuration, 0, null, 24, null);
    }

    public final void showAtBottom(@NotNull CharSequence message, boolean withLongDuration) {
        Intrinsics.checkNotNullParameter(message, "message");
        ResManager resManager = ResManager.INSTANCE;
        m32161a(resManager.getContext(), message, withLongDuration, 81, new Integer[]{0, 0, 0, Integer.valueOf(resManager.getDimens(C7106R.dimen.dp_64))});
    }

    public static /* synthetic */ void show$default(ToastUtils toastUtils, CharSequence charSequence, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        toastUtils.show(charSequence, z);
    }

    public static /* synthetic */ void showAtBottom$default(ToastUtils toastUtils, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        toastUtils.showAtBottom(i, z);
    }

    public final void show(@NotNull CharSequence message, boolean withLongDuration) {
        Intrinsics.checkNotNullParameter(message, "message");
        show(ResManager.INSTANCE.getContext(), message, withLongDuration);
    }

    public static /* synthetic */ void show$default(ToastUtils toastUtils, Context context, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        toastUtils.show(context, i, z);
    }

    public final void show(@NotNull Context context, @StringRes int stringResId, boolean withLongDuration) {
        Intrinsics.checkNotNullParameter(context, "context");
        show(context, ResManager.INSTANCE.getStringSafely(stringResId), withLongDuration);
    }

    public static /* synthetic */ void show$default(ToastUtils toastUtils, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        toastUtils.show(i, z);
    }

    public final void show(@StringRes int stringResId, boolean withLongDuration) {
        show(ResManager.INSTANCE.getContext(), stringResId, withLongDuration);
    }

    public final void showAtBottom(@StringRes int stringResId, boolean withLongDuration) {
        showAtBottom(ResManager.INSTANCE.getStringSafely(stringResId), withLongDuration);
    }
}
