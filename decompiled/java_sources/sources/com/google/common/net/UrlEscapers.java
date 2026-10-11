package com.google.common.net;

import com.google.common.annotations.GwtCompatible;
import com.google.common.escape.Escaper;
import com.sunia.HTREnginev2.mnf;

@mnf
@GwtCompatible
/* loaded from: classes6.dex */
public final class UrlEscapers {

    /* renamed from: a */
    public static final String f35055a = "-_.*";

    /* renamed from: b */
    public static final String f35056b = "-._~!$'()*,;&=@:";

    /* renamed from: c */
    public static final Escaper f35057c = new PercentEscaper("-_.*", true);

    /* renamed from: d */
    public static final Escaper f35058d = new PercentEscaper("-._~!$'()*,;&=@:+", false);

    /* renamed from: e */
    public static final Escaper f35059e = new PercentEscaper("-._~!$'()*,;&=@:+/?", false);

    public static Escaper urlFormParameterEscaper() {
        return f35057c;
    }

    public static Escaper urlFragmentEscaper() {
        return f35059e;
    }

    public static Escaper urlPathSegmentEscaper() {
        return f35058d;
    }
}
