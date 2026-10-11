package com.sunia.HTREnginev2;

import org.apache.poi.util.XMLHelper;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;

/* loaded from: classes13.dex */
public final /* synthetic */ class qlo implements EntityResolver {
    @Override // org.xml.sax.EntityResolver
    public final InputSource resolveEntity(String str, String str2) {
        return XMLHelper.m69610b(str, str2);
    }
}
