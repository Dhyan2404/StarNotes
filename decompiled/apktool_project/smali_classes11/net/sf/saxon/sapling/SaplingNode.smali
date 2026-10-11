.class public abstract Lnet/sf/saxon/sapling/SaplingNode;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public emptyNodeList()Lnet/sf/saxon/ma/trie/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/ma/trie/ImmutableList<",
            "Lnet/sf/saxon/sapling/SaplingNode;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/ma/trie/ImmutableList;->empty()Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public abstract getNodeKind()I
.end method
