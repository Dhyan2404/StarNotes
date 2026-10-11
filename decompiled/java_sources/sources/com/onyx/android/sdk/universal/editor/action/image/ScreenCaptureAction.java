package com.onyx.android.sdk.universal.editor.action.image;

import android.content.Intent;
import android.graphics.Bitmap;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.request.CaptureScreenBitmapRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.v6l;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B#\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\r\u001a\u00020\n\u0012\b\b\u0002\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\fR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/image/ScreenCaptureAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Landroid/graphics/Bitmap;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Landroid/content/Intent;", v6l.f87196g, "l", "e", "Landroid/content/Intent;", "", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "overScreen", C6998g.f39679a, "scaleToContentSize", "", C6999h.f39688c, "J", "DELAY", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Intent;ZZ)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ScreenCaptureAction extends RxBaseAction<Bitmap> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public Intent intent;

    /* renamed from: f, reason: from kotlin metadata */
    public final boolean overScreen;

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean scaleToContentSize;

    /* renamed from: h, reason: from kotlin metadata */
    public final long DELAY;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.image.ScreenCaptureAction$a */
    /* loaded from: classes8.dex */
    public static final class C9505a<T, R> implements Function {
        public C9505a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Bitmap apply(@NotNull Intent it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScreenCaptureAction.this.m39112l(it2);
        }
    }

    public /* synthetic */ ScreenCaptureAction(Intent intent, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(intent, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Bitmap> create() {
        Observable<Bitmap> map = Observable.just(this.intent).delay(this.DELAY, TimeUnit.MILLISECONDS).observeOn(Schedulers.newThread()).map(new C9505a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Bitmap m39112l(Intent intent) {
        CaptureScreenBitmapRequest captureScreenBitmapRequest = new CaptureScreenBitmapRequest(intent);
        captureScreenBitmapRequest.setOverScreen(this.overScreen);
        captureScreenBitmapRequest.setScaleToContentSize(this.scaleToContentSize);
        return captureScreenBitmapRequest.execute();
    }

    public ScreenCaptureAction(@NotNull Intent intent, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        this.intent = intent;
        this.overScreen = z;
        this.scaleToContentSize = z2;
        this.DELAY = 500L;
    }
}
