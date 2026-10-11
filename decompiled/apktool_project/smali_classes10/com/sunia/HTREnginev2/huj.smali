.class public final Lcom/sunia/HTREnginev2/huj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/huj$e;,
        Lcom/sunia/HTREnginev2/huj$c;,
        Lcom/sunia/HTREnginev2/huj$f;,
        Lcom/sunia/HTREnginev2/huj$b;,
        Lcom/sunia/HTREnginev2/huj$d;,
        Lcom/sunia/HTREnginev2/huj$g;,
        Lcom/sunia/HTREnginev2/huj$h;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/opencensus/tags/TagContext;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/huj$b;->a:Lio/opencensus/tags/TagContext;

    return-object v0
.end method

.method public static b()Lio/opencensus/tags/propagation/TagContextBinarySerializer;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/huj$c;->a:Lio/opencensus/tags/propagation/TagContextBinarySerializer;

    return-object v0
.end method

.method public static c()Lio/opencensus/tags/TagContextBuilder;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/huj$d;->c:Lio/opencensus/tags/TagContextBuilder;

    return-object v0
.end method

.method public static d()Lio/opencensus/tags/propagation/TagContextTextFormat;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/huj$e;->a:Lcom/sunia/HTREnginev2/huj$e;

    return-object v0
.end method

.method public static e()Lio/opencensus/tags/propagation/TagPropagationComponent;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/huj$f;->a:Lio/opencensus/tags/propagation/TagPropagationComponent;

    return-object v0
.end method

.method public static f()Lio/opencensus/tags/Tagger;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/huj$g;->a:Lio/opencensus/tags/Tagger;

    return-object v0
.end method

.method public static g()Lio/opencensus/tags/TagsComponent;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/huj$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/huj$h;-><init>(Lcom/sunia/HTREnginev2/huj$a;)V

    return-object v0
.end method
