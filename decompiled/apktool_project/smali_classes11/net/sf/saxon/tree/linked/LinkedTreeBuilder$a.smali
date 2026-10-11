.class public Lnet/sf/saxon/tree/linked/LinkedTreeBuilder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/linked/NodeFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder$a;

    invoke-direct {v0}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder$a;-><init>()V

    sput-object v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder$a;->a:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeElementNode(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;ZLnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/s9api/Location;I)Lnet/sf/saxon/tree/linked/ElementImpl;
    .locals 6

    new-instance p0, Lnet/sf/saxon/tree/linked/ElementImpl;

    invoke-direct {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;-><init>()V

    invoke-virtual {p0, p6}, Lnet/sf/saxon/tree/linked/ElementImpl;->setNamespaceMap(Lnet/sf/saxon/om/NamespaceMap;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    move-object v4, p1

    move v5, p9

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/tree/linked/ElementImpl;->initialise(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NodeInfo;I)V

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->setNilled()V

    :cond_0
    sget-object p1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    if-eq p8, p1, :cond_1

    if-ltz p9, :cond_1

    invoke-interface {p8}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p8}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p2

    invoke-interface {p8}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/tree/linked/ElementImpl;->setLocation(Ljava/lang/String;II)V

    :cond_1
    return-object p0
.end method

.method public makeTextNode(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/tree/linked/TextImpl;
    .locals 0

    new-instance p0, Lnet/sf/saxon/tree/linked/TextImpl;

    invoke-direct {p0, p2}, Lnet/sf/saxon/tree/linked/TextImpl;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0
.end method
