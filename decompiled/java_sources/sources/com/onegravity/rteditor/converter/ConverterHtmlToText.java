package com.onegravity.rteditor.converter;

import android.text.Annotation;
import android.text.Editable;
import android.text.Html;
import com.onegravity.rteditor.api.format.RTHtml;
import com.onegravity.rteditor.api.format.RTPlainText;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTVideo;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import org.xml.sax.XMLReader;

/* loaded from: classes7.dex */
public class ConverterHtmlToText {

    /* renamed from: a */
    public static final char f40167a = 65532;

    /* renamed from: b */
    public static final char f40168b = ' ';

    /* renamed from: c */
    public static final char f40169c = 160;

    /* renamed from: d */
    public static final char f40170d = ' ';

    /* renamed from: com.onegravity.rteditor.converter.ConverterHtmlToText$b */
    /* loaded from: classes7.dex */
    public static class C7055b implements Html.TagHandler {

        /* renamed from: a */
        public static final Set<String> f40171a;

        /* renamed from: b */
        public static final String f40172b = "RT_ANNOTATION";

        /* renamed from: c */
        public static final String f40173c = "hiddenSpan";

        static {
            HashSet hashSet = new HashSet();
            hashSet.add("style");
            hashSet.add(Constants.ELEMNAME_SCRIPT_STRING);
            hashSet.add("title");
            hashSet.add("!");
            f40171a = Collections.unmodifiableSet(hashSet);
        }

        public C7055b() {
        }

        /* renamed from: a */
        public final Object m31602a(Editable editable) {
            Object[] spans = editable.getSpans(0, editable.length(), Annotation.class);
            for (int length = spans.length - 1; length >= 0; length--) {
                Object obj = spans[length];
                Annotation annotation = (Annotation) obj;
                if (editable.getSpanFlags(obj) == 17 && annotation.getKey().equals(f40172b) && annotation.getValue().equals(f40173c)) {
                    return spans[length];
                }
            }
            return null;
        }

        /* renamed from: b */
        public final void m31603b(boolean z, Editable editable) {
            int length = editable.length();
            if (z) {
                editable.setSpan(new Annotation(f40172b, f40173c), length, length, 17);
                return;
            }
            Object m31602a = m31602a(editable);
            if (m31602a != null) {
                int spanStart = editable.getSpanStart(m31602a);
                editable.removeSpan(m31602a);
                editable.delete(spanStart, length);
            }
        }

        @Override // android.text.Html.TagHandler
        public void handleTag(boolean z, String str, Editable editable, XMLReader xMLReader) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (lowerCase.equals("hr") && z) {
                editable.append("_____________________________________________\n");
            } else if (f40171a.contains(lowerCase)) {
                m31603b(z, editable);
            }
        }
    }

    public static RTPlainText convert(RTHtml<? extends RTImage, ? extends RTAudio, ? extends RTVideo> rTHtml) {
        return new RTPlainText(Html.fromHtml(rTHtml.getText(), 63, null, new C7055b()).toString().replace((char) 65532, ' ').replace((char) 160, ' '));
    }

    public static String convert(String str) {
        return Html.fromHtml(str, 63, null, new C7055b()).toString().replace((char) 65532, ' ').replace((char) 160, ' ');
    }
}
