.class public final synthetic Lcom/sunia/HTREnginev2/cve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;


# instance fields
.field public final synthetic e:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cve;->e:[B

    return-void
.end method


# virtual methods
.method public final processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cve;->e:[B

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->a([BLorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V

    return-void
.end method
