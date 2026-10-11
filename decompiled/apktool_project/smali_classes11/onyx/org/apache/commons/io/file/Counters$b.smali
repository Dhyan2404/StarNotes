.class public Lonyx/org/apache/commons/io/file/Counters$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/file/Counters$PathCounters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lonyx/org/apache/commons/io/file/Counters$Counter;

.field public final b:Lonyx/org/apache/commons/io/file/Counters$Counter;

.field public final c:Lonyx/org/apache/commons/io/file/Counters$Counter;


# direct methods
.method public constructor <init>(Lonyx/org/apache/commons/io/file/Counters$Counter;Lonyx/org/apache/commons/io/file/Counters$Counter;Lonyx/org/apache/commons/io/file/Counters$Counter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lonyx/org/apache/commons/io/file/Counters$b;->a:Lonyx/org/apache/commons/io/file/Counters$Counter;

    iput-object p2, p0, Lonyx/org/apache/commons/io/file/Counters$b;->b:Lonyx/org/apache/commons/io/file/Counters$Counter;

    iput-object p3, p0, Lonyx/org/apache/commons/io/file/Counters$b;->c:Lonyx/org/apache/commons/io/file/Counters$Counter;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lonyx/org/apache/commons/io/file/Counters$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lonyx/org/apache/commons/io/file/Counters$b;

    iget-object v1, p0, Lonyx/org/apache/commons/io/file/Counters$b;->a:Lonyx/org/apache/commons/io/file/Counters$Counter;

    iget-object v3, p1, Lonyx/org/apache/commons/io/file/Counters$b;->a:Lonyx/org/apache/commons/io/file/Counters$Counter;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lonyx/org/apache/commons/io/file/Counters$b;->b:Lonyx/org/apache/commons/io/file/Counters$Counter;

    iget-object v3, p1, Lonyx/org/apache/commons/io/file/Counters$b;->b:Lonyx/org/apache/commons/io/file/Counters$Counter;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/Counters$b;->c:Lonyx/org/apache/commons/io/file/Counters$Counter;

    iget-object p1, p1, Lonyx/org/apache/commons/io/file/Counters$b;->c:Lonyx/org/apache/commons/io/file/Counters$Counter;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getByteCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/Counters$b;->a:Lonyx/org/apache/commons/io/file/Counters$Counter;

    return-object p0
.end method

.method public getDirectoryCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/Counters$b;->b:Lonyx/org/apache/commons/io/file/Counters$Counter;

    return-object p0
.end method

.method public getFileCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/Counters$b;->c:Lonyx/org/apache/commons/io/file/Counters$Counter;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lonyx/org/apache/commons/io/file/Counters$b;->a:Lonyx/org/apache/commons/io/file/Counters$Counter;

    iget-object v1, p0, Lonyx/org/apache/commons/io/file/Counters$b;->b:Lonyx/org/apache/commons/io/file/Counters$Counter;

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/Counters$b;->c:Lonyx/org/apache/commons/io/file/Counters$Counter;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lonyx/org/apache/commons/io/file/Counters$b;->a:Lonyx/org/apache/commons/io/file/Counters$Counter;

    invoke-interface {v0}, Lonyx/org/apache/commons/io/file/Counters$Counter;->reset()V

    iget-object v0, p0, Lonyx/org/apache/commons/io/file/Counters$b;->b:Lonyx/org/apache/commons/io/file/Counters$Counter;

    invoke-interface {v0}, Lonyx/org/apache/commons/io/file/Counters$Counter;->reset()V

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/Counters$b;->c:Lonyx/org/apache/commons/io/file/Counters$Counter;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/file/Counters$Counter;->reset()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lonyx/org/apache/commons/io/file/Counters$b;->c:Lonyx/org/apache/commons/io/file/Counters$Counter;

    invoke-interface {v0}, Lonyx/org/apache/commons/io/file/Counters$Counter;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lonyx/org/apache/commons/io/file/Counters$b;->b:Lonyx/org/apache/commons/io/file/Counters$Counter;

    invoke-interface {v1}, Lonyx/org/apache/commons/io/file/Counters$Counter;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/Counters$b;->a:Lonyx/org/apache/commons/io/file/Counters$Counter;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/file/Counters$Counter;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%,d files, %,d directories, %,d bytes"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
