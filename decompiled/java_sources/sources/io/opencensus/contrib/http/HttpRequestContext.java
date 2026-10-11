package io.opencensus.contrib.http;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.gon;
import io.opencensus.tags.TagContext;
import io.opencensus.tags.TagMetadata;
import io.opencensus.trace.Span;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes10.dex */
public class HttpRequestContext {

    /* renamed from: h */
    @VisibleForTesting
    public static final long f94652h = -1;

    /* renamed from: i */
    public static final TagMetadata f94653i = TagMetadata.create(TagMetadata.TagTtl.NO_PROPAGATION);

    /* renamed from: a */
    @VisibleForTesting
    public final long f94654a;

    /* renamed from: b */
    @VisibleForTesting
    public final Span f94655b;

    /* renamed from: c */
    @VisibleForTesting
    public AtomicLong f94656c = new AtomicLong();

    /* renamed from: d */
    @VisibleForTesting
    public AtomicLong f94657d = new AtomicLong();

    /* renamed from: e */
    @VisibleForTesting
    public AtomicLong f94658e = new AtomicLong();

    /* renamed from: f */
    @VisibleForTesting
    public AtomicLong f94659f = new AtomicLong();

    /* renamed from: g */
    @VisibleForTesting
    public final TagContext f94660g;

    public HttpRequestContext(Span span, TagContext tagContext) {
        Preconditions.checkNotNull(span, gon.f71297s);
        Preconditions.checkNotNull(tagContext, "tagContext");
        this.f94655b = span;
        this.f94660g = tagContext;
        this.f94654a = System.nanoTime();
    }
}
