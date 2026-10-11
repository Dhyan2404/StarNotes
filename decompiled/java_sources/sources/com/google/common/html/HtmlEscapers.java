package com.google.common.html;

import com.google.common.annotations.GwtCompatible;
import com.google.common.escape.Escaper;
import com.google.common.escape.Escapers;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sunia.HTREnginev2.xnf;
import org.apache.logging.log4j.util.Chars;

@xnf
@GwtCompatible
/* loaded from: classes6.dex */
public final class HtmlEscapers {

    /* renamed from: a */
    public static final Escaper f34820a = Escapers.builder().addEscape('\"', SerializerConstants.ENTITY_QUOT).addEscape(Chars.QUOTE, "&#39;").addEscape('&', "&amp;").addEscape('<', "&lt;").addEscape('>', "&gt;").build();

    public static Escaper htmlEscaper() {
        return f34820a;
    }
}
