.class public final synthetic Lorg/apache/poi/poifs/eventfilesystem/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;

    invoke-static {p1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->b(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
