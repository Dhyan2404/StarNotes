package com.thegrizzlylabs.sardineandroid.report;

import com.thegrizzlylabs.sardineandroid.DavResource;
import com.thegrizzlylabs.sardineandroid.model.Limit;
import com.thegrizzlylabs.sardineandroid.model.Multistatus;
import com.thegrizzlylabs.sardineandroid.model.Prop;
import com.thegrizzlylabs.sardineandroid.model.Response;
import com.thegrizzlylabs.sardineandroid.model.SyncCollection;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.math.BigInteger;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.logging.Logger;
import javax.xml.namespace.QName;
import org.w3c.dom.Element;

/* loaded from: classes10.dex */
public class SyncCollectionReport extends SardineReport<Result> {

    /* renamed from: e */
    public static final Logger f93860e = Logger.getLogger(SardineReport.class.getName());

    /* renamed from: a */
    public final String f93861a;

    /* renamed from: b */
    public final SyncLevel f93862b;

    /* renamed from: c */
    public final Set<QName> f93863c;

    /* renamed from: d */
    public final Integer f93864d;

    /* loaded from: classes10.dex */
    public static class Result {

        /* renamed from: a */
        public final List<DavResource> f93865a;

        /* renamed from: b */
        public final String f93866b;

        public Result(List<DavResource> list, String str) {
            this.f93865a = list;
            this.f93866b = str;
        }

        public List<DavResource> getResources() {
            return this.f93865a;
        }

        public String getSyncToken() {
            return this.f93866b;
        }
    }

    /* loaded from: classes10.dex */
    public enum SyncLevel {
        LEVEL_1("1"),
        LEVEL_INFINITY("infinite");

        private final String value;

        SyncLevel(String str) {
            this.value = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.value;
        }
    }

    public SyncCollectionReport(String str, SyncLevel syncLevel, Set<QName> set, Integer num) {
        this.f93861a = str;
        this.f93862b = syncLevel;
        this.f93863c = set;
        this.f93864d = num;
    }

    @Override // com.thegrizzlylabs.sardineandroid.report.SardineReport
    public Object toJaxb() {
        Prop prop = new Prop();
        List<Element> any = prop.getAny();
        Iterator<QName> it2 = this.f93863c.iterator();
        while (it2.hasNext()) {
            any.add(SardineUtil.createElement(it2.next()));
        }
        SyncCollection syncCollection = new SyncCollection();
        String str = this.f93861a;
        if (str == null) {
            str = "";
        }
        syncCollection.setSyncToken(str);
        syncCollection.setSyncLevel(this.f93862b.toString());
        syncCollection.setProp(prop);
        Integer num = this.f93864d;
        if (num != null && num.intValue() > 0) {
            Limit limit = new Limit();
            limit.setNresults(BigInteger.valueOf(this.f93864d.intValue()));
            syncCollection.setLimit(limit);
        }
        return syncCollection;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.thegrizzlylabs.sardineandroid.report.SardineReport
    public Result fromMultistatus(Multistatus multistatus) {
        List<Response> response = multistatus.getResponse();
        ArrayList arrayList = new ArrayList(response.size());
        for (Response response2 : response) {
            try {
                arrayList.add(new DavResource(response2));
            } catch (URISyntaxException unused) {
                f93860e.warning(String.format("Ignore resource with invalid URI %s", response2.getHref()));
            }
        }
        return new Result(arrayList, multistatus.getSyncToken());
    }
}
