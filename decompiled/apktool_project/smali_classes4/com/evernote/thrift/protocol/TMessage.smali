.class public final Lcom/evernote/thrift/protocol/TMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final name:Ljava/lang/String;

.field public final seqid:I

.field public final type:B


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v1}, Lcom/evernote/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/evernote/thrift/protocol/TMessage;->name:Ljava/lang/String;

    .line 4
    iput-byte p2, p0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    .line 5
    iput p3, p0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    return-void
.end method


# virtual methods
.method public equals(Lcom/evernote/thrift/protocol/TMessage;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/evernote/thrift/protocol/TMessage;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/thrift/protocol/TMessage;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    iget-byte v1, p1, Lcom/evernote/thrift/protocol/TMessage;->type:B

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    iget p1, p1, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/evernote/thrift/protocol/TMessage;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/evernote/thrift/protocol/TMessage;

    invoke-virtual {p0, p1}, Lcom/evernote/thrift/protocol/TMessage;->equals(Lcom/evernote/thrift/protocol/TMessage;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<TMessage name:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/thrift/protocol/TMessage;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/evernote/thrift/protocol/TMessage;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seqid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/evernote/thrift/protocol/TMessage;->seqid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
