package com.thegrizzlylabs.sardineandroid.model;

import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;

@Namespace(prefix = SardineUtil.DEFAULT_NAMESPACE_PREFIX, reference = SardineUtil.DEFAULT_NAMESPACE_URI)
@Root
/* loaded from: classes10.dex */
public class SearchRequest {
    private String language;
    private String query;

    public SearchRequest() {
        this.language = "davbasic";
        this.query = "";
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getQuery() {
        return this.query;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setQuery(String str) {
        this.query = str;
    }

    public SearchRequest(String str, String str2) {
        this.language = str;
        this.query = str2;
    }
}
