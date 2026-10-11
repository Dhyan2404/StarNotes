.class public abstract Lio/opencensus/tags/TagContextBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/opencensus/tags/TagMetadata;

.field public static final b:Lio/opencensus/tags/TagMetadata;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/opencensus/tags/TagMetadata$TagTtl;->NO_PROPAGATION:Lio/opencensus/tags/TagMetadata$TagTtl;

    invoke-static {v0}, Lio/opencensus/tags/TagMetadata;->create(Lio/opencensus/tags/TagMetadata$TagTtl;)Lio/opencensus/tags/TagMetadata;

    move-result-object v0

    sput-object v0, Lio/opencensus/tags/TagContextBuilder;->a:Lio/opencensus/tags/TagMetadata;

    sget-object v0, Lio/opencensus/tags/TagMetadata$TagTtl;->UNLIMITED_PROPAGATION:Lio/opencensus/tags/TagMetadata$TagTtl;

    invoke-static {v0}, Lio/opencensus/tags/TagMetadata;->create(Lio/opencensus/tags/TagMetadata$TagTtl;)Lio/opencensus/tags/TagMetadata;

    move-result-object v0

    sput-object v0, Lio/opencensus/tags/TagContextBuilder;->b:Lio/opencensus/tags/TagMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lio/opencensus/tags/TagContext;
.end method

.method public abstract buildScoped()Lio/opencensus/common/Scope;
.end method

.method public abstract put(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;)Lio/opencensus/tags/TagContextBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public put(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;Lio/opencensus/tags/TagMetadata;)Lio/opencensus/tags/TagContextBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/opencensus/tags/TagContextBuilder;->put(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;)Lio/opencensus/tags/TagContextBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final putLocal(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;)Lio/opencensus/tags/TagContextBuilder;
    .locals 1

    sget-object v0, Lio/opencensus/tags/TagContextBuilder;->a:Lio/opencensus/tags/TagMetadata;

    invoke-virtual {p0, p1, p2, v0}, Lio/opencensus/tags/TagContextBuilder;->put(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;Lio/opencensus/tags/TagMetadata;)Lio/opencensus/tags/TagContextBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final putPropagating(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;)Lio/opencensus/tags/TagContextBuilder;
    .locals 1

    sget-object v0, Lio/opencensus/tags/TagContextBuilder;->b:Lio/opencensus/tags/TagMetadata;

    invoke-virtual {p0, p1, p2, v0}, Lio/opencensus/tags/TagContextBuilder;->put(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;Lio/opencensus/tags/TagMetadata;)Lio/opencensus/tags/TagContextBuilder;

    move-result-object p0

    return-object p0
.end method

.method public abstract remove(Lio/opencensus/tags/TagKey;)Lio/opencensus/tags/TagContextBuilder;
.end method
