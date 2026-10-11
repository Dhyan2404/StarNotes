package com.onyx.android.sdk.pay.action;

import android.graphics.Bitmap;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.pay.utils.QRCodeUtil;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0011\u001a\u00020\f\u0012\u0006\u0010\u0016\u001a\u00020\f¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\"\u0010\u0016\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u000e\u001a\u0004\b\u0013\u0010\u0010\"\u0004\b\u0014\u0010\u0015R$\u0010\u001e\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/action/CreateQRCodeAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "", "e", Constants.STRING_SIG, "getContent", "()Ljava/lang/String;", "content", "", C6997f.f39671c, "I", "getWidth", "()I", "width", C6998g.f39679a, "getHeight", "setHeight", "(I)V", "height", "Landroid/graphics/Bitmap;", C6999h.f39688c, "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "bitmap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;II)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CreateQRCodeAction extends RxBaseAction<CreateQRCodeAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public final String content;

    /* renamed from: f, reason: from kotlin metadata */
    public final int width;

    /* renamed from: g, reason: from kotlin metadata */
    public int height;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: com.onyx.android.sdk.pay.action.CreateQRCodeAction$a */
    /* loaded from: classes8.dex */
    public static final class C7521a<T> implements Consumer {
        public C7521a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CreateQRCodeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateQRCodeAction.this.m34243l();
        }
    }

    public CreateQRCodeAction(@Nullable String str, int i, int i2) {
        this.content = str;
        this.width = i;
        this.height = i2;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CreateQRCodeAction> create() {
        Observable<CreateQRCodeAction> doOnNext = Observable.just(this).observeOn(Schedulers.m61350io()).doOnNext(new C7521a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getWidth() {
        return this.width;
    }

    /* renamed from: l */
    public final void m34243l() {
        this.bitmap = QRCodeUtil.INSTANCE.createQRImage(this.content, this.width, this.height);
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public final void setHeight(int i) {
        this.height = i;
    }
}
