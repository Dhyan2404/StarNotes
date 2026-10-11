package com.jakewharton.rxbinding4.view;

import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.RequiresApi;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.sunia.HTREnginev2.ayl;
import com.sunia.HTREnginev2.byl;
import com.sunia.HTREnginev2.lxl;
import com.sunia.HTREnginev2.mxl;
import com.sunia.HTREnginev2.nxl;
import com.sunia.HTREnginev2.oxl;
import com.sunia.HTREnginev2.pxl;
import com.sunia.HTREnginev2.qxl;
import com.sunia.HTREnginev2.rxl;
import com.sunia.HTREnginev2.sxl;
import com.sunia.HTREnginev2.txl;
import com.sunia.HTREnginev2.uxl;
import com.sunia.HTREnginev2.vxl;
import com.sunia.HTREnginev2.wxl;
import com.sunia.HTREnginev2.xxl;
import com.sunia.HTREnginev2.yxl;
import com.sunia.HTREnginev2.zxl;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/lxl", "com/sunia/HTREnginev2/mxl", "com/sunia/HTREnginev2/nxl", "com/sunia/HTREnginev2/oxl", "com/sunia/HTREnginev2/pxl", "com/sunia/HTREnginev2/qxl", "com/sunia/HTREnginev2/rxl", "com/sunia/HTREnginev2/sxl", "com/sunia/HTREnginev2/txl", "com/sunia/HTREnginev2/uxl", "com/sunia/HTREnginev2/vxl", "com/sunia/HTREnginev2/wxl", "com/sunia/HTREnginev2/xxl", "com/sunia/HTREnginev2/yxl", "com/sunia/HTREnginev2/zxl", "com/sunia/HTREnginev2/ayl", "com/sunia/HTREnginev2/byl"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class RxView {
    @CheckResult
    @NotNull
    public static final Observable<ViewAttachEvent> attachEvents(@NotNull View view) {
        return lxl.m55526a(view);
    }

    @CheckResult
    @NotNull
    public static final Observable<Unit> attaches(@NotNull View view) {
        return mxl.m55692a(view);
    }

    @CheckResult
    @NotNull
    public static final Observable<Unit> clicks(@NotNull View view) {
        return nxl.m55808a(view);
    }

    @CheckResult
    @NotNull
    public static final Observable<Unit> detaches(@NotNull View view) {
        return mxl.m55693b(view);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<DragEvent> drags(@NotNull View view) {
        return oxl.m56179c(view, null, 1, null);
    }

    @CheckResult
    @RequiresApi(16)
    @NotNull
    public static final Observable<Unit> draws(@NotNull View view) {
        return yxl.m58495a(view);
    }

    @CheckResult
    @NotNull
    public static final InitialValueObservable<Boolean> focusChanges(@NotNull View view) {
        return pxl.m56468a(view);
    }

    @CheckResult
    @NotNull
    public static final Observable<Unit> globalLayouts(@NotNull View view) {
        return zxl.m58768a(view);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<MotionEvent> hovers(@NotNull View view) {
        return qxl.m56792c(view, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<KeyEvent> keys(@NotNull View view) {
        return rxl.m57042c(view, null, 1, null);
    }

    @CheckResult
    @NotNull
    public static final Observable<ViewLayoutChangeEvent> layoutChangeEvents(@NotNull View view) {
        return sxl.m57272a(view);
    }

    @CheckResult
    @NotNull
    public static final Observable<Unit> layoutChanges(@NotNull View view) {
        return txl.m57477a(view);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<Unit> longClicks(@NotNull View view) {
        return uxl.m57675c(view, null, 1, null);
    }

    @CheckResult
    @NotNull
    public static final Observable<Unit> preDraws(@NotNull View view, @NotNull Function0<Boolean> function0) {
        return ayl.m53111a(view, function0);
    }

    @CheckResult
    @RequiresApi(23)
    @NotNull
    public static final Observable<ViewScrollChangeEvent> scrollChangeEvents(@NotNull View view) {
        return vxl.m57894a(view);
    }

    @CheckResult
    @NotNull
    public static final Observable<Integer> systemUiVisibilityChanges(@NotNull View view) {
        return wxl.m58142a(view);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<MotionEvent> touches(@NotNull View view) {
        return xxl.m58365c(view, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Consumer<? super Boolean> visibility(@NotNull View view) {
        return byl.m53358c(view, 0, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<DragEvent> drags(@NotNull View view, @NotNull Function1<? super DragEvent, Boolean> function1) {
        return oxl.m56178b(view, function1);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<MotionEvent> hovers(@NotNull View view, @NotNull Function1<? super MotionEvent, Boolean> function1) {
        return qxl.m56791b(view, function1);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<KeyEvent> keys(@NotNull View view, @NotNull Function1<? super KeyEvent, Boolean> function1) {
        return rxl.m57041b(view, function1);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<Unit> longClicks(@NotNull View view, @NotNull Function0<Boolean> function0) {
        return uxl.m57674b(view, function0);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<MotionEvent> touches(@NotNull View view, @NotNull Function1<? super MotionEvent, Boolean> function1) {
        return xxl.m58364b(view, function1);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Consumer<? super Boolean> visibility(@NotNull View view, int i) {
        return byl.m53357b(view, i);
    }
}
