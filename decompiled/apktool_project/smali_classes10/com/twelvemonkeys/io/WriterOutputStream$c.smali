.class public final Lcom/twelvemonkeys/io/WriterOutputStream$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/io/WriterOutputStream$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/io/WriterOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twelvemonkeys/io/WriterOutputStream$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/Writer;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/WriterOutputStream$c;->a:Ljava/lang/String;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, p3, p4, p0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object p0, v0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
