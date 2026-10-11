.class public Lorg/apache/poi/hsmf/datatypes/RecipientChunks$RecipientChunksSorter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hsmf/datatypes/RecipientChunks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecipientChunksSorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/poi/hsmf/datatypes/RecipientChunks;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

    check-cast p2, Lorg/apache/poi/hsmf/datatypes/RecipientChunks;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hsmf/datatypes/RecipientChunks$RecipientChunksSorter;->compare(Lorg/apache/poi/hsmf/datatypes/RecipientChunks;Lorg/apache/poi/hsmf/datatypes/RecipientChunks;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/apache/poi/hsmf/datatypes/RecipientChunks;Lorg/apache/poi/hsmf/datatypes/RecipientChunks;)I
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/poi/hsmf/datatypes/RecipientChunks;->access$000(Lorg/apache/poi/hsmf/datatypes/RecipientChunks;)I

    move-result p0

    invoke-static {p2}, Lorg/apache/poi/hsmf/datatypes/RecipientChunks;->access$000(Lorg/apache/poi/hsmf/datatypes/RecipientChunks;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
