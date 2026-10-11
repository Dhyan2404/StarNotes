package com.tencent.cos.xml.model.tag;

import java.util.List;

/* loaded from: classes10.dex */
public class WebsiteConfiguration {
    public ErrorDocument errorDocument;
    public IndexDocument indexDocument;
    public RedirectAllRequestTo redirectAllRequestTo;
    public List<RoutingRule> routingRules;

    /* loaded from: classes10.dex */
    public static class Contidion {
        public int httpErrorCodeReturnedEquals = -1;
        public String keyPrefixEquals;
    }

    /* loaded from: classes10.dex */
    public static class ErrorDocument {
        public String key;
    }

    /* loaded from: classes10.dex */
    public static class IndexDocument {
        public String suffix;
    }

    /* loaded from: classes10.dex */
    public static class Redirect {
        public String protocol;
        public String replaceKeyPrefixWith;
        public String replaceKeyWith;
    }

    /* loaded from: classes10.dex */
    public static class RedirectAllRequestTo {
        public String protocol;
    }

    /* loaded from: classes10.dex */
    public static class RoutingRule {
        public Contidion contidion;
        public Redirect redirect;
    }
}
