package com.onegravity.rteditor.converter.html;

import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.URLSpan;
import android.util.Pair;
import android.util.Range;
import com.miui.penengine.p015e.C6997f;
import com.onegravity.rteditor.api.format.RTFormat;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.converter.tagsoup.util.StringEscapeUtils;
import com.onegravity.rteditor.spans.AudioSpan;
import com.onegravity.rteditor.spans.BoldSpan;
import com.onegravity.rteditor.spans.ImageSpan;
import com.onegravity.rteditor.spans.ItalicSpan;
import com.onegravity.rteditor.spans.LinkSpan;
import com.onegravity.rteditor.spans.TypefaceSpan;
import com.onegravity.rteditor.spans.UnderlineSpan;
import com.onegravity.rteditor.spans.VideoSpan;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\n\u0010\u001d\u001a\u00060\u001bj\u0002`\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ&\u0010\t\u001a\u00020\b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J,\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\n2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0002JZ\u0010\u0010\u001a6\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000e0\fj\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000e`\u000f2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0003H\u0002J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0003H\u0002J\u0016\u0010\u0015\u001a\u00020\u00122\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u000eH\u0002J\b\u0010\u0016\u001a\u00020\u0012H\u0002¨\u0006 "}, m61528d2 = {"Lcom/onegravity/rteditor/converter/html/SpannedToHtmlConverterV2;", "Lcom/onegravity/rteditor/converter/html/BaseSpannedToHtmlConverter;", "Ljava/util/SortedSet;", "Landroid/text/style/CharacterStyle;", "spans", "", gon.f71290o0, "end", "", "convertText", "Ljava/util/TreeSet;", "a", "Ljava/util/LinkedHashMap;", "Landroid/util/Range;", "", "Lkotlin/collections/LinkedHashMap;", "e", "style", "", "d", C6997f.f39671c, "c", "b", "Landroid/text/Spanned;", "text", "Lcom/onegravity/rteditor/api/format/RTFormat;", Constants.ATTRNAME_FORMAT, "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "out", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/text/Spanned;Lcom/onegravity/rteditor/api/format/RTFormat;Ljava/lang/StringBuilder;)V", "sdk-rteditor_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSpannedToHtmlConverterV2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpannedToHtmlConverterV2.kt\ncom/onegravity/rteditor/converter/html/SpannedToHtmlConverterV2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,190:1\n215#2:191\n216#2:198\n1855#3,2:192\n1855#3,2:194\n1855#3,2:196\n37#4,2:199\n*S KotlinDebug\n*F\n+ 1 SpannedToHtmlConverterV2.kt\ncom/onegravity/rteditor/converter/html/SpannedToHtmlConverterV2\n*L\n42#1:191\n42#1:198\n44#1:192,2\n55#1:194,2\n59#1:196,2\n91#1:199,2\n*E\n"})
/* loaded from: classes7.dex */
public final class SpannedToHtmlConverterV2 extends BaseSpannedToHtmlConverter {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpannedToHtmlConverterV2(@NotNull Spanned text, @NotNull RTFormat format, @NotNull StringBuilder out) {
        super(text, format, out);
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(out, "out");
    }

    /* renamed from: a */
    public final TreeSet<Integer> m31618a(SortedSet<CharacterStyle> spans, int start, int end) {
        TreeSet<Integer> treeSet = new TreeSet<>();
        treeSet.add(Integer.valueOf(start));
        treeSet.add(Integer.valueOf(end));
        for (CharacterStyle characterStyle : spans) {
            int spanStart = getText().getSpanStart(characterStyle);
            int spanEnd = getText().getSpanEnd(characterStyle);
            if (spanStart < end && spanEnd > start) {
                treeSet.add(Integer.valueOf(Math.max(spanStart, start)));
                treeSet.add(Integer.valueOf(Math.min(spanEnd, end)));
            }
        }
        return treeSet;
    }

    /* renamed from: b */
    public final String m31619b() {
        return "</font>";
    }

    /* renamed from: c */
    public final String m31620c(List<? extends CharacterStyle> spans) {
        CharSequence trim;
        String str = "";
        String str2 = str;
        String str3 = str2;
        for (CharacterStyle characterStyle : spans) {
            if (characterStyle instanceof TypefaceSpan) {
                str = "face=\"" + StringEscapeUtils.escapeHtml4(((TypefaceSpan) characterStyle).getValue().getName()) + "\" ";
            } else if (characterStyle instanceof AbsoluteSizeSpan) {
                int size = ((AbsoluteSizeSpan) characterStyle).getSize();
                str2 = str2 + "data-size=\"" + size + "px\" ";
                str3 = str3 + "font-size:" + size + "px; ";
            } else if (characterStyle instanceof ForegroundColorSpan) {
                str3 = str3 + "color:" + ColorKt.colorToHexString(((ForegroundColorSpan) characterStyle).getForegroundColor()) + "; ";
            } else if (characterStyle instanceof BackgroundColorSpan) {
                str3 = str3 + "background-color:" + ColorKt.colorToHexString(((BackgroundColorSpan) characterStyle).getBackgroundColor()) + "; ";
            }
        }
        if (str.length() == 0) {
            if (str3.length() == 0) {
                return "";
            }
        }
        String str4 = str + str2;
        if (str3.length() > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(str4);
            sb.append("style=\"");
            trim = StringsKt__StringsKt.trim((CharSequence) str3);
            sb.append(trim.toString());
            sb.append('\"');
            str4 = sb.toString();
        }
        return "<font " + str4 + '>';
    }

    @Override // com.onegravity.rteditor.converter.html.ISpannedToHtmlConverter
    public void convertText(@NotNull SortedSet<CharacterStyle> spans, int start, int end) {
        List reversed;
        Intrinsics.checkNotNullParameter(spans, "spans");
        for (Map.Entry<Range<Integer>, List<CharacterStyle>> entry : m31622e(spans, start, end).entrySet()) {
            Range<Integer> key = entry.getKey();
            List<CharacterStyle> value = entry.getValue();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it2 = value.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                CharacterStyle characterStyle = (CharacterStyle) it2.next();
                String m31621d = m31621d(characterStyle);
                String m31623f = m31623f(characterStyle);
                if (m31621d.length() > 0) {
                    if (m31623f.length() > 0) {
                        arrayList.add(Pair.create(m31621d, m31623f));
                    }
                }
            }
            String m31620c = m31620c(value);
            if (m31620c.length() > 0) {
                arrayList.add(Pair.create(m31620c, m31619b()));
            }
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                getOut().append((String) ((Pair) it3.next()).first);
            }
            StringBuilder out = getOut();
            Spanned text = getText();
            Integer lower = key.getLower();
            Intrinsics.checkNotNullExpressionValue(lower, "getLower(...)");
            int intValue = lower.intValue();
            Integer upper = key.getUpper();
            Intrinsics.checkNotNullExpressionValue(upper, "getUpper(...)");
            out.append(escape$sdk_rteditor_release(text, intValue, upper.intValue()));
            reversed = CollectionsKt___CollectionsKt.reversed(arrayList);
            Iterator it4 = reversed.iterator();
            while (it4.hasNext()) {
                getOut().append((String) ((Pair) it4.next()).second);
            }
        }
    }

    /* renamed from: d */
    public final String m31621d(CharacterStyle style) {
        if (style instanceof BoldSpan) {
            return "<b>";
        }
        if (style instanceof ItalicSpan) {
            return "<i>";
        }
        if (style instanceof UnderlineSpan) {
            return "<u>";
        }
        if (style instanceof SuperscriptSpan) {
            return "<sup>";
        }
        if (style instanceof SubscriptSpan) {
            return "<sub>";
        }
        if (style instanceof StrikethroughSpan) {
            return "<strike>";
        }
        if (style instanceof LinkSpan) {
            return "<a href=\"" + ((LinkSpan) style).getURL() + "\">";
        }
        if (style instanceof ImageSpan) {
            RTImage image = ((ImageSpan) style).getImage();
            List<RTImage> images$sdk_rteditor_release = getImages$sdk_rteditor_release();
            Intrinsics.checkNotNull(image);
            images$sdk_rteditor_release.add(image);
            return "<img src=\"" + image.getFilePath(getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_FORMAT java.lang.String()) + "\">";
        }
        if (style instanceof AudioSpan) {
            return "<embed src=\"" + ((AudioSpan) style).getAudio().getFilePath(getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_FORMAT java.lang.String()) + "\">";
        }
        if (!(style instanceof VideoSpan)) {
            return "";
        }
        return "<video controls src=\"" + ((VideoSpan) style).getVideo().getFilePath(getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_FORMAT java.lang.String()) + "\">";
    }

    /* renamed from: e */
    public final LinkedHashMap<Range<Integer>, List<CharacterStyle>> m31622e(SortedSet<CharacterStyle> spans, int start, int end) {
        TreeSet<Integer> m31618a = m31618a(spans, start, end);
        LinkedHashMap<Range<Integer>, List<CharacterStyle>> linkedHashMap = new LinkedHashMap<>();
        int i = 0;
        Integer[] numArr = (Integer[]) m31618a.toArray(new Integer[0]);
        int length = numArr.length - 1;
        while (i < length) {
            int intValue = numArr[i].intValue();
            i++;
            int intValue2 = numArr[i].intValue();
            if (intValue < intValue2) {
                ArrayList arrayList = new ArrayList();
                for (CharacterStyle characterStyle : spans) {
                    int spanStart = getText().getSpanStart(characterStyle);
                    int spanEnd = getText().getSpanEnd(characterStyle);
                    if (spanStart <= intValue && spanEnd >= intValue2) {
                        arrayList.add(characterStyle);
                    }
                }
                linkedHashMap.put(new Range<>(Integer.valueOf(intValue), Integer.valueOf(intValue2)), arrayList);
            }
        }
        return linkedHashMap;
    }

    /* renamed from: f */
    public final String m31623f(CharacterStyle style) {
        return style instanceof URLSpan ? "</a>" : ((style instanceof TypefaceSpan) || (style instanceof ForegroundColorSpan) || (style instanceof BackgroundColorSpan) || (style instanceof AbsoluteSizeSpan)) ? "</font>" : style instanceof StrikethroughSpan ? "</strike>" : style instanceof SubscriptSpan ? "</sub>" : style instanceof SuperscriptSpan ? "</sup>" : style instanceof UnderlineSpan ? "</u>" : style instanceof BoldSpan ? "</b>" : style instanceof ItalicSpan ? "</i>" : "";
    }
}
