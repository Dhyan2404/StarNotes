package com.onegravity.rteditor.utils;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onegravity/rteditor/utils/LineBreakExt;", "", "()V", "replaceToValidNBSP", "", "source", "", "sdk-rteditor_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LineBreakExt {

    @NotNull
    public static final LineBreakExt INSTANCE = new LineBreakExt();

    @NotNull
    public final String replaceToValidNBSP(@NotNull CharSequence source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return new Regex(" {2,}").replace(source, new Function1<MatchResult, CharSequence>() { // from class: com.onegravity.rteditor.utils.LineBreakExt$replaceToValidNBSP$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CharSequence invoke(@NotNull MatchResult matchResult) {
                String repeat;
                Intrinsics.checkNotNullParameter(matchResult, "matchResult");
                int length = matchResult.getValue().length();
                StringBuilder sb = new StringBuilder();
                repeat = StringsKt__StringsJVMKt.repeat(org.apache.poi.convert.htmlgen.Constants.UNICODECHAR_NO_BREAK_SPACE, length - 1);
                sb.append(repeat);
                sb.append(' ');
                return sb.toString();
            }
        });
    }
}
