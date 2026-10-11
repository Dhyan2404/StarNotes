.class public Lnet/sf/saxon/event/Event$StartElement;
.super Lnet/sf/saxon/event/Event;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartElement"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/om/NodeName;

.field public b:Lnet/sf/saxon/type/SchemaType;

.field public c:Lnet/sf/saxon/om/AttributeMap;

.field public d:Lnet/sf/saxon/om/NamespaceMap;

.field public e:Lnet/sf/saxon/s9api/Location;

.field public f:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/event/Event;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/Event$StartElement;->a:Lnet/sf/saxon/om/NodeName;

    iput-object p2, p0, Lnet/sf/saxon/event/Event$StartElement;->b:Lnet/sf/saxon/type/SchemaType;

    iput-object p3, p0, Lnet/sf/saxon/event/Event$StartElement;->c:Lnet/sf/saxon/om/AttributeMap;

    iput-object p4, p0, Lnet/sf/saxon/event/Event$StartElement;->d:Lnet/sf/saxon/om/NamespaceMap;

    iput-object p5, p0, Lnet/sf/saxon/event/Event$StartElement;->e:Lnet/sf/saxon/s9api/Location;

    iput p6, p0, Lnet/sf/saxon/event/Event$StartElement;->f:I

    return-void
.end method


# virtual methods
.method public getProperties()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/event/Event$StartElement;->f:I

    return p0
.end method

.method public replay(Lnet/sf/saxon/event/Receiver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lnet/sf/saxon/event/Event$StartElement;->a:Lnet/sf/saxon/om/NodeName;

    iget-object v2, p0, Lnet/sf/saxon/event/Event$StartElement;->b:Lnet/sf/saxon/type/SchemaType;

    iget-object v3, p0, Lnet/sf/saxon/event/Event$StartElement;->c:Lnet/sf/saxon/om/AttributeMap;

    iget-object v4, p0, Lnet/sf/saxon/event/Event$StartElement;->d:Lnet/sf/saxon/om/NamespaceMap;

    iget-object v5, p0, Lnet/sf/saxon/event/Event$StartElement;->e:Lnet/sf/saxon/s9api/Location;

    iget v6, p0, Lnet/sf/saxon/event/Event$StartElement;->f:I

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public replay(Lnet/sf/saxon/event/Receiver;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-object v1, p0, Lnet/sf/saxon/event/Event$StartElement;->a:Lnet/sf/saxon/om/NodeName;

    iget-object v2, p0, Lnet/sf/saxon/event/Event$StartElement;->b:Lnet/sf/saxon/type/SchemaType;

    iget-object v3, p0, Lnet/sf/saxon/event/Event$StartElement;->c:Lnet/sf/saxon/om/AttributeMap;

    iget-object v4, p0, Lnet/sf/saxon/event/Event$StartElement;->d:Lnet/sf/saxon/om/NamespaceMap;

    iget-object v5, p0, Lnet/sf/saxon/event/Event$StartElement;->e:Lnet/sf/saxon/s9api/Location;

    move-object v0, p1

    move v6, p2

    invoke-interface/range {v0 .. v6}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
