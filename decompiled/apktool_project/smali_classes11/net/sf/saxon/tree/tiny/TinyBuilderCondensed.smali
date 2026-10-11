.class public Lnet/sf/saxon/tree/tiny/TinyBuilderCondensed;
.super Lnet/sf/saxon/tree/tiny/TinyBuilder;
.source "SourceFile"


# instance fields
.field public textValues:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    new-instance p1, Lnet/sf/saxon/z/IntHashMap;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilderCondensed;->textValues:Lnet/sf/saxon/z/IntHashMap;

    return-void
.end method


# virtual methods
.method public endElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->getTree()Lnet/sf/saxon/tree/tiny/TinyTree;

    move-result-object v0

    invoke-super {p0}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->endElement()V

    iget v1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    add-int/lit8 v1, v1, -0x1

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v0, v0, v1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->getCurrentDepth()I

    return-void
.end method

.method public getAttValue(Lnet/sf/saxon/om/AttributeInfo;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->getAttValue(Lnet/sf/saxon/om/AttributeInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
