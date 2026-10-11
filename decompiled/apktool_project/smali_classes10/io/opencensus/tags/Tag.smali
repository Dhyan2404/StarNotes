.class public abstract Lio/opencensus/tags/Tag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final a:Lio/opencensus/tags/TagMetadata;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/opencensus/tags/TagMetadata$TagTtl;->UNLIMITED_PROPAGATION:Lio/opencensus/tags/TagMetadata$TagTtl;

    invoke-static {v0}, Lio/opencensus/tags/TagMetadata;->create(Lio/opencensus/tags/TagMetadata$TagTtl;)Lio/opencensus/tags/TagMetadata;

    move-result-object v0

    sput-object v0, Lio/opencensus/tags/Tag;->a:Lio/opencensus/tags/TagMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;)Lio/opencensus/tags/Tag;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lio/opencensus/tags/Tag;->a:Lio/opencensus/tags/TagMetadata;

    invoke-static {p0, p1, v0}, Lio/opencensus/tags/Tag;->create(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;Lio/opencensus/tags/TagMetadata;)Lio/opencensus/tags/Tag;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;Lio/opencensus/tags/TagMetadata;)Lio/opencensus/tags/Tag;
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/hk;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/hk;-><init>(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;Lio/opencensus/tags/TagMetadata;)V

    return-object v0
.end method


# virtual methods
.method public abstract getKey()Lio/opencensus/tags/TagKey;
.end method

.method public abstract getTagMetadata()Lio/opencensus/tags/TagMetadata;
.end method

.method public abstract getValue()Lio/opencensus/tags/TagValue;
.end method
