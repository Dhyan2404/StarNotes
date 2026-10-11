package com.onyx.android.sdk.universal.editor.action.fonts;

import android.graphics.Typeface;
import com.onyx.android.sdk.base.data.font.FontInfo;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.p018rx.RxCommonAction;
import com.onyx.android.sdk.base.utils.FontUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "e", Constants.STRING_SIG, "filePath", "Landroid/graphics/Typeface;", "typeface", "Landroid/graphics/Typeface;", "getTypeface", "()Landroid/graphics/Typeface;", "setTypeface", "(Landroid/graphics/Typeface;)V", "Lcom/onyx/android/sdk/base/data/font/FontInfo;", "fontInfo", "Lcom/onyx/android/sdk/base/data/font/FontInfo;", "getFontInfo", "()Lcom/onyx/android/sdk/base/data/font/FontInfo;", "setFontInfo", "(Lcom/onyx/android/sdk/base/data/font/FontInfo;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadFontTypefaceAction extends RxBaseAction<LoadFontTypefaceAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String filePath;
    public FontInfo fontInfo;
    public Typeface typeface;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.fonts.LoadFontTypefaceAction$a */
    /* loaded from: classes8.dex */
    public static final class C9118a<T, R> implements Function {
        public C9118a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadFontTypefaceAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadFontTypefaceAction.this;
        }
    }

    public LoadFontTypefaceAction(@NotNull String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        this.filePath = filePath;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoadFontTypefaceAction> create() {
        Scheduler m61350io = Schedulers.m61350io();
        Intrinsics.checkNotNullExpressionValue(m61350io, "io(...)");
        Observable<LoadFontTypefaceAction> map = new RxCommonAction(m61350io, new Function0<Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.fonts.LoadFontTypefaceAction$create$1
            {
                super(0);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                String str;
                String str2;
                LoadFontTypefaceAction loadFontTypefaceAction = LoadFontTypefaceAction.this;
                FontUtils fontUtils = FontUtils.INSTANCE;
                str = loadFontTypefaceAction.filePath;
                loadFontTypefaceAction.setTypeface(fontUtils.loadTypefaceFromFile(str));
                LoadFontTypefaceAction loadFontTypefaceAction2 = LoadFontTypefaceAction.this;
                str2 = LoadFontTypefaceAction.this.filePath;
                loadFontTypefaceAction2.setFontInfo(fontUtils.loadFontInfo(new File(str2)));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }).build().map(new C9118a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final FontInfo getFontInfo() {
        FontInfo fontInfo = this.fontInfo;
        if (fontInfo != null) {
            return fontInfo;
        }
        Intrinsics.throwUninitializedPropertyAccessException("fontInfo");
        return null;
    }

    @NotNull
    public final Typeface getTypeface() {
        Typeface typeface = this.typeface;
        if (typeface != null) {
            return typeface;
        }
        Intrinsics.throwUninitializedPropertyAccessException("typeface");
        return null;
    }

    public final void setFontInfo(@NotNull FontInfo fontInfo) {
        Intrinsics.checkNotNullParameter(fontInfo, "<set-?>");
        this.fontInfo = fontInfo;
    }

    public final void setTypeface(@NotNull Typeface typeface) {
        Intrinsics.checkNotNullParameter(typeface, "<set-?>");
        this.typeface = typeface;
    }
}
