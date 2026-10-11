.class public Lnet/sf/saxon/lib/Logger$a;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/lib/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Ljava/lang/StringBuilder;

.field public final f:Lnet/sf/saxon/lib/Logger;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/Logger;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/lib/Logger$a;->e:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lnet/sf/saxon/lib/Logger$a;->f:Lnet/sf/saxon/lib/Logger;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/lib/Logger$a;->flush()V

    return-void
.end method

.method public flush()V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/lib/Logger$a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/lib/Logger$a;->f:Lnet/sf/saxon/lib/Logger;

    iget-object v1, p0, Lnet/sf/saxon/lib/Logger$a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/lib/Logger;->println(Ljava/lang/String;I)V

    iget-object p0, p0, Lnet/sf/saxon/lib/Logger$a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    return-void
.end method

.method public write([CII)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    add-int v2, p2, v1

    aget-char v2, p1, v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/lib/Logger$a;->f:Lnet/sf/saxon/lib/Logger;

    iget-object v3, p0, Lnet/sf/saxon/lib/Logger$a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lnet/sf/saxon/lib/Logger;->println(Ljava/lang/String;I)V

    iget-object v2, p0, Lnet/sf/saxon/lib/Logger$a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lnet/sf/saxon/lib/Logger$a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
