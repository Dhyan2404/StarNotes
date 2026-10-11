package com.thegrizzlylabs.sardineandroid;

import com.thegrizzlylabs.sardineandroid.model.Ace;
import com.thegrizzlylabs.sardineandroid.model.Acl;
import com.thegrizzlylabs.sardineandroid.model.Group;
import com.thegrizzlylabs.sardineandroid.model.Owner;
import com.thegrizzlylabs.sardineandroid.model.Propstat;
import com.thegrizzlylabs.sardineandroid.model.Response;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes10.dex */
public class DavAcl {

    /* renamed from: a */
    public final String f93832a;

    /* renamed from: b */
    public final String f93833b;

    /* renamed from: c */
    public List<DavAce> f93834c;

    public DavAcl(Response response) {
        this.f93832a = m60261c(response);
        this.f93833b = m60260b(response);
        this.f93834c = m60259a(response);
    }

    /* renamed from: a */
    public final List<DavAce> m60259a(Response response) {
        ArrayList arrayList = new ArrayList();
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return null;
        }
        Iterator<Propstat> it2 = propstat.iterator();
        while (it2.hasNext()) {
            Acl acl = it2.next().getProp().getAcl();
            if (acl != null && acl.getAce() != null) {
                Iterator<Ace> it3 = acl.getAce().iterator();
                while (it3.hasNext()) {
                    arrayList.add(new DavAce(it3.next()));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public final String m60260b(Response response) {
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return null;
        }
        Iterator<Propstat> it2 = propstat.iterator();
        while (it2.hasNext()) {
            Group group = it2.next().getProp().getGroup();
            if (group != null && group.getHref() != null) {
                return group.getHref();
            }
        }
        return null;
    }

    /* renamed from: c */
    public final String m60261c(Response response) {
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return null;
        }
        Iterator<Propstat> it2 = propstat.iterator();
        while (it2.hasNext()) {
            Owner owner = it2.next().getProp().getOwner();
            if (owner != null) {
                if (owner.getUnauthenticated() != null) {
                    return DavPrincipal.KEY_UNAUTHENTICATED;
                }
                if (owner.getHref() != null) {
                    return owner.getHref();
                }
            }
        }
        return null;
    }

    public List<DavAce> getAces() {
        return this.f93834c;
    }

    public String getGroup() {
        return this.f93833b;
    }

    public String getOwner() {
        return this.f93832a;
    }
}
