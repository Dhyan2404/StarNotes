.class public final Lcom/sunia/HTREnginev2/huj$c;
.super Lio/opencensus/tags/propagation/TagContextBinarySerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/huj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final a:Lio/opencensus/tags/propagation/TagContextBinarySerializer;

.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/huj$c;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/huj$c;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/huj$c;->a:Lio/opencensus/tags/propagation/TagContextBinarySerializer;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/sunia/HTREnginev2/huj$c;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/tags/propagation/TagContextBinarySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public fromByteArray([B)Lio/opencensus/tags/TagContext;
    .locals 0

    const-string p0, "bytes"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sunia/HTREnginev2/huj;->a()Lio/opencensus/tags/TagContext;

    move-result-object p0

    return-object p0
.end method

.method public toByteArray(Lio/opencensus/tags/TagContext;)[B
    .locals 0

    const-string p0, "tags"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/sunia/HTREnginev2/huj$c;->b:[B

    return-object p0
.end method
