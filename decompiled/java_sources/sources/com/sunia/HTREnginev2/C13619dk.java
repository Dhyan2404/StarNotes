package com.sunia.HTREnginev2;

import io.opencensus.resource.Resource;
import java.util.Map;
import javax.annotation.Nullable;

/* renamed from: com.sunia.HTREnginev2.dk */
/* loaded from: classes10.dex */
public final class C13619dk extends Resource {

    /* renamed from: j */
    public final String f67939j;

    /* renamed from: k */
    public final Map<String, String> f67940k;

    public C13619dk(@Nullable String str, Map<String, String> map) {
        this.f67939j = str;
        if (map == null) {
            throw new NullPointerException("Null labels");
        }
        this.f67940k = map;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Resource)) {
            return false;
        }
        Resource resource = (Resource) obj;
        String str = this.f67939j;
        if (str != null ? str.equals(resource.getType()) : resource.getType() == null) {
            if (this.f67940k.equals(resource.getLabels())) {
                return true;
            }
        }
        return false;
    }

    @Override // io.opencensus.resource.Resource
    public Map<String, String> getLabels() {
        return this.f67940k;
    }

    @Override // io.opencensus.resource.Resource
    @Nullable
    public String getType() {
        return this.f67939j;
    }

    public int hashCode() {
        String str = this.f67939j;
        return this.f67940k.hashCode() ^ (((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003);
    }

    public String toString() {
        return "Resource{type=" + this.f67939j + ", labels=" + this.f67940k + "}";
    }
}
