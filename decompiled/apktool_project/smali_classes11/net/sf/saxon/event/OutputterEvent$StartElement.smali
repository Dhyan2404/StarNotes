.class public Lnet/sf/saxon/event/OutputterEvent$StartElement;
.super Lnet/sf/saxon/event/OutputterEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/OutputterEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartElement"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/om/NodeName;

.field public b:Lnet/sf/saxon/type/SchemaType;

.field public c:Lnet/sf/saxon/s9api/Location;

.field public d:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/event/OutputterEvent;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/OutputterEvent$StartElement;->a:Lnet/sf/saxon/om/NodeName;

    iput-object p2, p0, Lnet/sf/saxon/event/OutputterEvent$StartElement;->b:Lnet/sf/saxon/type/SchemaType;

    iput-object p3, p0, Lnet/sf/saxon/event/OutputterEvent$StartElement;->c:Lnet/sf/saxon/s9api/Location;

    iput p4, p0, Lnet/sf/saxon/event/OutputterEvent$StartElement;->d:I

    return-void
.end method


# virtual methods
.method public replay(Lnet/sf/saxon/event/Outputter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/OutputterEvent$StartElement;->a:Lnet/sf/saxon/om/NodeName;

    iget-object v1, p0, Lnet/sf/saxon/event/OutputterEvent$StartElement;->b:Lnet/sf/saxon/type/SchemaType;

    iget-object v2, p0, Lnet/sf/saxon/event/OutputterEvent$StartElement;->c:Lnet/sf/saxon/s9api/Location;

    iget p0, p0, Lnet/sf/saxon/event/OutputterEvent$StartElement;->d:I

    invoke-virtual {p1, v0, v1, v2, p0}, Lnet/sf/saxon/event/Outputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
