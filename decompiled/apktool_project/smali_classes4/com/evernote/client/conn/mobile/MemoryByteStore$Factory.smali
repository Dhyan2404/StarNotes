.class public Lcom/evernote/client/conn/mobile/MemoryByteStore$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/client/conn/mobile/ByteStore$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/conn/mobile/MemoryByteStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/evernote/client/conn/mobile/ByteStore;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/MemoryByteStore$Factory;->create()Lcom/evernote/client/conn/mobile/MemoryByteStore;

    move-result-object p0

    return-object p0
.end method

.method public create()Lcom/evernote/client/conn/mobile/MemoryByteStore;
    .locals 0

    .line 2
    new-instance p0, Lcom/evernote/client/conn/mobile/MemoryByteStore;

    invoke-direct {p0}, Lcom/evernote/client/conn/mobile/MemoryByteStore;-><init>()V

    return-object p0
.end method
