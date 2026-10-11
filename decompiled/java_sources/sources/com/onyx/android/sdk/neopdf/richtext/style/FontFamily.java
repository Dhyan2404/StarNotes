package com.onyx.android.sdk.neopdf.richtext.style;

import com.onyx.android.sdk.base.utils.FontUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\n\u0010\u000bB\u0011\b\u0016\u0012\u0006\u0010\f\u001a\u00020\u0000¢\u0006\u0004\b\n\u0010\rB\u0017\b\u0016\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e¢\u0006\u0004\b\n\u0010\u000fR'\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\b\u0012\u0004\u0012\u00020\u0003`\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;", "", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "e", "Ljava/util/ArrayList;", "getFonts", "()Ljava/util/ArrayList;", FontUtils.FONTS, Constants.CONSTRUCTOR_NAME, "()V", "family", "(Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;)V", "", "(Ljava/util/List;)V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class FontFamily implements Cloneable {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<String> fonts;

    public FontFamily() {
        this.fonts = new ArrayList<>();
    }

    @NotNull
    public Object clone() {
        return super.clone();
    }

    @NotNull
    public final ArrayList<String> getFonts() {
        return this.fonts;
    }

    public FontFamily(@NotNull FontFamily family) {
        Intrinsics.checkNotNullParameter(family, "family");
        ArrayList<String> arrayList = new ArrayList<>();
        this.fonts = arrayList;
        arrayList.addAll(family.fonts);
    }

    public FontFamily(@NotNull List<String> fonts) {
        Intrinsics.checkNotNullParameter(fonts, "fonts");
        ArrayList<String> arrayList = new ArrayList<>();
        this.fonts = arrayList;
        arrayList.addAll(fonts);
    }
}
