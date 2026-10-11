.class public Lnet/sf/saxon/sapling/SaplingProcessingInstruction;
.super Lnet/sf/saxon/sapling/SaplingNode;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/sapling/SaplingNode;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lnet/sf/saxon/sapling/SaplingProcessingInstruction;->e:Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/sapling/SaplingProcessingInstruction;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/sapling/SaplingProcessingInstruction;->e:Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/sapling/SaplingProcessingInstruction;->f:Ljava/lang/String;

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v1, 0x0

    invoke-interface {p1, p2, p0, v0, v1}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sapling/SaplingProcessingInstruction;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeKind()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sapling/SaplingProcessingInstruction;->f:Ljava/lang/String;

    return-object p0
.end method
