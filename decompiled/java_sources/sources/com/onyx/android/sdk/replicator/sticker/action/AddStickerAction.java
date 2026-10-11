package com.onyx.android.sdk.replicator.sticker.action;

import android.net.Uri;
import com.blankj.utilcode.util.ImageUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.UriUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.sticker.api.StickerCallExecutor;
import com.onyx.android.sdk.replicator.sticker.data.StickerValues;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModelKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B!\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u0012\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b#\u0010$J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0017R\u0016\u0010\u001e\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u0017R\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b \u0010!¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;", "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Landroid/net/Uri;", "uri", "", GoogleApiAvailabilityLight.f29016b, "m", "l", "sticker", "p", "r", "", "q", "Lcom/blankj/utilcode/util/ImageUtils$ImageType;", C4921e.f26528e, "", "e", "Ljava/util/List;", "uris", C6997f.f39671c, Constants.STRING_SIG, CouchFieldKey.KEY_CATEGORY_ID, C6998g.f39679a, "tempName", C6999h.f39688c, "tempPath", "i", "cachePath", "", "j", "I", "maxImageSize", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AddStickerAction extends StickerBaseAction<StickerModel> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<Uri> uris;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public final String categoryId;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public String tempName;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String tempPath;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String cachePath;

    /* renamed from: j, reason: from kotlin metadata */
    public final int maxImageSize;

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.AddStickerAction$a */
    /* loaded from: classes8.dex */
    public static final class C7903a<T, R> implements Function {
        public C7903a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Uri> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(AddStickerAction.this.uris);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.AddStickerAction$b */
    /* loaded from: classes8.dex */
    public static final class C7904b<T, R> implements Function {
        public C7904b() {
        }

        /* renamed from: a */
        public final void m35797a(@NotNull Uri it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AddStickerAction.this.m35791n(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m35797a((Uri) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.AddStickerAction$c */
    /* loaded from: classes8.dex */
    public static final class C7905c<T, R> implements Function {
        public C7905c() {
        }

        /* renamed from: a */
        public final void m35798a(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AddStickerAction.this.m35790m();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m35798a((Unit) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.AddStickerAction$d */
    /* loaded from: classes8.dex */
    public static final class C7906d<T, R> implements Function {
        public C7906d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StickerModel apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddStickerAction.this.m35789l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.AddStickerAction$e */
    /* loaded from: classes8.dex */
    public static final class C7907e<T, R> implements Function {
        public C7907e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StickerModel apply(@NotNull StickerModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddStickerAction.this.m35793p(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.AddStickerAction$f */
    /* loaded from: classes8.dex */
    public static final class C7908f<T, R> implements Function {
        public C7908f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StickerModel apply(@NotNull StickerModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddStickerAction.this.m35795r(it2);
        }
    }

    public /* synthetic */ AddStickerAction(List list, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? null : str);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StickerModel> create() {
        Observable map = Observable.just(Unit.INSTANCE).observeOn(Schedulers.m61350io()).concatMap(new C7903a()).map(new C7904b()).map(new C7905c()).map(new C7906d()).map(new C7907e()).observeOn(getStickerObserveOn()).map(new C7908f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.takeLastOne(map);
    }

    /* renamed from: l */
    public final StickerModel m35789l() {
        return StickerCallExecutor.INSTANCE.addSticker(this.tempPath, this.tempName, m35794q()).getNonNullData().get(0);
    }

    /* renamed from: m */
    public final void m35790m() {
        String scaleImageFileWithMaxSizeLimit = BitmapUtils.INSTANCE.scaleImageFileWithMaxSizeLimit(this.tempPath, this.maxImageSize);
        if (Intrinsics.areEqual(scaleImageFileWithMaxSizeLimit, this.tempPath)) {
            return;
        }
        FileUtils.delete(new File(this.tempPath));
        FileUtils.moveFile(new File(scaleImageFileWithMaxSizeLimit), new File(this.tempPath));
    }

    /* renamed from: n */
    public final void m35791n(Uri uri) {
        this.tempName = UUIDUtils.INSTANCE.shortUUID() + '.' + m35792o(uri).getValue();
        Path path = Paths.get(StickerValues.INSTANCE.getLocalCacheDir(), (String[]) Arrays.copyOf(new String[]{this.tempName}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        String obj = path.toString();
        this.tempPath = obj;
        com.onyx.android.sdk.base.utils.FileUtils fileUtils = com.onyx.android.sdk.base.utils.FileUtils.INSTANCE;
        fileUtils.ensureFileExists(obj);
        fileUtils.copyInputStreamToFile(ResManager.INSTANCE.getAppContext().getContentResolver().openInputStream(uri), new File(this.tempPath));
    }

    /* renamed from: o */
    public final ImageUtils.ImageType m35792o(Uri uri) {
        return FileExtensionUtils.INSTANCE.isJPG(UriUtils.INSTANCE.getExtensionName(uri)) ? ImageUtils.ImageType.TYPE_JPG : ImageUtils.ImageType.TYPE_PNG;
    }

    /* renamed from: p */
    public final StickerModel m35793p(StickerModel sticker) {
        this.cachePath = StickerModelKt.getSavedFile(sticker);
        FileUtils.moveFile(new File(this.tempPath), new File(this.cachePath));
        return sticker;
    }

    /* renamed from: q */
    public final String m35794q() {
        String str = this.categoryId;
        return str == null ? getStickerProvider().loadDefaultCategory().getUniqueId() : str;
    }

    /* renamed from: r */
    public final StickerModel m35795r(StickerModel sticker) {
        getStickerProvider().addSticker(sticker, m35794q());
        return sticker;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AddStickerAction(@NotNull List<? extends Uri> uris, @Nullable String str) {
        Intrinsics.checkNotNullParameter(uris, "uris");
        this.uris = uris;
        this.categoryId = str;
        this.tempName = "";
        this.tempPath = "";
        this.cachePath = "";
        this.maxImageSize = 1500;
    }
}
