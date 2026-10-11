package com.onyx.android.sdk.universal.docmanager.action.name;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.action.GenerateNameByParenthesesPlusAction;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\f\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\t¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateUniqueFileAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "name", "m", "e", Constants.STRING_SIG, "filePath", C6997f.f39671c, CouchFieldKey.KEY_DIR, C6998g.f39679a, "extension", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GenerateUniqueFileAction extends RxBaseAction<String> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String filePath;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public final String dir;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String extension;

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.name.GenerateUniqueFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C8130a<T, R> implements Function {
        public C8130a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull GenerateUniqueFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GenerateUniqueFileAction.this.m36656l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.name.GenerateUniqueFileAction$b */
    /* loaded from: classes8.dex */
    public static final class C8131b<T, R> implements Function {
        public C8131b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GenerateUniqueFileAction.this.m36657m(it2);
        }
    }

    public GenerateUniqueFileAction(@NotNull String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        this.filePath = filePath;
        FileUtils fileUtils = FileUtils.INSTANCE;
        this.dir = fileUtils.getParent(filePath);
        this.extension = fileUtils.getFileExtension(filePath);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        Observable<String> map = Observable.just(this).observeOn(Schedulers.m61350io()).flatMap(new C8130a()).map(new C8131b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.onyx.android.sdk.universal.docmanager.action.name.GenerateUniqueFileAction$generate$2] */
    /* renamed from: l */
    public final Observable<String> m36656l() {
        final int length = 254 - this.extension.length();
        final String baseName = FilenameUtils.getBaseName(this.filePath);
        final ?? r2 = new Function1<String, Boolean>() { // from class: com.onyx.android.sdk.universal.docmanager.action.name.GenerateUniqueFileAction$generate$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(FileUtils.INSTANCE.isFileExist(GenerateUniqueFileAction.this.m36657m(it2)));
            }
        };
        return new GenerateNameAction(baseName, length, r2) { // from class: com.onyx.android.sdk.universal.docmanager.action.name.GenerateUniqueFileAction$generate$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(baseName, length, r2, null, 8, null);
                Intrinsics.checkNotNull(baseName);
            }

            @Override // com.onyx.android.sdk.universal.docmanager.action.name.GenerateNameAction
            @NotNull
            public Observable<String> generateName() {
                return new GenerateNameByParenthesesPlusAction(getName(), getCheckDuplicate()).build();
            }
        }.build();
    }

    /* renamed from: m */
    public final String m36657m(String name) {
        FileUtils fileUtils = FileUtils.INSTANCE;
        String str = this.dir;
        if (str == null) {
            str = "";
        }
        String combine = fileUtils.combine(fileUtils.combinePath(str, name), this.extension);
        return combine == null ? "" : combine;
    }
}
