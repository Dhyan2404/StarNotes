package com.thegrizzlylabs.sardineandroid.model;

import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;

@Namespace(prefix = SardineUtil.DEFAULT_NAMESPACE_PREFIX, reference = SardineUtil.DEFAULT_NAMESPACE_URI)
@Root
/* loaded from: classes10.dex */
public class Principal {

    @Element(required = false)
    private All all;

    @Element(required = false)
    private Authenticated authenticated;

    @Element(required = false)
    private String href;

    @Element(required = false)
    private Property property;

    @Element(required = false)
    private Self self;

    @Element(required = false)
    private Unauthenticated unauthenticated;

    public All getAll() {
        return this.all;
    }

    public Authenticated getAuthenticated() {
        return this.authenticated;
    }

    public String getHref() {
        return this.href;
    }

    public Property getProperty() {
        return this.property;
    }

    public Self getSelf() {
        return this.self;
    }

    public Unauthenticated getUnauthenticated() {
        return this.unauthenticated;
    }

    public void setAll(All all) {
        this.all = all;
    }

    public void setAuthenticated(Authenticated authenticated) {
        this.authenticated = authenticated;
    }

    public void setHref(String str) {
        this.href = str;
    }

    public void setProperty(Property property) {
        this.property = property;
    }

    public void setSelf(Self self) {
        this.self = self;
    }

    public void setUnauthenticated(Unauthenticated unauthenticated) {
        this.unauthenticated = unauthenticated;
    }
}
