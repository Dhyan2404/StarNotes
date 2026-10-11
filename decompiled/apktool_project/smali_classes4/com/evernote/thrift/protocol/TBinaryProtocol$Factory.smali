.class public Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/protocol/TProtocolFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/thrift/protocol/TBinaryProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field protected readLength_:I

.field protected strictRead_:Z

.field protected strictWrite_:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;-><init>(ZZI)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;->strictRead_:Z

    .line 5
    iput-boolean p2, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;->strictWrite_:Z

    .line 6
    iput p3, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;->readLength_:I

    return-void
.end method


# virtual methods
.method public getProtocol(Lcom/evernote/thrift/transport/TTransport;)Lcom/evernote/thrift/protocol/TProtocol;
    .locals 3

    new-instance v0, Lcom/evernote/thrift/protocol/TBinaryProtocol;

    iget-boolean v1, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;->strictRead_:Z

    iget-boolean v2, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;->strictWrite_:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/evernote/thrift/protocol/TBinaryProtocol;-><init>(Lcom/evernote/thrift/transport/TTransport;ZZ)V

    iget p0, p0, Lcom/evernote/thrift/protocol/TBinaryProtocol$Factory;->readLength_:I

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/evernote/thrift/protocol/TBinaryProtocol;->setReadLength(I)V

    :cond_0
    return-object v0
.end method
