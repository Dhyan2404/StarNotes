package com.onyx.android.sdk.data.common.cloud.p025v1;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONWriter;
import com.google.api.client.json.Json;
import java.io.IOException;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Converter;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000 \f*\u0004\b\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\fB\u0015\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u0015\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u000bR\u0018\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\b¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonRequestBodyConverter;", "T", "Lretrofit2/Converter;", "Lokhttp3/RequestBody;", "serializerFeatures", "", "Lcom/alibaba/fastjson2/JSONWriter$Feature;", "([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V", "[Lcom/alibaba/fastjson2/JSONWriter$Feature;", "convert", "value", "(Ljava/lang/Object;)Lokhttp3/RequestBody;", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FastJsonRequestBodyConverter<T> implements Converter<T, RequestBody> {

    @Nullable
    private static final MediaType MEDIA_TYPE = MediaType.INSTANCE.parse(Json.MEDIA_TYPE);

    @Nullable
    private final JSONWriter.Feature[] serializerFeatures;

    public FastJsonRequestBodyConverter(@Nullable JSONWriter.Feature[] featureArr) {
        this.serializerFeatures = featureArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // retrofit2.Converter
    public /* bridge */ /* synthetic */ RequestBody convert(Object obj) {
        return convert2((FastJsonRequestBodyConverter<T>) obj);
    }

    @Override // retrofit2.Converter
    @NotNull
    /* renamed from: convert, reason: avoid collision after fix types in other method */
    public RequestBody convert2(T value) throws IOException {
        byte[] jSONBytes;
        JSONWriter.Feature[] featureArr = this.serializerFeatures;
        if (featureArr != null) {
            jSONBytes = JSON.toJSONBytes(value, (JSONWriter.Feature[]) Arrays.copyOf(featureArr, featureArr.length));
            Intrinsics.checkNotNullExpressionValue(jSONBytes, "toJSONBytes(...)");
        } else {
            jSONBytes = JSON.toJSONBytes(value);
            Intrinsics.checkNotNullExpressionValue(jSONBytes, "toJSONBytes(...)");
        }
        return RequestBody.Companion.create$default(RequestBody.INSTANCE, MEDIA_TYPE, jSONBytes, 0, 0, 12, (Object) null);
    }
}
