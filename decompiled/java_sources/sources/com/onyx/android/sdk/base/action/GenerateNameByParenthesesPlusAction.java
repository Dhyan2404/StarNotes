package com.onyx.android.sdk.base.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B#\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/base/action/GenerateNameByParenthesesPlusAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "e", Constants.STRING_SIG, "getName", "()Ljava/lang/String;", "name", "Lkotlin/Function1;", "", C6997f.f39671c, "Lkotlin/jvm/functions/Function1;", "checkDuplicate", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class GenerateNameByParenthesesPlusAction extends RxBaseAction<String> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String name;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Function1<String, Boolean> checkDuplicate;

    /* renamed from: com.onyx.android.sdk.base.action.GenerateNameByParenthesesPlusAction$a */
    /* loaded from: classes7.dex */
    public static final class C7112a<T, R> implements Function {
        public C7112a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull GenerateNameByParenthesesPlusAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GenerateNameByParenthesesPlusAction.this.m31882l();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GenerateNameByParenthesesPlusAction(@NotNull String name, @NotNull Function1<? super String, Boolean> checkDuplicate) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(checkDuplicate, "checkDuplicate");
        this.name = name;
        this.checkDuplicate = checkDuplicate;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        Observable<String> map = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C7112a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    /* renamed from: l */
    public final String m31882l() {
        String str = this.name;
        int i = 0;
        while (this.checkDuplicate.invoke(str).booleanValue()) {
            int i2 = i + 1;
            if (i == Integer.MAX_VALUE) {
                throw new Exception(ResManager.INSTANCE.getString(C7106R.string.name_exist));
            }
            i = i2;
            str = this.name + '(' + i2 + ')';
        }
        return str;
    }
}
