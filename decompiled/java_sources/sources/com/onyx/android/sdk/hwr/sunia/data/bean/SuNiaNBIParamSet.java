package com.onyx.android.sdk.hwr.sunia.data.bean;

import com.onyx.android.sdk.hwr.sunia.data.bean.SuNiaNBIParamSet;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.nbiv2.sdk.NBIParameter;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;", "", "", "a", Constants.STRING_SIG, "selectedName", "", "b", "I", "selectedIntensity", "", "Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;", "c", "Ljava/util/List;", "params", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-sunia_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class SuNiaNBIParamSet {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: b, reason: from kotlin metadata */
    public final int selectedIntensity;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String selectedName = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final List<SuNiaParam> params = new ArrayList();

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet$Companion;", "", "()V", "getItemBean", "Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;", ExtensionNamespaceContext.EXSLT_SET_PREFIX, "Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;", "getNBIParameter", "Lcom/sunia/nbiv2/sdk/NBIParameter;", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_PARAMVARIABLE_STRING, "sdk-sunia_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: b */
        public static final boolean m33388b(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return ((Boolean) tmp0.invoke(obj)).booleanValue();
        }

        @NotNull
        public final SuNiaParam getItemBean(@NotNull final SuNiaNBIParamSet set) {
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(set, "set");
            Stream stream = set.params.stream();
            final Function1<SuNiaParam, Boolean> function1 = new Function1<SuNiaParam, Boolean>() { // from class: com.onyx.android.sdk.hwr.sunia.data.bean.SuNiaNBIParamSet$Companion$getItemBean$param$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(SuNiaParam suNiaParam) {
                    String str;
                    boolean z;
                    int i;
                    String name = suNiaParam.getName();
                    str = SuNiaNBIParamSet.this.selectedName;
                    if (Intrinsics.areEqual(name, str)) {
                        int intensity = suNiaParam.getIntensity();
                        i = SuNiaNBIParamSet.this.selectedIntensity;
                        if (intensity == i) {
                            z = true;
                            return Boolean.valueOf(z);
                        }
                    }
                    z = false;
                    return Boolean.valueOf(z);
                }
            };
            Object collect = stream.filter(new Predicate() { // from class: com.sunia.HTREnginev2.l4n
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m33388b;
                    m33388b = SuNiaNBIParamSet.Companion.m33388b(Function1.this, obj);
                    return m33388b;
                }
            }).collect(Collectors.toList());
            Intrinsics.checkNotNullExpressionValue(collect, "collect(...)");
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) collect);
            SuNiaParam suNiaParam = (SuNiaParam) firstOrNull;
            return suNiaParam == null ? new SuNiaParam(null, 0, 0, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8191, null) : suNiaParam;
        }

        @NotNull
        public final NBIParameter getNBIParameter(@NotNull SuNiaParam param) {
            Intrinsics.checkNotNullParameter(param, "param");
            return new NBIParameter(param.getContinuity(), param.getCursive(), param.getLightBrush(), param.getWidth(), param.getFeiBai(), param.getBrushTexture(), param.getYiYang(), param.getSmooth(), param.getAutoSmooth());
        }

        public Companion() {
        }
    }
}
