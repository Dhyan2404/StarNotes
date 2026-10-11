package net.p110sf.saxon.lib;

import java.io.IOException;
import java.util.Objects;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.ext.EntityResolver2;

/* loaded from: classes11.dex */
public class ChainedEntityResolver implements EntityResolver2 {

    /* renamed from: e */
    public final EntityResolver f100483e;

    /* renamed from: f */
    public final EntityResolver f100484f;

    public ChainedEntityResolver(EntityResolver entityResolver, EntityResolver entityResolver2) {
        Objects.requireNonNull(entityResolver);
        Objects.requireNonNull(entityResolver2);
        this.f100483e = entityResolver;
        this.f100484f = entityResolver2;
    }

    @Override // org.xml.sax.ext.EntityResolver2
    public InputSource getExternalSubset(String str, String str2) throws SAXException, IOException {
        EntityResolver entityResolver = this.f100483e;
        InputSource externalSubset = entityResolver instanceof EntityResolver2 ? ((EntityResolver2) entityResolver).getExternalSubset(str, str2) : null;
        if (externalSubset != null) {
            return externalSubset;
        }
        EntityResolver entityResolver2 = this.f100484f;
        return entityResolver2 instanceof EntityResolver2 ? ((EntityResolver2) entityResolver2).getExternalSubset(str, str2) : externalSubset;
    }

    @Override // org.xml.sax.EntityResolver
    public InputSource resolveEntity(String str, String str2) throws SAXException, IOException {
        InputSource resolveEntity = this.f100483e.resolveEntity(str, str2);
        return resolveEntity == null ? this.f100484f.resolveEntity(str, str2) : resolveEntity;
    }

    @Override // org.xml.sax.ext.EntityResolver2
    public InputSource resolveEntity(String str, String str2, String str3, String str4) throws SAXException, IOException {
        InputSource resolveEntity;
        EntityResolver entityResolver = this.f100483e;
        if (entityResolver instanceof EntityResolver2) {
            resolveEntity = ((EntityResolver2) entityResolver).resolveEntity(str, str2, str3, str4);
        } else {
            resolveEntity = entityResolver.resolveEntity(str2, str4);
        }
        if (resolveEntity != null) {
            return resolveEntity;
        }
        EntityResolver entityResolver2 = this.f100484f;
        if (entityResolver2 instanceof EntityResolver2) {
            return ((EntityResolver2) entityResolver2).resolveEntity(str, str2, str3, str4);
        }
        return entityResolver2.resolveEntity(str2, str4);
    }
}
