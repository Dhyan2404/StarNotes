package com.onyx.android.sdk.data.common.cloud.p025v1;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONReader;
import com.onyx.android.sdk.genericshape.GeoConstant;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Converter;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000 \u000e*\u0004\b\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u000eB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0002\u0010\tJ\u0015\u0010\u000b\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u0003H\u0016¢\u0006\u0002\u0010\rR\u0018\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonResponseBodyConverter;", "T", "Lretrofit2/Converter;", "Lokhttp3/ResponseBody;", "mType", "Ljava/lang/reflect/Type;", GeoConstant.KEY_Features, "", "Lcom/alibaba/fastjson2/JSONReader$Feature;", "(Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V", "[Lcom/alibaba/fastjson2/JSONReader$Feature;", "convert", "value", "(Lokhttp3/ResponseBody;)Ljava/lang/Object;", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FastJsonResponseBodyConverter<T> implements Converter<ResponseBody, T> {

    @NotNull
    private static final JSONReader.Feature[] EMPTY_SERIALIZER_FEATURES = new JSONReader.Feature[0];

    @Nullable
    private final JSONReader.Feature[] features;

    @NotNull
    private final Type mType;

    public FastJsonResponseBodyConverter(@NotNull Type mType, @Nullable JSONReader.Feature[] featureArr) {
        Intrinsics.checkNotNullParameter(mType, "mType");
        this.mType = mType;
        this.features = featureArr;
    }

    @Override // retrofit2.Converter
    public T convert(@NotNull ResponseBody value) throws IOException {
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            String string = value.string();
            Type type = this.mType;
            JSONReader.Feature[] featureArr = this.features;
            if (featureArr == null) {
                featureArr = EMPTY_SERIALIZER_FEATURES;
            }
            T t = (T) JSON.parseObject(string, type, (JSONReader.Feature[]) Arrays.copyOf(featureArr, featureArr.length));
            CloseableKt.closeFinally(value, null);
            return t;
        } finally {
        }
    }
}
