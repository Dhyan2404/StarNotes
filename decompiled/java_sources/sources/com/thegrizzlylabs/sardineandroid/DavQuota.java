package com.thegrizzlylabs.sardineandroid;

import com.thegrizzlylabs.sardineandroid.model.Prop;
import com.thegrizzlylabs.sardineandroid.model.Propstat;
import com.thegrizzlylabs.sardineandroid.model.Response;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;

/* loaded from: classes10.dex */
public class DavQuota {

    /* renamed from: a */
    public final long f93839a;

    /* renamed from: b */
    public final long f93840b;

    public DavQuota(Response response) {
        this.f93839a = m60262a(response);
        this.f93840b = m60263b(response);
    }

    /* renamed from: a */
    public final long m60262a(Response response) {
        String quotaAvailableBytes;
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return Long.MAX_VALUE;
        }
        Iterator<Propstat> it2 = propstat.iterator();
        while (it2.hasNext()) {
            Prop prop = it2.next().getProp();
            if (prop != null && (quotaAvailableBytes = prop.getQuotaAvailableBytes()) != null) {
                try {
                    return Long.parseLong(quotaAvailableBytes);
                } catch (NumberFormatException unused) {
                    Logger.getLogger(DavQuota.class.getName()).warning(String.format("Failed to parse quotaAvailableBytes %s", quotaAvailableBytes));
                }
            }
        }
        return Long.MAX_VALUE;
    }

    /* renamed from: b */
    public final long m60263b(Response response) {
        String quotaUsedBytes;
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return 0L;
        }
        Iterator<Propstat> it2 = propstat.iterator();
        while (it2.hasNext()) {
            Prop prop = it2.next().getProp();
            if (prop != null && (quotaUsedBytes = prop.getQuotaUsedBytes()) != null) {
                try {
                    return Long.parseLong(quotaUsedBytes);
                } catch (NumberFormatException unused) {
                    Logger.getLogger(DavQuota.class.getName()).warning(String.format("Failed to parse quotaUsedBytes %s", quotaUsedBytes));
                }
            }
        }
        return 0L;
    }

    public long getQuotaAvailableBytes() {
        return this.f93839a;
    }

    public long getQuotaUsedBytes() {
        return this.f93840b;
    }
}
