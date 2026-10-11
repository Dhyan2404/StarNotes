.class public Lcom/evernote/client/conn/mobile/DiskBackedByteStore$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/client/conn/mobile/ByteStore$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/conn/mobile/DiskBackedByteStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/high16 v0, 0x200000

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore$Factory;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore$Factory;->a:Ljava/io/File;

    .line 4
    iput p2, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore$Factory;->b:I

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/evernote/client/conn/mobile/ByteStore;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore$Factory;->create()Lcom/evernote/client/conn/mobile/DiskBackedByteStore;

    move-result-object p0

    return-object p0
.end method

.method public create()Lcom/evernote/client/conn/mobile/DiskBackedByteStore;
    .locals 2

    .line 2
    new-instance v0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;

    iget-object v1, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore$Factory;->a:Ljava/io/File;

    iget p0, p0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore$Factory;->b:I

    invoke-direct {v0, v1, p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore;-><init>(Ljava/io/File;I)V

    return-object v0
.end method
