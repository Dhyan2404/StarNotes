.class public Lcom/evernote/thrift/transport/TTransportException;
.super Lcom/evernote/thrift/TException;
.source "SourceFile"


# static fields
.field public static final ALREADY_OPEN:I = 0x2

.field public static final END_OF_FILE:I = 0x4

.field public static final NOT_OPEN:I = 0x1

.field public static final TIMED_OUT:I = 0x3

.field public static final UNKNOWN:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/evernote/thrift/TException;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/evernote/thrift/transport/TTransportException;->type_:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/evernote/thrift/TException;-><init>()V

    .line 4
    iput p1, p0, Lcom/evernote/thrift/transport/TTransportException;->type_:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2}, Lcom/evernote/thrift/TException;-><init>(Ljava/lang/String;)V

    .line 6
    iput p1, p0, Lcom/evernote/thrift/transport/TTransportException;->type_:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 15
    invoke-direct {p0, p2, p3}, Lcom/evernote/thrift/TException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    iput p1, p0, Lcom/evernote/thrift/transport/TTransportException;->type_:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 9
    invoke-direct {p0, p2}, Lcom/evernote/thrift/TException;-><init>(Ljava/lang/Throwable;)V

    .line 10
    iput p1, p0, Lcom/evernote/thrift/transport/TTransportException;->type_:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/evernote/thrift/TException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/evernote/thrift/transport/TTransportException;->type_:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/evernote/thrift/TException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/evernote/thrift/transport/TTransportException;->type_:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/evernote/thrift/TException;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/evernote/thrift/transport/TTransportException;->type_:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    iget p0, p0, Lcom/evernote/thrift/transport/TTransportException;->type_:I

    return p0
.end method
