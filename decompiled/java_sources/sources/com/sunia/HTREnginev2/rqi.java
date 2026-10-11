package com.sunia.HTREnginev2;

import java.io.IOException;
import org.apache.xerces.dom.DOMInputImpl;
import org.apache.xerces.util.XMLResourceIdentifierImpl;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;

/* loaded from: classes13.dex */
public class rqi implements LSResourceResolver {

    /* renamed from: e */
    public final /* synthetic */ sqi f83382e;

    public rqi(sqi sqiVar) {
        this.f83382e = sqiVar;
    }

    @Override // org.w3c.dom.ls.LSResourceResolver
    public LSInput resolveResource(String str, String str2, String str3, String str4, String str5) {
        XMLEntityResolver xMLEntityResolver;
        XMLEntityResolver xMLEntityResolver2;
        xMLEntityResolver = this.f83382e.f84475p;
        if (xMLEntityResolver == null) {
            return null;
        }
        try {
            xMLEntityResolver2 = this.f83382e.f84475p;
            XMLInputSource resolveEntity = xMLEntityResolver2.resolveEntity(new XMLResourceIdentifierImpl(str3, str4, str5, null));
            if (resolveEntity == null) {
                return null;
            }
            DOMInputImpl dOMInputImpl = new DOMInputImpl();
            dOMInputImpl.setBaseURI(resolveEntity.getBaseSystemId());
            dOMInputImpl.setByteStream(resolveEntity.getByteStream());
            dOMInputImpl.setCharacterStream(resolveEntity.getCharacterStream());
            dOMInputImpl.setEncoding(resolveEntity.getEncoding());
            dOMInputImpl.setPublicId(resolveEntity.getPublicId());
            dOMInputImpl.setSystemId(resolveEntity.getSystemId());
            return dOMInputImpl;
        } catch (IOException e) {
            throw new XNIException(e);
        }
    }
}
