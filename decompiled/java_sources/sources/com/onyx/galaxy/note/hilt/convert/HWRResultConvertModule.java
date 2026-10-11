package com.onyx.galaxy.note.hilt.convert;

import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.onyx.android.sdk.hwr.service.convert.HWRResultConvertProvider;
import com.onyx.android.sdk.hwr.service.convert.MLResultConvertProvider;
import dagger.Module;
import dagger.Provides;
import dagger.hilt.InstallIn;
import dagger.hilt.components.SingletonComponent;
import dagger.multibindings.IntoMap;
import dagger.multibindings.StringKey;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertModule;", "", "()V", "getMLResultConvert", "Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@Module
@InstallIn({SingletonComponent.class})
/* loaded from: classes9.dex */
public final class HWRResultConvertModule {

    @NotNull
    public static final HWRResultConvertModule INSTANCE = new HWRResultConvertModule();

    @Provides
    @StringKey(HWRValues.ENGINE_ML)
    @NotNull
    @IntoMap
    public final HWRResultConvertProvider getMLResultConvert() {
        return new MLResultConvertProvider();
    }
}
