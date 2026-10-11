package com.onyx.android.sdk.base.extension;

import kotlin.Metadata;
import kotlin.text.Regex;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\f\n\u0002\b\u0006\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0007\u001a\u00020\u0001*\u00020\u0002¨\u0006\b"}, m61528d2 = {"isAlpha", "", "", "isChinese", "isChineseCharacter", "isEnglishLetterOrDigit", "isJapaneseCharacter", "isKoreanCharacter", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CharKt {
    public static final boolean isAlpha(char c) {
        if ('A' <= c && c < '{') {
            return true;
        }
        if (192 <= c && c < 215) {
            return true;
        }
        if (216 <= c && c < 247) {
            return true;
        }
        if (248 <= c && c < 256) {
            return true;
        }
        if (256 <= c && c < 384) {
            return true;
        }
        if ((384 <= c && c < 592) || 902 == c) {
            return true;
        }
        if (904 <= c && c < 1024) {
            return true;
        }
        if (1024 <= c && c < 1154) {
            return true;
        }
        if (1162 <= c && c < 1280) {
            return true;
        }
        if (1280 <= c && c < 1328) {
            return true;
        }
        if (7680 <= c && c < 7936) {
            return true;
        }
        if (1536 <= c && c < 1792) {
            return true;
        }
        if (1872 <= c && c < 1920) {
            return true;
        }
        if (64336 <= c && c < 65024) {
            return true;
        }
        return 65136 <= c && c < 65280;
    }

    public static final boolean isChinese(char c) {
        if (12288 <= c && c < 55296) {
            return true;
        }
        if (63744 <= c && c < 64256) {
            return true;
        }
        if (65072 <= c && c < 65103) {
            return true;
        }
        return 65281 <= c && c < 65312;
    }

    public static final boolean isChineseCharacter(char c) {
        return 19968 <= c && c < 40960;
    }

    public static final boolean isEnglishLetterOrDigit(char c) {
        return new Regex(StringKt.REGEX_CONTAIN_CHAR_OR_NUMBER).matches(String.valueOf(c));
    }

    public static final boolean isJapaneseCharacter(char c) {
        if (12352 <= c && c < 12448) {
            return true;
        }
        if (12448 <= c && c < 12544) {
            return true;
        }
        return 19968 <= c && c < 40960;
    }

    public static final boolean isKoreanCharacter(char c) {
        if (44032 <= c && c < 55204) {
            return true;
        }
        if (4352 <= c && c < 4608) {
            return true;
        }
        return 12592 <= c && c < 12688;
    }
}
