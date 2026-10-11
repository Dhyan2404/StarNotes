package org.mortbay.util.ajax;

import java.util.Map;
import org.mortbay.util.ajax.JSON;

/* renamed from: org.mortbay.util.ajax.b */
/* loaded from: classes13.dex */
public class C20436b implements JSON.Convertible {

    /* renamed from: a */
    public final /* synthetic */ JSON.Convertor f115435a;

    /* renamed from: b */
    public final /* synthetic */ Object f115436b;

    /* renamed from: c */
    public final /* synthetic */ JSON f115437c;

    public C20436b(JSON json, JSON.Convertor convertor, Object obj) {
        this.f115437c = json;
        this.f115435a = convertor;
        this.f115436b = obj;
    }

    @Override // org.mortbay.util.ajax.JSON.Convertible
    public void fromJSON(Map map) {
    }

    @Override // org.mortbay.util.ajax.JSON.Convertible
    public void toJSON(JSON.Output output) {
        this.f115435a.toJSON(this.f115436b, output);
    }
}
