.class public Lcom/evernote/thrift/protocol/TField;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final id:S

.field public final name:Ljava/lang/String;

.field public final type:B


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BS)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/evernote/thrift/protocol/TField;->name:Ljava/lang/String;

    .line 4
    iput-byte p2, p0, Lcom/evernote/thrift/protocol/TField;->type:B

    .line 5
    iput-short p3, p0, Lcom/evernote/thrift/protocol/TField;->id:S

    return-void
.end method


# virtual methods
.method public equals(Lcom/evernote/thrift/protocol/TField;)Z
    .locals 2

    iget-byte v0, p0, Lcom/evernote/thrift/protocol/TField;->type:B

    iget-byte v1, p1, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v0, v1, :cond_0

    iget-short p0, p0, Lcom/evernote/thrift/protocol/TField;->id:S

    iget-short p1, p1, Lcom/evernote/thrift/protocol/TField;->id:S

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<TField name:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evernote/thrift/protocol/TField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " field-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/evernote/thrift/protocol/TField;->id:S

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
