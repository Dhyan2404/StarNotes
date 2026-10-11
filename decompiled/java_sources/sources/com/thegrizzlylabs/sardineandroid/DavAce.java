package com.thegrizzlylabs.sardineandroid;

import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.thegrizzlylabs.sardineandroid.DavPrincipal;
import com.thegrizzlylabs.sardineandroid.model.Ace;
import com.thegrizzlylabs.sardineandroid.model.All;
import com.thegrizzlylabs.sardineandroid.model.Authenticated;
import com.thegrizzlylabs.sardineandroid.model.Bind;
import com.thegrizzlylabs.sardineandroid.model.Deny;
import com.thegrizzlylabs.sardineandroid.model.Grant;
import com.thegrizzlylabs.sardineandroid.model.Principal;
import com.thegrizzlylabs.sardineandroid.model.Privilege;
import com.thegrizzlylabs.sardineandroid.model.Property;
import com.thegrizzlylabs.sardineandroid.model.Read;
import com.thegrizzlylabs.sardineandroid.model.ReadAcl;
import com.thegrizzlylabs.sardineandroid.model.ReadCurrentUserPrivilegeSet;
import com.thegrizzlylabs.sardineandroid.model.Self;
import com.thegrizzlylabs.sardineandroid.model.SimplePrivilege;
import com.thegrizzlylabs.sardineandroid.model.UnBind;
import com.thegrizzlylabs.sardineandroid.model.Unauthenticated;
import com.thegrizzlylabs.sardineandroid.model.Unlock;
import com.thegrizzlylabs.sardineandroid.model.Write;
import com.thegrizzlylabs.sardineandroid.model.WriteContent;
import com.thegrizzlylabs.sardineandroid.model.WriteProperties;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.simpleframework.xml.Root;

/* loaded from: classes10.dex */
public class DavAce {

    /* renamed from: a */
    public final DavPrincipal f93826a;

    /* renamed from: b */
    public final List<String> f93827b;

    /* renamed from: c */
    public final List<String> f93828c;

    /* renamed from: d */
    public final String f93829d;

    /* renamed from: e */
    public final boolean f93830e;

    /* renamed from: com.thegrizzlylabs.sardineandroid.DavAce$a */
    /* loaded from: classes10.dex */
    public static /* synthetic */ class C16902a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f93831a;

        static {
            int[] iArr = new int[DavPrincipal.PrincipalType.values().length];
            f93831a = iArr;
            try {
                iArr[DavPrincipal.PrincipalType.HREF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f93831a[DavPrincipal.PrincipalType.PROPERTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f93831a[DavPrincipal.PrincipalType.KEY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public DavAce(DavPrincipal davPrincipal) {
        this.f93826a = davPrincipal;
        this.f93827b = new ArrayList();
        this.f93828c = new ArrayList();
        this.f93829d = null;
        this.f93830e = false;
    }

    /* renamed from: a */
    public final List<Privilege> m60258a(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            Privilege privilege = new Privilege();
            if ("all".equals(str)) {
                privilege.getContent().add(new All());
            } else if ("bind".equals(str)) {
                privilege.getContent().add(new Bind());
            } else if ("read".equals(str)) {
                privilege.getContent().add(new Read());
            } else if ("read-acl".equals(str)) {
                privilege.getContent().add(new ReadAcl());
            } else if ("read-current-user-privilege-set".equals(str)) {
                privilege.getContent().add(new ReadCurrentUserPrivilegeSet());
            } else if ("unbind".equals(str)) {
                privilege.getContent().add(new UnBind());
            } else if (DevicePushAction.UNLOCK_DEVICE.equals(str)) {
                privilege.getContent().add(new Unlock());
            } else if ("write".equals(str)) {
                privilege.getContent().add(new Write());
            } else if ("write-content".equals(str)) {
                privilege.getContent().add(new WriteContent());
            } else if ("write-properties".equals(str)) {
                privilege.getContent().add(new WriteProperties());
            }
            arrayList.add(privilege);
        }
        return arrayList;
    }

    public List<String> getDenied() {
        return this.f93828c;
    }

    public List<String> getGranted() {
        return this.f93827b;
    }

    public String getInherited() {
        return this.f93829d;
    }

    public DavPrincipal getPrincipal() {
        return this.f93826a;
    }

    public boolean isProtected() {
        return this.f93830e;
    }

    public Ace toModel() {
        Ace ace = new Ace();
        Principal principal = new Principal();
        int i = C16902a.f93831a[this.f93826a.getPrincipalType().ordinal()];
        if (i == 1) {
            principal.setHref(this.f93826a.getValue());
        } else if (i == 2) {
            principal.setProperty(new Property());
            principal.getProperty().setProperty(SardineUtil.createElement(this.f93826a.getProperty()));
        } else if (i == 3) {
            if ("all".equals(this.f93826a.getValue())) {
                principal.setAll(new All());
            } else if (DavPrincipal.KEY_AUTHENTICATED.equals(this.f93826a.getValue())) {
                principal.setAuthenticated(new Authenticated());
            } else if (DavPrincipal.KEY_UNAUTHENTICATED.equals(this.f93826a.getValue())) {
                principal.setUnauthenticated(new Unauthenticated());
            } else if (DavPrincipal.KEY_SELF.equals(this.f93826a.getValue())) {
                principal.setSelf(new Self());
            }
        }
        ace.setPrincipal(principal);
        List<String> list = this.f93827b;
        if (list != null && list.size() > 0) {
            ace.setGrant(new Grant());
            ace.getGrant().setPrivilege(m60258a(this.f93827b));
        }
        List<String> list2 = this.f93828c;
        if (list2 != null && list2.size() > 0) {
            ace.setDeny(new Deny());
            ace.getDeny().setPrivilege(m60258a(this.f93828c));
        }
        return ace;
    }

    public DavAce(Ace ace) {
        this.f93826a = new DavPrincipal(ace.getPrincipal());
        this.f93827b = new ArrayList();
        this.f93828c = new ArrayList();
        if (ace.getGrant() != null) {
            Iterator<Privilege> it2 = ace.getGrant().getPrivilege().iterator();
            while (it2.hasNext()) {
                Iterator<SimplePrivilege> it3 = it2.next().getContent().iterator();
                while (it3.hasNext()) {
                    this.f93827b.add(((Root) it3.next().getClass().getAnnotation(Root.class)).name());
                }
            }
        }
        if (ace.getDeny() != null) {
            Iterator<Privilege> it4 = ace.getDeny().getPrivilege().iterator();
            while (it4.hasNext()) {
                Iterator<SimplePrivilege> it5 = it4.next().getContent().iterator();
                while (it5.hasNext()) {
                    this.f93828c.add(((Root) it5.next().getClass().getAnnotation(Root.class)).name());
                }
            }
        }
        if (ace.getInherited() != null) {
            this.f93829d = ace.getInherited().getHref();
        } else {
            this.f93829d = null;
        }
        this.f93830e = ace.getProtected() != null;
    }
}
