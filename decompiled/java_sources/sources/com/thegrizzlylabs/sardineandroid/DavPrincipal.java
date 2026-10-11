package com.thegrizzlylabs.sardineandroid;

import com.thegrizzlylabs.sardineandroid.model.Principal;
import javax.xml.namespace.QName;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public class DavPrincipal {
    public static final String KEY_ALL = "all";
    public static final String KEY_AUTHENTICATED = "authenticated";
    public static final String KEY_SELF = "self";
    public static final String KEY_UNAUTHENTICATED = "unauthenticated";

    /* renamed from: a */
    public final PrincipalType f93835a;

    /* renamed from: b */
    public final String f93836b;

    /* renamed from: c */
    public final QName f93837c;

    /* renamed from: d */
    public final String f93838d;

    /* loaded from: classes10.dex */
    public enum PrincipalType {
        HREF,
        KEY,
        PROPERTY
    }

    public DavPrincipal(PrincipalType principalType, String str, String str2) {
        this(principalType, str, null, str2);
    }

    public String getDisplayName() {
        return this.f93838d;
    }

    public PrincipalType getPrincipalType() {
        return this.f93835a;
    }

    public QName getProperty() {
        return this.f93837c;
    }

    public String getValue() {
        return this.f93836b;
    }

    public String toString() {
        return "[principalType=" + this.f93835a + ", value=" + this.f93836b + ", property=" + this.f93837c + ", displayName=" + this.f93838d + IteratorUtils.f104924b;
    }

    public DavPrincipal(PrincipalType principalType, String str, QName qName, String str2) {
        if (str != null && principalType == PrincipalType.PROPERTY) {
            throw new IllegalArgumentException("Principal type property can't have a string value");
        }
        if (qName != null && principalType != PrincipalType.PROPERTY) {
            throw new IllegalArgumentException("Principal type " + principalType.name() + " property is not allowed to have a QName property");
        }
        this.f93835a = principalType;
        this.f93836b = str;
        this.f93837c = qName;
        this.f93838d = str2;
    }

    public DavPrincipal(PrincipalType principalType, QName qName, String str) {
        this(principalType, null, qName, str);
    }

    public DavPrincipal(Principal principal) {
        this.f93838d = null;
        if (principal.getHref() != null) {
            this.f93835a = PrincipalType.HREF;
            this.f93836b = principal.getHref();
            this.f93837c = null;
            return;
        }
        if (principal.getProperty() != null) {
            this.f93835a = PrincipalType.PROPERTY;
            this.f93836b = null;
            this.f93837c = new QName(principal.getProperty().getProperty().getNamespaceURI(), principal.getProperty().getProperty().getLocalName());
            return;
        }
        if (principal.getAll() == null && principal.getAuthenticated() == null && principal.getUnauthenticated() == null && principal.getSelf() == null) {
            this.f93835a = null;
            this.f93836b = null;
            this.f93837c = null;
            return;
        }
        this.f93835a = PrincipalType.KEY;
        this.f93837c = null;
        if (principal.getAll() != null) {
            this.f93836b = "all";
            return;
        }
        if (principal.getAuthenticated() != null) {
            this.f93836b = KEY_AUTHENTICATED;
        } else if (principal.getUnauthenticated() != null) {
            this.f93836b = KEY_UNAUTHENTICATED;
        } else {
            this.f93836b = KEY_SELF;
        }
    }
}
