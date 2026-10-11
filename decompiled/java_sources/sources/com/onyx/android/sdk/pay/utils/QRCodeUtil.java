package com.onyx.android.sdk.pay.utils;

import android.graphics.Bitmap;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import java.nio.charset.StandardCharsets;
import java.util.Hashtable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/utils/QRCodeUtil;", "", "()V", "createQRImage", "Landroid/graphics/Bitmap;", "url", "", "width", "", "height", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class QRCodeUtil {

    @NotNull
    public static final QRCodeUtil INSTANCE = new QRCodeUtil();

    @Nullable
    public final Bitmap createQRImage(@Nullable String url, int width, int height) {
        if (url != null) {
            try {
                if (!Intrinsics.areEqual("", url) && url.length() >= 1) {
                    Hashtable hashtable = new Hashtable();
                    hashtable.put(EncodeHintType.CHARACTER_SET, StandardCharsets.UTF_8);
                    hashtable.put(EncodeHintType.MARGIN, 0);
                    BitMatrix encode = new QRCodeWriter().encode(url, BarcodeFormat.QR_CODE, width, height, hashtable);
                    int[] iArr = new int[width * height];
                    for (int i = 0; i < height; i++) {
                        for (int i2 = 0; i2 < width; i2++) {
                            if (encode.get(i2, i)) {
                                iArr[(i * width) + i2] = -16777216;
                            } else {
                                iArr[(i * width) + i2] = -1;
                            }
                        }
                    }
                    Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                    Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
                    createBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
                    return createBitmap;
                }
            } catch (WriterException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
