package com.onyx.android.sdk.base.data.font;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\fH\u0002J\u0014\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\b0\u000eJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0006J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u001a\u001a\u00020\f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/TTCFont;", "", "()V", "debug", "", "fontName", "", "fontType", "Lcom/onyx/android/sdk/base/data/font/FontType;", "ttfFont", "Lcom/onyx/android/sdk/base/data/font/TTFFont;", Constants.CLEAR_ATTRIBUTES, "", "getFontNameAndFontType", "Lkotlin/Pair;", "getFontNameByTest", "locale", Constants.LOCALE_SIG, "log", NotificationCompat.CATEGORY_MESSAGE, "parse", "file", "parseInner", "randomAccessFile", "Ljava/io/RandomAccessFile;", "setTtfFont", "updateFontName", "updateFontType", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TTCFont {

    @NotNull
    public static final String FONT_NAME_DELIMITER = " & ";
    private final boolean debug;

    @NotNull
    private String fontName = "";

    @NotNull
    private FontType fontType = FontType.ALL;

    @Nullable
    private TTFFont ttfFont;

    private final void clear() {
        this.fontName = "";
        this.fontType = FontType.ALL;
        TTFFont tTFFont = this.ttfFont;
        if (tTFFont != null) {
            Intrinsics.checkNotNull(tTFFont);
            tTFFont.clear();
        }
    }

    private final void parseInner(RandomAccessFile randomAccessFile) throws IOException {
        byte[] bArr = new byte[4];
        randomAccessFile.read(bArr);
        log(new String(bArr, Charsets.UTF_8));
        randomAccessFile.readInt();
        int readInt = randomAccessFile.readInt();
        int[] iArr = new int[readInt];
        for (int i = 0; i < readInt; i++) {
            iArr[i] = randomAccessFile.readInt();
        }
        for (int i2 = 0; i2 < readInt; i2++) {
            randomAccessFile.seek(iArr[i2]);
            if (this.ttfFont == null) {
                this.ttfFont = new TTFFont();
            }
            TTFFont tTFFont = this.ttfFont;
            Intrinsics.checkNotNull(tTFFont);
            tTFFont.clear();
            TTFFont tTFFont2 = this.ttfFont;
            Intrinsics.checkNotNull(tTFFont2);
            tTFFont2.parseInner(randomAccessFile);
            TTFFont tTFFont3 = this.ttfFont;
            Intrinsics.checkNotNull(tTFFont3);
            Pair<String, FontType> fontNameAndFontType = tTFFont3.getFontNameAndFontType();
            String component1 = fontNameAndFontType.component1();
            FontType component2 = fontNameAndFontType.component2();
            updateFontName(component1);
            updateFontType(component2);
        }
    }

    private final void updateFontName(String fontName) {
        if (fontName == null || fontName.length() == 0) {
            return;
        }
        if (this.fontName.length() == 0) {
            this.fontName = fontName;
            return;
        }
        this.fontName += FONT_NAME_DELIMITER + fontName;
    }

    private final void updateFontType(FontType fontType) {
        if (this.fontType == FontType.CJK) {
            return;
        }
        this.fontType = fontType;
    }

    @NotNull
    public final Pair<String, FontType> getFontNameAndFontType() {
        return new Pair<>(this.fontName, this.fontType);
    }

    @Nullable
    public final String getFontNameByTest(@Nullable Locale locale) {
        TTFFont tTFFont = this.ttfFont;
        if (tTFFont == null) {
            return null;
        }
        Intrinsics.checkNotNull(tTFFont);
        return tTFFont.getFontName(locale);
    }

    public final void log(@Nullable String msg) {
        if (this.debug) {
            Debug.INSTANCE.m32035d(TTCFont.class, msg, new Object[0]);
        }
    }

    @Nullable
    public final TTCFont parse(@Nullable String file) {
        log(file);
        clear();
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                parseInner(randomAccessFile2);
                FileUtils.INSTANCE.closeQuietly(randomAccessFile2);
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                try {
                    Debug.INSTANCE.m32063w(th);
                    return this;
                } finally {
                    FileUtils.INSTANCE.closeQuietly(randomAccessFile);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return this;
    }

    @NotNull
    public final TTCFont setTtfFont(@Nullable TTFFont ttfFont) {
        this.ttfFont = ttfFont;
        return this;
    }
}
