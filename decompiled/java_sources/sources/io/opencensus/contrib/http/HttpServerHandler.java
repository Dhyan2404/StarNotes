package io.opencensus.contrib.http;

import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.AbstractC14486u3;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import io.opencensus.stats.Stats;
import io.opencensus.stats.StatsRecorder;
import io.opencensus.tags.TagContextBuilder;
import io.opencensus.tags.TagKey;
import io.opencensus.tags.TagMetadata;
import io.opencensus.tags.TagValue;
import io.opencensus.tags.Tagger;
import io.opencensus.tags.Tags;
import io.opencensus.trace.Link;
import io.opencensus.trace.Span;
import io.opencensus.trace.SpanContext;
import io.opencensus.trace.Tracer;
import io.opencensus.trace.propagation.SpanContextParseException;
import io.opencensus.trace.propagation.TextFormat;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes10.dex */
public class HttpServerHandler<Q, P, C> extends AbstractC14486u3<Q, P> {

    /* renamed from: b */
    public final TextFormat.Getter<C> f94661b;

    /* renamed from: c */
    public final TextFormat f94662c;

    /* renamed from: d */
    public final Tracer f94663d;

    /* renamed from: e */
    public final Boolean f94664e;

    /* renamed from: f */
    public final StatsRecorder f94665f;

    /* renamed from: g */
    public final Tagger f94666g;

    public HttpServerHandler(Tracer tracer, HttpExtractor<Q, P> httpExtractor, TextFormat textFormat, TextFormat.Getter<C> getter, Boolean bool) {
        super(httpExtractor);
        Preconditions.checkNotNull(tracer, "tracer");
        Preconditions.checkNotNull(textFormat, "textFormat");
        Preconditions.checkNotNull(getter, "getter");
        Preconditions.checkNotNull(bool, "publicEndpoint");
        this.f94663d = tracer;
        this.f94662c = textFormat;
        this.f94661b = getter;
        this.f94664e = bool;
        this.f94665f = Stats.getStatsRecorder();
        this.f94666g = Tags.getTagger();
    }

    /* renamed from: g */
    public final void m60952g(HttpRequestContext httpRequestContext, Q q, int i) {
        double millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - httpRequestContext.f94654a);
        String method = this.f86060a.getMethod(q);
        String route = this.f86060a.getRoute(q);
        TagContextBuilder builder = this.f94666g.toBuilder(httpRequestContext.f94660g);
        TagKey tagKey = HttpMeasureConstants.HTTP_SERVER_METHOD;
        if (method == null) {
            method = "";
        }
        TagValue create = TagValue.create(method);
        TagMetadata tagMetadata = HttpRequestContext.f94653i;
        TagContextBuilder put = builder.put(tagKey, create, tagMetadata);
        TagKey tagKey2 = HttpMeasureConstants.HTTP_SERVER_ROUTE;
        if (route == null) {
            route = "";
        }
        this.f94665f.newMeasureMap().put(HttpMeasureConstants.HTTP_SERVER_LATENCY, millis).put(HttpMeasureConstants.HTTP_SERVER_RECEIVED_BYTES, httpRequestContext.f94657d.get()).put(HttpMeasureConstants.HTTP_SERVER_SENT_BYTES, httpRequestContext.f94656c.get()).record(put.put(tagKey2, TagValue.create(route), tagMetadata).put(HttpMeasureConstants.HTTP_SERVER_STATUS, TagValue.create(i == 0 ? "error" : Integer.toString(i)), tagMetadata).build());
    }

    @Override // com.sunia.HTREnginev2.AbstractC14486u3
    public /* bridge */ /* synthetic */ Span getSpanFromContext(HttpRequestContext httpRequestContext) {
        return super.getSpanFromContext(httpRequestContext);
    }

    public void handleEnd(HttpRequestContext httpRequestContext, Q q, @Nullable P p, @Nullable Throwable th) {
        Preconditions.checkNotNull(httpRequestContext, "context");
        Preconditions.checkNotNull(q, AbstractLogger.REQUEST);
        int statusCode = this.f86060a.getStatusCode(p);
        m60952g(httpRequestContext, q, statusCode);
        m57532f(httpRequestContext.f94655b, statusCode, th);
    }

    public HttpRequestContext handleStart(C c, Q q) {
        SpanContext spanContext;
        Preconditions.checkNotNull(c, "carrier");
        Preconditions.checkNotNull(q, AbstractLogger.REQUEST);
        String m57531c = m57531c(q, this.f86060a);
        try {
            spanContext = this.f94662c.extract(c, this.f94661b);
        } catch (SpanContextParseException unused) {
            spanContext = null;
        }
        Span startSpan = ((spanContext == null || this.f94664e.booleanValue()) ? this.f94663d.spanBuilder(m57531c) : this.f94663d.spanBuilderWithRemoteParent(m57531c, spanContext)).setSpanKind(Span.Kind.SERVER).startSpan();
        if (this.f94664e.booleanValue() && spanContext != null) {
            startSpan.addLink(Link.fromSpanContext(spanContext, Link.Type.PARENT_LINKED_SPAN));
        }
        if (startSpan.getOptions().contains(Span.Options.RECORD_EVENTS)) {
            m57529a(startSpan, q, this.f86060a);
        }
        return m57530b(startSpan, this.f94666g.getCurrentTagContext());
    }
}
