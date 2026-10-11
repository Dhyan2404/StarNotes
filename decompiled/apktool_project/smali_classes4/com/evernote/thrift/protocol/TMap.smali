.class public final Lcom/evernote/thrift/protocol/TMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final keyType:B

.field public final size:I

.field public final valueType:B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcom/evernote/thrift/protocol/TMap;-><init>(BBI)V

    return-void
.end method

.method public constructor <init>(BBI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-byte p1, p0, Lcom/evernote/thrift/protocol/TMap;->keyType:B

    .line 4
    iput-byte p2, p0, Lcom/evernote/thrift/protocol/TMap;->valueType:B

    .line 5
    iput p3, p0, Lcom/evernote/thrift/protocol/TMap;->size:I

    return-void
.end method
