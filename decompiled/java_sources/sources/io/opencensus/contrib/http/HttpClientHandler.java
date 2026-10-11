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
import io.opencensus.trace.Span;
import io.opencensus.trace.SpanContext;
import io.opencensus.trace.Tracer;
import io.opencensus.trace.propagation.TextFormat;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes10.dex */
public class HttpClientHandler<Q, P, C> extends AbstractC14486u3<Q, P> {

    /* renamed from: b */
    public final TextFormat.Setter<C> f94647b;

    /* renamed from: c */
    public final TextFormat f94648c;

    /* renamed from: d */
    public final Tracer f94649d;

    /* renamed from: e */
    public final StatsRecorder f94650e;

    /* renamed from: f */
    public final Tagger f94651f;

    public HttpClientHandler(Tracer tracer, HttpExtractor<Q, P> httpExtractor, TextFormat textFormat, TextFormat.Setter<C> setter) {
        super(httpExtractor);
        Preconditions.checkNotNull(setter, "setter");
        Preconditions.checkNotNull(textFormat, "textFormat");
        Preconditions.checkNotNull(tracer, "tracer");
        this.f94647b = setter;
        this.f94648c = textFormat;
        this.f94649d = tracer;
        this.f94650e = Stats.getStatsRecorder();
        this.f94651f = Tags.getTagger();
    }

    /* renamed from: g */
    public final void m60951g(HttpRequestContext httpRequestContext, @Nullable Q q, int i) {
        double millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - httpRequestContext.f94654a);
        String method = q == null ? "" : this.f86060a.getMethod(q);
        String host = q == null ? "null_request" : this.f86060a.getHost(q);
        TagContextBuilder builder = this.f94651f.toBuilder(httpRequestContext.f94660g);
        TagKey tagKey = HttpMeasureConstants.HTTP_CLIENT_HOST;
        if (host == null) {
            host = "null_host";
        }
        TagValue create = TagValue.create(host);
        TagMetadata tagMetadata = HttpRequestContext.f94653i;
        this.f94650e.newMeasureMap().put(HttpMeasureConstants.HTTP_CLIENT_ROUNDTRIP_LATENCY, millis).put(HttpMeasureConstants.HTTP_CLIENT_SENT_BYTES, httpRequestContext.f94656c.get()).put(HttpMeasureConstants.HTTP_CLIENT_RECEIVED_BYTES, httpRequestContext.f94657d.get()).record(builder.put(tagKey, create, tagMetadata).put(HttpMeasureConstants.HTTP_CLIENT_METHOD, TagValue.create(method != null ? method : ""), tagMetadata).put(HttpMeasureConstants.HTTP_CLIENT_STATUS, TagValue.create(i == 0 ? "error" : Integer.toString(i)), tagMetadata).build());
    }

    @Override // com.sunia.HTREnginev2.AbstractC14486u3
    public /* bridge */ /* synthetic */ Span getSpanFromContext(HttpRequestContext httpRequestContext) {
        return super.getSpanFromContext(httpRequestContext);
    }

    public void handleEnd(HttpRequestContext httpRequestContext, @Nullable Q q, @Nullable P p, @Nullable Throwable th) {
        Preconditions.checkNotNull(httpRequestContext, "context");
        int statusCode = this.f86060a.getStatusCode(p);
        m60951g(httpRequestContext, q, statusCode);
        m57532f(httpRequestContext.f94655b, statusCode, th);
    }

    public HttpRequestContext handleStart(@Nullable Span span, C c, Q q) {
        Preconditions.checkNotNull(c, "carrier");
        Preconditions.checkNotNull(q, AbstractLogger.REQUEST);
        if (span == null) {
            span = this.f94649d.getCurrentSpan();
        }
        Span startSpan = this.f94649d.spanBuilderWithExplicitParent(m57531c(q, this.f86060a), span).setSpanKind(Span.Kind.CLIENT).startSpan();
        if (startSpan.getOptions().contains(Span.Options.RECORD_EVENTS)) {
            m57529a(startSpan, q, this.f86060a);
        }
        SpanContext context = startSpan.getContext();
        if (!context.equals(SpanContext.INVALID)) {
            this.f94648c.inject(context, c, this.f94647b);
        }
        return m57530b(startSpan, this.f94651f.getCurrentTagContext());
    }
}
