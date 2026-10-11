package com.onegravity.rteditor.converter.html;

import android.text.style.CharacterStyle;
import com.onegravity.rteditor.api.media.RTImage;
import com.sunia.HTREnginev2.gon;
import java.util.List;
import java.util.SortedSet;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH&J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH&¨\u0006\r"}, m61528d2 = {"Lcom/onegravity/rteditor/converter/html/ISpannedToHtmlConverter;", "", "convertText", "", "spans", "Ljava/util/SortedSet;", "Landroid/text/style/CharacterStyle;", gon.f71290o0, "", "end", "getImageList", "", "Lcom/onegravity/rteditor/api/media/RTImage;", "sdk-rteditor_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface ISpannedToHtmlConverter {
    void convertText(@NotNull SortedSet<CharacterStyle> spans, int start, int end);

    @NotNull
    List<RTImage> getImageList();
}
