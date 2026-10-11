package com.sunia.HTREnginev2;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import io.opencensus.contrib.http.HttpExtractor;
import io.opencensus.contrib.http.HttpRequestContext;
import io.opencensus.contrib.http.util.HttpTraceAttributeConstants;
import io.opencensus.contrib.http.util.HttpTraceUtil;
import io.opencensus.tags.TagContext;
import io.opencensus.trace.AttributeValue;
import io.opencensus.trace.MessageEvent;
import io.opencensus.trace.Span;
import javax.annotation.Nullable;

/* renamed from: com.sunia.HTREnginev2.u3 */
/* loaded from: classes10.dex */
public abstract class AbstractC14486u3<Q, P> {

    /* renamed from: a */
    @VisibleForTesting
    public final HttpExtractor<Q, P> f86060a;

    public AbstractC14486u3(HttpExtractor<Q, P> httpExtractor) {
        Preconditions.checkNotNull(httpExtractor, "extractor");
        this.f86060a = httpExtractor;
    }

    /* renamed from: d */
    public static void m57527d(Span span, String str, @Nullable String str2) {
        if (str2 == null || str2.isEmpty()) {
            return;
        }
        span.putAttribute(str, AttributeValue.stringAttributeValue(str2));
    }

    /* renamed from: e */
    public static void m57528e(Span span, long j, MessageEvent.Type type, long j2, long j3) {
        span.addMessageEvent(MessageEvent.builder(type, j).setUncompressedMessageSize(j2).setCompressedMessageSize(j3).build());
    }

    /* renamed from: a */
    public final void m57529a(Span span, Q q, HttpExtractor<Q, P> httpExtractor) {
        m57527d(span, HttpTraceAttributeConstants.HTTP_USER_AGENT, httpExtractor.getUserAgent(q));
        m57527d(span, HttpTraceAttributeConstants.HTTP_HOST, httpExtractor.getHost(q));
        m57527d(span, HttpTraceAttributeConstants.HTTP_METHOD, httpExtractor.getMethod(q));
        m57527d(span, HttpTraceAttributeConstants.HTTP_PATH, httpExtractor.getPath(q));
        m57527d(span, "http.route", httpExtractor.getRoute(q));
        m57527d(span, HttpTraceAttributeConstants.HTTP_URL, httpExtractor.getUrl(q));
    }

    /* renamed from: b */
    public HttpRequestContext m57530b(Span span, TagContext tagContext) {
        return new HttpRequestContext(span, tagContext);
    }

    /* renamed from: c */
    public final String m57531c(Q q, HttpExtractor<Q, P> httpExtractor) {
        String path = httpExtractor.getPath(q);
        if (path == null) {
            path = "/";
        }
        if (path.startsWith("/")) {
            return path;
        }
        return "/" + path;
    }

    /* renamed from: f */
    public void m57532f(Span span, int i, @Nullable Throwable th) {
        if (span.getOptions().contains(Span.Options.RECORD_EVENTS)) {
            span.putAttribute(HttpTraceAttributeConstants.HTTP_STATUS_CODE, AttributeValue.longAttributeValue(i));
            span.setStatus(HttpTraceUtil.parseResponseStatus(i, th));
        }
        span.end();
    }

    public Span getSpanFromContext(HttpRequestContext httpRequestContext) {
        Preconditions.checkNotNull(httpRequestContext, "context");
        return httpRequestContext.f94655b;
    }

    public final void handleMessageReceived(HttpRequestContext httpRequestContext, long j) {
        Preconditions.checkNotNull(httpRequestContext, "context");
        httpRequestContext.f94657d.addAndGet(j);
        if (httpRequestContext.f94655b.getOptions().contains(Span.Options.RECORD_EVENTS)) {
            m57528e(httpRequestContext.f94655b, httpRequestContext.f94659f.addAndGet(1L), MessageEvent.Type.RECEIVED, j, 0L);
        }
    }

    public final void handleMessageSent(HttpRequestContext httpRequestContext, long j) {
        Preconditions.checkNotNull(httpRequestContext, "context");
        httpRequestContext.f94656c.addAndGet(j);
        if (httpRequestContext.f94655b.getOptions().contains(Span.Options.RECORD_EVENTS)) {
            m57528e(httpRequestContext.f94655b, httpRequestContext.f94658e.addAndGet(1L), MessageEvent.Type.SENT, j, 0L);
        }
    }
}
