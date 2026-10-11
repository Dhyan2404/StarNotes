package com.sunia.HTREnginev2;

import java.util.function.Function;
import org.apache.poi.xddf.usermodel.text.XDDFTextParagraph;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextSpacing;

/* loaded from: classes13.dex */
public final /* synthetic */ class pho implements Function {

    /* renamed from: e */
    public final /* synthetic */ XDDFTextParagraph f80811e;

    public /* synthetic */ pho(XDDFTextParagraph xDDFTextParagraph) {
        this.f80811e = xDDFTextParagraph;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return XDDFTextParagraph.m69630j(this.f80811e, (CTTextSpacing) obj);
    }
}
