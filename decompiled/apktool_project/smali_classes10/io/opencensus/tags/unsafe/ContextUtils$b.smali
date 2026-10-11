.class public final Lio/opencensus/tags/unsafe/ContextUtils$b;
.super Lio/opencensus/tags/TagContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/tags/unsafe/ContextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/tags/TagContext;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/tags/unsafe/ContextUtils$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/tags/unsafe/ContextUtils$b;-><init>()V

    return-void
.end method


# virtual methods
.method public getIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/opencensus/tags/Tag;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
