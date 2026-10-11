package com.sunia.HTREnginev2;

import io.opencensus.common.Scope;
import io.opencensus.internal.NoopScope;
import io.opencensus.internal.Utils;
import io.opencensus.tags.Tag;
import io.opencensus.tags.TagContext;
import io.opencensus.tags.TagContextBuilder;
import io.opencensus.tags.TagKey;
import io.opencensus.tags.TagMetadata;
import io.opencensus.tags.TagValue;
import io.opencensus.tags.Tagger;
import io.opencensus.tags.TaggingState;
import io.opencensus.tags.TagsComponent;
import io.opencensus.tags.propagation.TagContextBinarySerializer;
import io.opencensus.tags.propagation.TagContextDeserializationException;
import io.opencensus.tags.propagation.TagContextSerializationException;
import io.opencensus.tags.propagation.TagContextTextFormat;
import io.opencensus.tags.propagation.TagPropagationComponent;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.annotation.concurrent.Immutable;
import javax.annotation.concurrent.ThreadSafe;
import org.mortbay.jetty.HttpHeaderValues;

/* loaded from: classes10.dex */
public final class huj {

    @Immutable
    /* renamed from: com.sunia.HTREnginev2.huj$b */
    /* loaded from: classes10.dex */
    public static final class C13842b extends TagContext {

        /* renamed from: a */
        public static final TagContext f72565a = new C13842b();

        @Override // io.opencensus.tags.TagContext
        public Iterator<Tag> getIterator() {
            return Collections.emptySet().iterator();
        }
    }

    @Immutable
    /* renamed from: com.sunia.HTREnginev2.huj$c */
    /* loaded from: classes10.dex */
    public static final class C13843c extends TagContextBinarySerializer {

        /* renamed from: a */
        public static final TagContextBinarySerializer f72566a = new C13843c();

        /* renamed from: b */
        public static final byte[] f72567b = new byte[0];

        @Override // io.opencensus.tags.propagation.TagContextBinarySerializer
        public TagContext fromByteArray(byte[] bArr) {
            Utils.checkNotNull(bArr, HttpHeaderValues.BYTES);
            return huj.m54623a();
        }

        @Override // io.opencensus.tags.propagation.TagContextBinarySerializer
        public byte[] toByteArray(TagContext tagContext) {
            Utils.checkNotNull(tagContext, "tags");
            return f72567b;
        }
    }

    @Immutable
    /* renamed from: com.sunia.HTREnginev2.huj$e */
    /* loaded from: classes10.dex */
    public static final class C13845e extends TagContextTextFormat {

        /* renamed from: a */
        public static final C13845e f72569a = new C13845e();

        @Override // io.opencensus.tags.propagation.TagContextTextFormat
        public <C> TagContext extract(C c, TagContextTextFormat.Getter<C> getter) throws TagContextDeserializationException {
            Utils.checkNotNull(c, "carrier");
            Utils.checkNotNull(getter, "getter");
            return huj.m54623a();
        }

        @Override // io.opencensus.tags.propagation.TagContextTextFormat
        public List<String> fields() {
            return Collections.emptyList();
        }

        @Override // io.opencensus.tags.propagation.TagContextTextFormat
        public <C> void inject(TagContext tagContext, C c, TagContextTextFormat.Setter<C> setter) throws TagContextSerializationException {
            Utils.checkNotNull(tagContext, "tagContext");
            Utils.checkNotNull(c, "carrier");
            Utils.checkNotNull(setter, "setter");
        }
    }

    @Immutable
    /* renamed from: com.sunia.HTREnginev2.huj$f */
    /* loaded from: classes10.dex */
    public static final class C13846f extends TagPropagationComponent {

        /* renamed from: a */
        public static final TagPropagationComponent f72570a = new C13846f();

        @Override // io.opencensus.tags.propagation.TagPropagationComponent
        public TagContextBinarySerializer getBinarySerializer() {
            return huj.m54624b();
        }

        @Override // io.opencensus.tags.propagation.TagPropagationComponent
        public TagContextTextFormat getCorrelationContextFormat() {
            return huj.m54626d();
        }
    }

    @Immutable
    /* renamed from: com.sunia.HTREnginev2.huj$g */
    /* loaded from: classes10.dex */
    public static final class C13847g extends Tagger {

        /* renamed from: a */
        public static final Tagger f72571a = new C13847g();

        @Override // io.opencensus.tags.Tagger
        public TagContextBuilder currentBuilder() {
            return huj.m54625c();
        }

        @Override // io.opencensus.tags.Tagger
        public TagContext empty() {
            return huj.m54623a();
        }

        @Override // io.opencensus.tags.Tagger
        public TagContextBuilder emptyBuilder() {
            return huj.m54625c();
        }

        @Override // io.opencensus.tags.Tagger
        public TagContext getCurrentTagContext() {
            return huj.m54623a();
        }

        @Override // io.opencensus.tags.Tagger
        public TagContextBuilder toBuilder(TagContext tagContext) {
            Utils.checkNotNull(tagContext, "tags");
            return huj.m54625c();
        }

        @Override // io.opencensus.tags.Tagger
        public Scope withTagContext(TagContext tagContext) {
            Utils.checkNotNull(tagContext, "tags");
            return NoopScope.getInstance();
        }
    }

    @ThreadSafe
    /* renamed from: com.sunia.HTREnginev2.huj$h */
    /* loaded from: classes10.dex */
    public static final class C13848h extends TagsComponent {

        /* renamed from: a */
        public volatile boolean f72572a;

        public C13848h() {
        }

        @Override // io.opencensus.tags.TagsComponent
        public TaggingState getState() {
            this.f72572a = true;
            return TaggingState.DISABLED;
        }

        @Override // io.opencensus.tags.TagsComponent
        public TagPropagationComponent getTagPropagationComponent() {
            return huj.m54627e();
        }

        @Override // io.opencensus.tags.TagsComponent
        public Tagger getTagger() {
            return huj.m54628f();
        }

        @Override // io.opencensus.tags.TagsComponent
        @Deprecated
        public void setState(TaggingState taggingState) {
            Utils.checkNotNull(taggingState, "state");
            Utils.checkState(!this.f72572a, "State was already read, cannot set state.");
        }
    }

    /* renamed from: a */
    public static TagContext m54623a() {
        return C13842b.f72565a;
    }

    /* renamed from: b */
    public static TagContextBinarySerializer m54624b() {
        return C13843c.f72566a;
    }

    /* renamed from: c */
    public static TagContextBuilder m54625c() {
        return C13844d.f72568c;
    }

    /* renamed from: d */
    public static TagContextTextFormat m54626d() {
        return C13845e.f72569a;
    }

    /* renamed from: e */
    public static TagPropagationComponent m54627e() {
        return C13846f.f72570a;
    }

    /* renamed from: f */
    public static Tagger m54628f() {
        return C13847g.f72571a;
    }

    /* renamed from: g */
    public static TagsComponent m54629g() {
        return new C13848h();
    }

    @Immutable
    /* renamed from: com.sunia.HTREnginev2.huj$d */
    /* loaded from: classes10.dex */
    public static final class C13844d extends TagContextBuilder {

        /* renamed from: c */
        public static final TagContextBuilder f72568c = new C13844d();

        @Override // io.opencensus.tags.TagContextBuilder
        public TagContext build() {
            return huj.m54623a();
        }

        @Override // io.opencensus.tags.TagContextBuilder
        public Scope buildScoped() {
            return NoopScope.getInstance();
        }

        @Override // io.opencensus.tags.TagContextBuilder
        public TagContextBuilder put(TagKey tagKey, TagValue tagValue) {
            Utils.checkNotNull(tagKey, "key");
            Utils.checkNotNull(tagValue, "value");
            return this;
        }

        @Override // io.opencensus.tags.TagContextBuilder
        public TagContextBuilder remove(TagKey tagKey) {
            Utils.checkNotNull(tagKey, "key");
            return this;
        }

        @Override // io.opencensus.tags.TagContextBuilder
        public TagContextBuilder put(TagKey tagKey, TagValue tagValue, TagMetadata tagMetadata) {
            Utils.checkNotNull(tagKey, "key");
            Utils.checkNotNull(tagValue, "value");
            Utils.checkNotNull(tagMetadata, "tagMetadata");
            return this;
        }
    }
}
