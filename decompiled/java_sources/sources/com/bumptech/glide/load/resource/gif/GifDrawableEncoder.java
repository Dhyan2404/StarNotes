package com.bumptech.glide.load.resource.gif;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.File;
import java.io.IOException;

/* loaded from: classes3.dex */
public class GifDrawableEncoder implements ResourceEncoder<GifDrawable> {

    /* renamed from: a */
    public static final String f15153a = "GifEncoder";

    @Override // com.bumptech.glide.load.ResourceEncoder
    @NonNull
    public EncodeStrategy getEncodeStrategy(@NonNull Options options) {
        return EncodeStrategy.SOURCE;
    }

    @Override // com.bumptech.glide.load.Encoder
    public boolean encode(@NonNull Resource<GifDrawable> resource, @NonNull File file, @NonNull Options options) {
        try {
            ByteBufferUtil.toFile(resource.get().getBuffer(), file);
            return true;
        } catch (IOException e) {
            if (Log.isLoggable(f15153a, 5)) {
                Log.w(f15153a, "Failed to encode GIF drawable data", e);
            }
            return false;
        }
    }
}
