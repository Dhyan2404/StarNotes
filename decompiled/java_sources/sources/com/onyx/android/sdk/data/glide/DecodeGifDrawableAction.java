package com.onyx.android.sdk.data.glide;

import androidx.annotation.DrawableRes;
import androidx.core.net.MailTo;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u000bH\u0014J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010\u0006\u001a\u0015\u0012\f\u0012\n \b*\u0004\u0018\u00010\u00020\u00020\u0007¢\u0006\u0002\b\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/glide/DecodeGifDrawableAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/bumptech/glide/load/resource/gif/GifDrawable;", "drawableResId", "", "(I)V", MailTo.f5529g, "Lio/reactivex/rxjava3/subjects/PublishSubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "decodeGif", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DecodeGifDrawableAction extends RxBaseAction<GifDrawable> {
    private final int drawableResId;

    @NotNull
    private final PublishSubject<GifDrawable> subject;

    public DecodeGifDrawableAction(@DrawableRes int i) {
        this.drawableResId = i;
        PublishSubject<GifDrawable> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.subject = create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<GifDrawable> decodeGif() {
        Glide.with(getAppContext()).asGif().load(Integer.valueOf(this.drawableResId)).listener(new RequestListener<GifDrawable>() { // from class: com.onyx.android.sdk.data.glide.DecodeGifDrawableAction$decodeGif$listener$1
            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(@Nullable GlideException e, @Nullable Object model, @Nullable Target<GifDrawable> target, boolean isFirstResource) {
                PublishSubject publishSubject;
                publishSubject = DecodeGifDrawableAction.this.subject;
                publishSubject.onError(OnyxException.INSTANCE.m31891of("Gif Decode Fail"));
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onResourceReady(@NotNull GifDrawable drawable, @Nullable Object model, @Nullable Target<GifDrawable> target, @Nullable DataSource dataSource, boolean isFirstResource) {
                PublishSubject publishSubject;
                Intrinsics.checkNotNullParameter(drawable, "drawable");
                publishSubject = DecodeGifDrawableAction.this.subject;
                RxjavaKt.done(publishSubject, drawable);
                return false;
            }
        }).submit();
        return this.subject;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GifDrawable> create() {
        Observable<GifDrawable> flatMap = Observable.just(this).observeOn(Schedulers.m61350io()).flatMap(new Function() { // from class: com.onyx.android.sdk.data.glide.DecodeGifDrawableAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends GifDrawable> apply(@NotNull DecodeGifDrawableAction it2) {
                Observable decodeGif;
                Intrinsics.checkNotNullParameter(it2, "it");
                decodeGif = DecodeGifDrawableAction.this.decodeGif();
                return decodeGif;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
