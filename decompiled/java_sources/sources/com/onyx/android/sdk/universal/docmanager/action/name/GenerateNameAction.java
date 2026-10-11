package com.onyx.android.sdk.universal.docmanager.action.name;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.action.GenerateNameByAppendAction;
import com.onyx.android.sdk.base.action.GenerateNameByPlusAction;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.extension.StringRuleLengthKt;
import com.onyx.android.sdk.universal.C8045R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B5\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n0\u0017\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0002¢\u0006\u0004\b \u0010!J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0002R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R#\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n0\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\u001f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u000e\u001a\u0004\b\u001e\u0010\u0010¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "generateName", "name", "p", "l", "m", "", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "e", Constants.STRING_SIG, "getName", "()Ljava/lang/String;", "", C6997f.f39671c, "I", "getMaxLength", "()I", "maxLength", "Lkotlin/Function1;", C6998g.f39679a, "Lkotlin/jvm/functions/Function1;", "getCheckDuplicate", "()Lkotlin/jvm/functions/Function1;", "checkDuplicate", C6999h.f39688c, "getOverflowName", "overflowName", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class GenerateNameAction extends RxBaseAction<String> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String name;

    /* renamed from: f, reason: from kotlin metadata */
    public final int maxLength;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Function1<String, Boolean> checkDuplicate;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String overflowName;

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.name.GenerateNameAction$a */
    /* loaded from: classes8.dex */
    public static final class C8127a<T, R> implements Function {
        public C8127a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull GenerateNameAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GenerateNameAction.this.generateName();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.name.GenerateNameAction$b */
    /* loaded from: classes8.dex */
    public static final class C8128b<T, R> implements Function {
        public C8128b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GenerateNameAction.this.m36650n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.docmanager.action.name.GenerateNameAction$c */
    /* loaded from: classes8.dex */
    public static final class C8129c<T, R> implements Function {

        /* renamed from: e */
        public static final C8129c<T, R> f47468e = new C8129c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return (String) it2;
        }
    }

    public /* synthetic */ GenerateNameAction(String str, int i, Function1 function1, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, function1, (i2 & 8) != 0 ? "" : str2);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        Observable<String> map = Observable.just(this).flatMap(new C8127a()).map(new C8128b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public Observable<String> generateName() {
        Observable map = RxjavaKt.flatMapIf(m36652p(this.name), new Function1<String, Boolean>() { // from class: com.onyx.android.sdk.universal.docmanager.action.name.GenerateNameAction$generateName$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                boolean m36651o;
                Intrinsics.checkNotNullParameter(it2, "it");
                m36651o = GenerateNameAction.this.m36651o(it2);
                boolean z = false;
                if (m36651o) {
                    if (GenerateNameAction.this.getOverflowName().length() > 0) {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            }
        }, m36652p(this.overflowName)).map(C8129c.f47468e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Function1<String, Boolean> getCheckDuplicate() {
        return this.checkDuplicate;
    }

    public final int getMaxLength() {
        return this.maxLength;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getOverflowName() {
        return this.overflowName;
    }

    /* renamed from: l */
    public final Observable<String> m36648l(String name) {
        return new GenerateNameByAppendAction(name, this.checkDuplicate).build();
    }

    /* renamed from: m */
    public final Observable<String> m36649m(String name) {
        return new GenerateNameByPlusAction(name, this.checkDuplicate).build();
    }

    /* renamed from: n */
    public final String m36650n(String name) {
        if (m36651o(name)) {
            throw new Exception(ResManager.INSTANCE.getString(C8045R.string.name_exist));
        }
        return name;
    }

    /* renamed from: o */
    public final boolean m36651o(String name) {
        return this.maxLength > 0 && StringRuleLengthKt.toRuleLength(name) > this.maxLength;
    }

    /* renamed from: p */
    public final Observable<String> m36652p(String name) {
        boolean contains;
        contains = ArraysKt___ArraysKt.contains(ResManager.INSTANCE.getStringArray(C8045R.array.default_create_name), StringKt.removeSuffixNumber(name));
        return contains ? m36649m(name) : m36648l(name);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GenerateNameAction(@NotNull String name, int i, @NotNull Function1<? super String, Boolean> checkDuplicate, @NotNull String overflowName) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(checkDuplicate, "checkDuplicate");
        Intrinsics.checkNotNullParameter(overflowName, "overflowName");
        this.name = name;
        this.maxLength = i;
        this.checkDuplicate = checkDuplicate;
        this.overflowName = overflowName;
    }
}
