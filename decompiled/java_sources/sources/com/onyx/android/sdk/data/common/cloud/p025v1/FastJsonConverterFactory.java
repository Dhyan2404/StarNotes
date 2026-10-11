package com.onyx.android.sdk.data.common.cloud.p025v1;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.JSONWriter;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.genericshape.GeoConstant;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Converter;
import retrofit2.Retrofit;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002JC\u0010\u0010\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u00042\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u00042\u0006\u0010\u0018\u001a\u00020\u0019H\u0016¢\u0006\u0002\u0010\u001aJ5\u0010\u001b\u001a\f\u0012\u0004\u0012\u00020\u001c\u0012\u0002\b\u00030\u00112\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00160\u00042\u0006\u0010\u0018\u001a\u00020\u0019H\u0016¢\u0006\u0002\u0010\u001eR\"\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001b\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000e¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonConverterFactory;", "Lretrofit2/Converter$Factory;", "()V", GeoConstant.KEY_Features, "", "Lcom/alibaba/fastjson2/JSONReader$Feature;", "getFeatures", "()[Lcom/alibaba/fastjson2/JSONReader$Feature;", "setFeatures", "([Lcom/alibaba/fastjson2/JSONReader$Feature;)V", "[Lcom/alibaba/fastjson2/JSONReader$Feature;", "serializerFeatures", "Lcom/alibaba/fastjson2/JSONWriter$Feature;", "getSerializerFeatures", "()[Lcom/alibaba/fastjson2/JSONWriter$Feature;", "[Lcom/alibaba/fastjson2/JSONWriter$Feature;", "requestBodyConverter", "Lretrofit2/Converter;", "Lokhttp3/RequestBody;", "type", "Ljava/lang/reflect/Type;", "parameterAnnotations", "", "methodAnnotations", "retrofit", "Lretrofit2/Retrofit;", "(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;", "responseBodyConverter", "Lokhttp3/ResponseBody;", "annotations", "(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FastJsonConverterFactory extends Converter.Factory {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private JSONReader.Feature[] features;

    @Nullable
    private final JSONWriter.Feature[] serializerFeatures;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonConverterFactory$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonConverterFactory;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final FastJsonConverterFactory create() {
            return new FastJsonConverterFactory(null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ FastJsonConverterFactory(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @NotNull
    public final JSONReader.Feature[] getFeatures() {
        return this.features;
    }

    @Nullable
    public final JSONWriter.Feature[] getSerializerFeatures() {
        return this.serializerFeatures;
    }

    @Override // retrofit2.Converter.Factory
    @NotNull
    public Converter<?, RequestBody> requestBodyConverter(@NotNull Type type, @NotNull Annotation[] parameterAnnotations, @NotNull Annotation[] methodAnnotations, @NotNull Retrofit retrofit) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(parameterAnnotations, "parameterAnnotations");
        Intrinsics.checkNotNullParameter(methodAnnotations, "methodAnnotations");
        Intrinsics.checkNotNullParameter(retrofit, "retrofit");
        return new FastJsonRequestBodyConverter(this.serializerFeatures);
    }

    @Override // retrofit2.Converter.Factory
    @NotNull
    public Converter<ResponseBody, ?> responseBodyConverter(@NotNull Type type, @NotNull Annotation[] annotations, @NotNull Retrofit retrofit) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        Intrinsics.checkNotNullParameter(retrofit, "retrofit");
        return new FastJsonResponseBodyConverter(type, this.features);
    }

    public final void setFeatures(@NotNull JSONReader.Feature[] featureArr) {
        Intrinsics.checkNotNullParameter(featureArr, "<set-?>");
        this.features = featureArr;
    }

    private FastJsonConverterFactory() {
        this.features = new JSONReader.Feature[0];
    }
}
