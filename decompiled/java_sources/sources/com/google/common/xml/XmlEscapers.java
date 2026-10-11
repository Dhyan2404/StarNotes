package com.google.common.xml;

import com.google.common.annotations.GwtCompatible;
import com.google.common.escape.Escaper;
import com.google.common.escape.Escapers;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sunia.HTREnginev2.qnf;
import net.p110sf.saxon.ma.json.JsonHandler;
import org.apache.logging.log4j.util.Chars;

@GwtCompatible
@qnf
/* loaded from: classes6.dex */
public class XmlEscapers {

    /* renamed from: a */
    public static final char f35497a = 0;

    /* renamed from: b */
    public static final char f35498b = 31;

    /* renamed from: c */
    public static final Escaper f35499c;

    /* renamed from: d */
    public static final Escaper f35500d;

    /* renamed from: e */
    public static final Escaper f35501e;

    static {
        Escapers.Builder builder = Escapers.builder();
        builder.setSafeRange((char) 0, (char) 65533);
        builder.setUnsafeReplacement(JsonHandler.f100617c);
        for (char c = 0; c <= 31; c = (char) (c + 1)) {
            if (c != '\t' && c != '\n' && c != '\r') {
                builder.addEscape(c, JsonHandler.f100617c);
            }
        }
        builder.addEscape('&', "&amp;");
        builder.addEscape('<', "&lt;");
        builder.addEscape('>', "&gt;");
        f35500d = builder.build();
        builder.addEscape(Chars.QUOTE, "&apos;");
        builder.addEscape('\"', SerializerConstants.ENTITY_QUOT);
        f35499c = builder.build();
        builder.addEscape('\t', "&#x9;");
        builder.addEscape('\n', SerializerConstants.ENTITY_CRLF);
        builder.addEscape('\r', "&#xD;");
        f35501e = builder.build();
    }

    public static Escaper xmlAttributeEscaper() {
        return f35501e;
    }

    public static Escaper xmlContentEscaper() {
        return f35500d;
    }
}
